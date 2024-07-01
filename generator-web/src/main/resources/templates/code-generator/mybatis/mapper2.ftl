<#if isWithPackage?exists && isWithPackage==true>package ${packageName}.mapper;</#if>
<#if isAutoImport?exists && isAutoImport==true>
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import java.util.List;
</#if>
/**
 * @description ${classInfo.classComment}Mapper
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Component
public class ${classInfo.className}ManagerImpl implements ${classInfo.className}Manager  {

    @Autowired
    private ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Override
    public Boolean insert( ${classInfo.className}BO ${classInfo.className?uncap_first}BO) {
        return ${classInfo.className?uncap_first}Mapper.insert() > 0;
    }

    /**
    * 更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Override
    public Boolean update( ${classInfo.className}BO ${classInfo.className?uncap_first}BO) {
        return true;
    }

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @Override
    public void pageList( PageBO<${classInfo.className}BO> pageBO) {
        return true;
    }
}