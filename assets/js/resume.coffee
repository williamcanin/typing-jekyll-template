---
---

$("#layout_resume__btnprint").click ->
    if navigator.vendor ==  "" || navigator.vendor == undefined
        alert("This Browser is not printable with this page. If you print with Ctrl + P, errors will appear in the page structure. We recommend 'Google Chrome' or 'Safari'. \n\n(Este Navegador não é compátivel com impressão desta página. Caso imprima com Ctrl+P, aparecerá erros na estrutura da página. Recomendamos o 'Google Chrome' ou 'Safari'.)")
    else
        window.print()
        false
