
<%@include file="../component/allComponent.jsp" %>

<nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="doctors.jsp">
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title">Doctors</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="patients.jsp">
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title">Patients</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title">Others</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="nurses.jsp">Nurses</a></li>
                <li class="nav-item"> <a class="nav-link" href="admin.jsp">Admin</a></li>
                <li class="nav-item"> <a class="nav-link" href="receptions.jsp">Receptions</a></li>
                <li class="nav-item"> <a class="nav-link" href="phamacists.jsp">phamacists</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="profile.jsp">
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title">Profile</span>
            </a>
          </li>
          
        </ul>
      </nav>

