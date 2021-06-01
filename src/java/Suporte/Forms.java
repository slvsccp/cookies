package Suporte;

public class Forms {
    String html = "";
    
    public void formulario() {
        html += "<form method=\"post\" action=\"GeraCookie.jsp\">";
        html += "<p><b> Nome: </b> <input placeholder=\" Seu nome\" type=\"text\" name=\"NOME\"</p>";
        html += "<br><br>";
        html += "<label for=\"cars\">Escolha um veículo: </label>";
        html += "<select name=\"cars\" id=\"cars\">";
        html += "<option value=\"\" selected>Carros</option>";
        html += "<option value=\"volvo\">Volvo</option>";
        html += "<option value=\"BMW\">BMW</option>";
        html += "<option value=\"Tucson\">Tucson</option>";
        html += "<option value=\"audi\">Audi</option>";
        html += "</select>";
        html += "<br><br>";
        html += "<input type=\"submit\" value=\"Enviar Dados\" />";
        html += "</form>";
        html += "<hr>";
    }
    
    public String getForm() {
        formulario();
        return html;
    }
}
