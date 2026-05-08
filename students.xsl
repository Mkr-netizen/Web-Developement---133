<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Student Information</title>

    <style>
        table {
            border-collapse: collapse;
            width: 70%;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: yellow;
        }
    </style>

</head>

<body>

    <h2>Student Details</h2>

    <table>
        <tr>
            <th>Roll No</th>
            <th>Name</th>
            <th>Branch</th>
            <th>Marks</th>
        </tr>

        <xsl:for-each select="students/student">

        <tr>
            <td><xsl:value-of select="rollno"/></td>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="branch"/></td>
            <td><xsl:value-of select="marks"/></td>
        </tr>

        </xsl:for-each>

    </table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>