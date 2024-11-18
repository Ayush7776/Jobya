from django.http import HttpResponse
from django.shortcuts import redirect, render
from . models import *
from random import randint 
from django.contrib import messages
# Create your views here.

def IndexPage(request):
    return render(request,'app/index.html')

def SighupPage(request):
    return render(request,'app/signup.html')

def Loginpage(request):
    return render(request,'app/login.html')

def RegisterUser(request):
    if request.POST['role']=="Company":
        role=request.POST['role']
        fname=request.POST['firstname']
        lname=request.POST['lastname']
        email=request.POST['email']
        password=request.POST['password']
        cpassword=request.POST['cpassword']
        user=UserMaster.objects.filter(email=email)
        if user:
            messages.error(request,"Company Allready Exist")
            return render(request,'app/signup.html')
        else:
            if password==cpassword:
                otp=randint(100000,999999)
                newuser=UserMaster.objects.create(role=role,otp=otp,email=email,password=password)
                newcomp=Company.objects.create(user_id=newuser,firstname=fname,lastname=lname)
                return render(request,'app/otpverify.html',{'email':email})  
            messages.error(request,"Password And Confirm Password Not Matched..")
            return render(request,'app/signup.html')
    else:
        if request.POST['role']=="Candidate":
            role=request.POST['role']
            fname=request.POST['firstname']
            lname=request.POST['lastname']
            email=request.POST['email']
            password=request.POST['password']
            cpassword=request.POST['cpassword']

            user=UserMaster.objects.filter(email=email)

        if user:
            messages.error(request,"Candidate Allready Exist")
            return render(request,'app/signup.html')
        else:
            if password==cpassword:
                otp=randint(100000,999999)
                
                newuser=UserMaster.objects.create(role=role,otp=otp,email=email,password=password)
                newcomp=Candidate.objects.create(user_id=newuser,firstname=fname,lastname=lname)
                return render(request,'app/otpverify.html',{'email':email})  
            messages.error(request,"Password And Confirm Password Not Matched..")
            return render(request,'app/signup.html')
def Otpverify(request):
    if request.method=="POST":
        email=request.POST['email']     
        otp=int(request.POST['otp'])
        user=UserMaster.objects.get(email=email)

        if user:
            if user.otp == otp:
                messages.success(request,"Account Created SucessFully Please Login Using Your Credentials..")

                return render(request,'app/login.html')
            else:
                messages.error(request,"Invalid OTP..")
                return render(request,'app/otpverify.html')
    else:
        return render(request,'app/sighup.html')


def Loginuser(request):
    if request.POST['role']=="Candidate":
        email=request.POST['email']   
        password=request.POST['password']
        try:
            user=UserMaster.objects.get(email=email)
        except:
            messages.error(request,"User Does Not Exist")
            return render(request,'app/login.html')
            
        if user:
            if user.password==password and user.role=="Candidate":
                can=Candidate.objects.get(user_id=user)
                request.session['id']=user.id
                request.session['role']=user.role
                request.session['firstname']=can.firstname
                request.session['lastname']=can.lastname
                request.session['email']=user.email
                request.session['password']=user.password
                return redirect('index')
            else:
                messages.error(request,"Password And Confirm Password Not Matched..")
                return render(request,'app/login.html',{'msg':massage})
  
    if request.POST['role']=="Company":
        email=request.POST['email']   
        password=request.POST['password']

        try:
            user=UserMaster.objects.get(email=email)
        except:
            messages.error(request,"Compony Does Not Exists..")
            return render(request,'app/login.html')

        if user:
            if user.password==password and user.role=="Company":
                can=Company.objects.get(user_id=user)
                request.session['id']=user.id
                request.session['role']=user.role
                request.session['firstname']=can.firstname
                request.session['lastname']=can.lastname
                request.session['email']=user.email
                request.session['password']=user.password
                return redirect('componyindex')
    
    messages.error(request,"Creditentials Does Not Match..")

    return render(request,'app/login.html')
            

def Profile(request,pk):
    user=UserMaster.objects.get(pk=pk)
    can =Candidate.objects.get(user_id=user)
    # return render(request,'app/profile.html')
    return render(request,'app/profile.html',{'user':user,'can':can})

def UpdateProfile(request,pk):
    user=UserMaster.objects.get(pk=pk)
 
    if user.role=="Candidate":
        can=Candidate.objects.get(user_id=user)
        can.country=request.POST['country']
        # can.state=request.POST['state']
        can.city=request.POST['city']
        can.jobtype=request.POST['jobtype']
        can.min_salary=request.POST['min_salary']
        can.max_salary=request.POST['max_salary']
        can.jobcategory=request.POST['jobcategory']
        can.highestedu=request.POST['highestedu']
        can.experiance=request.POST['experiance']
        can.website=request.POST['website']
        can.shift=request.POST['shift']
        can.jobdesc=request.POST['jobdesc']
        can.contact=request.POST['contact']
        can.gender=request.POST['gender']
        can.profile_pic=request.FILES['profile_pic']
        can.save()
        url=f'/profile/{pk}' # Formating URL
        messages.success(request,"Your Profile Has Been Updated..")
        return redirect(url)
    
def ApplyJob(request,pk):
        user=request.session['id']
        if user:
            cand=Candidate.objects.get(user_id=user)
            job=PostJobs.objects.get(id=pk)
        return render(request,'app/apply.html',{'user':user,'can':cand,'job':job})

