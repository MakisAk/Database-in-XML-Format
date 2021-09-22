<?php

$con = mysqli_connect('localhost', 'administrator', 'admin', 'products');
$data = mysqli_query($con,"select * from products");
$xml = new XMLWriter();
$xml->openURI("products.xml");
$xml->startDocument();
$xml->setIndent(true);
$xml->startElement('products');
  while($row=mysqli_fetch_assoc($data))
  {
      $xml->startElement('products');
        $xml->startElement('ID');
        $xml->writeRaw($row['ID']);
        $xml->endElement();
        $xml->startElement('PRICE');
        $xml->writeRaw($row['PRICE']);
        $xml->endElement();
        $xml->startElement('RACK');
        $xml->writeRaw($row['RACK']);
        $xml->endElement();
        $xml->startElement('SALES');
        $xml->writeRaw($row['SALES']);
        $xml->endElement();
        $xml->startElement('SKU');
        $xml->writeRaw($row['SKU']);
        $xml->endElement();
  }
  $xml->endElement();
  header("Content-type: text/xml");
  $xml->flush();
?>
