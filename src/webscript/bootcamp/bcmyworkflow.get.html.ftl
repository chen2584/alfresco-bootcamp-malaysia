<html>
<h>My Profile</h>
<br />
Usage: <#if condition??></#if>
<br />
<table>
    <tr>
        <td>Hello, ${person.properties.userName} (${person.properties.firstName} ${person.properties.lastName})</br>
        </td>
    </tr>
    <tr>
        <td>UserName: <b>${person.properties.userName}</b></td>
    </tr>
    <tr>
        <td>Email:
            <b>
                <#if person.properties.email??>
                    ${person.properties.email}
                </#if>
            </b>
        </td>
    </tr>
    <tr>
        <td>Location:
            <b>
                <#if person.properties.location??>
                    ${person.properties.location}
                    <#else>
                        Missing location
                </#if>
            </b>
        </td>
    </tr>
    <tr>
        <td>Google UserName: <b>${person.properties.googleusername}</b></td>
    </tr>
    <tr>
        <td>Home Folder: <b>${person.properties.homeFolder.name}</b></td>
    </tr>
    <tr>
        <td>Session Ticket: <b>${sessionticket.ticket}</b></td>
    </tr>
    <tr>
        <td>URL Context: <b>${url.context}</b></td>
    </tr>
</table>
<br />
<br />
<table>
    <tr>
        <td>Workflows:</td>
    </tr>
    <tr>
        <td>
            <#list workflow.assignedTasks as x>
                Name: ${x.name}, Descriptipn: ${x.description}, Task ID: ${x.id}, Task Type: ${x.type},
                StartDate: ${x.startDate?date}, Outcome: <#if x.outcome??>${x.outcome}</#if><br />
            </#list>
        </td>
    </tr>
</table>

</html>