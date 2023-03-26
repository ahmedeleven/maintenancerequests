from django.shortcuts import render,redirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.contrib.auth.decorators import permission_required
from django.contrib.auth.decorators import login_required
from django.contrib.auth.decorators import user_passes_test

from django.contrib import messages
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth.forms import AdminPasswordChangeForm


from .forms import StatusForm
from .forms import DeviceForm
from .forms import BrandForm
from .forms import DepartmentForm
from .forms import CompanyForm
from .forms import TechnicianForm
from .forms import BuildingForm
from .forms import PrinterForm
from .forms import RequestForm
from .forms import SignUpForm
from .forms import EditUserForm
from .forms import GroupForm
from .models import Status
from .models import Device
from .models import Brand
from .models import Department
from .models import Company
from .models import Technician
from .models import Building
from .models import Printer
from .models import Request
from django.contrib.auth.models import User
from django.contrib.auth.models import Group
from django.contrib.auth.models import Permission


from django.http import HttpResponse


import json
import csv

@permission_required('requests.view_statuses', raise_exception=True)
def statusesIndex(request):
	statuses_list = Status.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(statuses_list, 10)
	try:
		statuses = paginator.page(page)
	except PageNotAnInteger:
		statuses = paginator.page(1)
	except EmptyPage:
		statuses = paginator.page(paginator.num_pages)

	return render(request,"statuses/index.html",{'statuses':statuses,})

@permission_required('requests.add_status', raise_exception=True)
def statusesAdd(request):
	form = StatusForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('statusesIndex')
	else:
		return render(request,"statuses/add.html",{'form':form,'action_link': 'statusesAdd','error_message': "There is a problem here."})


@permission_required('requests.change_status', raise_exception=True)
def statusesEdit(request,id):
	status = Status.objects.get(id=id)
	form = StatusForm(request.POST or None, instance=status)
	if form.is_valid():
		form.save()
		return redirect('statusesIndex')
	else:
		return render(request,"statuses/add.html",{'form':form,'status':status})


@permission_required('requests.delete_status', raise_exception=True)
def statusesDelete(request,id):
	status = Status.objects.get(id=id)
	status.delete()
	return redirect('statusesIndex')












''' buldings functions '''


@permission_required('requests.view_buildings', raise_exception=True)
def buildingsIndex(request):
	buildings_list = Building.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(buildings_list, 10)
	try:
		buildings = paginator.page(page)
	except PageNotAnInteger:
		buildings = paginator.page(1)
	except EmptyPage:
		buildings = paginator.page(paginator.num_pages)

	return render(request,"buildings/index.html",{'buildings':buildings,})

@permission_required('requests.add_building', raise_exception=True)
def buildingsAdd(request):
	form = BuildingForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('buildingsIndex')
	else:
		return render(request,"buildings/add.html",{'form':form,'action_link': 'buildingsAdd','error_message': "There is a problem here."})


@permission_required('requests.change_building', raise_exception=True)
def buildingsEdit(request,id):
	building = Building.objects.get(id=id)
	form = BuildingForm(request.POST or None, instance=building)
	if form.is_valid():
		form.save()
		return redirect('buildingsIndex')
	else:
		return render(request,"buildings/add.html",{'form':form,'building':building})


@permission_required('requests.delete_building', raise_exception=True)
def buildingsDelete(request,id):
	building = Building.objects.get(id=id)
	building.delete()
	return redirect('buildingsIndex')














''' devices functions '''
@permission_required('requests.view_devices', raise_exception=True)
def devicesIndex(request):
	devices_list = Device.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(devices_list, 10)
	try:
		devices = paginator.page(page)
	except PageNotAnInteger:
		devices = paginator.page(1)
	except EmptyPage:
		devices = paginator.page(paginator.num_pages)

	return render(request,"devices/index.html",{'devices':devices,})



@permission_required('requests.add_device', raise_exception=True)
def devicesAdd(request):
	form = DeviceForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('devicesIndex')
	else:
		return render(request,"devices/add.html",{'form':form,'action_link': 'devicesAdd','error_message': "There is a problem here."})


