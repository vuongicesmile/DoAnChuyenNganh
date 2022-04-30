<div class="navigation">
    <div class="logo">
        <a href=index.html>
            <img src="{{asset('file-manager-template/assets/media/image/logo.png')}}" alt="logo">
        </a>
    </div>
    <ul>

            <li>
                <a href="{{route('dashboard.index')}}">
                    <i class="nav-link-icon ti-pie-chart"></i>
                    <span class="nav-link-label">Dashboard</span>
                </a>
            </li>

            <li>
                <a href="{{route('categories.index')}}">
                    <i class="nav-link-icon ti-pie-chart"></i>
                    <span class="nav-link-label">Danh mục quản lý</span>
                </a>
            </li>

            <li>
                <a href="{{route('cretitions.index')}}">
                    <i class="nav-link-icon ti-files"></i>
                    <span class="nav-link-label">Tiêu chuẩn quản lý</span>
                </a>
            </li>
            <li>
                <a href="{{route('filemanager.index')}}">
                    <i class="nav-link-icon ti-files"></i>
                    <span class="nav-link-label">Cây thư mục quản lý</span>
                </a>
            </li>

            <li>
                <a href="{{route('file.index')}}">
                    <i class="nav-link-icon ti-upload"></i>
                    <span class="nav-link-label">Tải lên</span>
                </a>
            </li>

            <li>
                <a href="{{route('user.index')}}">
                    <i class="nav-link-icon ti-user"></i>
                    <span class="nav-link-label">Người dùng</span>
                </a>
            </li>

            <li class="flex-grow-1">
                <a href="{{route('role.index')}}">
                    <i class="nav-link-icon ti-thumb-up"></i>
                    <span class="nav-link-label">Vai trò</span>
                </a>
            </li>

        <li>
            <a href="#">
                <i class="nav-link-icon ti-settings"></i>
                <span class="nav-link-label">Settings</span>
            </a>
        </li>
    </ul>
</div>
