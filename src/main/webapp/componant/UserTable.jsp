<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%--
  Created by IntelliJ IDEA.
  User: iaazi
  Date: 15/03/2025
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>

<div class="bg-custom">
    <div class="welcome bg-white rad-10 txt-c-mobile block-mobile">
        <div class="card-body">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col" class="id">Id</th>
                    <th scope="col" class="username">Username</th>
                    <th scope="col" class="designation">Role</th>
                    <th scope="col" class="status">Status</th>
                    <th scope="col" class="action">Action</th>
                </tr>
                </thead>
                <c:forEach var="user" items="${UserList}" >

                <tbody>
               <tr style="height:70px; padding: 20px">
                    <td class="id body ">${user.userId}</td>
                    <td class="username body ">
                       ${user.userName}
                    </td>
                    <td class="designation body ">${user.role}</td>
                    <td class=" body ">
                        <button class="btn btn status-button bu body ">Active</button>
                    </td>
                    <td class="action body ">
                        <div class="dropdown">
                        </div>
                    </td>
                </tr>



                </tbody>
                </c:forEach>

            </table>
        </div>
    </div>
</div>

