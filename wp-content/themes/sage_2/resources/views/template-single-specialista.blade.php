{{--
  Template Name: Single Specialista
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
$id_specialista=intval($_GET['id']);

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
<h2>Dati specialista</h2>
@include('tables.single_specialista',['id_specialista'=>$id_specialista])

<h2>Fascicoli specialista</h2>
@include('tables.fascicoli_specialista',['id_specialista'=>$id_specialista])

@endsection


