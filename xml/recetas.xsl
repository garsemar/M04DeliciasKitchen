<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" href="../css/styleGen.css"/>
                <link rel="stylesheet" href="../css/styleRece.css"/>
                <title><xsl:value-of select="receptes/recepta[@id='1']/nom"/></title>
            </head>
            <body>
                <header>
                    <a href="../index.html">
                        <img src="../imagenes/Logo-Delicias.png" alt=""/>
                    </a>
                    <ul>
                        <li><a href="../">INICIO</a></li>
                        <li><a href="">SOBRE MÍ</a></li>
                        <li><a href="../listado/listado.html">RECETAS</a></li>
                        <li><a href="../contacto/">CONTACTO</a></li>
                        <li><a href="">OTRAS COSAS</a></li>
                    </ul>
                </header>
                <div class="body">
                    <xsl:apply-templates select="receptes/recepta[@id='1']"/>
                    <aside>
                        <div class="sobre">
                            <h4>Sobre mi</h4>
                            <img src="../imagenes/isagil.png"/>
                            <p>
                                Hola, bienvenid@ a mi blog, un espacio donde quiero compartir mis recetas vegetarianas y veganas favoritas...
                            </p>
                        </div>
                        <div class="libro">
                            <h4>Suscríbete a mi blog</h4>
                            <img src="../imagenes/libro.png"/>
                            <p>
                                Y consigue GRATIS mi eBook con 10 recetas exclusivas con superalimentos.
                            </p>
                        </div>
                        <a href="#">Apúntame</a>
                    </aside>
                </div>
                <footer>
                    <ul>
                        <li>
                            <a href="#">FACEBOOK</a>
                        </li>
                        <li>
                            <a href="#">TWITTER</a>
                        </li>
                        <li>
                            <a href="#">INSTAGRAM</a>
                        </li>
                        <li>
                            <a href="#">PINTEREST</a>
                        </li>
                        <li>
                            <a href="#">EMAIL</a>
                        </li>
                        <li>
                            <a href="#">RSS</a>
                        </li>
                    </ul>
                </footer>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="receptes/recepta[@id='1']">
        <article>
            <img src="../{informacio_general/foto})"/>
            <h1><xsl:value-of select="nom"/></h1>
            <p class="hor"><xsl:value-of select="@fecha"/></p>
            <p>
                <xsl:value-of select="informacio_general/resum"/>
            </p>
            <h3>Comensales</h3>
            <p>
                <xsl:value-of select="informacio_general/comensals"/>
            </p>
            <div class="tiempo">
                <h3>Tiempo</h3>
                <p><xsl:value-of select="informacio_general/temps"/> <xsl:value-of select="informacio_general/temps/@unitat"/></p>
            </div>
            <h3>Comensales</h3>
            <p>
                <xsl:value-of select="informacio_general/dificultat"/>
            </p>
            <div class="ingre">
                <h3>Ingredientes</h3>
                <ul>
                    <xsl:for-each select="ingredients/ingredient">
                        <li><xsl:value-of select="@quantitat"/> <xsl:value-of select="@unitat"/> de <xsl:value-of select="."/></li>
                    </xsl:for-each>
                </ul>
            </div>
            <h3>Preparación</h3>
            <ol>
                <li>Picaremos bien fina la cebolla y la sofreiremos en el aceite hasta que esté translúcida.</li>
                <li>Añadiremos entonces los ajos prensados o picados finos. Sofreiremos medio minuto más.</li>
                <li>Incorporaremos la coliflor troceada o separada en flores, el caldo y dejaremos cocer hasta que esté tierna, seguramente se consumirá gran parte del líquido.</li>
                <li>Echaremos la preparación en el vaso de la Vitamix y añadiremos la leche, la levadura, los granos de pimienta y un poco de sal al gusto. Batiremos hasta conseguir una textura fina.</li>
                <li>Una vez esté bien batida, utilizaremos esta salsa para acompañar cualquier plato de pasta.</li>
            </ol>
        </article>
    </xsl:template>
</xsl:stylesheet>