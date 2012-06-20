
<form action="action/enviaComentario.jsp" method="POST" >
    <fieldset>
        
        <input type="hidden" name="idMusica" value="<%=request.getParameter("id")%>" />
        
        <legend>Comentarios</legend>
        <div class="control-group">
            <label class="control-label" for="input01">Nome</label>
            <div class="controls">
                <input type="text" class="input-xlarge" id="nome" name="nome" >
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="Textarea">Comentario</label>
            <div class="controls">
                <textarea class="input-xlarge" id="comentario" name="comentario" rows="3"></textarea>
            </div>
        </div>
        <div>
            <button type="submit" class="btn btn-inverse">Concluir</button>
        </div>
    </fieldset>
</form>