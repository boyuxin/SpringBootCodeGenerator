<#if isAutoImport?exists && isAutoImport==true>
import java.util.Map;
</#if>
/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public interface ${classInfo.className}Service {

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public Result<Boolean> insert(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO);


    /**
    * 更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public Result<Boolean> update(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO);

    /**
    * 查询详情
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public Result<${classInfo.className}ResDTO> selectOne(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO);


    /**
    * 查询 分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public  Result<PageDTO<${classInfo.className}ResDTO>>  pageList(PageDTO<${classInfo.className}ReqDTO> pageDTO);

}
