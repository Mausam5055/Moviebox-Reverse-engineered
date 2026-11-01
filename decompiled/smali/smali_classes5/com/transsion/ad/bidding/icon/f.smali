.class public final Lcom/transsion/ad/bidding/icon/f;
.super Ldi/a;


# instance fields
.field private d:Ldi/a;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method

.method public static synthetic A(Lcom/transsion/ad/bidding/icon/f;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/ad/bidding/icon/f;->z(ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final y(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lcom/transsion/ad/scene/a;->o(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final B(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ad/bidding/icon/f;->e:Z

    return-void
.end method

.method public final C(Ldi/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/f;->d:Ldi/a;

    return-void
.end method

.method public e(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1, p2}, Ldi/a;->e(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/f;->d:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ldi/a;->e(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_0
    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 4

    invoke-super {p0, p1}, Ldi/a;->v(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/transsion/ad/bidding/icon/f;->e:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/ps/model/RecommendInfo;

    sget-object v2, Lqi/b;->a:Lqi/b;

    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lqi/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/f;->d:Ldi/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ldi/a;->v(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public final x()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/f;->d:Ldi/a;

    return-void
.end method

.method public final z(ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->a:Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;

    invoke-direct {p0, p2}, Lcom/transsion/ad/bidding/icon/f;->y(Ljava/lang/String;)I

    move-result v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/ad/ps/distribute/PSDistributionRequestManager;->d(IILjava/lang/String;Ljava/lang/String;Ldi/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
