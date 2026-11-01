.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;,
        Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$Companion;,
        Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$Companion;

.field private static final DEFAULT_DELAY_TIMEOUT:I = 0xc8

.field private static final HANDLER:Landroid/os/Handler;

.field public static final LONG_DURATION_TIMEOUT:J = 0xdacL

.field public static final MAX_CUSTOM_DURATION:I = 0xea60

.field public static final MIN_CUSTOM_DURATION:I = 0x3e8

.field public static final SHORT_DURATION_TIMEOUT:J = 0x7d0L

.field public static final SHOW_STRATEGY_TYPE_IMMEDIATELY:I = 0x0

.field public static final SHOW_STRATEGY_TYPE_QUEUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ToastStrategy"


# instance fields
.field private final mCancelMessageToken:Ljava/lang/Object;

.field private mLastShowToastMillis:J

.field private final mShowMessageToken:Ljava/lang/Object;

.field private mShowStrategyType:I

.field private mToastReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;",
            ">;"
        }
    .end annotation
.end field

.field private sApplication:Landroid/app/Application;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->Companion:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$Companion;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowMessageToken:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mCancelMessageToken:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please don\'t pass non-existent toast show strategy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowStrategyType:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getMToastReference$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mToastReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getStateToastIcon(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->getStateToastIcon(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMToastReference$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mToastReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final diyToastStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->setView(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getGravity()I

    move-result v0

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getXOffset()I

    move-result v1

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getYOffset()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->setGravity(III)V

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getHorizontalMargin()F

    move-result v0

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getVerticalMargin()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->setMargin(FF)V

    return-void
.end method

.method private final generateToastWaitMillis(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)J
    .locals 2

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDuration()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDuration()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x5dc

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final getStateToastIcon(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)I
    .locals 1

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;

    if-eqz v0, :cond_0

    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_toast_success:I

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;

    if-eqz v0, :cond_1

    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_toast_error:I

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    if-eqz p1, :cond_2

    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_progress:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isSupportToastStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;)Z
    .locals 1

    instance-of p1, p1, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->sApplication:Landroid/app/Application;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public cancelToast()V
    .locals 5

    const-string v0, "ToastStrategy"

    const-string v1, "cancelToast"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowMessageToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mCancelMessageToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;

    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$CancelToastRunnable;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mCancelMessageToken:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public createToast(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;)",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;"
        }
    .end annotation

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createToast"

    const-string v1, "ToastStrategy"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->Companion:Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack$Companion;->getInstance()Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "create toast with foreground activity"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/utils/toast/ActivityToast;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityToast;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string v0, "create system toast!"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;-><init>(Landroid/app/Application;)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->isSupportToastStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->diyToastStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "please provide a application for registerStrategy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerStrategy(Landroid/app/Application;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerStrategy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToastStrategy"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->sApplication:Landroid/app/Application;

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->Companion:Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack$Companion;->getInstance()Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ActivityStack;->register(Landroid/app/Application;)V

    return-void
.end method

.method public showToast(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V
    .locals 6

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowStrategyType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showToast mShowStrategyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToastStrategy"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowStrategyType:I

    const/16 v1, 0xc8

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowMessageToken:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDelayMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    int-to-long v1, v1

    add-long/2addr v4, v1

    new-instance v1, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowMessageToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDelayMillis()J

    move-result-wide v4

    add-long/2addr v4, v2

    int-to-long v0, v1

    add-long/2addr v4, v0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->generateToastWaitMillis(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mLastShowToastMillis:J

    add-long/2addr v2, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    move-wide v4, v2

    :cond_1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mShowMessageToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iput-wide v4, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->mLastShowToastMillis:J

    :cond_2
    :goto_0
    return-void
.end method
