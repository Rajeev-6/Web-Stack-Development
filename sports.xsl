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
      background-color: gray;
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
  <h2>Profile</h2>
  <table border="2">
    <tr bgcolor="black">
      <th>Id</th>
      <th>Name</th>
      <th>Team</th>
      <th>Age</th>
      <th>Position</th>
    </tr>
    <xsl:for-each select="basketball/profile">
    <tr>
      <td bgcolor="gray"><xsl:value-of select="playerid"/></td>
      <td bgcolor="green"><xsl:value-of select="playername"/></td>
      <td bgcolor="gray"><xsl:value-of select="team"/></td>
      <td bgcolor="green"><xsl:value-of select="age"/></td>
      <td bgcolor="gray"><xsl:value-of select="position"/></td>
    </tr>
    </xsl:for-each>
  </table>

<h2>player sorted by name</h2>
  <table border="2">
    <tr bgcolor="#9acd32">
      <th>playerid</th>
      <th>playername</th>
      <th>team</th>
      <th>age</th>
      <th>position</th>
    </tr>
    <xsl:for-each select="basketball/profile">
    <xsl:sort select="playername"/>
    <tr>
      <td bgcolor="green"><xsl:value-of select="playerid"/></td>
      <td bgcolor="gray"><xsl:value-of select="playername"/></td>
      <td bgcolor="green"><xsl:value-of select="team"/></td>
      <td bgcolor="gray"><xsl:value-of select="age"/></td>
      <td bgcolor="green"><xsl:value-of select="position"/></td>
    </tr>
    </xsl:for-each>
  </table>

<h2> team: Los Angeles</h2>
<table border="2">
    <tr bgcolor="#9acd32">
      <th>playerid</th>
      <th>playername</th>
      <th>team</th>
      <th>age</th>
      <th>position</th>
    </tr>
    <xsl:for-each select="basketball/profile">
    <xsl:if test="team='Los Angeles'">
    <tr>
       <td bgcolor="gray"><xsl:value-of select="playerid"/></td>
      <td bgcolor="green"><xsl:value-of select="playername"/></td>
      <td bgcolor="gray"><xsl:value-of select="team"/></td>
      <td bgcolor="green"><xsl:value-of select="age"/></td>
      <td bgcolor="gray"><xsl:value-of select="position"/></td>
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>

<h2> age after 30</h2>
<table border="2">
    <tr bgcolor="yellow">
       <th>playerid</th>
      <th>playername</th>
      <th>team</th>
      <th>age</th>
      <th>position</th>
    </tr>
    <xsl:for-each select="basketball/profile">


  </table>

  </center>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>