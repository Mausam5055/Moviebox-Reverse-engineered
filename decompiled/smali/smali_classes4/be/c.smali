.class public abstract Lbe/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe/c$d;
    }
.end annotation


# instance fields
.field public A:Landroid/os/Bundle;

.field public a:D

.field public b:Lbe/t;

.field public c:Lcom/hisavana/common/utils/RunTimer;

.field public d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final e:Lbe/q;

.field public f:I

.field public g:I

.field public final h:Landroid/os/Handler;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/String;

.field public k:I

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public m:Z

.field public n:I

.field public final o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public final v:Lcom/hisavana/mediation/handler/DispatcherHandler;

.field public final w:Lbe/i;

.field public x:Lbe/p;

.field public y:I

.field public z:Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lbe/i;Lbe/t;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lbe/c;->k:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lbe/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v0, p0, Lbe/c;->m:Z

    const/4 v1, 0x1

    iput v1, p0, Lbe/c;->p:I

    const/4 v2, -0x1

    iput v2, p0, Lbe/c;->q:I

    iput v1, p0, Lbe/c;->r:I

    iput v0, p0, Lbe/c;->s:I

    iput v1, p0, Lbe/c;->t:I

    iput v1, p0, Lbe/c;->u:I

    iput v1, p0, Lbe/c;->y:I

    new-instance v1, Lbe/c$a;

    invoke-direct {v1, p0}, Lbe/c$a;-><init>(Lbe/c;)V

    iput-object v1, p0, Lbe/c;->z:Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;

    iput-object p1, p0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    iput-object p2, p0, Lbe/c;->w:Lbe/i;

    invoke-virtual {p2, v0}, Lbe/i;->y(I)V

    new-instance v1, Lbe/q;

    invoke-direct {v1, p2, p1, v0}, Lbe/q;-><init>(Lbe/i;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Z)V

    iput-object v1, p0, Lbe/c;->e:Lbe/q;

    new-instance v0, Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lbe/i;)V

    iput-object v0, p0, Lbe/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    new-instance v0, Lbe/c$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbe/c$b;-><init>(Lbe/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lbe/c;->h:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbe/c;->q:I

    iput-object p3, p0, Lbe/c;->b:Lbe/t;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbe/c;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lbe/c;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object p1

    iget-object p3, p0, Lbe/c;->z:Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;

    invoke-virtual {p1, p3}, Lcom/hisavana/common/bean/AdCache;->registerWatcher(Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;)V

    invoke-virtual {p2}, Lbe/i;->D()I

    move-result p1

    iput p1, p0, Lbe/c;->s:I

    return-void
.end method

.method public static synthetic A(Lbe/c;)Z
    .locals 0

    invoke-virtual {p0}, Lbe/c;->f0()Z

    move-result p0

    return p0
.end method

.method public static synthetic C(Lbe/c;)Lbe/p;
    .locals 0

    iget-object p0, p0, Lbe/c;->x:Lbe/p;

    return-object p0
.end method

.method public static synthetic H(Lbe/c;)V
    .locals 0

    invoke-virtual {p0}, Lbe/c;->f()V

    return-void
.end method

.method public static synthetic L(Lbe/c;)Z
    .locals 0

    invoke-virtual {p0}, Lbe/c;->c0()Z

    move-result p0

    return p0
.end method

.method public static synthetic N(Lbe/c;)I
    .locals 0

    iget p0, p0, Lbe/c;->u:I

    return p0
.end method

.method public static synthetic Q(Lbe/c;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic T(Lbe/c;)Lcom/hisavana/mediation/handler/DispatcherHandler;
    .locals 0

    iget-object p0, p0, Lbe/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    return-object p0
.end method

.method public static synthetic W(Lbe/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lbe/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic Y(Lbe/c;)V
    .locals 0

    invoke-virtual {p0}, Lbe/c;->j0()V

    return-void
.end method

.method public static synthetic b(Lbe/c;Lbe/p;)Lbe/p;
    .locals 0

    iput-object p1, p0, Lbe/c;->x:Lbe/p;

    return-object p1
.end method

.method public static synthetic b0(Lbe/c;)Z
    .locals 0

    invoke-virtual {p0}, Lbe/c;->Z()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(I)Lcom/hisavana/common/bean/TAdErrorCode;
    .locals 0

    invoke-static {p0}, Lbe/c;->v(I)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lbe/c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbe/c;->K(I)V

    return-void
.end method

.method public static synthetic i(Lbe/c;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbe/c;->l(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic j(Lbe/c;Lcom/hisavana/common/interfacz/Iad;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbe/c;->n(Lcom/hisavana/common/interfacz/Iad;)V

    return-void
.end method

.method public static synthetic r(Lbe/c;)Z
    .locals 0

    invoke-virtual {p0}, Lbe/c;->g0()Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lbe/c;Lcom/hisavana/common/interfacz/Iad;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lbe/c;->B(Lcom/hisavana/common/interfacz/Iad;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lbe/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbe/c;->m:Z

    return p1
.end method

.method public static v(I)Lcom/hisavana/common/bean/TAdErrorCode;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WITH_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_LOW_PRICE:Lcom/hisavana/common/bean/TAdErrorCode;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_SENSITIVE:Lcom/hisavana/common/bean/TAdErrorCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WiTH_EXPIRED:Lcom/hisavana/common/bean/TAdErrorCode;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final B(Lcom/hisavana/common/interfacz/Iad;I)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lbe/c;->d(Lcom/hisavana/common/interfacz/Iad;I)Lcom/hisavana/common/bean/TInnerAdRequestBody;

    move-result-object v5

    invoke-static {}, Lcom/hisavana/common/utils/AdUtil;->requestStatusOff()Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lbe/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v1, p0, Lbe/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget v4, p0, Lbe/c;->r:I

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/hisavana/mediation/handler/DispatcherHandler;->l(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lbe/c;->e:Lbe/q;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {v0, p1, v7}, Lbe/q;->h(Lcom/hisavana/common/bean/Network;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbe/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    move-result v1

    if-eq v1, v7, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lbe/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lbe/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget v2, p0, Lbe/c;->r:I

    invoke-virtual {v0, p1, p2, v2, v5}, Lcom/hisavana/mediation/handler/DispatcherHandler;->k(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;)Z

    move-result p2

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lbe/c;->e:Lbe/q;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {v0, p1, v7}, Lbe/q;->h(Lcom/hisavana/common/bean/Network;Z)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    iget-object p1, p0, Lbe/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_5
    :goto_0
    return p2

    :cond_6
    :goto_1
    return v0
.end method

.method public final D(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "FAILED"

    return-object p1

    :cond_1
    const-string p1, "SUCCESS"

    return-object p1

    :cond_2
    const-string p1, "LOADING"

    return-object p1

    :cond_3
    const-string p1, "NONE"

    return-object p1
.end method

.method public final E()V
    .locals 4

    iget-object v0, p0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/interfacz/Iad;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/Iad;->stopLoader()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lbe/c;->b:Lbe/t;

    iget-object v1, p0, Lbe/c;->w:Lbe/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbe/i;->y(I)V

    iput v2, p0, Lbe/c;->r:I

    invoke-virtual {p0}, Lbe/c;->p0()V

    iget-object v1, p0, Lbe/c;->e:Lbe/q;

    invoke-virtual {v1}, Lbe/q;->n()V

    invoke-virtual {p0}, Lbe/c;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/AdCache;->unRegisterWatcher()V

    iget-object v1, p0, Lbe/c;->h:Landroid/os/Handler;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x3

    iput v1, p0, Lbe/c;->n:I

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------------->destroy,mUseCache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbe/c;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CacheHandler"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbe/c;->i:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lbe/c;->p(Ljava/lang/Object;)V

    iput-object v0, p0, Lbe/c;->i:Ljava/lang/Object;

    iget-object v0, p0, Lbe/c;->x:Lbe/p;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lbe/p;->c()V

    :cond_4
    return-void
.end method

.method public F(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract G()Lcom/hisavana/common/bean/AdCache;
.end method

.method public I(I)Z
    .locals 7

    iget-object v0, p0, Lbe/c;->b:Lbe/t;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load ad num: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with group"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load next group,mReqCount "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CacheHandler"

    invoke-static {v2, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hisavana/common/interfacz/Iad;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lbe/o;->e(Lcom/hisavana/common/interfacz/Iad;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v4, v5}, Lbe/c;->B(Lcom/hisavana/common/interfacz/Iad;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lbe/c;->w:Lbe/i;

    invoke-virtual {v3}, Lbe/i;->E()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lbe/i;->y(I)V

    move v3, v5

    goto :goto_0

    :cond_3
    if-ge v2, p1, :cond_1

    invoke-virtual {p0, v4, v5}, Lbe/c;->B(Lcom/hisavana/common/interfacz/Iad;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lbe/c;->w:Lbe/i;

    invoke-virtual {v4}, Lbe/i;->E()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Lbe/i;->y(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-gtz v2, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v1, v5

    :cond_6
    return v1
.end method

.method public J()I
    .locals 3

    invoke-virtual {p0}, Lbe/c;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object v1, p0, Lbe/c;->j:Ljava/lang/String;

    iget-object v2, p0, Lbe/c;->w:Lbe/i;

    invoke-virtual {v2}, Lbe/i;->J()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdCache;->checkCacheStatus(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final K(I)V
    .locals 4

    iget v0, p0, Lbe/c;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "CacheHandler"

    const-string v3, "notify load success"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lbe/c;->n:I

    iget-object v0, p0, Lbe/c;->b:Lbe/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lbe/t;->l(I)V

    invoke-virtual {p0}, Lbe/c;->p0()V

    iget-object p1, p0, Lbe/c;->b:Lbe/t;

    invoke-virtual {p1}, Lbe/t;->p()V

    :cond_1
    return-void
.end method

.method public M()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lbe/c;->p:I

    :cond_0
    return-void
.end method

.method public P()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lbe/c;->y:I

    return-void
.end method

.method public S()D
    .locals 2

    iget-wide v0, p0, Lbe/c;->a:D

    return-wide v0
.end method

.method public final U(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbe/c;->a(IZ)I

    return-void
.end method

.method public V()I
    .locals 1

    iget v0, p0, Lbe/c;->s:I

    return v0
.end method

.method public final X(I)V
    .locals 5

    iget-object v0, p0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/interfacz/Iad;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/hisavana/common/interfacz/ICacheAd;->setTimeOut(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lbe/c;->A:Landroid/os/Bundle;

    const-string v2, "trigger_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbe/c;->A:Landroid/os/Bundle;

    const-string v2, "trigger_ts"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget v1, p0, Lbe/c;->q:I

    const-string v3, "ad_type"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, La7/c;->b:Ljava/lang/String;

    const-string v3, "cld_app_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbe/c;->A:Landroid/os/Bundle;

    const-string v3, "code_seat_id"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cld_code_seat_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bid_start_time_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget p1, p0, Lbe/c;->g:I

    int-to-float p1, p1

    const-string v1, "bid_start_duration"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :try_start_0
    const-string p1, "trigger_to_bid_duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lbe/c;->A:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    sub-long/2addr v3, v1

    long-to-float v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p1

    const-string v1, "cloudControlVersion"

    invoke-virtual {p1, v1}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cld_configure_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lbe/c;->A:Landroid/os/Bundle;

    const-string v1, "traffic_group_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lbe/c;->A:Landroid/os/Bundle;

    const-string v1, "experiment_group_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingStartBid(Landroid/os/Bundle;)V

    return-void
.end method

.method public final Z()Z
    .locals 1

    iget-object v0, p0, Lbe/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(IZ)I
    .locals 5

    invoke-virtual {p0}, Lbe/c;->a0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lbe/c;->e0()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lbe/c;->n:I

    const/4 v2, 0x2

    const-string v3, "CacheHandler"

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v4, "*----> start bidding..."

    invoke-virtual {v0, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start bidding,bidStartTimeType:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBidding,bidStartTimeType "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " BIDDING_DURATION_REACHED:1,HIGH_PRICE_RETURN:2"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lbe/c;->X(I)V

    iput v2, p0, Lbe/c;->n:I

    invoke-virtual {p0}, Lbe/c;->l0()V

    invoke-virtual {p0}, Lbe/c;->k0()V

    :cond_0
    invoke-virtual {p0}, Lbe/c;->J()I

    move-result p1

    invoke-virtual {p0}, Lbe/c;->f()V

    if-nez p1, :cond_2

    iget-boolean p2, p0, Lbe/c;->m:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lbe/c;->K(I)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBidding finish take bidding ad,and notifyLoadBest and unit id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbe/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "bidding success,ad fill*****************"

    invoke-static {v3, p2}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lbe/c;->Z()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    const-string v0, "startBidding failed,no ad fill"

    invoke-virtual {p2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lbe/c;->v(I)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lbe/c;->l(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_1
    move v1, p1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    const-string v0, "startBidding,ad is null but still have ad requesting"

    invoke-virtual {p2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_5
    :goto_3
    return v1
.end method

.method public final a0()Z
    .locals 2

    iget v0, p0, Lbe/c;->n:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lbe/c;->b:Lbe/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbe/t;->k()Lcom/hisavana/common/interfacz/TAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbe/c;->b:Lbe/t;

    invoke-virtual {v0}, Lbe/t;->a()Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c0()Z
    .locals 2

    iget-object v0, p0, Lbe/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget-object v1, p0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/handler/DispatcherHandler;->m(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/hisavana/common/interfacz/Iad;I)Lcom/hisavana/common/bean/TInnerAdRequestBody;
    .locals 2

    new-instance v0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;

    invoke-direct {v0}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;-><init>()V

    new-instance v1, Lbe/c$d;

    invoke-direct {v1, p0, p1, p2}, Lbe/c$d;-><init>(Lbe/c;Lcom/hisavana/common/interfacz/Iad;I)V

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->setAdListener(Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;)Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->build()Lcom/hisavana/common/bean/TInnerAdRequestBody;

    move-result-object p1

    return-object p1
.end method

.method public abstract d0()Z
.end method

.method public e(Z)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lbe/c;->i:Ljava/lang/Object;

    return-object p1
.end method

.method public e0()Z
    .locals 2

    iget v0, p0, Lbe/c;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Lbe/c;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object v1, p0, Lbe/c;->j:Ljava/lang/String;

    iget-object v2, p0, Lbe/c;->w:Lbe/i;

    invoke-virtual {v2}, Lbe/i;->J()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdCache;->getMaxPrice(Ljava/lang/String;Z)D

    move-result-wide v0

    iput-wide v0, p0, Lbe/c;->a:D

    return-void
.end method

.method public final f0()Z
    .locals 2

    iget v0, p0, Lbe/c;->n:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lbe/c;->A:Landroid/os/Bundle;

    return-void
.end method

.method public final g0()Z
    .locals 2

    invoke-virtual {p0}, Lbe/c;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lbe/c;->r:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lbe/c;->r:I

    iget v0, p0, Lbe/c;->u:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Lbe/c;->k:I

    :cond_1
    invoke-virtual {p0, v1}, Lbe/c;->I(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbe/c;->o0()V

    :cond_2
    return v0
.end method

.method public final h0()V
    .locals 3

    iget-object v0, p0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "CacheHandler"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbe/c;->e:Lbe/q;

    invoke-virtual {v0}, Lbe/q;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lbe/c;->k:I

    invoke-virtual {p0, v0}, Lbe/c;->I(I)Z

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "start WaitForBidding & startWaitForNextGroupRequest"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbe/c;->n0()V

    invoke-virtual {p0}, Lbe/c;->o0()V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "*----> no ad source can be load."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbe/c;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object v1, p0, Lbe/c;->j:Ljava/lang/String;

    iget-object v2, p0, Lbe/c;->w:Lbe/i;

    invoke-virtual {v2}, Lbe/i;->J()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbe/c;->e0()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lbe/c;->U(I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WiTH_EXPIRED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lbe/c;->l(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_1
    return-void
.end method

.method public i0()V
    .locals 1

    iget-object v0, p0, Lbe/c;->i:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lbe/c;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public final j0()V
    .locals 7

    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hisavana/common/interfacz/Iad;

    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/hisavana/common/base/BaseAd;

    const-string v6, "return_time"

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/hisavana/common/base/BaseAd;

    iget-object v3, v3, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v5, :cond_2

    move-object v3, v4

    check-cast v3, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v3

    iget-object v3, v3, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    :goto_1
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v5

    invoke-static {v5}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_4

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v5, "\uff0c"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    move-result v4

    invoke-virtual {p0, v4}, Lbe/c;->D(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0creturnTime\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- executer list load status--- : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CacheHandler"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE6:I

    invoke-static {v0, v1}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method public final k(Lbe/t;)V
    .locals 0

    iput-object p1, p0, Lbe/c;->b:Lbe/t;

    return-void
.end method

.method public final k0()V
    .locals 2

    iget-object v0, p0, Lbe/c;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final l(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 4

    iget v0, p0, Lbe/c;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "CacheHandler"

    const-string v3, "notify load failed"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbe/c;->p0()V

    iput v1, p0, Lbe/c;->n:I

    invoke-virtual {p0, p1}, Lbe/c;->y(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public final l0()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "CacheHandler"

    const-string v2, "removeWaitForNextGroupRequest..."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/c;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public m(Lcom/hisavana/common/bean/TInnerAdRequestBody;Lbe/t;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TInnerAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    return-void
.end method

.method public m0()V
    .locals 1

    iget-object v0, p0, Lbe/c;->i:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lbe/c;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Lcom/hisavana/common/interfacz/Iad;)V
    .locals 4

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replace cloud price use first price\uff0cfirstprice\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\uff0ccloud price\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CacheHandler"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/Network;->setPrice(Ljava/lang/Double;)V

    instance-of v0, p1, Lcom/hisavana/common/base/BaseAd;

    const-string v1, "bidding_price"

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/hisavana/common/base/BaseAd;

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lbe/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget-object v1, p0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/handler/DispatcherHandler;->g(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isAdxAd()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget v0, p0, Lbe/c;->s:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0, v2}, Lbe/c;->U(I)V

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isEwAd()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lbe/c;->s:I

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_5

    :cond_4
    invoke-virtual {p0, v2}, Lbe/c;->U(I)V

    :cond_5
    return-void
.end method

.method public final n0()V
    .locals 4

    invoke-virtual {p0}, Lbe/c;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbe/c;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "CacheHandler"

    const-string v2, "startWaitForBidding..."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/c;->h:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbe/c;->h:Landroid/os/Handler;

    iget v2, p0, Lbe/c;->g:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final o(Lcom/hisavana/common/utils/RunTimer;)V
    .locals 0

    iput-object p1, p0, Lbe/c;->c:Lcom/hisavana/common/utils/RunTimer;

    return-void
.end method

.method public final o0()V
    .locals 4

    iget v0, p0, Lbe/c;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbe/c;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbe/c;->h:Landroid/os/Handler;

    iget v2, p0, Lbe/c;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public abstract p(Ljava/lang/Object;)V
.end method

.method public p0()V
    .locals 3

    iget-object v0, p0, Lbe/c;->c:Lcom/hisavana/common/utils/RunTimer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "LoadHandler"

    const-string v2, "stop timer"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbe/c;->c:Lcom/hisavana/common/utils/RunTimer;

    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->cancelTimeTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbe/c;->c:Lcom/hisavana/common/utils/RunTimer;

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;)Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x5

    iget-object v2, v0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lbe/c;->m:Z

    iget-object v3, v0, Lbe/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v3, v0, Lbe/c;->y:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget-object v6, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRealtimeBiddingWaitTime()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getBiddingWaitTime()Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Lbe/c;->g:I

    iget-object v6, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestTimeInterval()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Lbe/c;->f:I

    iget-object v6, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestConcurrentCount()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestConcurrentCount()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_2
    iput v6, v0, Lbe/c;->k:I

    invoke-virtual/range {p0 .. p0}, Lbe/c;->P()I

    move-result v6

    iget-object v7, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v7}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Lbe/c;->p:I

    iput v5, v0, Lbe/c;->n:I

    if-eqz v3, :cond_3

    iget-object v3, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRealtimeFillCallbackMode()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getFillCallbackMode()Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lbe/c;->t:I

    iget-object v3, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRequestIntervalMode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lbe/c;->u:I

    sget-boolean v3, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    const-string v6, "CacheHandler"

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v3

    sget v7, Lcom/hisavana/mediation/R$string;->hisavana_log_msg1:I

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v7, v0, Lbe/c;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v0, Lbe/c;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lbe/c;->k:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v10}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v11}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getPreload()Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v12}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v13}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v14}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v7, v15, v2

    aput-object v8, v15, v5

    aput-object v9, v15, v4

    const/4 v4, 0x3

    aput-object v10, v15, v4

    const/4 v4, 0x4

    aput-object v11, v15, v4

    aput-object v12, v15, v1

    const/4 v4, 0x6

    aput-object v13, v15, v4

    const/4 v4, 0x7

    aput-object v14, v15, v4

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE1:I

    invoke-static {v3, v4}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareForRequest,config "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*----> WaitBiddingTime:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lbe/c;->g:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",WaitNextGroupRequestTime:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lbe/c;->f:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",ConcurrentReqCount:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lbe/c;->k:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",PoolAppendStrategy:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v7}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getPreloadLogic()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",adRequestCount:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v7}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ----- codeSeatId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v7}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lbe/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lbe/c;->e0()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lbe/c;->J()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lbe/c;->f()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    const-string v3, "-------->quick fill success "

    invoke-virtual {v2, v6, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbe/c;->K(I)V

    :cond_6
    iget-object v1, v0, Lbe/c;->e:Lbe/q;

    invoke-virtual {v1}, Lbe/q;->l()V

    iget-object v6, v0, Lbe/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget-object v1, v0, Lbe/c;->e:Lbe/q;

    invoke-virtual {v1}, Lbe/q;->p()Ljava/util/List;

    move-result-object v8

    iget-object v1, v0, Lbe/c;->e:Lbe/q;

    invoke-virtual {v1}, Lbe/q;->o()Ljava/util/List;

    move-result-object v9

    iget-object v1, v0, Lbe/c;->e:Lbe/q;

    invoke-virtual {v1}, Lbe/q;->r()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/hisavana/mediation/handler/DispatcherHandler;->f(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iput-object v1, v0, Lbe/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual/range {p0 .. p1}, Lbe/c;->x(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lbe/c;->h0()V

    return v5

    :cond_7
    :goto_4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adUnit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lbe/c;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " no networks , load/preload/trigger_preload request end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prepareForRequest,networks is empty"

    invoke-static {v6, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return v2
.end method

.method public u(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Z
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbe/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler;->d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lbe/c;->B(Lcom/hisavana/common/interfacz/Iad;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public w()V
    .locals 0

    invoke-virtual {p0}, Lbe/c;->E()V

    return-void
.end method

.method public final x(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fanbidding queryPrice,codeSeatId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbe/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    iget-object v0, p0, Lbe/c;->e:Lbe/q;

    new-instance v1, Lbe/c$c;

    invoke-direct {v1, p0, p1}, Lbe/c$c;-><init>(Lbe/c;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lbe/q;->d(Lcom/hisavana/common/interfacz/QueryPriceListener;)Ljava/util/List;

    return-void
.end method

.method public y(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    iget-object v0, p0, Lbe/c;->b:Lbe/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbe/t;->onError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public z(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
