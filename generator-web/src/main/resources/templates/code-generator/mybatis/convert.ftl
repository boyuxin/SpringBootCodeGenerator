
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

    ${classInfo.className}BO  convertReqToBO(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO);

    ${classInfo.className}BO  convertBOToDO(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO);

    ${classInfo.className}BO  convertDOToBO(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO);

    ${classInfo.className}BO  convertBOToRes(${classInfo.className}ReqDTO ${classInfo.className?uncap_first}ReqDTO);

    ${classInfo.className}ResDTO  convertToResDTO(${classInfo.className}BO ${classInfo.className?uncap_first}BO);

}
