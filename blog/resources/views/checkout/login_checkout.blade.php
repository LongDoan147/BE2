@extends('layouts.master');
@section('content')
<section id="form">
    <!--form-->
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-1">
                <div class="login-form">
                    <!--login form-->
                    <h2>Đăng Nhập tài Khoản</h2>
                    <form action="#">
                        <input type="text" name="email_account" placeholder="Tài Khoản" />
                        <input type="password" name="password_account" placeholder="Mật Khẩu" />
                        <span>
                            <input type="checkbox" class="checkbox">
                           Ghi Nhớ Đăng Nhập
                        </span>
                        <button type="submit" class="btn btn-default">Đăng Nhập</button>
                    </form>
                </div>
                <!--/login form-->
            </div>
            <div class="col-sm-1">
                <h2 class="or">Hoặc</h2>
            </div>
            <div class="col-sm-4">
                <div class="signup-form">
                    <!--sign up form-->
                    <h2>Đăng Ký</h2>
                    <form action="#">
                        <input type="text" placeholder="Họ và Tên" />
                        <input type="email" placeholder="Địa Chỉ Email" />
                        <input type="password" placeholder="Mật Khẩu    " />
                        <input type="text" placeholder="Điện Thoại" />
                        <button type="submit" class="btn btn-default">Đăng Kí</button>
                    </form>
                </div>
                <!--/sign up form-->
            </div>
        </div>
    </div>
</section>
<!--/form-->
@endsection;