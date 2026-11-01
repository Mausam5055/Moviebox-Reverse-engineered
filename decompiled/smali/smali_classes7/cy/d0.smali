.class public final Lcy/d0;
.super Lcom/transsion/ad/bidding/base/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcy/d0$a;
    }
.end annotation


# static fields
.field public static final e:Lcy/d0$a;


# instance fields
.field private b:Ljava/lang/Runnable;

.field private c:Z

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcy/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcy/d0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcy/d0;->e:Lcy/d0$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/r;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic D(Landroid/view/View;Lcy/d0;)V
    .locals 0

    invoke-static {p0, p1}, Lcy/d0;->L(Landroid/view/View;Lcy/d0;)V

    return-void
.end method

.method public static final synthetic E(Lcy/d0;J)V
    .locals 0

    iput-wide p1, p0, Lcy/d0;->d:J

    return-void
.end method

.method private final F(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcy/d0;->c:Z

    sget v0, Lcom/transsion/wrapperad/R$id;->call_to_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final J(Landroid/view/View;J)V
    .locals 1

    iget-boolean v0, p0, Lcy/d0;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcy/d0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v0, Lcy/c0;

    invoke-direct {v0, p1, p0}, Lcy/c0;-><init>(Landroid/view/View;Lcy/d0;)V

    iput-object v0, p0, Lcy/d0;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic K(Lcy/d0;Landroid/view/View;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0xbb8

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcy/d0;->J(Landroid/view/View;J)V

    return-void
.end method

.method private static final L(Landroid/view/View;Lcy/d0;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1, p0}, Lcy/d0;->M(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final M(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcy/d0;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcy/d0;->c:Z

    sget v0, Lcom/transsion/wrapperad/R$id;->call_to_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    const/high16 v0, -0x3d600000    # -80.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcy/d0$c;

    invoke-direct {v1, p1}, Lcy/d0$c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->flVolumeContainer:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final G(Landroid/view/View;)V
    .locals 6

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcy/d0;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcy/d0;->F(Landroid/view/View;)V

    return-void

    :cond_0
    sget v0, Lcom/transsion/wrapperad/R$id;->call_to_action:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-wide v0, p0, Lcy/d0;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcy/d0;->d:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xbb8

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-gtz v0, :cond_2

    invoke-direct {p0, p1}, Lcy/d0;->F(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v4, v5}, Lcy/d0;->J(Landroid/view/View;J)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcy/d0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcy/d0;->b:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public final H(Landroid/view/View;)Ldi/a;
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcy/d0$b;

    invoke-direct {v0, p0, p1}, Lcy/d0$b;-><init>(Lcy/d0;Landroid/view/View;)V

    return-object v0
.end method

.method public final I(Landroid/view/View;)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcy/d0;->c:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcy/d0;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcy/d0;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcy/d0;->b:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcy/d0;->F(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->adChoicesView:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->store_mark_view:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->adIcon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->call_to_action:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_body:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_icon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$layout;->native_trending_native_layout_style_3:I

    return v0
.end method

.method public v()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->coverview:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_title:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
