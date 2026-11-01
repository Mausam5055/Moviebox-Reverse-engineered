.class public final Lcom/transsion/postdetail/layer/local/k0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/local/k0$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/postdetail/layer/local/k0$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private final a:Lso/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/layer/local/k0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/layer/local/k0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/layer/local/k0;->b:Lcom/transsion/postdetail/layer/local/k0$a;

    new-instance v0, Lcom/transsion/postdetail/layer/local/j0;

    invoke-direct {v0}, Lcom/transsion/postdetail/layer/local/j0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetail/layer/local/k0;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lso/a0;)V
    .locals 1

    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/k0;->a:Lso/a0;

    iget-object v0, p1, Lso/a0;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p1, Lso/a0;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/layer/local/k0;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private final b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/k0;->a:Lso/a0;

    iget-object v1, v0, Lso/a0;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

    const-string v2, "vDoubleClick"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lso/a0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvDoubleClickLeft"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lso/a0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvDoubleClickRight"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lso/a0;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "lottieDoubleClickLeft"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lso/a0;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "lottieDoubleClickRight"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lso/a0;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object v1, v0, Lso/a0;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    invoke-virtual {v0}, Lso/a0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method

.method private static final c()Lcom/tencent/mmkv/MMKV;
    .locals 2

    const-string v0, "kv_video_double"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkvWithID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final d(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/k0;->a:Lso/a0;

    iget-object v1, v0, Lso/a0;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

    const-string v2, "vDoubleClick"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v1, v0, Lso/a0;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->setLeftStyle(Z)V

    if-eqz p1, :cond_0

    iget-object p1, v0, Lso/a0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvDoubleClickRight"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, v0, Lso/a0;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottieDoubleClickRight"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, v0, Lso/a0;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lso/a0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvDoubleClickLeft"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, v0, Lso/a0;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottieDoubleClickLeft"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, v0, Lso/a0;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_0
    invoke-virtual {v0}, Lso/a0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "getRoot(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/k0;->b()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/k0;->b()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
