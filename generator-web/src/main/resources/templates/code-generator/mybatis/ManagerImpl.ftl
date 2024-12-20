<#if isWithPackage?exists && isWithPackage==true>package ${packageName}.mapper;</#if>
<#if isAutoImport?exists && isAutoImport==true>
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import java.util.List;
</#if>
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.fosun.health.biz.base.common.enums.UsableFlagEnum;
import org.springframework.stereotype.Component;

/**
 * @description ${classInfo.classComment}Mapper
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Component
@RequiredArgsConstructor
public class ${classInfo.className}ManagerImpl implements ${classInfo.className}Manager  {

    private final  ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Override
    public Boolean insert( ${classInfo.className}BO ${classInfo.className?uncap_first}BO) {
        ${classInfo.className}DO ${classInfo.className?uncap_first}DO = ${classInfo.className}Convert.INSTANCE.convertBOToDO(${classInfo.className?uncap_first}BO);
        return ${classInfo.className?uncap_first}Mapper.insert(${classInfo.className?uncap_first}DO) > 0;
    }

    /**
    * 更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Override
    public Boolean update( ${classInfo.className}BO ${classInfo.className?uncap_first}BO) {
        ${classInfo.className}DO ${classInfo.className?uncap_first}DO = ${classInfo.className}Convert.INSTANCE.convertBOToDO(${classInfo.className?uncap_first}BO);

        return true;
    }

    /**
    * 分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Override
    public void pageList( PageBO<${classInfo.className}BO> pageBO) {
    Page<${classInfo.className}DO> page = new Page<>(pageBO.getCurrentPage(), pageBO.getPageSize());
        QueryWrapper<${classInfo.className}DO> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("", "");
            queryWrapper.eq("usable_flag", UsableFlagEnum.USABLE.getCode());
            ${classInfo.className?uncap_first}Mapper.selectPage(page, queryWrapper);
            pageBO.setTotalSize((int) page.getTotal());
            pageBO.setTotalPage((int) page.getPages());
            pageBO.setResults(${classInfo.className}Convert.INSTANCE.convertDOsToBOs(page.getRecords()));
    }

    /**
    * 查询详情
    * @author boyuxin
    * @date 2024/06/29
    **/
    @Override
    public ${classInfo.className}BO selectOne(${classInfo.className}BO ${classInfo.className?uncap_first}BO) {
        QueryWrapper<${classInfo.className}DO> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("", "");
        queryWrapper.eq("usable_flag", UsableFlagEnum.USABLE.getCode());
        ${classInfo.className}DO ${classInfo.className?uncap_first}DO = ${classInfo.className?uncap_first}Mapper.selectOne(queryWrapper);
        return  ${classInfo.className}Convert.INSTANCE.convertDOToBO(${classInfo.className?uncap_first}DO);
    }
}