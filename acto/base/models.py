from django.db import models
from solo.models import SingletonModel
from tinymce.models import HTMLField

#base blocks
class TripleTextItem(models.Model):
    text    = HTMLField()
    name  = models.CharField(max_length=255,blank=True, default="")
    city  = models.CharField(max_length=255,blank=True, default="")
class TextItem(models.Model):
    order   = models.IntegerField()
    caption = HTMLField()
    text    = HTMLField()

class ImageItem(models.Model):
    image  = models.ImageField()
    order  = models.IntegerField()

class TextDoubleImageItem(models.Model):
    image  = models.ImageField()
    subimage  = models.ImageField()
    text     = HTMLField()
    order = models.IntegerField()

class TextImageItem(models.Model):
    image  = models.ImageField()
    text     = HTMLField()
    order  = models.IntegerField()
    def __str__(this):
        return this.image.url
# Create your models here.


# django singleton
class BaseSingletonPage(SingletonModel):
    logo   = models.ImageField(blank=True,default='')
    active = models.BooleanField(default=True)
    title  = models.CharField(max_length=255,blank=True, default="")
    slug   = models.CharField(max_length=255,blank=True, default="")
    css    = models.CharField(max_length=255,blank=True, default="")
    template = models.CharField(max_length=255,blank=True, default="")
    js     = models.CharField(max_length=255,blank=True, default="")

class TopPage(BaseSingletonPage):
    backgound = models.ImageField(blank=True,default='')
    image = models.ImageField(blank=True,default='')
    text  = HTMLField(blank=True,default='')
    banner= models.ImageField(blank=True,default='')
    free_delivery_button =  models.ImageField(blank=True,default='')
    no_delivery_button   =  models.ImageField(blank=True,default='')

class ForPage(BaseSingletonPage):
    items = models.ManyToManyField(ImageItem)

class OrangePage(BaseSingletonPage):
    items = models.ManyToManyField(ImageItem)

class YellowPage(BaseSingletonPage):
    text  = HTMLField(blank=True,default='')
    items = models.ManyToManyField(TripleTextItem)


class MintPage(BaseSingletonPage):
    left_image = models.ImageField()
    right_image = models.ImageField()
    caption = HTMLField()


class FactsPage(BaseSingletonPage):
    items = models.ManyToManyField(TextImageItem)


class GreenPage(BaseSingletonPage):
    caption = HTMLField()
    items = models.ManyToManyField(TextImageItem)
    free_delivery_button = models.ImageField()
    no_delivery_button  = models.ImageField()

class WhyPage(BaseSingletonPage):
    items = models.ManyToManyField(TextImageItem)


class HowPage(BaseSingletonPage):
    caption = HTMLField()
    items = models.ManyToManyField(TextDoubleImageItem)

class FaqPage(BaseSingletonPage):
    items = models.ManyToManyField(TextItem)

class DocsPage(BaseSingletonPage):
    items = models.ManyToManyField(ImageItem)


class City(models.Model):
    name = models.CharField(max_length=255)
    x    = models.FloatField()
    y    = models.FloatField()

class Shop(models.Model):
    name = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    x    = models.FloatField()
    y    = models.FloatField()