@permission_required('requests.change_device', raise_exception=True)
def devicesEdit(request,id):
	device = Device.objects.get(id=id)
	form = DeviceForm(request.POST or None, instance=device)
	if form.is_valid():
		form.save()
		return redirect('devicesIndex')
	else:
		return render(request,"devices/add.html",{'form':form,'device':device})


@permission_required('requests.delete_device', raise_exception=True)
def devicesDelete(request,id):
	device = Device.objects.get(id=id)
	device.delete()
	return redirect('devicesIndex')








''' brands functions '''
@permission_required('requests.view_brands', raise_exception=True)
def brandsIndex(request):
	brands_list = Brand.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(brands_list, 10)
	try:
		brands = paginator.page(page)
	except PageNotAnInteger:
		brands = paginator.page(1)
	except EmptyPage:
		brands = paginator.page(paginator.num_pages)

	return render(request,"brands/index.html",{'brands':brands,})



@permission_required('requests.add_brand', raise_exception=True)
def brandsAdd(request):
	form = BrandForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('brandsIndex')
	else:
		return render(request,"brands/add.html",{'form':form,'action_link': 'brandsAdd','error_message': "There is a problem here."})


@permission_required('requests.change_brand', raise_exception=True)
def brandsEdit(request,id):
	brand = Brand.objects.get(id=id)
	form = BrandForm(request.POST or None, instance=brand)
	if form.is_valid():
		form.save()
		return redirect('brandsIndex')
	else:
		return render(request,"brands/add.html",{'form':form,'brand':brand})


@permission_required('requests.delete_brand', raise_exception=True)
def brandsDelete(request,id):
	brand = Brand.objects.get(id=id)
	brand.delete()
	return redirect('brandsIndex')









''' departments functions '''
@permission_required('requests.view_departments', raise_exception=True)
def departmentsIndex(request):
	departments_list = Department.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(departments_list, 10)
	try:
		departments = paginator.page(page)
	except PageNotAnInteger:
		departments = paginator.page(1)
	except EmptyPage:
		departments = paginator.page(paginator.num_pages)

	return render(request,"departments/index.html",{'departments':departments,})



@permission_required('requests.add_department', raise_exception=True)
def departmentsAdd(request):
	form = DepartmentForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('departmentsIndex')
	else:
		return render(request,"departments/add.html",{'form':form,'action_link': 'departmentsAdd','error_message': "There is a problem here."})


@permission_required('requests.change_department', raise_exception=True)
def departmentsEdit(request,id):
	department = Department.objects.get(id=id)
	form = DepartmentForm(request.POST or None, instance=department)
	if form.is_valid():
		form.save()
		return redirect('departmentsIndex')
	else:
		return render(request,"departments/add.html",{'form':form,'department':department})


@permission_required('requests.delete_department', raise_exception=True)
def departmentsDelete(request,id):
	department = Department.objects.get(id=id)
	department.delete()
	return redirect('departmentsIndex')


''' Companies '''
@permission_required('requests.view_companies', raise_exception=True)
def companiesIndex(request):
	companies_list = Company.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(companies_list, 10)
	try:
		companies = paginator.page(page)
	except PageNotAnInteger:
		companies = paginator.page(1)
	except EmptyPage:
		companies = paginator.page(paginator.num_pages)

	return render(request,"companies/index.html",{'companies':companies,})


@permission_required('requests.add_company', raise_exception=True)
def companiesAdd(request):
	form = CompanyForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('companiesIndex')
	else:
		return render(request,"companies/add.html",{'form':form,'action_link': 'companiesAdd','error_message': "There is a problem here."})

@permission_required('requests.change_company', raise_exception=True)
def companiesEdit(request,id):
	company = Company.objects.get(id=id)
	form = CompanyForm(request.POST or None, instance=company)
	if form.is_valid():
		form.save()
		return redirect('companiesIndex')
	else:
		return render(request,"companies/add.html",{'form':form,'company':company})

@permission_required('requests.delete_company', raise_exception=True)
def companiesDelete(request,id):
	company = Company.objects.get(id=id)
	company.delete()
	return redirect('companiesIndex')