def Apply(request,pk):
    user=request.session['id']
    if user:
        can=Candidate.objects.get(user_id=user)
        job=PostJobs.objects.get(id=pk)
        edu=request.POST['education']
        exp=request.POST['expiriance']
        web=request.POST['website']
        gender=request.POST['gender']
        min_salary=request.POST['min_salary']
        max_salary=request.POST['max_salary']
        resume=request.FILES['resume']
        print("My Name Is Yash",edu,exp)
        # new=ApplyList.objects.create(candidate=can,job=job,education=edu,expiriance=exp)
        newapply=ApplyList.objects.create(candidate=can,job=job,education=edu,expiriance=exp,website=web,min_salary=min_salary,max_salary=max_salary,gender=gender,resume=resume)
        messages.success(request,"Applied SucessFully..")
        url=f'/joblist' # Formating URL
        # massage="Thanks For Applied To"
        return redirect(url)

def UserLogout(request):
    del request.session['email']
    del request.session['password']
    del request.session['id']
    del request.session['role']
    del request.session['firstname']
    del request.session['lastname']
    messages.success(request,"Logout Suceesfully..")
    return redirect('login')


        

########################### COMPONY SIDE ##############################################

def componyindexpage(request):
    return render(request,'app/Compony/index.html')

def ComponyProfilePage(request,pk):
    user=UserMaster.objects.get(pk=pk)
    # print("My Name Is Yash",user)
    comp=Company.objects.get(user_id=user)
    return render(request,'app/Compony/profile.html',{'user':user,'comp':comp})

def ComponyProfileUpdate(request,pk):
    user=UserMaster.objects.get(pk=pk)
    if user.role=="Company":
        comp=Company.objects.get(user_id=user)
        comp.firstname=request.POST['compfname']
        comp.lastname=request.POST['complname']
        comp.state=request.POST['compstate']
        comp.company_name=request.POST['compname']
        comp.city=request.POST['compcity']
        comp.email=request.POST['email']
        comp.contact=request.POST['compcontact']
        comp.website=request.POST['compwebsite']
        comp.desc=request.POST['compdesc']
        comp.logo_pic=request.FILES['logo_pic']
        comp.save()
        url=f"/componyprofile/{pk}"
        return redirect(url)

def JobPostPage(request):
    return render(request,"app/Compony/jobpost.html")

def JobDetailsSubmit(request,pk):
    user= UserMaster.objects.get(id=pk)
    if user.role=="Company":
        comp=Company.objects.get(user_id=user)
        jobname=request.POST['jobname']
        componyname=request.POST['componyname']
        componyaddress=request.POST['componyaddress']
        qualification=request.POST['qualification']
        # # jobdesc=request.POST['jobdesc']
        componydesc=request.POST['componydesc']
        responsibilties=request.POST['responsibilties']
        location=request.POST['location']
        componywebsite=request.POST['componywebsite']
        componyemail=request.POST['componyemail']
        componycontact=request.POST['componycontact']
        salarypackage=request.POST['salarypackage']
        experiace=request.POST['experiace']
        logo=request.FILES['logo']

        newjob=PostJobs.objects.create(compony_id=comp,jobname=jobname,componyname=componyname,componyaddress=componyaddress,qualification=qualification,responsibilties=responsibilties,location=location,componywebsite=componywebsite,componyemail=componyemail,componycontact=componycontact,salarypackage=salarypackage,componydesc=componydesc,experiace=experiace,logo=logo)

        massage="Your Job Has Been Posted"
        return render(request,"app/Compony/jobpost.html",{'msg':massage})

def ShowPostJob(request,pk):
    print(pk)
    all_info=PostJobs.objects.all()
    print(all_info)
    return render(request,'app/Compony/tables.html',{'all_info':all_info})

def CandidateJoblist(request):
    all_info=PostJobs.objects.all()
    return render(request,'app/job-list.html',{'all_info':all_info})

def ComponyLogout(request):
    del request.session['email']
    del request.session['password']
    return redirect('login')

def AppliedJob(request):
    aplist=ApplyList.objects.all()
    return render(request,'app/Compony/appliedjob.html',{'aplist':aplist})


######################### Admin Side #########################################

def Adminlogin(request):
    return render (request,'app/admin/login.html')

def Adminindex(request):
    if 'username' in request.session and 'password' in request.session:
        return render (request,'app/admin/index.html')
    else:
        return redirect('adminlogin')

def Admin_auth(request):
    if request.method=="POST":
        username=request.POST['username']
        password=request.POST['password']
        if username=="admin" and password=="admin":
            request.session['username']=username
            request.session['password']=password
            return render (request,'app/admin/index.html')
        else:
            massage="Check Your UserName Or Password"
            return render (request,'app/admin/login.html',{'msg':massage})
        
def AdminUserList(request):
    all_user=UserMaster.objects.filter(role="Candidate")
    return render(request,'app/admin/adminUserlist.html',{'all_user':all_user})

def AdminComponyList(request):
    all_compony=UserMaster.objects.filter(role="Company")
    return render(request,'app/admin/adminComponylist.html',{'all_compony':all_compony})

def AdminUserDelete(request,pk):
    del_user=UserMaster.objects.get(pk=pk)
    del_user.delete()
    return redirect('adminuserlist')

def AdminCompanyDelete(request,pk):
    del_comp=UserMaster.objects.get(pk=pk)
    del_comp.delete()
    return redirect('admincompanylist')

def AdminVerifyCompanyPage(request,pk):
    compony=UserMaster.objects.get(pk=pk)
    if compony:
        return render(request,'app/admin/verify.html',{'compony':compony})
    

def UpdateCompanyVarification(request,pk):
    compony=UserMaster.objects.get(pk=pk)
    if compony:
        compony.is_varified=request.POST['varification']
        compony.save()
        return redirect('admincompanylist')
