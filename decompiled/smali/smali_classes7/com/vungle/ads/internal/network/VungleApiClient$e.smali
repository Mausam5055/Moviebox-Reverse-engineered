.class public final Lcom/vungle/ads/internal/network/VungleApiClient$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/network/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/network/VungleApiClient;->reportErrors(Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/AnalyticsClient$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $requestListener:Lcom/vungle/ads/AnalyticsClient$a;


# direct methods
.method constructor <init>(Lcom/vungle/ads/AnalyticsClient$a;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient$e;->$requestListener:Lcom/vungle/ads/AnalyticsClient$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vungle/ads/internal/network/a;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient$e;->$requestListener:Lcom/vungle/ads/AnalyticsClient$a;

    invoke-interface {p1}, Lcom/vungle/ads/AnalyticsClient$a;->onFailure()V

    return-void
.end method

.method public onResponse(Lcom/vungle/ads/internal/network/a;Lcom/vungle/ads/internal/network/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/a;",
            "Lcom/vungle/ads/internal/network/e;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient$e;->$requestListener:Lcom/vungle/ads/AnalyticsClient$a;

    invoke-interface {p1}, Lcom/vungle/ads/AnalyticsClient$a;->onSuccess()V

    return-void
.end method
