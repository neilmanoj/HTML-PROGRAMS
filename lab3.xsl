<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
        <style>
            #customers {
              font-family: Arial, Helvetica, sans-serif;
              border-collapse: collapse;
              width: 100%;
            }
            
            #customers td, #customers th {
              border: 1px solid #ddd;
              padding: 8px;
            }
            
            #customers tr:nth-child(even){background-color: #f2f2f2;}
            
            #customers tr:hover {background-color: #ddd;}
            
            #customers th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #04AA6D;
              color: white;
            }
            h2{
                text-align:center;
                color:blue;
            }
            h2:hover{
                color:red;
            }
        </style>
    </head>
  <body>
  <h2>Hotel data</h2>
  <table border="1" id="customers">
    <tr bgcolor="#9acd32">
      <th>ID</th>
      <th>Name</th>
      <th>customer_id</th>
      <th>Address</th>
      <th>manager_id</th>
      <th>input_id</th>
    </tr>
    <xsl:for-each select="hotelmanagement/hotel">
        <tr>
            <td><xsl:value-of select="hid"/></td>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="customerid"/></td>
            <td><xsl:value-of select="address"/></td>
            <td><xsl:value-of select="managerid"/></td>
            <td><xsl:value-of select="inputid"/></td>
        </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>