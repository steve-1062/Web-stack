<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1 style="text-align:center">Dashboard</h1>
                <h2>Employee Details:</h2>
                <table border="1">
                    <tr>
                        <th style="text-align:left">Employee_ID</th>
                        <th style="text-align:left">Name</th>
                        <th style="text-align:left">Age</th>
                        <th style="text-align:left">Role</th>
                        <th style="text-align:left">Email</th>
                        <th style="text-align:left">Phone_No.</th>
                    </tr>
                    <xsl:for-each select="user/Employee">
                        <xsl:sort select="employee_id" />
                        <xsl:if test="Age > 18">
                            <tr>
                                <td>
                                    <xsl:value-of select="employee_id" />
                                </td>
                                <td>
                                    <xsl:value-of select="Name" />
                                </td>
                                <td>
                                    <xsl:value-of select="Age" />
                                </td>
                                <td>
                                    <xsl:value-of select="Role" />
                                </td>
                                <td>
                                    <xsl:value-of select="Email" />
                                </td>
                                <td>
                                    <xsl:value-of select="Phone_No" />
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <h2>Zone Details:</h2>
                <table border="1">
                    <tr>
                        <th style="text-align:left">Zone_ID</th>
                        <th style="text-align:left">Name</th>
                        <th style="text-align:left">Email</th>
                        <th style="text-align:left">Phone_No.</th>
                    </tr>
                    <xsl:for-each select="user/Zonal">
                        <xsl:sort select="Age" />
                        <xsl:choose>
                            <xsl:when test="Zone_id = ZON3">
                                <tr bgcolor="#00ff00">

                                    <td>
                                        <xsl:value-of select="zone_id" />
                                    </td>

                                    <td>
                                        <xsl:value-of select="Name" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Email" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Phone_No" />
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>

                                    <td>
                                        <xsl:value-of select="Zone_id" />
                                    </td>

                                    <td>
                                        <xsl:value-of select="Name" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Email" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Phone_No" />
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
                <h2>Buyer Details:</h2>
                <table border="1">
                    <tr>
                        <th style="text-align:left">Buyer_ID</th>
                        <th style="text-align:left">Name</th>
                        <th style="text-align:left">Email</th>
                        <th style="text-align:left">Phone_No.</th>
                    </tr>
                    <xsl:for-each select="user/Buyer">
                        <tr>
                            <td>
                                <xsl:value-of select="Buyer_id" />
                            </td>
                            <td>
                                <xsl:value-of select="Name" />
                            </td>
                            <td>
                                <xsl:value-of select="Email" />
                            </td>
                            <td>
                                <xsl:value-of select="Phone_No" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>