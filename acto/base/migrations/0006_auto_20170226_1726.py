# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-02-26 17:26
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0005_bottompage_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='FooterPage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('logo', models.ImageField(blank=True, default='', null=True, upload_to='')),
                ('active', models.BooleanField(default=True)),
                ('title', models.CharField(blank=True, default='', max_length=255, null=True)),
                ('slug', models.CharField(blank=True, default='', max_length=255, null=True)),
                ('template', models.CharField(blank=True, choices=[('green.html', 'green.html'), ('bottom.html', 'bottom.html'), ('page_for.html', 'page_for.html'), ('blue.html', 'blue.html'), ('templates', 'templates'), ('yellow.html', 'yellow.html'), ('templates.html', 'templates.html'), ('footer.html', 'footer.html'), ('faq.html', 'faq.html'), ('facts.html', 'facts.html'), ('index.html', 'index.html'), ('docs.html', 'docs.html'), ('why.html', 'why.html'), ('mint.html', 'mint.html'), ('top.html', 'top.html'), ('orange.html', 'orange.html')], default='', max_length=255, null=True)),
                ('order', models.IntegerField(default=1)),
                ('link', models.CharField(max_length=255)),
                ('image', models.ImageField(upload_to='')),
                ('items', models.ManyToManyField(to='base.TextImageItem')),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.AlterField(
            model_name='bottompage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='docspage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='factspage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='faqpage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='forpage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='greenpage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='howpage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='mintpage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='orangepage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='toppage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='whypage',
            name='order',
            field=models.IntegerField(default=1),
        ),
        migrations.AlterField(
            model_name='yellowpage',
            name='order',
            field=models.IntegerField(default=1),
        ),
    ]
