from django.contrib import admin
from solo.admin import SingletonModelAdmin
#from config.models import SiteConfiguration

from models import TextImageItem, TextItem, TextDoubleImageItem, ImageItem, TopPage, FaqPage, MintPage, FactsPage, GreenPage, WhyPage, HowPage, ForPage, DocsPage 


#class FaqImageItemInline(admin.TabularInline):
#    model =  FaqPage.items.through

admin.site.register(TopPage, SingletonModelAdmin)
admin.site.register(FaqPage, SingletonModelAdmin)
admin.site.register(MintPage, SingletonModelAdmin)
admin.site.register(FactsPage, SingletonModelAdmin)
admin.site.register(GreenPage, SingletonModelAdmin)
admin.site.register(WhyPage, SingletonModelAdmin)
admin.site.register(HowPage, SingletonModelAdmin)
admin.site.register(ForPage, SingletonModelAdmin)
admin.site.register(DocsPage, SingletonModelAdmin)


admin.site.register(ImageItem, admin.ModelAdmin)
admin.site.register(TextDoubleImageItem, admin.ModelAdmin)
admin.site.register(TextImageItem, admin.ModelAdmin)
admin.site.register(TextItem, admin.ModelAdmin)


