<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Atualizar Jogo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <h1>Atualizar Jogo</h1>
        <form action="/jogo/update" method="post">
            <input type="hidden" name="id" value="${jogo.id}"/>
            <div class= "form-group">
            <label for="titulo">Título:</label>
            <input type="text" name="titulo" value="${jogo.titulo}"/>
        </div>
        <div class="form-group">  
            <label for="categoria">Categoria:</label>
            <select name="categoria" class="${categorias}">
                <c:forEach var="categoria" items="${categorias}">
                    <option value="${categoria.id}" ${categoria.id == jogo.categoria.id ? 'selected' : ''}>
                        ${categoria.nome}
                    </option>
                </c:forEach>
            </select>
        </div>
    <div class="form-group">
            <label for="plataforma">Plataformas:</label><br>
            <c:forEach var="plataforma" items="${plataformas}">
                <div class="custom-control custom-checkbox">
                <input type="checkbox" id="plataforma${plataforma.id}" name="plataformas" value="${plataforma.id}"
                    <c:forEach var="jogoPlataforma" items="${jogo.plataformas}">
                        <c:if test="${jogoPlataforma.id == plataforma.id}">checked</c:if>
                    
                    </c:forEach>>
                    </select>
                </div>

    <div class="form-group">
                    
                <label for="plataforma">Plataformas</label>
                <c:forEach var="p" items="${plataformas}">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" ${jogo.plataformas.contains(p) ? "checked" : ""}
                        class="custom-control-label" for="${p.id}">${p.nome}</label>
                        <div>
                </c:forEach>
            </div>
            <br/>
            
            <button type="submit">Atualizar</button>
            <a href="/jogos/list">Cancelar</a>
        </form>
    </body>
</html>