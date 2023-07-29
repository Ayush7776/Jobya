from django.urls import path,include
from . import views
urlpatterns = [
    path('',views.IndexPage,name='index'),
    path('signup',views.SighupPage,name='signup'),
    path('register',views.RegisterUser,name='register'),
    path('login',views.Loginpage,name='login'),
    path('loginuser',views.Loginuser,name='loginuser'),
    path('otpverify',views.Otpverify,name='otpverify'),
    path('profile/<int:pk>',views.Profile,name='profile'),
    path('updateprofile/<int:pk>',views.UpdateProfile,name='updateprofile'),
    path('joblist',views.CandidateJoblist,name='joblist'),
    path('applyjob/<int:pk>',views.ApplyJob,name='applyjob'),
    path('applynaukri/<int:pk>',views.Apply,name='applynaukri'),
    path('userlogout',views.UserLogout,name='userlogout'),
    



    ################## Compony Side ULS############################################################
    path('componyindex',views.componyindexpage,name='componyindex'),
    path('componyprofile/<int:pk>',views.ComponyProfilePage,name='componyprofile'),
    path('componyprofileupdate/<int:pk>',views.ComponyProfileUpdate,name='componyprofileupdate'),
    path('jobpostpage',views.JobPostPage,name='jobpostpage'),
    path('jobpost/<int:pk>',views.JobDetailsSubmit,name='jobpost'),
    path('showpostjob',views.ShowPostJob,name='showpostjob'),
    path('componylogout',views.ComponyLogout,name='componylogout'),
    path('appliedjob',views.AppliedJob,name='appliedjob'),

    #################### Admin Side Urls #####################################
    path('adminlogin',views.Adminlogin,name='adminlogin'),
    path('adminindex',views.Adminindex,name='adminindex'),
    path('admin_auth',views.Admin_auth,name='admin_auth'),
    path('adminuserlist',views.AdminUserList,name='adminuserlist'),
    path('admincompanylist',views.AdminComponyList,name='admincompanylist'),
    path('adminuserdel/<int:pk>',views.AdminUserDelete,name='adminuserdel'),
    path('admincompdel/<int:pk>',views.AdminCompanyDelete,name='admincompdel'),
    path('adminverifycomp/<int:pk>',views.AdminVerifyCompanyPage,name='adminverifycomp'),
    path('updatecompverification/<int:pk>',views.UpdateCompanyVarification,name='updatecompverification'),
    

]
