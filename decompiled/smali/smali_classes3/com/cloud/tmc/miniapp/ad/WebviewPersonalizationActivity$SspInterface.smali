.class public final Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SspInterface"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

.field public final OooO0OO:Ljava/lang/String;

.field public final OooO0Oo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO00o:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0O0:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0OO:Ljava/lang/String;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0Oo:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final athenaTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0Oo:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0OO:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0O0:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    sget v3, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity;->OooO:I

    invoke-virtual {v1, v0, v2, p1, p2}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->trackH5Event(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final getAdsDTO()Lcom/cloud/tmc/ad/bean/response/AdsDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0O0:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public final getTriggerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public final personaliseCallback()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0OO:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO00o:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "adPersonalizationPage"

    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewPersonalizationActivity$SspInterface;->OooO0Oo:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
