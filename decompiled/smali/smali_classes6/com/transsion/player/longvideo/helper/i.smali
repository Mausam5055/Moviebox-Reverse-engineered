.class public final Lcom/transsion/player/longvideo/helper/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/longvideo/helper/i$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/player/longvideo/helper/i$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private final a:Lho/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/player/longvideo/helper/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/player/longvideo/helper/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/player/longvideo/helper/i;->b:Lcom/transsion/player/longvideo/helper/i$a;

    new-instance v0, Lcom/transsion/player/longvideo/helper/h;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/helper/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/player/longvideo/helper/i;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lho/c;)V
    .locals 1

    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/i;->a:Lho/c;

    iget-object v0, p1, Lho/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p1, Lho/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/player/longvideo/helper/i;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private final b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/i;->a:Lho/c;

    iget-object v1, v0, Lho/c;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

    const-string v2, "vDoubleClick"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lho/c;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvDoubleClickLeft"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lho/c;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvDoubleClickRight"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lho/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "lottieDoubleClickLeft"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lho/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "lottieDoubleClickRight"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, v0, Lho/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object v1, v0, Lho/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    invoke-virtual {v0}, Lho/c;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

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
    .locals 4

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/i;->a:Lho/c;

    iget-object v1, v0, Lho/c;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

    const-string v2, "vDoubleClick"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    invoke-static {}, Ljg/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lho/c;->f:Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;

    invoke-virtual {v3, v2}, Lcom/transsion/postdetail/ui/view/VideoDoubleClickBackgroundView;->setLeftStyle(Z)V

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    iget-object p1, v0, Lho/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    :cond_2
    iget-object p1, v0, Lho/c;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvDoubleClickRight"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, v0, Lho/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottieDoubleClickRight"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, v0, Lho/c;->c:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    iget-object p1, v0, Lho/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    :cond_4
    iget-object p1, v0, Lho/c;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvDoubleClickLeft"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, v0, Lho/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "lottieDoubleClickLeft"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, v0, Lho/c;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_1
    invoke-virtual {v0}, Lho/c;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

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

    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/i;->b()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/player/longvideo/helper/i;->b()V

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