''' Technicians '''
@permission_required('requests.view_technicians', raise_exception=True)
def techniciansIndex(request):
	technicians_list = Technician.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(technicians_list, 10)
	try:
		technicians = paginator.page(page)
	except PageNotAnInteger:
		technicians = paginator.page(1)
	except EmptyPage:
		technicians = paginator.page(paginator.num_pages)

	return render(request,"technicians/index.html",{'technicians':technicians,})


@permission_required('requests.add_technician', raise_exception=True)
def techniciansAdd(request):
	form = TechnicianForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('techniciansIndex')
	else:
		return render(request,"technicians/add.html",{'form':form,'action_link': 'techniciansAdd','error_message': "There is a problem here."})

@permission_required('requests.change_technician', raise_exception=True)
def techniciansEdit(request,id):
	technician = Technician.objects.get(id=id)
	form = TechnicianForm(request.POST or None, instance=technician)
	if form.is_valid():
		form.save()
		return redirect('techniciansIndex')
	else:
		return render(request,"technicians/add.html",{'form':form,'technician':technician})

@permission_required('requests.delete_technician', raise_exception=True)
def techniciansDelete(request,id):
	technician = Technician.objects.get(id=id)
	technician.delete()
	return redirect('techniciansIndex')



@login_required
def homePage(request):
	return render(request,"requests/home.html")














''' Printers '''
@permission_required('requests.view_printers', raise_exception=True)
def printersIndex(request):
	buildings_list = Building.objects.only('name')
	departments_list = Department.objects.only('name')

	printers_list = Printer.objects.all().order_by('-id')

	printers_ids = []
	for printer in printers_list:
		printers_ids.append(printer.id)

	printers_ids_string = '-'.join(str(x) for x in printers_ids)

	page = request.GET.get('page', 1)

	paginator = Paginator(printers_list, 10)
	try:
		printers = paginator.page(page)
	except PageNotAnInteger:
		printers = paginator.page(1)
	except EmptyPage:
		printers = paginator.page(paginator.num_pages)

	return render(request,"printers/index.html",{'printers':printers,'buildings_list':buildings_list,'departments_list':departments_list,'printers_ids_string':printers_ids_string})


@permission_required('requests.add_printer', raise_exception=True)
def printersAdd(request):
	form = PrinterForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('printersIndex')
	else:
		return render(request,"printers/add.html",{'form':form,'action_link': 'printersAdd','error_message': "There is a problem here."})


@permission_required('requests.change_printer', raise_exception=True)
def printersEdit(request,id):
	printer = Printer.objects.get(id=id)
	form = PrinterForm(request.POST or None, instance=printer)
	if form.is_valid():
		form.save()
		return redirect('printersIndex')
	else:
		return render(request,"printers/add.html",{'form':form,'printer':printer})


@permission_required('requests.view_printers', raise_exception=True)
def printersSearch(request):
	result = Printer.objects.all()
	if request.GET['reference']:
		result = result.filter(reference__startswith = request.GET['reference'])
	if request.GET['barcode']:
		result = result.filter(barcode__startswith = request.GET['barcode'])
	if request.GET['model']:
		result = result.filter(model__icontains = request.GET['model'])
	if request.GET['floor']:
		result = result.filter(floor = request.GET['floor'])
	if request.GET['building_name']:
		result = result.filter(building__name__icontains = request.GET['building_name'])
	if request.GET['department_name']:
		result = result.filter(department__name__icontains = request.GET['department_name'])


	printers_ids = []
	for printer in result:
		printers_ids.append(printer.id)

	printers_ids_string = '-'.join(str(x) for x in printers_ids)


	return render(request, 'printers/search.html',{'printers':result,'printers_ids_string':printers_ids_string})



@permission_required('requests.delete_printer', raise_exception=True)
def printersDelete(request,id):
	printer = Printer.objects.get(id=id)
	printer.delete()
	return redirect('printersIndex')


