{{--
  Template Name: Custom Template
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


@section('content')
@php(the_field('titolo'))
<br><hr>
@php(the_field('sottotitolo'))
<br><hr>
@php(the_field('spiegazione_vista'))
<br><hr>
@php(the_field('spiegazione_modifica'))
<br><hr>
@php($table= get_field('tabella'))
@includeIf('tables.'.$table)

@endsection


