{{--
  Template Name: Single Pagamento
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
$id_pagamento=intval($_GET['id']);
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
<h2>Rate</h2>
@include('tables.rate_pagamento',['id_pagamento'=>$id_pagamento])
@endsection