@permission_required('requests.view_printers', raise_exception=True)
def printersExport(request,ids):
	ids_array = ids.split('-')
	printers_list = Printer.objects.all().filter(id__in = ids_array).order_by('-id')
	response = HttpResponse(content_type='text/csv')
	response['Content-Disposition'] = 'attachment; filename="printersexport.csv"'

	writer = csv.writer(response)
	writer.writerow(['Model','Brand', 'Building', 'Department','Floor','Room','IP','Barcode','Reference','Notes'])

	for printer in printers_list:
		row = []
		row.append(printer.model)
		row.append(printer.brand)
		row.append(printer.building.name)
		row.append(printer.department.name)
		row.append(printer.floor)
		row.append(printer.room)
		row.append(printer.ip)
		row.append(printer.barcode)
		row.append(printer.reference)
		row.append(printer.notes)
		writer.writerow(row)

	return response

@permission_required('requests.view_printers', raise_exception=True)
def printersView(request,id):
	printer = Printer.objects.get(id=id)
	return render(request,"printers/view.html",{'printer':printer})


































''' Requests '''
@permission_required('requests.view_requests', raise_exception=True)
def requestsIndex(request):
	statuses_list = Status.objects.only('name')
	technicians_list = Technician.objects.only('name')
	devices_list = Device.objects.only('name')
	departments_list = Department.objects.only('name')

	requests_list = Request.objects.all().order_by('-id')

	requests_ids = []
	for the_request in requests_list:
		requests_ids.append(the_request.id)

	requests_ids_string = '-'.join(str(x) for x in requests_ids)

	page = request.GET.get('page', 1)

	paginator = Paginator(requests_list, 10)
	try:
		requests = paginator.page(page)
	except PageNotAnInteger:
		requests = paginator.page(1)
	except EmptyPage:
		requests = paginator.page(paginator.num_pages)

	return render(request,"requests/index.html",{'requests':requests,'statuses_list':statuses_list,'devices_list':devices_list,'departments_list':departments_list,'technicians_list':technicians_list,'requests_ids_string':requests_ids_string})


@permission_required('requests.add_request', raise_exception=True)
def requestsAdd(request):
	form = RequestForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('requestsIndex')
	else:
		return render(request,"requests/add.html",{'form':form,'action_link': 'requestsAdd','error_message': "There is a problem here."})


@permission_required('requests.change_request', raise_exception=True)
def requestsEdit(request,id):
	the_request = Request.objects.get(id=id)
	form = RequestForm(request.POST or None, instance=the_request)
	if form.is_valid():
		form.save()
		return redirect('requestsIndex')
	else:
		return render(request,"requests/add.html",{'form':form,'the_request':the_request})


@permission_required('requests.view_requests', raise_exception=True)
def requestsSearch(request):
	result = Request.objects.all()
	if request.GET['reference']:
		result = result.filter(reference__startswith = request.GET['reference'])
	if request.GET['employee_name']:
		result = result.filter(employee__icontains = request.GET['employee_name'])
	if request.GET['company_name']:
		result = result.filter(company__name__icontains = request.GET['company_name'])
	if request.GET['technician_name']:
		result = result.filter(technician__name__icontains = request.GET['technician_name'])
	if request.GET['status_name']:
		result = result.filter(status__name__icontains = request.GET['status_name'])
	if request.GET['device_name']:
		result = result.filter(device__name__icontains = request.GET['device_name'])
	if request.GET['department_name']:
		result = result.filter(department__name__icontains = request.GET['department_name'])
	if request.GET['request_date_from']:
		result = result.filter(request_date__gte = request.GET['request_date_from'])
	if request.GET['request_date_to']:
		result = result.filter(request_date__lte = request.GET['request_date_to'])


	requests_ids = []
	for the_request in result:
		requests_ids.append(the_request.id)

	requests_ids_string = '-'.join(str(x) for x in requests_ids)


	return render(request, 'requests/search.html',{'requests':result,'requests_ids_string':requests_ids_string})








