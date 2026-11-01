.class public final Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 7

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0OO:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "miniappid"

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v4, v4, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v0, "miniapp_agreemix_popup_ex"

    invoke-interface {p1, v1, v0, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_5

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0OO:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooOO0O:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v4, v4, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v0, "miniapp_agree_popup_ex"

    invoke-interface {p1, v1, v0, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_5

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0Oo:Z

    if-eqz p1, :cond_7

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v3, v3, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "privacy_ex"

    invoke-interface {p1, v3, v5, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o0:Z

    if-eqz v3, :cond_e

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0o:Z

    const-string v3, "type"

    const-string v4, "appstart_add_ex"

    if-eqz p1, :cond_a

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v1, v2

    :goto_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v6, v6, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v6, :cond_9

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2"

    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, v1, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_a
    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_b
    move-object v1, v2

    :goto_4
    if-nez v1, :cond_c

    const-string v1, ""

    :cond_c
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v6, v6, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v6, :cond_d

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_d
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v0, 0xeab

    invoke-interface {p1, v1, v4, v0, v5}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->forceAthenaReport(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_e
    :goto_5
    return-void
.end method
