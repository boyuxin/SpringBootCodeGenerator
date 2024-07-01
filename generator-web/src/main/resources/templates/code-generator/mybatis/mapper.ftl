<#if isAutoImport?exists && isAutoImport==true>
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;
</#if>

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public interface ${classInfo.className}Manager {

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    Boolean insert(${classInfo.className}BO ${classInfo.className?uncap_first}BO);


    /**
    * 更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    Boolean update(${classInfo.className}BO ${classInfo.className?uncap_first}BO);


    /**
    * 查询 分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    void pageList(PageBO<${classInfo.className}BO> pageBO);


    /**
    * 查询详情
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    ${classInfo.className}BO selectOne(${classInfo.className}BO ${classInfo.className?uncap_first}BO);


}