'''@login_required
def tonersSearch(request):
	result = Request.objects.filter(device__name='Toner').order_by('-id')
	if request.GET['reference']:
		result = result.filter(reference__startswith = request.GET['reference'])
	if request.GET['employee_name']:
		result = result.filter(employee__icontains = request.GET['employee_name'])
	if request.GET['company_name']:
		result = result.filter(company__name__icontains = request.GET['company_name'])
	if request.GET['status_name']:
		result = result.filter(status__name__icontains = request.GET['status_name'])
	if request.GET['department_name']:
		result = result.filter(department__name__icontains = request.GET['department_name'])
	if request.GET['request_date_from']:
		result = result.filter(request_date__gte = request.GET['request_date_from'])
	if request.GET['request_date_to']:
		result = result.filter(request_date__lte = request.GET['request_date_to'])


	requests_ids = []
	for the_request in result:
		requests_ids.append(the_request.id)

	requests_ids_string = '-'.join(str(x) for x in requests_ids)


	return render(request, 'requests/searchtoners.html',{'requests':result,'requests_ids_string':requests_ids_string})'''






'''@permission_required('requests.view_toners', raise_exception=True)
def requestsToners(request):
	statuses_list = Status.objects.only('name')
	technicians_list = Technician.objects.only('name')
	devices_list = Device.objects.only('name')
	departments_list = Department.objects.only('name')

	requests_list = Request.objects.filter(device__name='Toner').order_by('-id')

	requests_ids = []
	for the_request in requests_list:
		requests_ids.append(the_request.id)

	requests_ids_string = '-'.join(str(x) for x in requests_ids)

	page = request.GET.get('page', 1)

	paginator = Paginator(requests_list, 10)
	try:
		requests = paginator.page(page)
	except PageNotAnInteger:
		requests = paginator.page(1)
	except EmptyPage:
		requests = paginator.page(paginator.num_pages)

	return render(request,"requests/toners.html",{'requests':requests,'devices_list':devices_list,'departments_list':departments_list,'statuses_list':statuses_list,'technicians_list':technicians_list,'requests_ids_string':requests_ids_string})'''




'''@permission_required('requests.edit_toners', raise_exception=True)
def tonersEdit(request,id):
	the_request = Request.objects.get(id=id)
	form = EditTonerForm(request.POST or None, instance=the_request)
	if form.is_valid():
		form.save()
		return redirect('requestsToners')
	else:
		return render(request,"requests/edittoners.html",{'form':form,'the_request':the_request})'''





@permission_required('requests.delete_request', raise_exception=True)
def requestsDelete(request,id):
	the_request = Request.objects.get(id=id)
	the_request.delete()
	return redirect('requestsIndex')


@permission_required('requests.view_requests', raise_exception=True)
def requestsExport(request,ids):
	ids_array = ids.split('-')
	requests_list = Request.objects.all().filter(id__in = ids_array).order_by('-id')
	response = HttpResponse(content_type='text/csv')
	response['Content-Disposition'] = 'attachment; filename="requestsexport.csv"'

	writer = csv.writer(response)
	writer.writerow(['Reference','Technician', 'Company', 'Status'])

	for request in requests_list:
		row = []
		row.append(request.reference)
		row.append(request.technician)
		row.append(request.company)
		row.append(request.status)
		writer.writerow(row)

	return response

@permission_required('requests.view_requests', raise_exception=True)
def requestsView(request,id):
	the_request = Request.objects.get(id=id)
	return render(request,"requests/view.html",{'the_request':the_request})


@user_passes_test(lambda u: u.is_superuser)
def usersAdd(request):
	form = SignUpForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('usersIndex')
	else:
		return render(request,"users/add.html",{'form':form,'action_link': 'usersAdd','error_message': "There is a problem here."})


@user_passes_test(lambda u: u.is_superuser)
def usersEdit(request,id):
	user = User.objects.get(id=id)
	form = EditUserForm(request.POST or None, instance=user)
	if form.is_valid():
		form.save()
		return redirect('usersIndex')
	else:
		return render(request,"users/edit.html",{'form':form,'theuser':user})

@user_passes_test(lambda u: u.is_superuser)
def usersIndex(request):
	users_list = User.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(users_list, 10)
	try:
		users = paginator.page(page)
	except PageNotAnInteger:
		users = paginator.page(1)
	except EmptyPage:
		users = paginator.page(paginator.num_pages)

	return render(request,"users/index.html",{'users':users,})


@user_passes_test(lambda u: u.is_superuser)
def usersView(request,id):
	user = User.objects.get(id=id)
	permissions = Permission.objects.filter(user__id=id)
	groups = Group.objects.filter(user__id=id)
	return render(request,"users/view.html",{'theuser':user,'permissions':permissions,'groups':groups})

