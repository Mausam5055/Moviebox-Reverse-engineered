.class public final Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SspWebWindow"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;->OooO00o:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;->OooO00o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final submitForm(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;->OooO00o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/cloud/tmc/ad/bean/FormBean;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/ad/bean/FormBean;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/ad/bean/FormBean;->setGaid(Ljava/lang/String;)V

    iget v2, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO:I

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/ad/bean/FormBean;->setFormId(I)V

    sget-object v2, Lcom/cloud/tmc/integration/utils/DeviceUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil;

    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/ad/bean/FormBean;->setIpAddress(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Lcom/cloud/tmc/ad/bean/FormBean;)V

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    const-string v2, "event_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    const-string v2, "form_info"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->form_infor_set:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    const-string v3, ""

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method
