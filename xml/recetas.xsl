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
            <img src="../{informacio_general/foto}"/>
            <h1><xsl:value-of select="nom"/></h1>
            <p class="hor"><xsl:value-of select="@fecha"/></p>
            <xsl:apply-templates select="informacio_general"/>
            <div class="ingre">
                <h3>Ingredientes</h3>
                <xsl:apply-templates select="ingredients"/>
            </div>
            <h3>Preparación</h3>
            <xsl:apply-templates select="preparacio"/>
        </article>
    </xsl:template>
    <xsl:template match="informacio_general">
        <p>
            <xsl:value-of select="resum"/>
        </p>
        <h3>Comensales</h3>
        <p>
            <xsl:value-of select="comensals"/>
        </p>
        <div class="tiempo">
            <h3>Tiempo</h3>
            <p><xsl:value-of select="temps"/> - <xsl:value-of select="temps/@unitat"/></p>
        </div>
        <h3>Comensales</h3>
        <p>
            <xsl:value-of select="dificultat"/>
        </p>
    </xsl:template>
    <xsl:template match="ingredients">
        <ul>
            <xsl:for-each select="ingredient">
                <li><xsl:value-of select="@quantitat"/> - <xsl:value-of select="@unitat"/> de <xsl:value-of select="."/></li>
            </xsl:for-each>
        </ul>
    </xsl:template>
    <xsl:template match="preparacio">
        <ol>
            <xsl:for-each select="pas">
                <li><xsl:value-of select="."/></li>
            </xsl:for-each>
        </ol>
    </xsl:template>
</xsl:stylesheet>