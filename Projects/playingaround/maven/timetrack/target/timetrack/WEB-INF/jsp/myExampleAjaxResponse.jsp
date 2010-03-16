<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<script type="text/javascript">

    <c:if test="${updateComboBoxOptions == 'true'}">
        var newComboboxOptions = new Array(<c:out
        value="${sendMoneyCtx.newComboboxOptionsSize}" />);
        var optionsCount = -1;
        <c:forEach items="${myExampleCtx.comboboxOptions}" var="myOption">
            myOption = document.createElement ("OPTION");
            myOption.text = <c:out value="${myOption.label}" />;
            myOption.value = <c:out value="${myOption.value}" />;
            newComboboxOptions[++optionsCount] = myOption;
        </c:forEach>
        var combobox = document.getElementById("myCombobox");

        for (count = 0 ; count < combobox.options.length ; count++){
            combobox.remove(count);
        }
        combobox.options.length = newComboboxOptions.length;

        for (count = 0 ; count < newComboboxOptions.length ; count++){
            combobox.options[count] = newComboboxOptions[count];
        }
    </c:if>

    <c:if test="${updateTextfield == 'true'}">
        document.getElementById('myTextfield').value = '<c:out
        value="${myExampleCtx.textfieldValue}" />';
    </c:if>

</script>