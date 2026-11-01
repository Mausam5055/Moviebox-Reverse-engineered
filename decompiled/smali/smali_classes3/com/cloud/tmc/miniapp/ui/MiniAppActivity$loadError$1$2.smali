.class public final Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->loadError(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V
    .locals 4

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v2, "uncon_retry_click"

    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$loadError$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v3, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->reload$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;ZLandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method
