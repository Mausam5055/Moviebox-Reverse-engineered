.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;,
        Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Companion;

.field private static final HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "ToastDialog"


# instance fields
.field private volatile loadingAnimatorPlaying:Z

.field private final loadingAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mCancelRunnable:Ljava/lang/Runnable;

.field private mGlobalShow:Z

.field private final mShowMessageToken:Ljava/lang/Object;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->Companion:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Companion;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mGlobalShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;-><init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mGlobalShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowMessageToken:Ljava/lang/Object;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->updateToast(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    new-instance p1, Lcom/cloud/tmc/miniapp/utils/toast/a;

    invoke-direct {p1, p2, p0}, Lcom/cloud/tmc/miniapp/utils/toast/a;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/cloud/tmc/miniapp/utils/toast/b;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/utils/toast/b;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mCancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 5

    const-string v0, "$toast"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getDuration()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getLongDuration()J

    move-result-wide v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getDuration()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getShortDuration()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getDuration()I

    move-result v2

    const v3, 0xea60

    if-gt v2, v3, :cond_3

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v2, v2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getShortDuration()J

    move-result-wide v2

    :goto_1
    add-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isShow()Z

    move-result v2

    const-string v3, "ToastDialog"

    if-eqz v2, :cond_4

    const-string v2, "It\'s showing, will be update content"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->HANDLER:Landroid/os/Handler;

    iget-object v4, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowMessageToken:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-direct {p1, p0, v2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->updateToast(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;)V

    :cond_4
    iget-object p0, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    sget-object p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->HANDLER:Landroid/os/Handler;

    new-instance v2, Lcom/cloud/tmc/miniapp/utils/toast/c;

    invoke-direct {v2, p1}, Lcom/cloud/tmc/miniapp/utils/toast/c;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowMessageToken:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    const-string p0, "show runnable is running"

    invoke-static {v3, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final _init_$lambda$4(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isShow()Z

    move-result v0

    const-string v1, "ToastDialog"

    if-eqz v0, :cond_0

    const-string v0, "It\'s showing, will be dismissed"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    :cond_0
    const-string p0, "cancel runnable is running"

    invoke-static {v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->lambda$3$lambda$2(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    return-void
.end method

.method public static final synthetic access$cancelAnimator(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->cancelAnimator()V

    return-void
.end method

.method public static final synthetic access$getMGlobalShow$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mGlobalShow:Z

    return p0
.end method

.method public static final synthetic access$isLoadingToastType(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isLoadingToastType(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$startAnimator(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->startAnimator(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->_init_$lambda$4(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->_init_$lambda$3(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    return-void
.end method

.method private final cancelAnimator()V
    .locals 2

    const-string v0, "ToastDialog"

    :try_start_0
    const-string v1, "cancelAnimator"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorPlaying:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final isLoadingToastType(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getToastParams()Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    move-result-object p1

    instance-of p1, p1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final isMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final lambda$3$lambda$2(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->cancel()V

    return-void
.end method

.method private final startAnimator(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V
    .locals 3

    const-string v0, "ToastDialog"

    :try_start_0
    const-string v1, "startAnimator"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorPlaying:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->findIconView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v1, "ofFloat(it, \"rotation\", 0F, 360F)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->loadingAnimatorPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private final updateToast(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;)V
    .locals 1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(Landroid/view/View;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getGravity()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setGravity(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getXOffset()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setXOffset(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getYOffset()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setYOffset(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getAnimationId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$1;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnCreateListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$2;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$2;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$updateToast$3;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;)V

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const-string v0, "ToastDialog"

    const-string v1, "cancel toast dialog"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final isShow()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mToastDialog:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog$Builder;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final show()V
    .locals 2

    const-string v0, "ToastDialog"

    const-string v1, "show toast dialog"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
