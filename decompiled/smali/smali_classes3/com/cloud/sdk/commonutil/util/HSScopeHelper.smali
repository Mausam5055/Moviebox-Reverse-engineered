.class public final Lcom/cloud/sdk/commonutil/util/HSScopeHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

.field public static b:Z

.field private static final c:Lkotlinx/coroutines/j0;

.field private static final d:Lkotlinx/coroutines/n0;

.field private static final e:Lkotlinx/coroutines/n0;

.field private static final f:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-direct {v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;-><init>()V

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    sget-object v0, Lkotlinx/coroutines/j0;->k1:Lkotlinx/coroutines/j0$a;

    new-instance v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$a;

    invoke-direct {v1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$a;-><init>(Lkotlinx/coroutines/j0$a;)V

    sput-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->c:Lkotlinx/coroutines/j0;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->d:Lkotlinx/coroutines/n0;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e:Lkotlinx/coroutines/n0;

    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f:Lkotlinx/coroutines/n0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final l(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "$runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lcom/cloud/sdk/commonutil/util/f$b;

    invoke-direct {v0, p0}, Lcom/cloud/sdk/commonutil/util/f$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Lcom/cloud/sdk/commonutil/util/f$a;

    invoke-direct {v0, p0}, Lcom/cloud/sdk/commonutil/util/f$a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/n0;
    .locals 1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f:Lkotlinx/coroutines/n0;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/j;->a:Lcom/cloud/sdk/commonutil/util/j;

    const-string v1, "hs_fetch_ad_thread"

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/cloud/sdk/commonutil/util/j;->a:Lcom/cloud/sdk/commonutil/util/j;

    const-string v2, "hs_fetch_ad_thread"

    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final f(Ljava/lang/Runnable;J)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/j;->a:Lcom/cloud/sdk/commonutil/util/j;

    const-string v1, "hs_fetch_ad_thread"

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/pool/b;->b()Lcom/cloud/sdk/commonutil/pool/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/pool/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e:Lkotlinx/coroutines/n0;

    sget-object v2, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->c:Lkotlinx/coroutines/j0;

    new-instance v4, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$runIOThread$2;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$runIOThread$2;-><init>(Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->d:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$runUIThread$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper$runUIThread$1;-><init>(Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/cloud/sdk/commonutil/util/j;->a:Lcom/cloud/sdk/commonutil/util/j;

    const-string v2, "hs_work_thread"

    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final j(Ljava/lang/Runnable;J)V
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/j;->a:Lcom/cloud/sdk/commonutil/util/j;

    const-string v1, "hs_work_thread"

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/cloud/sdk/commonutil/util/j;->a:Lcom/cloud/sdk/commonutil/util/j;

    const-string v2, "hs_work_thread"

    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lcom/cloud/sdk/commonutil/util/f$b;

    invoke-direct {v0, p1}, Lcom/cloud/sdk/commonutil/util/f$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    new-instance v0, Lcom/cloud/sdk/commonutil/util/f$a;

    invoke-direct {v0, p1}, Lcom/cloud/sdk/commonutil/util/f$a;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/cloud/sdk/commonutil/util/g;

    invoke-direct {v1, p1, p2}, Lcom/cloud/sdk/commonutil/util/g;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method
