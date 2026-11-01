.class public final Lcom/vungle/ads/internal/load/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/network/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/load/g;->fetchAdMetadata(Lcom/vungle/ads/y;Lcom/vungle/ads/internal/model/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $placement:Lcom/vungle/ads/internal/model/g;

.field final synthetic this$0:Lcom/vungle/ads/internal/load/g;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/load/g;Lcom/vungle/ads/internal/model/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/load/g$a;->this$0:Lcom/vungle/ads/internal/load/g;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/g$a;->$placement:Lcom/vungle/ads/internal/model/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/load/g;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/load/g$a;->onFailure$lambda-1(Lcom/vungle/ads/internal/load/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/vungle/ads/internal/load/g;Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/internal/network/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/load/g$a;->onResponse$lambda-0(Lcom/vungle/ads/internal/load/g;Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/internal/network/e;)V

    return-void
.end method

.method private static final onFailure$lambda-1(Lcom/vungle/ads/internal/load/g;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/load/g;->access$retrofitToVungleError(Lcom/vungle/ads/internal/load/g;Ljava/lang/Throwable;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method private static final onResponse$lambda-0(Lcom/vungle/ads/internal/load/g;Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/internal/network/e;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getVungleApiClient()Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/g;->getReferenceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/network/VungleApiClient;->getRetryAfterHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    new-instance p1, Lcom/vungle/ads/AdRetryError;

    invoke-direct {p1}, Lcom/vungle/ads/AdRetryError;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/vungle/ads/internal/network/e;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/vungle/ads/APIFailedStatusCodeError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ads API: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/network/e;->code()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/vungle/ads/APIFailedStatusCodeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/vungle/ads/internal/network/e;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/ads/internal/model/AdPayload;

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/AdPayload;->adUnit()Lcom/vungle/ads/internal/model/AdPayload$c;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    new-instance p1, Lcom/vungle/ads/AdResponseEmptyError;

    const-string p2, "Ad response is empty"

    invoke-direct {p1, p2}, Lcom/vungle/ads/AdResponseEmptyError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_4
    new-instance p1, Lcom/vungle/ads/w;

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->CONFIG_LOADED_FROM_AD_LOAD:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, v0}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual {p0, p2, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->handleAdMetaData$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/w;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vungle/ads/internal/network/a;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/vungle/ads/internal/load/g$a;->this$0:Lcom/vungle/ads/internal/load/g;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getSdkExecutors()Lcom/vungle/ads/internal/executor/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/ads/internal/executor/a;->getBackgroundExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/ads/internal/load/g$a;->this$0:Lcom/vungle/ads/internal/load/g;

    new-instance v1, Lcom/vungle/ads/internal/load/e;

    invoke-direct {v1, v0, p2}, Lcom/vungle/ads/internal/load/e;-><init>(Lcom/vungle/ads/internal/load/g;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lcom/vungle/ads/internal/network/a;Lcom/vungle/ads/internal/network/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/a;",
            "Lcom/vungle/ads/internal/network/e;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/vungle/ads/internal/load/g$a;->this$0:Lcom/vungle/ads/internal/load/g;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getSdkExecutors()Lcom/vungle/ads/internal/executor/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/ads/internal/executor/a;->getBackgroundExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/ads/internal/load/g$a;->this$0:Lcom/vungle/ads/internal/load/g;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/g$a;->$placement:Lcom/vungle/ads/internal/model/g;

    new-instance v2, Lcom/vungle/ads/internal/load/f;

    invoke-direct {v2, v0, v1, p2}, Lcom/vungle/ads/internal/load/f;-><init>(Lcom/vungle/ads/internal/load/g;Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/internal/network/e;)V

    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
