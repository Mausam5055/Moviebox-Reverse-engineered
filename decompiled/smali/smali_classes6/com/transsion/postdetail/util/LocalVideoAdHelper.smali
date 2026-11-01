.class public final Lcom/transsion/postdetail/util/LocalVideoAdHelper;
.super Lcom/transsion/postdetail/ad/BaseVideoAdHelper;


# instance fields
.field private S:Lso/l;

.field private T:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;-><init>()V

    return-void
.end method

.method public static synthetic h2(Lcom/transsion/postdetail/util/LocalVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->p2(Lcom/transsion/postdetail/util/LocalVideoAdHelper;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i2(Lcom/transsion/postdetail/util/LocalVideoAdHelper;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->T:Lcom/transsion/baselib/db/download/DownloadBean;

    return-object p0
.end method

.method public static final synthetic j2(Lcom/transsion/postdetail/util/LocalVideoAdHelper;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A1(Z)V

    return-void
.end method

.method public static final synthetic k2(Lcom/transsion/postdetail/util/LocalVideoAdHelper;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B1(Z)V

    return-void
.end method

.method private static final p2(Lcom/transsion/postdetail/util/LocalVideoAdHelper;)Lkotlin/Unit;
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v0()Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/transsion/postdetail/util/LocalVideoAdHelper$onCompletion$1$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/postdetail/util/LocalVideoAdHelper$onCompletion$1$1;-><init>(Lcom/transsion/postdetail/util/LocalVideoAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method protected B0()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/l;->l:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->S:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected V()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/l;->c:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected W()Lcom/transsion/postdetail/ui/view/AdCountDownView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/l;->d:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected d0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/l;->e:Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected e0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/l;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected f0()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/l;->g:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f2()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lso/l;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/transsion/postdetail/util/LocalVideoAdHelper$updateAdStartLastShowTime$1$1;

    invoke-direct {v5, p0, v1}, Lcom/transsion/postdetail/util/LocalVideoAdHelper$updateAdStartLastShowTime$1$1;-><init>(Lcom/transsion/postdetail/util/LocalVideoAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    return-void
.end method

.method protected g0()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/l;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected j0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/l;->i:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final l2()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->t0()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->V()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o1(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u0()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s1(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V

    iput-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q()V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    return-void
.end method

.method public final m2()V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w0()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A0()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x1(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C1(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w1(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N1()V

    return-void
.end method

.method public final n2(Lso/l;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "adShowCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D0(Lg4/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final o2()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x1(J)V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C1(J)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    new-instance v0, Lcom/transsion/postdetail/util/b;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/util/b;-><init>(Lcom/transsion/postdetail/util/LocalVideoAdHelper;)V

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->X1(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final q2()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e1(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y1(I)V

    return-void
.end method

.method public final r2(Lcom/transsion/postdetail/layer/local/LocalUiType;Lcom/transsion/player/orplayer/g;)V
    .locals 2

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->LAND:Lcom/transsion/postdetail/layer/local/LocalUiType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u1(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a1()V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M0()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O()V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->isComplete()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N1()V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L0()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R0()V

    invoke-virtual {p0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g1(Z)V

    :cond_3
    return-void
.end method

.method protected s0()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/l;->j:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final s2()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C1(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w1(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O()V

    return-void
.end method

.method public final t2()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q()V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    return-void
.end method

.method public final u2()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final v2(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

    iput-object p1, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->T:Lcom/transsion/baselib/db/download/DownloadBean;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C0(JJ)V

    const-string p1, "localVideo"

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E0(Ljava/lang/String;)V

    return-void
.end method

.method protected y0()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/util/LocalVideoAdHelper;->S:Lso/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/l;->n:Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