@user_passes_test(lambda u: u.is_superuser)
def usersDelete(request,id):
	user = User.objects.get(id=id)
	user.delete()
	return redirect('usersIndex')


@login_required
def changePassword(request):
	if request.method == 'POST':
		form = PasswordChangeForm(request.user, request.POST)
		if form.is_valid():
			user = form.save()
			update_session_auth_hash(request, user)  # Important!
			#messages.success(request, 'Your password was successfully updated!')
			return redirect('homePage')
		else:
			messages.error(request, 'Please correct the error below.')
	else:
		form = PasswordChangeForm(request.user)
	return render(request, 'users/changepassword.html', {
		'form': form
	})




@user_passes_test(lambda u: u.is_superuser)
def adminChangePassword(request,id):
	user = User.objects.get(id=id)
	if request.method == 'POST':
		form = AdminPasswordChangeForm(user, request.POST)
		if form.is_valid():
			user = form.save()
			update_session_auth_hash(request, user)  # Important!
			#messages.success(request, 'Your password was successfully updated!')
			return redirect('usersIndex')
		else:
			messages.error(request, 'Please correct the error below.')
	else:
		form = AdminPasswordChangeForm(request.user)
	return render(request, 'users/adminchangepassword.html', {
		'form': form,
		'user':user
	})


@user_passes_test(lambda u: u.is_superuser)
def groupsAdd(request):
	form = GroupForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('groupsIndex')
	else:
		return render(request,"groups/add.html",{'form':form,'action_link': 'groupsAdd','error_message': "There is a problem here."})


@user_passes_test(lambda u: u.is_superuser)
def groupsEdit(request,id):
	group = Group.objects.get(id=id)
	form = GroupForm(request.POST or None, instance=group)
	if form.is_valid():
		form.save()
		return redirect('groupsIndex')
	else:
		return render(request,"groups/add.html",{'form':form,'group':group})

@user_passes_test(lambda u: u.is_superuser)
def groupsIndex(request):
	groups_list = Group.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(groups_list, 10)
	try:
		groups = paginator.page(page)
	except PageNotAnInteger:
		groups = paginator.page(1)
	except EmptyPage:
		groups = paginator.page(paginator.num_pages)

	return render(request,"groups/index.html",{'groups':groups,})


@user_passes_test(lambda u: u.is_superuser)
def groupsView(request,id):
	group = Group.objects.get(id=id)
	permissions = Permission.objects.filter(group__id=id)
	users = User.objects.filter(groups__id=id)
	return render(request,"groups/view.html",{'group':group,'permissions':permissions,'users':users})


@user_passes_test(lambda u: u.is_superuser)
def groupsDelete(request,id):
	group = Group.objects.get(id=id)
	group.delete()
	return redirect('groupsIndex')


















@user_passes_test(lambda u: u.is_superuser)
def permissionsAdd(request):
	form = PermissionForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('permissionsIndex')
	else:
		return render(request,"permissions/add.html",{'form':form,'action_link': 'permissionsAdd','error_message': "There is a problem here."})


@user_passes_test(lambda u: u.is_superuser)
def permissionsEdit(request,id):
	permission = Permission.objects.get(id=id)
	form = PermissionForm(request.POST or None, instance=permission)
	if form.is_valid():
		form.save()
		return redirect('permissionsIndex')
	else:
		return render(request,"permissions/add.html",{'form':form,'permission':permission})

@user_passes_test(lambda u: u.is_superuser)
def permissionsIndex(request):
	permissions_list = Permission.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(permissions_list, 10)
	try:
		permissions = paginator.page(page)
	except PageNotAnInteger:
		permissions = paginator.page(1)
	except EmptyPage:
		permissions = paginator.page(paginator.num_pages)

	return render(request,"permissions/index.html",{'permissions':permissions,})



@user_passes_test(lambda u: u.is_superuser)
def permissionsDelete(request,id):
	permission = Permission.objects.get(id=id)
	permission.delete()
	return redirect('permissionsIndex')




