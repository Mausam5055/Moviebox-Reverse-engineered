.class public final Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/transsion/ad/strategy/r$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001a\u0010\u0013J\r\u0010\u001b\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u001b\u0010\u0013J\u0015\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010\'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-\u00a8\u0006."
    }
    d2 = {
        "Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/transsion/ad/strategy/r$a;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/view/View;",
        "targetView",
        "Landroid/widget/ImageView;",
        "imageView",
        "",
        "g",
        "(Landroid/view/View;Landroid/widget/ImageView;)V",
        "onDetachedFromWindow",
        "()V",
        "",
        "isVisible",
        "onVisibilityChanged",
        "(Z)V",
        "getVisibilityView",
        "()Landroid/view/View;",
        "open",
        "close",
        "",
        "sceneId",
        "setSceneID",
        "(Ljava/lang/String;)V",
        "Lji/d0;",
        "a",
        "Lji/d0;",
        "binding",
        "Landroid/animation/AnimatorSet;",
        "b",
        "Landroid/animation/AnimatorSet;",
        "animatorSet",
        "Ljava/lang/Runnable;",
        "c",
        "Ljava/lang/Runnable;",
        "pendingStartRunnable",
        "d",
        "Ljava/lang/String;",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Lji/d0;

.field private b:Landroid/animation/AnimatorSet;

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lji/d0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lji/d0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->a:Lji/d0;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->f(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->e(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->i(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->h(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;Landroid/view/View;Landroid/widget/ImageView;)V

    return-void
.end method

.method private static final e(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->b:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_0
    return-void
.end method

.method private static final f(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->b:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->pause()V

    :cond_0
    return-void
.end method

.method private final g(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1

    new-instance v0, Lvi/e;

    invoke-direct {v0, p0, p1, p2}, Lvi/e;-><init>(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;Landroid/view/View;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final h(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->c:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->b:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v2, v1, 0x64

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v5, Lvi/f;

    invoke-direct {v5, p1}, Lvi/f;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/4 v5, 0x4

    int-to-float v5, v5

    mul-float/2addr p1, v5

    const/4 v5, 0x5

    int-to-float v5, v5

    div-float/2addr p1, v5

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p1, v5

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    sget-object p1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    invoke-static {p2, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    iput-object p2, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->b:Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x0
        0x42480000    # 50.0f
    .end array-data
.end method

.method private static final i(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->a:Lji/d0;

    iget-object v1, v1, Lji/d0;->b:Lcom/transsion/ad/view/ArcConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->c:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->b:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iput-object v0, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->b:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public getVisibilityThreshold()D
    .locals 2

    invoke-static {p0}, Lcom/transsion/ad/strategy/r$a$a;->a(Lcom/transsion/ad/strategy/r$a;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVisibilityView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->close()V

    sget-object v0, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {v0, p0}, Lcom/transsion/ad/strategy/r;->n(Lcom/transsion/ad/strategy/r$a;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->b:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->isPaused()Z

    move-result p1

    if-ne p1, v0, :cond_1

    new-instance p1, Lvi/c;

    invoke-direct {p1, p0}, Lvi/c;-><init>(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->b:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-ne p1, v0, :cond_1

    new-instance p1, Lvi/d;

    invoke-direct {p1, p0}, Lvi/d;-><init>(Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final open()V
    .locals 3

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    iget-object v1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->b:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->a:Lji/d0;

    iget-object v1, v1, Lji/d0;->b:Lcom/transsion/ad/view/ArcConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->a:Lji/d0;

    iget-object v0, v0, Lji/d0;->b:Lcom/transsion/ad/view/ArcConstraintLayout;

    const-string v1, "ArcViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->a:Lji/d0;

    iget-object v1, v1, Lji/d0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "ivIndicator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->g(Landroid/view/View;Landroid/widget/ImageView;)V

    return-void
.end method

.method public final setSceneID(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;->d:Ljava/lang/String;

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/a;->v(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/ad/strategy/r;->a:Lcom/transsion/ad/strategy/r;

    invoke-virtual {p1, p0}, Lcom/transsion/ad/strategy/r;->g(Lcom/transsion/ad/strategy/r$a;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
