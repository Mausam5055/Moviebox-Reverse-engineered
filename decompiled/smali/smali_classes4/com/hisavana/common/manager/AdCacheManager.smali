.class public Lcom/hisavana/common/manager/AdCacheManager;
.super Ljava/lang/Object;


# static fields
.field private static final cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hisavana/common/bean/AdCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/hisavana/common/manager/AdCacheManager;->cacheMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/hisavana/common/constant/ComConstants;->getAdType(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hisavana/common/bean/AdCache;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdCache;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/hisavana/common/constant/ComConstants;->getAdType(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hisavana/common/bean/AdCache;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdCache;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/hisavana/common/constant/ComConstants;->getAdType(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hisavana/common/bean/AdCache;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdCache;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/hisavana/common/constant/ComConstants;->getAdType(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hisavana/common/bean/AdCache;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdCache;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/hisavana/common/constant/ComConstants;->getAdType(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hisavana/common/bean/AdCache;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdCache;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/hisavana/common/constant/ComConstants;->getAdType(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hisavana/common/bean/AdCache;

    invoke-direct {v2}, Lcom/hisavana/common/bean/AdCache;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache(I)V
    .locals 1

    sget-object v0, Lcom/hisavana/common/constant/ComConstants;->AUTOMATIC_TEST_STATUS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisavana/common/manager/AdCacheManager;->cacheMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/hisavana/common/constant/ComConstants;->getAdType(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisavana/common/bean/AdCache;

    invoke-virtual {p0}, Lcom/hisavana/common/bean/AdCache;->removeAll()V

    :cond_0
    return-void
.end method

.method public static getCache(I)Lcom/hisavana/common/bean/AdCache;
    .locals 1

    sget-object v0, Lcom/hisavana/common/manager/AdCacheManager;->cacheMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/hisavana/common/constant/ComConstants;->getAdType(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisavana/common/bean/AdCache;

    return-object p0
.end method

.method public static putCache(ILjava/lang/String;Lcom/hisavana/common/interfacz/ICacheAd;)V
    .locals 1

    sget-object v0, Lcom/hisavana/common/constant/ComConstants;->AUTOMATIC_TEST_STATUS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisavana/common/manager/AdCacheManager;->cacheMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/hisavana/common/constant/ComConstants;->getAdType(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisavana/common/bean/AdCache;

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/bean/AdCache;->addCache(Ljava/lang/String;Lcom/hisavana/common/interfacz/ICacheAd;)V

    :cond_0
    return-void
.end method
