from django.db import models
from django.contrib.auth.models import User



class Status(models.Model):
	name = models.CharField(max_length=50)
	details = models.TextField(null=True)
	color = models.CharField(max_length=7, null=True)

	class Meta:
		permissions = (
			("view_statuses", "Can View Statuses"),
		)

	def __str__(self):
		return self.name




class Building(models.Model):
	name = models.CharField(max_length=50)

	class Meta:
		permissions = (
			("view_buildings", "Can View Building"),
		)

	def __str__(self):
		return self.name












class Device(models.Model):
	name = models.CharField(max_length=50)

	class Meta:
		permissions = (
			("view_devices", "Can View Devices"),
		)

	def __str__(self):
		return self.name

class Brand(models.Model):
	name = models.CharField(max_length=50)

	class Meta:
		permissions = (
			("view_brands", "Can View Brands"),
		)

	def __str__(self):
		return self.name

class Department(models.Model):
	name = models.CharField(max_length=50)

	class Meta:
		permissions = (
			("view_departments", "Can View Departments"),
		)

	def __str__(self):
		return self.name

class Company(models.Model):
	name = models.CharField(max_length=100)
	email = models.EmailField(null=True)
	phone = models.CharField(max_length=30, null=True)

	class Meta:
		permissions = (
			("view_companies", "Can View Companies"),
		)

	def __str__(self):
		return self.name

'''class Itadmin(models.Model):
	name = models.CharField(max_length=100)
	email = models.EmailField(null=True)
	phone = models.CharField(max_length=30, null=True)
	school = models.ForeignKey(School, null=True, on_delete=models.SET_NULL)

	def __str__(self):
		return self.name'''

class Technician(models.Model):
	name = models.CharField(max_length=100)
	email = models.EmailField(null=True)
	phone = models.CharField(max_length=30, null=True)
	department = models.CharField(max_length=100, null=True)

	class Meta:
		permissions = (
			("view_technicians", "Can View Technicians"),
		)

	def __str__(self):
		return self.name



class Printer(models.Model):
	model = models.CharField(max_length=100, null=True)
	brand = models.ForeignKey(Brand, null=True, on_delete=models.SET_NULL)
	building = models.ForeignKey(Building, null=True, on_delete=models.SET_NULL)
	department = models.ForeignKey(Department, null=True, on_delete=models.SET_NULL)
	floor = models.CharField(max_length=100, null=True)
	room = models.CharField(max_length=100, null=True)
	ip = models.CharField(max_length=20, null=True)
	barcode = models.CharField(max_length=50, null=True, unique=True)
	reference = models.CharField(max_length=100, null=True, unique=True)
	notes = models.TextField(null=True)

	class Meta:
		permissions = (
			("view_printers", "Can View Printers"),
		)

	def __str__(self):
		return self.ip



class Request(models.Model):
	reference = models.CharField(max_length=100, null=True)
	device = models.ForeignKey(Device, null=True, on_delete=models.SET_NULL)
	brand = models.ForeignKey(Brand, null=True, on_delete=models.SET_NULL)
	model = models.CharField(max_length=100, null=True)
	technician = models.ForeignKey(Technician, null=True, on_delete=models.SET_NULL)
	company = models.ForeignKey(Company, null=True, on_delete=models.SET_NULL)
	request_date = models.DateField(null=True)
	resolution_date = models.DateField(null=True)
	employee = models.CharField(max_length=100, null=True)
	username = models.CharField(max_length=100, null=True)
	department = models.ForeignKey(Department, null=True, on_delete=models.SET_NULL)
	location = models.CharField(max_length=100, null=True)
	status = models.ForeignKey(Status, null=True, on_delete=models.SET_NULL)
	notes = models.TextField(null=True)
	created = models.DateField(auto_now_add=True, blank=True)
	added_by = models.ForeignKey(User, null=True, on_delete=models.SET_NULL)

	class Meta:
		permissions = (
			("view_requests", "Can View Requests"),
		)

	def __str__(self):
		return self.notes
