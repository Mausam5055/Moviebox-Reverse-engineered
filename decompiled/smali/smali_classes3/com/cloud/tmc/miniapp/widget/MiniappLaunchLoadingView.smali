.class public final Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# instance fields
.field public OooO:Landroid/view/animation/TranslateAnimation;

.field public OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

.field public OooO0O0:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public OooO0OO:Ljava/lang/Integer;

.field public final OooO0Oo:Ljava/lang/String;

.field public OooO0o:Z

.field public OooO0o0:I

.field public OooO0oO:Z

.field public OooO0oo:Landroid/view/animation/AnimationSet;

.field public final OooOO0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0OO:Ljava/lang/Integer;

    const-string p2, "MiniappLaunchLoadingView"

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0Oo:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/i;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/i;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooOO0:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o()V

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V
    .locals 14

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o0:I

    const-string v1, "mLoadingImg"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotation(F)V

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z

    :cond_1
    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o:Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    const-wide/16 v5, 0x1f4

    if-nez v0, :cond_c

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x3d4c0000    # -90.0f

    :goto_0
    move v9, v0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    move v11, v4

    goto :goto_2

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    move v11, v0

    :goto_2
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v7, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v7, v3

    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v8, v7, v4

    if-nez v8, :cond_5

    const/high16 v8, 0x42900000    # 72.0f

    :try_start_0
    invoke-static {v8}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v8, v8

    goto :goto_3

    :catchall_0
    move v8, v4

    goto :goto_3

    :cond_5
    move v8, v7

    :goto_3
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0Oo:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "img width "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " is "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    neg-float v8, v8

    :goto_4
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v7, v4, v8, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    :goto_5
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    if-nez v8, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v8, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    :goto_6
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    if-nez v8, :cond_9

    goto :goto_7

    :cond_9
    new-instance v9, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_7
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    if-eqz v8, :cond_a

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_a
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_b
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_c

    new-instance v7, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;

    invoke-direct {v7, p0}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_c
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v3

    :cond_d
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/high16 v0, 0x42880000    # 68.0f

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    if-nez v1, :cond_11

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    neg-float v0, v0

    :goto_8
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v4, v0, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    :goto_9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_10

    goto :goto_a

    :cond_10
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :cond_11
    :goto_a
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0O0:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-nez v0, :cond_13

    const-string v0, "llBottom"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_b

    :cond_13
    move-object v3, v0

    :goto_b
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_0

    const-string v0, "mLoadingImg"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/j;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/j;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0Oo:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final getAnimationRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooOO0:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o:Z

    return v0
.end method

.method public final getAnimationSet()Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public final getRepeatAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z

    return v0
.end method

.method public final getRepeatCount()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o0:I

    return v0
.end method

.method public final getSquareTranslate()Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method public final setAnimationRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o:Z

    return-void
.end method

.method public final setAnimationSet(Landroid/view/animation/AnimationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oo:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method public final setRepeatAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0oO:Z

    return-void
.end method

.method public final setRepeatCount(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO0o0:I

    return-void
.end method

.method public final setSquareTranslate(Landroid/view/animation/TranslateAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO:Landroid/view/animation/TranslateAnimation;

    return-void
.end method
