.class public Lbe/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/common/interfacz/QueryPriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe/c;->x(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lbe/c;


# direct methods
.method public constructor <init>(Lbe/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbe/c$c;->b:Lbe/c;

    iput-object p2, p0, Lbe/c$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbe/c$c;->b:Lbe/c;

    invoke-static {v0}, Lbe/c;->A(Lbe/c;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "--- load ad mode --- "

    const-string v2, "CacheHandler"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/c$c;->b:Lbe/c;

    invoke-static {v0}, Lbe/c;->Q(Lbe/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/interfacz/Iad;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkToLoadWaterfallAd priceThreshold --- ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisavana/common/bean/Network;

    iget-object v3, p0, Lbe/c$c;->b:Lbe/c;

    invoke-static {v3}, Lbe/c;->T(Lbe/c;)Lcom/hisavana/mediation/handler/DispatcherHandler;

    move-result-object v3

    iget-object v4, p0, Lbe/c$c;->a:Landroid/content/Context;

    iget-object v5, p0, Lbe/c$c;->b:Lbe/c;

    iget-object v5, v5, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3, v4, v5, v2}, Lcom/hisavana/mediation/handler/DispatcherHandler;->d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lbe/c$c;->b:Lbe/c;

    invoke-static {v4}, Lbe/c;->Q(Lbe/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v2, v4, v0

    if-ltz v2, :cond_2

    iget-object v2, p0, Lbe/c$c;->b:Lbe/c;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lbe/c;->s(Lbe/c;Lcom/hisavana/common/interfacz/Iad;I)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lbe/c$c;->b:Lbe/c;

    invoke-static {p1}, Lbe/c;->T(Lbe/c;)Lcom/hisavana/mediation/handler/DispatcherHandler;

    move-result-object p1

    iget-object v0, p0, Lbe/c$c;->b:Lbe/c;

    invoke-static {v0}, Lbe/c;->Q(Lbe/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->g(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    :cond_4
    return-void
.end method

.method public onQueryPriceFailed()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "CacheHandler"

    const-string v2, "receive query price failed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbe/c$c;->a(Ljava/util/List;)V

    return-void
.end method

.method public onQueryPriceSuccess(Ljava/util/List;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "CacheHandler"

    const-string v2, "CacheHandler --> queryPrice --> receive query price success"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbe/c$c;->a(Ljava/util/List;)V

    return-void
.end method
