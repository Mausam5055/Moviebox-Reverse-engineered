.class public Lcom/hisavana/common/bean/AdCache$AdCacheComp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/common/bean/AdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdCacheComp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/hisavana/common/interfacz/ICacheAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hisavana/common/interfacz/ICacheAd;Lcom/hisavana/common/interfacz/ICacheAd;)I
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_1

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v4

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-nez v1, :cond_4

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getValidTimeLimit()J

    move-result-wide v4

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getValidTimeLimit()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    return v3

    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getValidTimeLimit()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getValidTimeLimit()J

    move-result-wide p1

    sub-long/2addr v3, p1

    cmp-long p1, v3, v6

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v4

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double p1, v4, p1

    if-lez p1, :cond_5

    return v3

    :cond_5
    return v2

    :catchall_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/hisavana/common/interfacz/ICacheAd;

    check-cast p2, Lcom/hisavana/common/interfacz/ICacheAd;

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/bean/AdCache$AdCacheComp;->compare(Lcom/hisavana/common/interfacz/ICacheAd;Lcom/hisavana/common/interfacz/ICacheAd;)I

    move-result p1

    return p1
.end method
