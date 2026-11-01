.class public final Lcom/transsion/search_pugc/ad/SearchHotAdHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/ad/SearchHotAdHelper$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$a;


# instance fields
.field private final a:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

.field private h:Lkotlin/jvm/functions/Function1;

.field private i:Z

.field private j:Landroid/animation/ObjectAnimator;

.field private k:Ljava/lang/Runnable;

.field private final l:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;

.field private final m:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->n:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$a;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScope;)V
    .locals 1

    const-string v0, "lifecycleScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;

    invoke-direct {p1, p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V

    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->l:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;

    new-instance p1, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;

    invoke-direct {p1, p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V

    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->m:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->l(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->o(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->m:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->l:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->t()V

    return-void
.end method

.method public static final synthetic i(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    return-void
.end method

.method public static final synthetic j(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    return-void
.end method

.method private final k()V
    .locals 4

    new-instance v0, Lcom/transsion/search_pugc/ad/a;

    invoke-direct {v0, p0}, Lcom/transsion/search_pugc/ad/a;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V

    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->k:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static final l(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V
    .locals 6

    iget-object p0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz p0, :cond_0

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/ad/R$color;->gray_dark_00:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-string v1, "textColor"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "setDuration(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x106000d

    invoke-static {v1, v3, v2}, Ly0/h;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/wrapperad/R$drawable;->bg_gradient_brand_4:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ly0/h;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p0, 0x12c

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method private final n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;->getNativeWrapperAdView()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    sget-object v1, Lcy/b;->a:Lcy/b;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "SearchHotNativeScene"

    invoke-virtual {v1, v2, v3}, Lcy/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-virtual {v0, v2, v1, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->x()V

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->v()V

    :cond_0
    return-void
.end method

.method private final o(Ljava/util/List;)V
    .locals 12

    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;->getHiNativeAdViews()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->c:Ljava/util/List;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->d:Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v3, 0x0

    move v11, v3

    :goto_1
    if-ge v11, v10, :cond_5

    new-instance v6, Lcy/s;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v3}, Lcy/s;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, v2

    invoke-static/range {v3 .. v9}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView$default(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->x()V

    :cond_6
    :goto_2
    return-void
.end method

.method private final q()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->j:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->j:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->k:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private final r()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->V()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->q()V

    return-void
.end method

.method private final s()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->V()V

    :cond_1
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    return-void
.end method

.method private final t()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->r()V

    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadBiddingAd$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadBiddingAd$1;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final u()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->s()V

    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final v()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->w()V

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->k()V

    return-void
.end method

.method private final w()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    if-eqz v0, :cond_0

    const-string v1, "adVolumeImage"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800053

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method private final x()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->i:Z

    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->h:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final m(Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->u()V

    return-void
.end method

.method public final p()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->s()V

    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->h:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;->destroy()V

    :cond_0
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    return-void
.end method
