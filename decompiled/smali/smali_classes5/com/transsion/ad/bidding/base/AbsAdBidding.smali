.class public abstract Lcom/transsion/ad/bidding/base/AbsAdBidding;
.super Ldi/a;

# interfaces
.implements Loi/b;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;

.field private g:Ldi/a;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/Integer;

.field private j:Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;

.field private k:I

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/lang/String;

.field private final n:Landroid/os/Handler;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Ljava/util/List;

.field private q:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private final r:Landroid/os/Handler;

.field private final s:Lkotlinx/coroutines/j0;

.field private final t:Lkotlinx/coroutines/z;

.field private final u:Lkotlinx/coroutines/n0;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ldi/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m:Ljava/lang/String;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n:Landroid/os/Handler;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    sget-object v1, Lkotlinx/coroutines/j0;->k1:Lkotlinx/coroutines/j0$a;

    new-instance v2, Lcom/transsion/ad/bidding/base/AbsAdBidding$a;

    invoke-direct {v2, v1, p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$a;-><init>(Lkotlinx/coroutines/j0$a;Lcom/transsion/ad/bidding/base/AbsAdBidding;)V

    iput-object v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->s:Lkotlinx/coroutines/j0;

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t:Lkotlinx/coroutines/z;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->u:Lkotlinx/coroutines/n0;

    return-void
.end method

.method public static synthetic A(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->I0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method private static final A0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j0()Ldi/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public static synthetic B(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->B0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V

    return-void
.end method

.method private static final B0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j0()Ldi/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ldi/a;->k(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static synthetic C(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->z0(Ljava/lang/String;)V

    return-void
.end method

.method private static final C0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j0()Ldi/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    return-void
.end method

.method public static synthetic D(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->y0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    return-void
.end method

.method private final D0(ILjava/util/List;)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingTime() --> isLoading = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingTime() --> before callback size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    const/16 v1, 0x44e

    if-ne p1, v0, :cond_6

    invoke-direct {p0, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l0(Ljava/util/List;)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ade\u4ef7\u5931\u8d25 --> maxEcpmObject == null --> biddingPlanList?.size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBiddingLoad() --> \u7ade\u4ef7\u5b8c\u6210 --> ecpmList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " --> ecpm = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " --> plans?.id = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> plans?.name = "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m0(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance p1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ade\u4ef7\u5931\u8d25 --> maxEcpmBiddingPlanList == null --> biddingPlanList?.size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingLoad() --> \u7ade\u4ef7\u5b8c\u6210 --> fetchCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " --> maxEcpmObject.size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k(Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method public static synthetic E(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->E0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method private static final E0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j0()Ldi/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ldi/a;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    return-void
.end method

.method public static synthetic F(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->H0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method private static final F0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j0()Ldi/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ldi/a;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    return-void
.end method

.method public static synthetic G(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->A0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method private static final G0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j0()Ldi/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ldi/a;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    return-void
.end method

.method public static final synthetic H(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->T(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final H0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j0()Ldi/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ldi/a;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    return-void
.end method

.method public static final synthetic I(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->Y(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final I0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j0()Ldi/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ldi/a;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    return-void
.end method

.method public static final synthetic J(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic K(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d0(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic L(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Lkotlinx/coroutines/n0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->u:Lkotlinx/coroutines/n0;

    return-object p0
.end method

.method public static final synthetic M(Lcom/transsion/ad/bidding/base/AbsAdBidding;)J
    .locals 2

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->e0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic N(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic O(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic P(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->q0(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic Q(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    return-void
.end method

.method public static final synthetic R(Lcom/transsion/ad/bidding/base/AbsAdBidding;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k:I

    return-void
.end method

.method public static synthetic R0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->Q0(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startAdActivity"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final T(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;

    iget v1, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->I$0:I

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v5, 0x3

    const-string v6, "bidding() --> \u6267\u884c\u7ade\u4ef7\u73af\u8282"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput p2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->I$0:I

    iput v3, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$bidding$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d0(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bidding() --> \u7ade\u4ef7\u7ed3\u679c biddingPlanList size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->D0(ILjava/util/List;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final Y(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;

    iget v1, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generalBidding() --> \u5df2\u7ecf\u5904\u7406\u8fc7\uff0c\u5ffd\u7565\u672c\u6b21\u8c03\u7528 --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generalBidding() --> \u573a\u666f\u5df2\u7ecf\u88ab\u56de\u6536\uff0c\u4e0d\u6267\u884c\u7ade\u4ef7\u903b\u8f91 --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    iget-object p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    if-eqz p2, :cond_7

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v3

    if-ne p2, v3, :cond_7

    iget-object p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generalBidding() --> \u5e7f\u544a\u5df2\u7ecf\u51c6\u5907\u597d\uff0c\u5f00\u59cb\u7ade\u4ef7 ---> "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    if-eqz p1, :cond_5

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    :cond_5
    iget p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k:I

    iput v3, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$generalBidding$1;->label:I

    invoke-direct {p0, v2, p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->T(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final Z()Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j:Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;

    return-object v0
.end method

.method static synthetic c0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p0}, Loi/b;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const/4 p0, 0x0

    new-array v4, p0, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->h(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final d0(Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    instance-of v1, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;

    iget v2, v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->label:I

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;

    invoke-direct {v1, v7, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v9

    iget v1, v8, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->label:I

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v10, :cond_2

    if-ne v1, v11, :cond_1

    iget v1, v8, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->I$0:I

    iget-object v2, v8, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/ad/monopoly/model/AdPlans;

    iget-object v3, v8, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v4, v8, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v2

    move-object v10, v3

    move-object v6, v4

    move-object/from16 v27, v8

    move v8, v1

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, v8, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->I$0:I

    iget-object v2, v8, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/ad/monopoly/model/AdPlans;

    iget-object v3, v8, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v4, v8, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v2

    move-object v6, v4

    move-object/from16 v28, v8

    move v12, v10

    move v8, v1

    move-object v10, v3

    goto/16 :goto_c

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->s0(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBiddingPlan() --> \u8fc7\u6ee4\u7ed3\u679csize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    check-cast v14, Ljava/lang/Iterable;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v15, v8

    move-object v14, v13

    move/from16 v8, p2

    move-object v13, v0

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v6}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12, v11, v2}, Lcom/transsion/ad/scene/c;->b(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x5

    const-string v2, "hiSavanaPlacementId is empty"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_3
    move/from16 v29, v12

    move v12, v10

    goto/16 :goto_e

    :cond_5
    :goto_4
    invoke-virtual {v7, v14, v6, v8}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->S(Ljava/util/List;Lcom/transsion/ad/monopoly/model/AdPlans;I)V

    goto :goto_3

    :cond_6
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x5

    const-string v2, "\u7a0b\u5e8f\u5316\u5e7f\u544a\u573a\u666f\u5173\u95ed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS_REFERRAL:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move-object v10, v6

    goto/16 :goto_b

    :cond_9
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_H5:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12, v11, v2}, Lcom/transsion/ad/scene/c;->d(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " H5 \u573a\u666f\u5df2\u6253\u5f00"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/16 v16, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v10, v6

    move-object/from16 v6, v16

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    invoke-virtual {v0, v10}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getH5Link()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    move-object v6, v0

    goto :goto_7

    :cond_b
    :goto_6
    const-string v0, ""

    goto :goto_5

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " H5 \u573a\u666f url = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/16 v16, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v12, v6

    move-object/from16 v6, v16

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->a:Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;

    iput-object v14, v15, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$0:Ljava/lang/Object;

    iput-object v13, v15, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$1:Ljava/lang/Object;

    iput-object v10, v15, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$2:Ljava/lang/Object;

    iput v8, v15, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->I$0:I

    iput v11, v15, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->label:I

    invoke-virtual {v0, v12, v15}, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_c

    return-object v9

    :cond_c
    move-object v6, v14

    move-object/from16 v27, v15

    move-object v14, v10

    move-object v10, v13

    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v14}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v21

    new-instance v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v25, 0x678

    const/16 v26, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6b

    move-object v12, v0

    invoke-direct/range {v12 .. v26}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " H5\u5e7f\u544a\u51c6\u5907\u597d\u4e86"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v12, 0x0

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v14, v6

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_9

    :cond_d
    move-object v14, v6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " H5\u5e7f\u544a\u6ca1\u51c6\u5907\u597d"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_9
    move-object v13, v10

    move-object/from16 v15, v27

    :goto_a
    const/4 v12, 0x1

    const/16 v29, 0x0

    goto/16 :goto_e

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " H5 \u5e7f\u544a\u573a\u666f\u5173\u95ed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_a

    :cond_f
    move-object v10, v6

    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v11, v2}, Lcom/transsion/ad/scene/c;->d(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v25

    new-instance v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v24

    const/16 v29, 0x678

    const/16 v30, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x66

    move-object/from16 v16, v0

    move-object/from16 v18, v10

    invoke-direct/range {v16 .. v30}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    goto :goto_a

    :cond_10
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x5

    const-string v2, "\u5305\u65ad\u5e7f\u544a\u573a\u666f\u5173\u95ed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_a

    :goto_b
    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v11, v2}, Lcom/transsion/ad/scene/c;->d(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->a:Lcom/transsion/ad/ps/distribute/PsOfferProvider;

    iput-object v14, v15, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$0:Ljava/lang/Object;

    iput-object v13, v15, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$1:Ljava/lang/Object;

    iput-object v10, v15, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->L$2:Ljava/lang/Object;

    iput v8, v15, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->I$0:I

    const/4 v12, 0x1

    iput v12, v15, Lcom/transsion/ad/bidding/base/AbsAdBidding$getBiddingPlan$1;->label:I

    invoke-virtual {v0, v10, v15}, Lcom/transsion/ad/ps/distribute/PsOfferProvider;->e(Lcom/transsion/ad/monopoly/model/AdPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_11

    return-object v9

    :cond_11
    move-object v6, v14

    move-object/from16 v28, v15

    move-object v15, v10

    move-object v10, v13

    :goto_c
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v15}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v22

    new-instance v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v26, 0x678

    const/16 v27, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x66

    move-object v13, v0

    invoke-direct/range {v13 .. v27}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-object v14, v6

    goto :goto_d

    :cond_12
    const/16 v29, 0x0

    invoke-virtual {v15}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PS Offer \u83b7\u53d6\u5931\u8d25\uff0cname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v13, 0x0

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v14, v6

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_d
    move-object v13, v10

    move-object/from16 v15, v28

    goto :goto_e

    :cond_13
    const/4 v12, 0x1

    const/16 v29, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x5

    const-string v2, "\u5305\u65ad\u5e7f\u544a\u573a\u666f\u5173\u95ed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_e
    move v10, v12

    move/from16 v12, v29

    goto/16 :goto_2

    :cond_14
    return-object v14
.end method

.method private final e0()J
    .locals 5

    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/ad/scene/c;->b(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/ad/scene/a;->c(Lcom/transsion/ad/scene/a;Ljava/lang/String;IILjava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method private final l0(Ljava/util/List;)Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 7

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlan$$inlined$compareBy$1;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlan$$inlined$compareBy$1;-><init>()V

    new-instance v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlan$$inlined$thenBy$1;

    invoke-direct {v1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlan$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->x0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    return-object p1

    :cond_1
    :goto_0
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x5

    const-string v2, "getMaxEcpmBiddingPlan() --> biddingList.isNullOrEmpty() == true"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final m0(ILjava/util/List;)Ljava/util/List;
    .locals 2

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlanList$$inlined$compareByDescending$1;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlanList$$inlined$compareByDescending$1;-><init>()V

    new-instance v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlanList$$inlined$thenBy$1;

    invoke-direct {v1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$getMaxEcpmBiddingPlanList$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private final q0(Ljava/util/List;)Z
    .locals 3

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    sget-object v2, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v2, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->e(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private final s0(Ljava/util/List;)Ljava/util/List;
    .locals 12

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v5}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_H5:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v5}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-nez p1, :cond_a

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v1

    check-cast v6, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v6}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_1

    :cond_6
    move-wide v6, v4

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v9}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    goto :goto_2

    :cond_8
    move-wide v9, v4

    :goto_2
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Double;->compare(DD)I

    move-result v11

    if-gez v11, :cond_9

    move-object v1, v8

    move-wide v6, v9

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    :goto_3
    check-cast v1, Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v1, :cond_a

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    move-object v1, v3

    check-cast v1, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_4

    :cond_d
    move-wide v1, v4

    :cond_e
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v7}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_5

    :cond_f
    move-wide v7, v4

    :goto_5
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v9

    if-gez v9, :cond_10

    move-object v3, v6

    move-wide v1, v7

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_e

    :goto_6
    check-cast v3, Lcom/transsion/ad/monopoly/model/AdPlans;

    if-eqz v3, :cond_11

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_12

    new-instance p1, Lcom/transsion/ad/bidding/base/AbsAdBidding$hiAdPlanDeduplication$$inlined$sortByDescending$1;

    invoke-direct {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding$hiAdPlanDeduplication$$inlined$sortByDescending$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_12
    return-object v0
.end method

.method private final t0(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;ZILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public static synthetic w0(Lcom/transsion/ad/bidding/base/AbsAdBidding;IZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->v0(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadAd"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic x(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->C0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->G0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method private static final y0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j0()Ldi/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Ldi/a;->d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    :cond_0
    return-void
.end method

.method public static synthetic z(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->F0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method private static final z0(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-virtual {v0}, Lcom/transsion/ad/MBAd;->c()Lcom/transsion/ad/MBAd$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/MBAd$a;->e()Lhi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lhi/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final J0(Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j:Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;

    return-object p0
.end method

.method public final K0(Ljava/lang/Integer;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public final L0(Landroid/content/Context;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->h:Landroid/content/Context;

    return-object p0
.end method

.method public final M0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->f:Ljava/util/Map;

    return-object p0
.end method

.method public final N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g:Ldi/a;

    return-object p0
.end method

.method public final O0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final P0(Ljava/lang/String;)Lcom/transsion/ad/bidding/base/AbsAdBidding;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final Q0(Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Z)V
    .locals 8

    sget-object v0, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/v;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "\u5f53\u524d\u5df2\u7ecf\u6709Activity\u5728\u5c55\u793a\u5e7f\u544a\u4e86\uff0c\u8bf7\u52ff\u91cd\u590d\u5c55\u793a\u5e7f\u544a!"

    invoke-virtual {p2, p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setErrorMsg(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/v;->d()V

    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsion/ad/bidding/base/AbsAdBidding$startAdActivity$1;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/AbsAdBidding;ZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "activity is empty"

    invoke-virtual {p2, p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setErrorMsg(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_5
    return-void
.end method

.method public abstract S(Ljava/util/List;Lcom/transsion/ad/monopoly/model/AdPlans;I)V
.end method

.method public U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t:Lkotlinx/coroutines/z;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/bidding/splash/a;->n:Lcom/transsion/ad/bidding/splash/a$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/splash/a$a;->a(Ljava/lang/String;)Lcom/transsion/ad/bidding/splash/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->c(Ldi/a;)V

    :cond_0
    sget-object v0, Lcom/transsion/ad/bidding/interstitial/l;->j:Lcom/transsion/ad/bidding/interstitial/l$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/interstitial/l$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/interstitial/l;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->c(Ldi/a;)V

    :cond_1
    sget-object v0, Lcom/transsion/ad/bidding/video/q;->j:Lcom/transsion/ad/bidding/video/q$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/video/q$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/video/q;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->c(Ldi/a;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->h0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;->b()V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N0(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-virtual {p0, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->M0(Ljava/util/Map;)Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iput-object v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->h:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->q:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v4, 0x3

    const-string v5, "destroy() --> \u8d44\u6e90\u56de\u6536"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final W(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)I
    .locals 2

    const/16 v0, 0x66

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x6b

    :cond_1
    :goto_0
    return v0
.end method

.method public final X(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Lcom/transsion/ad/bidding/base/AbsAdBidding$fetchH5LinkIfH5Ad$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$fetchH5LinkIfH5Ad$2;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Ldi/a;->a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    sget-object v0, Lri/c;->a:Lri/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, v16

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->W(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object/from16 v6, v16

    :goto_1
    invoke-virtual {v5, v6}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object/from16 v6, v16

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v7

    sget-object v8, Lpi/b;->a:Lpi/b$a;

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v9

    goto :goto_3

    :cond_3
    move-object/from16 v9, v16

    :goto_3
    invoke-virtual {v8, v9}, Lpi/b$a;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v8

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v9

    goto :goto_4

    :cond_4
    move-object/from16 v9, v16

    :goto_4
    invoke-virtual {v5, v9}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v9

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v5

    move-object v10, v5

    goto :goto_5

    :cond_5
    move-object/from16 v10, v16

    :goto_5
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/transsion/ad/monopoly/model/AdPlans;->getEcpmCent()Ljava/lang/Long;

    move-result-object v5

    move-object v11, v5

    goto :goto_6

    :cond_6
    move-object/from16 v11, v16

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object v12

    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    goto :goto_7

    :cond_7
    move-object/from16 v13, v16

    :goto_7
    const/16 v14, 0x80

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v5, v6

    move v6, v7

    move v7, v8

    move-object/from16 v8, v17

    invoke-static/range {v0 .. v15}, Lri/c;->b(Lri/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    goto :goto_8

    :cond_8
    move-object/from16 v1, v16

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->Z()Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Loi/b;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/ad/strategy/b;->j(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v16

    :cond_9
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/transsion/ad/ps/distribute/PsDbManager;->k(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public abstract a0()I
.end method

.method public b(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->b(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public b0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->c0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 20

    move-object/from16 v0, p1

    invoke-super/range {p0 .. p1}, Ldi/a;->c(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setExpend(Ljava/lang/Boolean;)V

    :cond_0
    sget-object v1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->m(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    sget-object v4, Lri/c;->a:Lri/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    :cond_2
    move-object v7, v2

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->W(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_3

    :cond_4
    move-object v9, v2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v10

    sget-object v3, Lpi/b;->a:Lpi/b$a;

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v11

    goto :goto_4

    :cond_5
    move-object v11, v2

    :goto_4
    invoke-virtual {v3, v11}, Lpi/b$a;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v11

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v3

    goto :goto_5

    :cond_6
    move-object v3, v2

    :goto_5
    invoke-virtual {v1, v3}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v13

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v1

    move-object v14, v1

    goto :goto_6

    :cond_7
    move-object v14, v2

    :goto_6
    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getEcpmCent()Ljava/lang/Long;

    move-result-object v1

    move-object v15, v1

    goto :goto_7

    :cond_8
    move-object v15, v2

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object v16

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_8

    :cond_9
    move-object/from16 v17, v2

    :goto_8
    const/16 v18, 0x80

    const/16 v19, 0x0

    const/4 v12, 0x0

    invoke-static/range {v4 .. v19}, Lri/c;->h(Lri/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/ad/ps/distribute/PsDbManager;->a:Lcom/transsion/ad/ps/distribute/PsDbManager;

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v2

    :cond_a
    invoke-virtual {v1, v2}, Lcom/transsion/ad/ps/distribute/PsDbManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v13, p2

    invoke-super/range {p0 .. p3}, Ldi/a;->d(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v9

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingBuyOutDisplayTimestamp() --> name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> displayTimestamp = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lri/c;->a:Lri/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object v12, v9

    :goto_1
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v9

    :goto_2
    invoke-virtual {v1, v2}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    goto :goto_3

    :cond_3
    move-object v15, v9

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v16

    sget-object v1, Lpi/b;->a:Lpi/b$a;

    if-eqz v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v9

    :goto_4
    invoke-virtual {v1, v2}, Lpi/b$a;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object v18

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getAdSource()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_5

    :cond_5
    move-object/from16 v19, v9

    :goto_5
    if-eqz v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_6

    :cond_6
    move-object/from16 v20, v9

    :goto_6
    move-object v9, v0

    move-wide v0, v13

    move-wide/from16 v13, p2

    invoke-virtual/range {v9 .. v20}, Lri/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    new-instance v3, Lcom/transsion/ad/bidding/base/h;

    invoke-direct {v3, v7, v8, v0, v1}, Lcom/transsion/ad/bidding/base/h;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    invoke-super {p0, p1}, Ldi/a;->f(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getH5LinkPreload()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getH5Link()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v0, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/transsion/ad/strategy/AdUrlParameterManager;->a:Lcom/transsion/ad/strategy/AdUrlParameterManager;

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    const-string v0, "on Ad show"

    invoke-virtual {p1, v2, v0}, Lcom/transsion/ad/strategy/AdUrlParameterManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/bidding/base/c;

    invoke-direct {v1, p1}, Lcom/transsion/ad/bidding/base/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final f0()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->h:Landroid/content/Context;

    return-object v0
.end method

.method public g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1}, Ldi/a;->g(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public final g0()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClassTag()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Loi/b$a;->a(Loi/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public h(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ldi/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-virtual {p0, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public abstract h0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
.end method

.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 10

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingError() --> errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/bidding/base/e;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/e;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i0()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 14

    invoke-super {p0, p1}, Ldi/a;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->q:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    sget-object v0, Lri/c;->a:Lri/c;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getAdSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v3

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u7ade\u4ef7\u6210\u529f --> ecpm = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -- plans?.id = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -- plans?.name = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/transsion/ad/report/BiddingStateEnum;->BIDDING_REPORT_BIDDING_SUCCESS:Lcom/transsion/ad/report/BiddingStateEnum;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v3

    :goto_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_5
    move-object v9, v3

    :goto_5
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_6
    move-object v10, v3

    :goto_6
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object v11

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v3

    :cond_7
    move-object v12, v3

    const/4 v13, 0x0

    move-object v3, v4

    move v4, v5

    move-object v5, v7

    move-object v7, v13

    invoke-virtual/range {v0 .. v12}, Lri/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILcom/transsion/ad/report/BiddingStateEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/bidding/base/b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/b;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j0()Ldi/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g:Ldi/a;

    return-object v0
.end method

.method public k(Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Ldi/a;->k(Ljava/util/List;)V

    if-eqz v1, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setSceneSubId(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setSceneId(Ljava/lang/String;)V

    sget-object v5, Lri/c;->a:Lri/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getAdSource()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v9

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_0
    move-object v10, v11

    :goto_1
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_1
    move-object v12, v11

    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u7ade\u4ef7\u6210\u529f --> ecpm = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " -- plans?.id = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -- plans?.name = "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v10, Lcom/transsion/ad/report/BiddingStateEnum;->BIDDING_REPORT_BIDDING_SUCCESS:Lcom/transsion/ad/report/BiddingStateEnum;

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_2
    move-object v8, v11

    :goto_3
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_3
    move-object v8, v11

    :goto_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_5

    :cond_4
    move-object/from16 v17, v11

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v3, 0x0

    move-object v11, v12

    move-object v12, v3

    invoke-virtual/range {v5 .. v17}, Lri/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILcom/transsion/ad/report/BiddingStateEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    new-instance v3, Lcom/transsion/ad/bidding/base/j;

    invoke-direct {v3, v0, v1}, Lcom/transsion/ad/bidding/base/j;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k0()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    return-object v0
.end method

.method public l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingWrapperAdClick() --> name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/bidding/base/g;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/g;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingWrapperAdClose() --> name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/v;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/v;->c()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/bidding/base/a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/a;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBiddingWrapperAdDisplay() --> name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v10}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->a:Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    sget-object v0, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->a:Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/AdSceneDisplayLimitManager;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/bidding/base/f;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/f;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->q:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    return-object v0
.end method

.method public o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingWrapperAdRewarded() --> name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/bidding/base/d;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/d;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->e:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 20

    const-string v0, "additionalInfo"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v4, Lri/c;->a:Lri/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    :cond_3
    move-object v7, v3

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getSource()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getCodeSeatId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    move-result-object v0

    move-object v14, v0

    goto :goto_3

    :cond_4
    move-object v14, v3

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v3

    :cond_5
    move-object/from16 v17, v3

    const/16 v18, 0x80

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v19}, Lri/c;->b(Lri/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public onClosed(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(I)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 7

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->u:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadFailure$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/AdditionalInfo;Lcom/hisavana/common/bean/TAdErrorCode;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 7

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->u:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadSuccess$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$onLoadSuccess$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/hisavana/common/bean/AdditionalInfo;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Loi/b$a;->b(Loi/b;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRewarded()V
    .locals 1

    invoke-super {p0}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onRewarded()V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 20

    const-string v0, "additionalInfo"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v4, Lri/c;->a:Lri/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    :cond_3
    move-object v7, v3

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getSource()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getCodeSeatId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    move-result-object v0

    move-object v14, v0

    goto :goto_3

    :cond_4
    move-object v14, v3

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v3

    :cond_5
    move-object/from16 v17, v3

    const/16 v18, 0x80

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v19}, Lri/c;->h(Lri/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 8

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/AdditionalInfo;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowError() --> errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> placementId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public p(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBiddingWrapperAdShowError() --> name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> msg = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xd

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/v;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/v;->c()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->r:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/ad/bidding/base/i;

    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/bidding/base/i;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m:Ljava/lang/String;

    return-object v0
.end method

.method public abstract r0()Z
.end method

.method protected final u0(Lcom/transsion/ad/monopoly/model/AdPlans;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :goto_1
    cmpg-double p1, v2, v0

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    return p1
.end method

.method public final v0(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;

    iget v4, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;

    invoke-direct {v3, v0, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x44d

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-boolean v1, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->Z$0:Z

    iget v5, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->I$0:I

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v9, v1

    move v1, v5

    goto/16 :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v2, Lcom/transsion/ad/strategy/t;->a:Lcom/transsion/ad/strategy/t;

    invoke-virtual {v2}, Lcom/transsion/ad/strategy/t;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v2, "\u9752\u5c11\u5e74\u6a21\u5f0f\uff0c\u4e0d\u5c55\u793a\u5e7f\u544a"

    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_4
    if-le v1, v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v2

    if-eq v2, v6, :cond_5

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v2, "\u53ea\u6709Native\u7c7b\u578b\u624d\u53ef\u4ee5\u4e00\u6b21\u52a0\u8f7d\u591a\u4e2a\u5e7f\u544a"

    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_5
    if-ge v1, v7, :cond_6

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v2, "fetchCount can not be less than 1"

    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_6
    iget-object v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v2, "isLoading -- Try again when it\'s a little thicker"

    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_7
    iget-object v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lcom/transsion/ad/bidding/base/v;->a:Lcom/transsion/ad/bidding/base/v;

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/v;->b()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/transsion/ad/bidding/base/v;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v2, "activity ad is showing"

    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_8
    sget-object v2, Lti/n;->a:Lti/n;

    invoke-virtual {v2}, Lti/n;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m:Ljava/lang/String;

    sget-object v9, Lri/c;->a:Lri/c;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v12

    const-string v14, ""

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object v15

    const/16 v13, 0x69

    invoke-virtual/range {v9 .. v15}, Lri/c;->l(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v5

    iput v1, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->I$0:I

    move/from16 v9, p2

    iput-boolean v9, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->Z$0:Z

    iput v7, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->label:I

    invoke-virtual {v2, v5, v3}, Lcom/transsion/ad/scene/SceneInterceptManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    return-object v4

    :cond_9
    :goto_1
    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v10, Lri/c;->a:Lri/c;

    iget-object v11, v0, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->a0()I

    move-result v13

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object v16

    const/16 v14, 0x69

    invoke-virtual/range {v10 .. v16}, Lri/c;->k(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->f0()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_b

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v2, "context is null"

    invoke-direct {v1, v8, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_b
    iput v6, v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$loadAd$1;->label:I

    invoke-direct {v0, v9, v1, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_c

    return-object v4

    :cond_c
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method

.method public abstract x0(Ljava/lang/String;)V
.end method
