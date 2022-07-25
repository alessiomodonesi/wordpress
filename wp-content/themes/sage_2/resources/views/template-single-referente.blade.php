{{--
  Template Name: Single Referente
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
$id_referente=intval($_GET['id']);

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
<h2>Dati referente</h2>
@include('tables.single_referente',['id_referente'=>$id_referente])

<h2>Fascicoli referente</h2>
@include('tables.fascicoli_referente',['id_referente'=>$id_referente])

@endsection


