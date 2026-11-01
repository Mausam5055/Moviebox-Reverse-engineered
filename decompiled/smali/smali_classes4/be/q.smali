.class public Lbe/q;
.super Ljava/lang/Object;


# static fields
.field public static final o:Lbe/b;


# instance fields
.field public a:Lcom/hisavana/common/interfacz/QueryPriceListener;

.field public b:Landroid/os/Handler;

.field public c:Ljava/util/List;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public i:Z

.field public j:Ljava/lang/Integer;

.field public k:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public l:Ljava/lang/String;

.field public m:Lbe/i;

.field public n:Lcom/hisavana/common/bean/AdCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbe/b;

    invoke-direct {v0}, Lbe/b;-><init>()V

    sput-object v0, Lbe/q;->o:Lbe/b;

    return-void
.end method

.method public constructor <init>(Lbe/i;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    iput-object v0, p0, Lbe/q;->c:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbe/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbe/q;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbe/q;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbe/q;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbe/q;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbe/q;->i:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lbe/q;->k:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbe/q;->j:Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lbe/q;->l:Ljava/lang/String;

    iput-boolean p3, p0, Lbe/q;->i:Z

    iput-object p1, p0, Lbe/q;->m:Lbe/i;

    iget-object p1, p0, Lbe/q;->j:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object p1

    iput-object p1, p0, Lbe/q;->n:Lcom/hisavana/common/bean/AdCache;

    new-instance p1, Lbe/q$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2, p3}, Lbe/q$a;-><init>(Lbe/q;Landroid/os/Looper;Z)V

    iput-object p1, p0, Lbe/q;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a()Lbe/b;
    .locals 1

    sget-object v0, Lbe/q;->o:Lbe/b;

    return-object v0
.end method

