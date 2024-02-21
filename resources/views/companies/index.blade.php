@extends('layouts.app')

@section('content')

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">

                <div class="card">
                    <div class="card-header">
                        <h4>Company List</h4>
                    </div>

                    <div class="card-body">
                        <table class="table table-bordered" id="companies_table">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col" style="width: 70px;">S No.</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">Total Employee</th>
                                    <th scope="col">Total Location</th>
                                    <th scope="col">Created On</th>
                                </tr>
                            </thead>
                            <tbody>

                                @if ($companies->count())
                                    @foreach($companies as $i => $company)
                                        <tr>
                                            <td>{{ ++$i }}</td>
                                            <td>{{ $company->name }}</td>
                                            <td>{{ $company->address }}</td>
                                            <td>{{ $company->employee_count }}</td>
                                            <td>{{ $company->locations_count }}</td>
                                            <td>{{ $company->created_at }}</td>
                                        </tr>
                                    @endforeach
                                @else
                                    <tr>
                                        <td colspan="6" class="text-center">Companies not found!</td>
                                    </tr>
                                @endif

                            </tbody>
                        </table>
                        @if ($companies->count())
                            {{ $companies->links() }}
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
