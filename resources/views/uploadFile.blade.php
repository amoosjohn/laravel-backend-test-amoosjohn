<html>
<body>
<div style="left: 0;
    line-height: 200px;
    margin-top: -100px;
    position: absolute;
    text-align: center;
    top: 50%;
    width: 100%;">
    @if($errors->any())
        @foreach($errors->all() as $error)
            <div style="color: #ea1d06">
                <strong>Validation Error!</strong> {{$error}}.
            </div>
        @endforeach
    @endif
    <form method="post" action="{{'/upload-a-file'}}" enctype="multipart/form-data">
        @csrf
        <input type="file" name="file">
        <button>Upload</button>
    </form>
</div>
</body>
</html>
