from django.contrib import admin
from .models import UserMaster,Candidate,Company,PostJobs,ApplyList
# Register your models here.
admin.site.register(UserMaster)
admin.site.register(Candidate)
admin.site.register(Company)
admin.site.register(PostJobs)
admin.site.register(ApplyList)
