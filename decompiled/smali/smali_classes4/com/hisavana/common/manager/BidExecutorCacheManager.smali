.class public Lcom/hisavana/common/manager/BidExecutorCacheManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "InmobiBidCacheManager"

.field private static sInstance:Lcom/hisavana/common/manager/BidExecutorCacheManager;


# instance fields
.field private final bidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hisavana/common/base/BaseAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hisavana/common/manager/BidExecutorCacheManager;->bidCache:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hisavana/common/manager/BidExecutorCacheManager;
    .locals 2

    const-class v0, Lcom/hisavana/common/manager/BidExecutorCacheManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hisavana/common/manager/BidExecutorCacheManager;->sInstance:Lcom/hisavana/common/manager/BidExecutorCacheManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hisavana/common/manager/BidExecutorCacheManager;

    invoke-direct {v1}, Lcom/hisavana/common/manager/BidExecutorCacheManager;-><init>()V

    sput-object v1, Lcom/hisavana/common/manager/BidExecutorCacheManager;->sInstance:Lcom/hisavana/common/manager/BidExecutorCacheManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/hisavana/common/manager/BidExecutorCacheManager;->sInstance:Lcom/hisavana/common/manager/BidExecutorCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public removeData(Ljava/lang/String;)Lcom/hisavana/common/base/BaseAd;
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeBidData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InmobiBidCacheManager"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/manager/BidExecutorCacheManager;->bidCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hisavana/common/base/BaseAd;

    return-object p1
.end method

.method public saveBidData(Ljava/lang/String;Lcom/hisavana/common/base/BaseAd;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/manager/BidExecutorCacheManager;->bidCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
