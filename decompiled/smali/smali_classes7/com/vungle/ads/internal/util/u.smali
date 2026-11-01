.class public final Lcom/vungle/ads/internal/util/u;
.super Ljava/lang/Object;


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/util/u;

.field private static final UI_HANDLER:Landroid/os/Handler;

.field private static uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/util/u;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/u;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vungle/ads/internal/util/u;->UI_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/vungle/ads/internal/util/u;->runOnUiThread$lambda-1(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/vungle/ads/internal/util/u;->runOnUiThread$lambda-0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic getUiExecutor$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method private static final runOnUiThread$lambda-0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final runOnUiThread$lambda-1(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getUiExecutor$vungle_ads_release()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/util/u;->uiExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final isMainThread()Z
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    return v0
.end method

.method public final runOnUiThread(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/u;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vungle/ads/internal/util/u;->uiExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vungle/ads/internal/util/s;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/util/s;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vungle/ads/internal/util/u;->UI_HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/vungle/ads/internal/util/t;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/util/t;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final setUiExecutor$vungle_ads_release(Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p1, Lcom/vungle/ads/internal/util/u;->uiExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
