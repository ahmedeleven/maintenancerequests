# Generated by Django 2.0.2 on 2018-05-24 08:46

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Company',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254, null=True)),
                ('phone', models.CharField(max_length=30, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Itadmin',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254, null=True)),
                ('phone', models.CharField(max_length=30, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Quotation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('requester', models.IntegerField(null=True)),
                ('itadmin', models.CharField(max_length=100, null=True)),
                ('received', models.DateField(null=True)),
                ('notes', models.TextField(null=True)),
                ('created', models.DateField(auto_now_add=True)),
                ('company', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='requests.Company')),
            ],
        ),
        migrations.CreateModel(
            name='School',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name_en', models.CharField(max_length=100)),
                ('name_ar', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Status',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('color', models.CharField(max_length=7, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Technician',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('email', models.EmailField(max_length=254, null=True)),
                ('phone', models.CharField(max_length=30, null=True)),
                ('department', models.CharField(max_length=100, null=True)),
            ],
        ),
        migrations.AddField(
            model_name='quotation',
            name='school',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='requests.School'),
        ),
        migrations.AddField(
            model_name='quotation',
            name='status',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='requests.Status'),
        ),
        migrations.AddField(
            model_name='quotation',
            name='technician',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='requests.Technician'),
        ),
        migrations.AddField(
            model_name='itadmin',
            name='school',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='requests.School'),
        ),
    ]
