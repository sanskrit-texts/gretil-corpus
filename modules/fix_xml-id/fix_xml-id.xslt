<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
    <xsl:output omit-xml-declaration="yes" indent="yes" encoding="utf-8" />

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match="tei:lg/@xml:id">
        <xsl:variable name="attr-value-1">
            <xsl:call-template name="replace-string">
                <xsl:with-param name="text" select="." />
                <xsl:with-param name="replace" select="','" />
                <xsl:with-param name="with" select="'_comma_'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable
            name="attr-value-2">
            <xsl:call-template name="replace-string">
                <xsl:with-param name="text" select="$attr-value-1" />
                <xsl:with-param name="replace" select="'*'" />
                <xsl:with-param name="with" select="'_asterisk_'" />
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable
            name="attr-value-3">
            <xsl:call-template name="replace-string">
                <xsl:with-param name="text" select="$attr-value-2" />
                <xsl:with-param name="replace" select="'@'" />
                <xsl:with-param name="with" select="'_at-sign_'" />
            </xsl:call-template>
        </xsl:variable>

        <xsl:attribute
            name="xml:id"><xsl:value-of select="$attr-value-3"></xsl:value-of>
        </xsl:attribute>

    </xsl:template>

    <xsl:template name="replace-string">
        <xsl:param name="text" />
        <xsl:param name="replace" />
        <xsl:param name="with" />
        <xsl:choose>
            <xsl:when test="contains($text,$replace)">
                <xsl:value-of select="substring-before($text,$replace)" />
            <xsl:value-of
                    select="$with" />
            <xsl:call-template name="replace-string">
                    <xsl:with-param name="text"
                        select="substring-after($text,$replace)" />
                    <xsl:with-param name="replace" select="$replace" />
                    <xsl:with-param name="with" select="$with" />
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$text" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>


</xsl:stylesheet>