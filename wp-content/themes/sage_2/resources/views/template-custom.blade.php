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
  ciao
@endsection


