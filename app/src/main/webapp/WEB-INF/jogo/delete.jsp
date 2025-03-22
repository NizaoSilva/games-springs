<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Deletar Jogo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <main class="container">
            <h1>Remover Jogo</h1>
            <hr />
            <p>Tem certeza que deseja remover o jogo <em>"${jogo.titulo}"</em> ?</p>
            <form action="/jogo/delete" method="post">
                <input type="hidden" name="id" value="${param.id}" />
                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <input type="submit" value="Remover" class="btn btn-danger" />
            </form>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

        <!--<h1>Deletar Jogo</h1>
        <p>Tem certeza que deseja deletar o jogo com ID ${jogo.titulo}?</p>
        <form action="/jogo/delete" method="post">
            <input type="hidden" name="id" value="${param.id}">
            <button type="submit">Remover</button>
            <a href="/jogo/list">Cancelar</a>
        </form>-->
    </body>
</html>