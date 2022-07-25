{{--
  Template Name: Single Fascicolo
--}}

@extends('layouts.app')
@php $fields = get_fields();

@endphp
@if($fields)
  @foreach( $fields as $name => $value )
    @php
      $sectionFields[$name] = $value
    @endphp
  @endforeach
@endif

@php
$id_fascicolo=intval($_GET['id']);
@endphp

@php
  $dbHost     = "localhost";
      $dbUsername = "root";
      $dbPassword = "123";
      $dbName     = "wp_evolve";

      // Create database connection
      $db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

      // Check connection
      if ($db->connect_error) {
          die("Connection failed: " . $db->connect_error);
      }
    $targetDir = "wp-content/uploads/doc_fascicolo/";
      $fileName = $id_fascicolo."_".basename($_FILES["fileallegato"]["name"]);
      $fileOgg = $_POST["oggetto"];
      $fileDesc = $_POST["descrizione"];
      $targetFilePath = $targetDir . $fileName;
      $fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);

      if(isset($_POST["submit"]) && !empty($_FILES["fileallegato"]["name"])){
          // Allow certain file formats
          $allowTypes = array('jpg','png','jpeg','gif','pdf','doc','docx','xls','xlsx');
          if(in_array($fileType, $allowTypes)){
              // Upload file to server move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $destination)

            if (!file_exists($targetFilePath)){
              if(move_uploaded_file($_FILES["fileallegato"]["tmp_name"], $targetFilePath)){
                  // Insert image file name into database
                  $insert = $db->query("INSERT into ALLEGATI (file_name, upload_date, id_fascicolo, oggetto, descrizione) VALUES ('".mysqli_real_escape_string($db,$fileName)."',NOW(),".$id_fascicolo.",'".mysqli_real_escape_string($db,$fileOgg)."','".mysqli_real_escape_string($db,$fileDesc)."')");
                  if($insert){
                      $statusMsg = "The file ".$fileName. " has been uploaded successfully.";
                  }else{
                      $statusMsg = "File upload failed, please try again.";
                  }
              }
			          else{
                  $statusMsg = "Sorry, there was an error uploading your file. ".$targetFilePath." - ".$_FILES["fileallegato"]["error"];
              }
          }
		  else{
			  $statusMsg="File già esistente.";
		  }
		  }else{
              $statusMsg = 'Sorry, only JPG, JPEG, PNG, GIF, & PDF files are allowed to upload.';
          }
      }


@endphp
@section('content')
@php(the_field('titolo'))
<br><hr>
@php(the_field('sottotitolo'))
<br><hr>
@php(the_field('spiegazione_vista'))
<br><hr>
@php(the_field('spiegazione_modifica'))
<br><hr>
<h2>Dati fascicolo</h2>
@include('tables.single_fascicolo',['id_fascicolo'=>$id_fascicolo])
<br><hr>
<h2>Storico specialisti</h2>
@include('tables.specialisti_fascicolo',['id_fascicolo'=>$id_fascicolo])
<br><hr>
  <h2>Gestiti del fascicolo</h2>
@include('tables.gestiti_fascicolo',['id_fascicolo'=>$id_fascicolo])
<br><hr>

<h2>Pagamenti</h2>
  @include('tables.pagamenti_fascicolo',['id_fascicolo'=>$id_fascicolo])
<br><hr>

<h2>Spese-rimborsi</h2>
@include('tables.spese_fascicolo',['id_fascicolo'=>$id_fascicolo])

<h2>Allegati</h2>
@include('tables.allegati_fascicolo',['id_fascicolo'=>$id_fascicolo])

<h3>{!! $statusMsg !!}</h3>
<div class="container datiaggiuntivi pt-5 pb-5">
  <div class="row pt-3">
    <div class="col-12">
      <h3>Inserimento DOCUMENTI fascicolo</h3>
      <form action="" method="post" enctype="multipart/form-data">
        <div class="row">

          <div class="col-12 col-md-6">
            Inserisci l'oggetto:<br/>
            <input type="text" name="oggetto" class="form-control"><br/>
          </div>
          <div class="col-12 col-md-6">
            Inserisci la descrizione:<br/>
            <input type="text" name="descrizione" class="form-control"><br/>
          </div>
          <div class="col-12 col-md-6">
            Inserisci il file<br/>
            <input type="file" name="fileallegato" class="form-control"><br/>
          </div>
          <div class="col-12 col-md-6">
            <input type="hidden" name="hiddencampo" value="inviofiles">
            <input type="submit" class="btn btn-primary" name="submit" value="Upload">
          </div>
        </div>


      </form>

    </div>
  </div>
</div>

@endsection


