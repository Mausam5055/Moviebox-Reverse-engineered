.class public final Lcom/tn/lib/view/RoomCacheAnimationView;
.super Lcom/noober/background/view/BLFrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/RoomCacheAnimationView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0015\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u000f\u0010\u0015\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u000eR\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\"\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lcom/tn/lib/view/RoomCacheAnimationView;",
        "Lcom/noober/background/view/BLFrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "res",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "a",
        "()V",
        "b",
        "Lcom/tn/lib/view/RoomCacheStatus;",
        "status",
        "setStatus",
        "(Lcom/tn/lib/view/RoomCacheStatus;)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Lth/f;",
        "Lth/f;",
        "viewBinding",
        "Lcom/tn/lib/view/RoomCacheStatus;",
        "curStatus",
        "Landroid/animation/ObjectAnimator;",
        "c",
        "Landroid/animation/ObjectAnimator;",
        "rotationAnimator",
        "getStatus",
        "()Lcom/tn/lib/view/RoomCacheStatus;",
        "",
        "isLoading",
        "()Z",
        "UI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lth/f;

.field private b:Lcom/tn/lib/view/RoomCacheStatus;

.field private c:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/RoomCacheAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tn/lib/view/RoomCacheAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/noober/background/view/BLFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/tn/lib/view/RoomCacheStatus;->START:Lcom/tn/lib/view/RoomCacheStatus;

    iput-object p2, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->b:Lcom/tn/lib/view/RoomCacheStatus;

    sget p3, Lcom/tn/lib/widget/R$layout;->view_room_cache:I

    invoke-static {p1, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lth/f;->a(Landroid/view/View;)Lth/f;

    move-result-object p1

    const-string p3, "bind(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->a:Lth/f;

    iget-object p3, p1, Lth/f;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "ivJoin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p1, Lth/f;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    const-string v0, "rotation"

    invoke-static {p1, v0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p2}, Lcom/tn/lib/view/RoomCacheAnimationView;->setStatus(Lcom/tn/lib/view/RoomCacheStatus;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final b()V
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/tn/lib/view/RoomCacheStatus;
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->b:Lcom/tn/lib/view/RoomCacheStatus;

    return-object v0
.end method

.method public final isLoading()Z
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->b:Lcom/tn/lib/view/RoomCacheStatus;

    sget-object v1, Lcom/tn/lib/view/RoomCacheStatus;->LOADING:Lcom/tn/lib/view/RoomCacheStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->b:Lcom/tn/lib/view/RoomCacheStatus;

    sget-object v1, Lcom/tn/lib/view/RoomCacheStatus;->LOADING:Lcom/tn/lib/view/RoomCacheStatus;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tn/lib/view/RoomCacheAnimationView;->a()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/tn/lib/view/RoomCacheAnimationView;->b()V

    return-void
.end method

.method public final setStatus(Lcom/tn/lib/view/RoomCacheStatus;)V
    .locals 3

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->b:Lcom/tn/lib/view/RoomCacheStatus;

    iget-object v0, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->a:Lth/f;

    iget-object v0, v0, Lth/f;->b:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v1, Lcom/tn/lib/view/RoomCacheAnimationView$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget v1, Lcom/tn/lib/widget/R$mipmap;->icon_room_cache_end:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    sget v1, Lcom/tn/lib/widget/R$mipmap;->icon_room_cache_loading:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/tn/lib/widget/R$mipmap;->icon_room_cache_start:I

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    sget-object v0, Lcom/tn/lib/view/RoomCacheStatus;->LOADING:Lcom/tn/lib/view/RoomCacheStatus;

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/tn/lib/view/RoomCacheAnimationView;->a()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/tn/lib/view/RoomCacheAnimationView;->a:Lth/f;

    iget-object p1, p1, Lth/f;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0}, Lcom/tn/lib/view/RoomCacheAnimationView;->b()V

    :goto_1
    return-void
.end method
