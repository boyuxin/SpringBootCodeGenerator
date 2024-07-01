<#if isAutoImport?exists && isAutoImport==true>
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
</#if>

/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@RestController
@RequestMapping(value = "/${classInfo.className?uncap_first}")
public class ${classInfo.className}Controller {

    @Resource
    private ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * 新增
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @RequestMapping("/insert")
    public Result<Boolean> insert(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO){
        return ${classInfo.className?uncap_first}Service.insert(${classInfo.className?uncap_first}ReqDTO);
    }


    /**
    * 更新
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @RequestMapping("/update")
    public Result<Boolean> update(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO){
        return ${classInfo.className?uncap_first}Service.update(${classInfo.className?uncap_first}ReqDTO);
    }

    /**
    * 查询 分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @RequestMapping("/pageList")
    public  Result<PageDTO<${classInfo.className}ResDTO>>  pageList(@RequestBody PageDTO<${classInfo.className}ReqDTO> pageDTO) {
        return ${classInfo.className?uncap_first}Service.pageList(pageDTO);
    }

}
