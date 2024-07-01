
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
<#if isAutoImport?exists && isAutoImport==true>
import java.util.Map;
</#if>
/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Mapper
public interface ${classInfo.className}ServiceConvert {

    ${classInfo.className}ServiceConvert INSTANCE = Mappers.getMapper(${classInfo.className}ServiceConvert.class);

    ${classInfo.className}BO  convertToBO(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO);

    ${classInfo.className}ResDTO  convertToResDTO(${classInfo.className}BO ${classInfo.className?uncap_first}BO);

}
