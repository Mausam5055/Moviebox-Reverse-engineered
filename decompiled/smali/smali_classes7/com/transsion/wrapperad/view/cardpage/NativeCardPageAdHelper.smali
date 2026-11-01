.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$a;


# instance fields
.field private final a:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private b:Ljava/lang/Runnable;

.field private c:Landroid/animation/ObjectAnimator;

.field private d:Landroid/animation/ValueAnimator;

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/animation/ValueAnimator;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Ljava/lang/Runnable;

.field private i:Z

.field private j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

.field private k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;

.field private final n:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->o:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$a;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScope;)V
    .locals 1

    const-string v0, "lifecycleScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->i:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->m:Ljava/util/Map;

    new-instance p1, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;

    invoke-direct {p1, p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->n:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;

    return-void
.end method

.method private final A()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final B()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->z()V

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;

    const/4 v3, 0x0

    invoke-direct {v4, p0, v0, v3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method private final D(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->i:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->i:Z

    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->I(Lcom/transsion/wrapperad/view/cardpage/f;)V

    :goto_1
    return-void
.end method

.method private final E(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object p1

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/ad/R$color;->ad_white_80:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/wrapperad/R$drawable;->ad_shape_tag:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ly0/h;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private final H(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object p1

    const-string v0, "adVolumeImage"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x800053

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method private final I(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->A()V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v3, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_9

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    instance-of v3, v0, Lcom/transsion/wrapperad/view/cardpage/e$a;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/transsion/wrapperad/view/cardpage/e$a;

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/wrapperad/R$id;->ad_cover:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/wrapperad/R$id;->swipe_guide:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {p1, v2}, Lcom/transsion/wrapperad/view/cardpage/f;->h(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_4
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    new-instance v2, Lcom/transsion/wrapperad/view/cardpage/a;

    invoke-direct {v2, v1}, Lcom/transsion/wrapperad/view/cardpage/a;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_5
    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_6

    new-instance v3, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;

    invoke-direct {v3, v0, p1, p0, v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;-><init>(Landroidx/appcompat/widget/AppCompatImageView;FLcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_8
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_9
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final J(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final K(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;F)V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->A()V

    const/4 v4, 0x0

    invoke-static {v4, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    const v7, 0x3f19999a    # 0.6f

    invoke-static {v7, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    const-string v8, "translationX"

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Keyframe;

    aput-object v5, v9, v2

    aput-object v6, v9, v3

    aput-object v4, v9, v1

    aput-object v7, v9, v0

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x5dc

    if-eqz v4, :cond_0

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_1
    iget-object v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2

    new-instance v7, Lcom/transsion/wrapperad/view/cardpage/c;

    invoke-direct {v7, p1}, Lcom/transsion/wrapperad/view/cardpage/c;-><init>(Landroidx/appcompat/widget/AppCompatImageView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_3
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    new-instance v4, Lcom/transsion/wrapperad/view/cardpage/d;

    invoke-direct {v4, p1}, Lcom/transsion/wrapperad/view/cardpage/d;-><init>(Landroidx/appcompat/widget/AppCompatImageView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v4, v1, v2

    aput-object v7, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_6
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;

    invoke-direct {v1, p1, p3, p2, p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;-><init>(Landroidx/appcompat/widget/AppCompatImageView;FLandroid/widget/FrameLayout;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private static final L(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private static final M(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->L(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->M(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->t(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->J(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic e(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->A()V

    return-void
.end method

.method public static final synthetic f(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->m:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->n:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->D(Lcom/transsion/wrapperad/view/cardpage/f;)V

    return-void
.end method

.method public static final synthetic p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    return-void
.end method

.method public static final synthetic q(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->I(Lcom/transsion/wrapperad/view/cardpage/f;)V

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->K(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;F)V

    return-void
.end method

.method private static final t(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/ad/R$color;->ad_white_80:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/ad/R$color;->gray_dark_00:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    const-string v2, "textColor"

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "setDuration(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/wrapperad/R$drawable;->ad_shape_tag:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ly0/h;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

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

    new-instance p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;-><init>(Landroid/animation/ObjectAnimator;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private final y()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->c:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->b:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->h:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private final z()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->V()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->pauseAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    :cond_0
    return-void
.end method

.method public final F(Ljava/util/Map;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;
    .locals 1

    const-string v0, "ctxMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->m:Ljava/util/Map;

    return-object p0
.end method

.method public final G(Ljava/lang/String;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final s(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 4

    const-string v0, "pageData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v0

    sget v1, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->y()V

    new-instance v1, Lcom/transsion/wrapperad/view/cardpage/b;

    invoke-direct {v1, v0, p0, p1}, Lcom/transsion/wrapperad/view/cardpage/b;-><init>(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    iput-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->b:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz p1, :cond_0

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_1
    return-void
.end method

.method public final u(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 1

    const-string v0, "pageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->B()V

    return-void
.end method

.method public final v(Ljava/util/List;)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    new-instance v2, Lcom/transsion/wrapperad/view/cardpage/f;

    new-instance v4, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "getContext(...)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v4, v3, v7, v6, v7}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v6, p0

    invoke-direct/range {v3 .. v10}, Lcom/transsion/wrapperad/view/cardpage/f;-><init>(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    :cond_1
    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz p1, :cond_2

    sget-object v2, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/ad/scene/a;->n(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->setScrollInterval(J)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->setPageData(Ljava/util/List;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    :cond_2
    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final w(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 6

    const-string v0, "pageData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/transsion/wrapperad/view/cardpage/f;->f(Z)V

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    new-instance v3, Lcy/o;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcy/o;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcy/p;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lcy/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->a()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->H(Lcom/transsion/wrapperad/view/cardpage/f;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->E(Lcom/transsion/wrapperad/view/cardpage/f;)V

    return-void
.end method

.method public final x()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->z()V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->destroy()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->y()V

    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->A()V

    return-void
.end method