.method public static synthetic e(Lbe/q;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lbe/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic f(Lbe/q;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lbe/q;->j(Z)V

    return-void
.end method

.method public static synthetic g(Lbe/q;ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lbe/q;->k(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lbe/q;)Z
    .locals 0

    iget-boolean p0, p0, Lbe/q;->i:Z

    return p0
.end method


# virtual methods
.method public final b(Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lbe/o;->a()Lbe/o;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lbe/o;->f(I)Lcom/hisavana/common/interfacz/IBaseAdSummary;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lbe/q;->j:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lbe/q;->m:Lbe/i;

    invoke-virtual {p1}, Lbe/i;->F()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseQueryPrice;->setOrientation(I)V

    :cond_2
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;
    .locals 7

    iget-object v0, p0, Lbe/q;->n:Lcom/hisavana/common/bean/AdCache;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbe/q;->m:Lbe/i;

    invoke-virtual {v1}, Lbe/i;->J()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/hisavana/common/bean/AdCache;->getMaxPrice(Ljava/lang/String;Z)D

    move-result-wide v0

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*----> currently max price ad in ad pool is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QueryPriceCenter"

    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lbe/q;->o:Lbe/b;

    invoke-virtual {v2, p1}, Lbe/b;->a(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*----> get cached, code seat id: +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " price: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v0, v5, v0

    if-ltz v0, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*----> getQueryPriceWinner --> winner network is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    return-object v2
.end method

.method public d(Lcom/hisavana/common/interfacz/QueryPriceListener;)Ljava/util/List;
    .locals 10

    iput-object p1, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    iget-object p1, p0, Lbe/q;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "QueryPriceCenter"

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v2, "Auciton failed due to query price list is empty"

    invoke-virtual {p1, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceFailed()V

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, Lbe/q;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisavana/common/bean/Network;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lbe/q;->b(Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseQueryPrice;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v5, Lbe/q$b;

    invoke-direct {v5, p0, v3}, Lbe/q$b;-><init>(Lbe/q;Lcom/hisavana/common/bean/Network;)V

    invoke-virtual {v4, v5}, Lcom/hisavana/common/base/BaseQueryPrice;->setQueryPriceListener(Lcom/hisavana/common/interfacz/QueryPriceListener;)V

    const/4 v5, 0x5

    if-ge v2, v5, :cond_7

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*----> start query price,network id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lbe/q;->j:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/hisavana/common/bean/Network;->setAdt(I)V

    iget-object v5, p0, Lbe/q;->m:Lbe/i;

    iget-boolean v6, p0, Lbe/q;->i:Z

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_1

    :cond_4
    move v6, v8

    :goto_1
    iget-object v9, p0, Lbe/q;->k:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-static {v5, v3, v6, v9}, Lcom/hisavana/mediation/handler/DispatcherHandler;->a(Lbe/i;Lcom/hisavana/common/bean/Network;ILcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hisavana/common/base/BaseQueryPrice;->setTrackingBundle(Landroid/os/Bundle;)V

    iget-object v5, p0, Lbe/q;->j:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lbe/q;->m:Lbe/i;

    invoke-virtual {v5}, Lbe/i;->r()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/hisavana/common/base/BaseQueryPrice;->setBannerSize(I)V

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryPrice,codeSeatId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    iget-object v5, p0, Lbe/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/hisavana/common/base/BaseQueryPrice;->queryPrice(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    iget-object v3, p0, Lbe/q;->c:Ljava/util/List;

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lbe/q;->c:Ljava/util/List;

    :cond_6
    iget-object v3, p0, Lbe/q;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v2, "Auciton count exceed the max thrshold: 5"

    invoke-virtual {p1, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryPriceCenter --> startQueryPrice --> mDoingQueryCount.get() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbe/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lbe/q;->b:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lbe/q;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-object v0
.end method

.method public h(Lcom/hisavana/common/bean/Network;Z)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "QueryPriceCenter"

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    const-string v1, "send auction success to network server!"

    invoke-virtual {p2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object p1

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->notifyWin()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    const-string v1, "send auction failed to network server!"

    invoke-virtual {p2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object p1

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->notifyLoss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Ljava/util/List;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbe/q;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "\uff0c"

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hisavana/common/bean/Network;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbe/q;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, " -$ "

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hisavana/common/bean/Network;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lbe/q;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hisavana/common/bean/Network;

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*----> mQueryPriceNetworkList is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",\n *----> mWaterfallNetworkList is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",\n mHistroyPriceList is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "QueryPriceCenter"

    invoke-virtual {v5, v7, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/hisavana/mediation/R$string;->hisavana_log_msg2:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v2, v6, v0

    const/4 v2, 0x2

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v3, :cond_6

    sget v3, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE2:I

    invoke-static {v2, v3}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisavana/common/bean/Network;

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v3}, Lcom/hisavana/common/utils/AdUtil;->isQueryPriceNetwork(Lcom/hisavana/common/bean/Network;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lbe/q;->o:Lbe/b;

    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbe/b;->a(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " price:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    sget-boolean p1, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz p1, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v2, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE3:I

    invoke-static {p1, v2}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    :cond_a
    iget-object p1, p0, Lbe/q;->n:Lcom/hisavana/common/bean/AdCache;

    if-nez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_5

    :cond_b
    iget-object v2, p0, Lbe/q;->l:Ljava/lang/String;

    iget-object v3, p0, Lbe/q;->m:Lbe/i;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lbe/i;->J()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_c
    move v0, v1

    :goto_4
    const v3, 0x7fffffff

    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/hisavana/common/bean/AdCache;->getCaches(Ljava/lang/String;IZZ)Ljava/util/ArrayList;

    move-result-object p1

    :goto_5
    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lcom/hisavana/common/mock/RecordTestInfo;->getLogMsg(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE4:I

    invoke-static {p1, v0}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    :cond_d
    return-void
.end method

.method public final j(Z)V
    .locals 6

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkToGetWinnerPreload --> \u7ade\u4ef7\u8d85\u65f6\u65f6\u95f4\u5185 \u662f\u5426\u8fd8\u6709\u6b63\u5728\u7ade\u4ef7\u7684\u4efb\u52a1 --> mDoingQueryCount.get() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbe/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ----- timeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "----- ispreload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lbe/q;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QueryPriceCenter"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lbe/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-gtz p1, :cond_5

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbe/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/bean/Network;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbe/q;->c(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*---->checkToGetWinnerPreload ----- winnerNetwork = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*---->end query price,checkToGetWinnerPreload ----- winnerList.size() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    invoke-interface {v0, p1}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceSuccess(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceFailed()V

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    iget-object p1, p0, Lbe/q;->b:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    return-void
.end method

.method public final k(ZLjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkToGetWinner --> \u7ade\u4ef7\u8d85\u65f6\u65f6\u95f4\u5185 \u662f\u5426\u8fd8\u6709\u6b63\u5728\u7ade\u4ef7\u7684\u4efb\u52a1 --> mDoingQueryCount.get() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbe/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ----- timeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "----- ispreload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lbe/q;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\uff0ccodeSeatId\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QueryPriceCenter"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    :cond_0
    iget-object p1, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lbe/q;->c(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*---->end query price,checkToGetWinner ----- winnerNetworks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    invoke-interface {p1, p2}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceSuccess(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceFailed()V

    :goto_0
    iget-object p1, p0, Lbe/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-gtz p1, :cond_3

    iget-object p1, p0, Lbe/q;->b:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public l()V
    .locals 5

    iget-object v0, p0, Lbe/q;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbe/q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbe/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbe/q;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbe/q;->k:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisavana/common/bean/Network;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lbe/q;->j:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/Network;->setAdt(I)V

    invoke-static {v2}, Lcom/hisavana/common/utils/AdUtil;->getNetworkType(Lcom/hisavana/common/bean/Network;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lbe/q;->i:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lbe/q;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbe/q;->c(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lbe/q;->n:Lcom/hisavana/common/bean/AdCache;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hisavana/common/bean/AdCache;->removeCodeSeatCache(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lbe/q;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lbe/q;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lbe/q;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lbe/q;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v0}, Lbe/q;->i(Ljava/util/List;)V

    return-void
.end method

.method public n()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lbe/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    iget-object v1, p0, Lbe/q;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lbe/q;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lbe/q;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisavana/common/base/BaseQueryPrice;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseQueryPrice;->destroy()V

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lbe/q;->c:Ljava/util/List;

    return-void
.end method

.method public o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbe/q;->h:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*----> getHistoryPriceList  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbe/q;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QueryPriceCenter"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/q;->g:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbe/q;->e:Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbe/q;->f:Ljava/util/List;

    return-object v0
.end method
