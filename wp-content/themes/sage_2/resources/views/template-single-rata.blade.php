{{--
  Template Name: Single Rata
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
$id_rata=intval($_GET['id']);
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
<h2>ACCONTI</h2>
@include('tables.single_rata',['id_rata'=>$id_rata])
@endsection


