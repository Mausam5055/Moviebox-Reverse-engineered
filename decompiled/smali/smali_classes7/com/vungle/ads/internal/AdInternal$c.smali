.class public final Lcom/vungle/ads/internal/AdInternal$c;
.super Lcom/vungle/ads/internal/presenter/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/AdInternal;->play(Landroid/content/Context;Lcom/vungle/ads/internal/presenter/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/AdInternal;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/AdInternal;)V
    .locals 0

    iput-object p2, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/presenter/c;-><init>(Lcom/vungle/ads/internal/presenter/b;)V

    return-void
.end method


# virtual methods
.method public onAdEnd(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    sget-object v1, Lcom/vungle/ads/internal/AdInternal$AdState;->FINISHED:Lcom/vungle/ads/internal/AdInternal$AdState;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/AdInternal;->setAdState(Lcom/vungle/ads/internal/AdInternal$AdState;)V

    invoke-super {p0, p1}, Lcom/vungle/ads/internal/presenter/c;->onAdEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    sget-object v1, Lcom/vungle/ads/internal/AdInternal$AdState;->PLAYING:Lcom/vungle/ads/internal/AdInternal$AdState;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/AdInternal;->setAdState(Lcom/vungle/ads/internal/AdInternal$AdState;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getValidationToPresentMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getValidationToPresentMetric$vungle_ads_release()Lcom/vungle/ads/x;

    move-result-object v2

    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/AdInternal;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/vungle/ads/internal/presenter/c;->onAdStart(Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/AdInternal$c;->this$0:Lcom/vungle/ads/internal/AdInternal;

    sget-object v1, Lcom/vungle/ads/internal/AdInternal$AdState;->ERROR:Lcom/vungle/ads/internal/AdInternal$AdState;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/AdInternal;->setAdState(Lcom/vungle/ads/internal/AdInternal$AdState;)V

    invoke-super {p0, p1}, Lcom/vungle/ads/internal/presenter/c;->onFailure(Lcom/vungle/ads/VungleError;)V

    return-void
.end method
