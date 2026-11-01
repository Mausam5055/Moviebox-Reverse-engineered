.class public final Lcom/transsion/shorttv/ad/playeroverlayad/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlinx/coroutines/n0;

.field private final c:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

.field private d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

.field private e:Le7/e;

.field private f:Ljava/lang/Long;

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->b:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-direct {v0, p1, p2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V

    const-string p1, "overlay"

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->r(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->c:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/shorttv/ad/playeroverlayad/e;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->n(Lcom/transsion/shorttv/ad/playeroverlayad/e;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lcom/transsion/shorttv/ad/playeroverlayad/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->m(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->l(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/ad/playeroverlayad/e;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic e(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->o(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final g()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->e:Le7/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le7/e;->d()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->e:Le7/e;

    return-void
.end method

.method private static final l(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->o(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final m(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lcom/transsion/shorttv/ad/playeroverlayad/e;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->getNativeAdView()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lcom/transsion/shorttv/ad/playeroverlayad/e;->c:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    new-instance v1, Lcom/transsion/shorttv/ad/playeroverlayad/f;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/f;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/transsion/shorttv/ad/playeroverlayad/d;

    invoke-direct {v2, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/d;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->s(Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method private static final n(Lcom/transsion/shorttv/ad/playeroverlayad/e;Z)Lkotlin/Unit;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g:J

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final o(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f()V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->c:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->n(Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;IILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g()V

    iput-object v3, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f:Ljava/lang/Long;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->removeAdView()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-object v3, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g:J

    return-void
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g:J

    return-wide v0
.end method

.method public final i(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->c:Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/ad/common/STCommonNativeAdHelper;->q(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final j()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g()V

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->removeAdView()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final k(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;)V
    .locals 11

    const-string v0, "adContainerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timerEndCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->getCloseView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/transsion/shorttv/ad/playeroverlayad/b;

    invoke-direct {v2, p0, p2}, Lcom/transsion/shorttv/ad/playeroverlayad/b;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->addAdView()V

    new-instance v1, Lcom/transsion/shorttv/ad/playeroverlayad/c;

    invoke-direct {v1, p1, p0}, Lcom/transsion/shorttv/ad/playeroverlayad/c;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lcom/transsion/shorttv/ad/playeroverlayad/e;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    invoke-direct {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->g()V

    iget-object v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f:Ljava/lang/Long;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    const-string v2, "ShortTvPlayerOverlayScene"

    invoke-virtual {v1, v2}, Lcom/transsion/ad/scene/a;->e(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->getCountdownView()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const-wide/16 v3, 0x3e8

    mul-long v9, v1, v3

    new-instance v0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;J)V

    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e;->e:Le7/e;

    invoke-virtual {v0}, Le7/e;->g()Le7/e;

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->getCountdownView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_5

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
