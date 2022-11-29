<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
  <style>
    table
    {
      text-align: center;
      border-radius:20px;
      background-color: antiquewhite;
      border-width: 3px;
      border-color:black;
      transition: .2s;
    }
     table td,th
    {
      text-align: center;
      transition: .2s;
      border-radius:8px;
      
    }
    table td:hover
    {
        transform: scale(1.2);

    }
    table:hover
    {
        transform: scale(1.2);

    }
  </style>

  </head>
  <body>
  <center>
  <h2>Players Details</h2>
  <table border="2">
    <tr bgcolor="#9acd32">
        <th>ID</th>
      <th>playerid</th>
      <th>playername</th>
      <th>team</th>
      <th>age</th>
      <th>position</th>
    </tr>
    <xsl:for-each select="basketball/profile">
    <tr>
        <td bgcolor="gray"><xsl:value-of select="ID"/></td>
      <td bgcolor="gray"><xsl:value-of select="playerid"/></td>
      <td bgcolor="green"><xsl:value-of select="playername"/></td>
      <td bgcolor="gray"><xsl:value-of select="team"/></td>
      <td bgcolor="gray"><xsl:value-of select="age"/></td>
      <td bgcolor="green"><xsl:value-of select="position"/></td>
    </tr>
    </xsl:for-each>
  </table>

<h2>Player Sorted By Name</h2>
  <table border="2">
    <tr bgcolor="#9acd32">
        <th>ID</th>
      <th>playerid</th>
      <th>playername</th>
      <th>team</th>
      <th>age</th>
      <th>position</th>
    </tr>
    <xsl:for-each select="basketball/profile">
    <xsl:sort select="type"/>
    <tr>
        <td bgcolor="gray"><xsl:value-of select="ID"/></td>
      <td bgcolor="gray"><xsl:value-of select="playerid"/></td>
      <td bgcolor="green"><xsl:value-of select="playername"/></td>
      <td bgcolor="gray"><xsl:value-of select="team"/></td>
      <td bgcolor="gray"><xsl:value-of select="age"/></td>
      <td bgcolor="green"><xsl:value-of select="position"/></td>
    </tr>
    </xsl:for-each>
  </table>

<h2> Team: Los Angeles</h2>
<table border="2">
    <tr bgcolor="#9acd32">
        <th>ID</th>
      <th>playerid</th>
      <th>playername</th>
      <th>team</th>
      <th>age</th>
      <th>position</th>
    </tr>
    <xsl:for-each select="basketball/profile">
    <xsl:if test="team='Los Angeles'">
    <tr>
        <td bgcolor="gray"><xsl:value-of select="ID"/></td>
      <td bgcolor="gray"><xsl:value-of select="playerid"/></td>
      <td bgcolor="green"><xsl:value-of select="playername"/></td>
      <td bgcolor="gray"><xsl:value-of select="team"/></td>
      <td bgcolor="gray"><xsl:value-of select="age"/></td>
      <td bgcolor="green"><xsl:value-of select="position"/></td>
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>

<h2> Players Age After 30</h2>
<table border="2">
    <tr bgcolor="yellow">
        <th>ID</th>
      <th>playerid</th>
      <th>playername</th>
      <th>team</th>
      <th>age</th>
      <th>position</th>
    </tr>
    <xsl:for-each select="basketball/profile">
    <tr>
      <td bgcolor="gray"><xsl:value-of select="Title"/></td>
      <xsl:choose>
        <xsl:when test="age &gt; 30">
           <td bgcolor="blue">
           <xsl:value-of select="playername"/>
           </td>
        </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="playername"/></td>
        </xsl:otherwise>
        </xsl:choose>
        <td bgcolor="gray"><xsl:value-of select="ID"/></td>
      <td bgcolor="gray"><xsl:value-of select="playerid"/></td>
      <td bgcolor="green"><xsl:value-of select="playername"/></td>
      <td bgcolor="gray"><xsl:value-of select="team"/></td>
      <td bgcolor="gray"><xsl:value-of select="age"/></td>
      <td bgcolor="green"><xsl:value-of select="position"/></td>
    </tr>
    </xsl:for-each>
  </table>

  </center>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>