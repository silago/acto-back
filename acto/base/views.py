from django.shortcuts import render
from .models import TopPage, ForPage, OrangePage, YellowPage, MintPage, FactsPage, GreenPage, WhyPage, HowPage, FaqPage, DocsPage, BottomPage, FooterPage#, City, Shop


def main(request):
    pages = (TopPage, ForPage, OrangePage, YellowPage, MintPage, FactsPage, GreenPage, WhyPage, HowPage, FaqPage, DocsPage, BottomPage, FooterPage)
    _result = ()
    for page in pages:
        page_object = page.objects.get()
        if page_object.active:
            _result += page_object,
    return render(request, 'index.html', {'pages':_result})
# Create your views here.
