.class public final Lcom/vungle/ads/internal/network/VungleApiClient$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/util/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/network/VungleApiClient;->initUserAgentLazy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $uaMetric:Lcom/vungle/ads/x;

.field final synthetic this$0:Lcom/vungle/ads/internal/network/VungleApiClient;


# direct methods
.method constructor <init>(Lcom/vungle/ads/x;Lcom/vungle/ads/internal/network/VungleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient$d;->$uaMetric:Lcom/vungle/ads/x;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/VungleApiClient$d;->this$0:Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/network/VungleApiClient$d;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v0, "VungleApiClient"

    const-string v1, "Cannot Get UserAgent. Setting Default Device UserAgent"

    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/vungle/ads/UserAgentError;

    invoke-direct {p1}, Lcom/vungle/ads/UserAgentError;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient$d;->$uaMetric:Lcom/vungle/ads/x;

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object v2, p0, Lcom/vungle/ads/internal/network/VungleApiClient$d;->$uaMetric:Lcom/vungle/ads/x;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient$d;->this$0:Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/network/VungleApiClient;->access$setUaString$p(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/lang/String;)V

    return-void
.end method
