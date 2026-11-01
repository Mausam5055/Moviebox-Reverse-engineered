.class public abstract Lkotlinx/coroutines/android/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkotlinx/coroutines/android/e;

.field private static volatile choreographer:Landroid/view/Choreographer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lkotlinx/coroutines/android/g;->c(Landroid/os/Looper;Z)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3, v0}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    check-cast v0, Lkotlinx/coroutines/android/e;

    sput-object v0, Lkotlinx/coroutines/android/g;->a:Lkotlinx/coroutines/android/e;

    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/n;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/android/g;->f(Lkotlinx/coroutines/n;J)V

    return-void
.end method

.method public static final synthetic b(Lkotlinx/coroutines/n;)V
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/android/g;->g(Lkotlinx/coroutines/n;)V

    return-void
.end method

.method public static final c(Landroid/os/Looper;Z)Landroid/os/Handler;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    const/4 v5, 0x0

    const-class v6, Landroid/os/Looper;

    const-class v7, Landroid/os/Handler;

    if-lt p1, v4, :cond_0

    const-string p1, "createAsync"

    new-array v0, v3, [Ljava/lang/Class;

    aput-object v6, v0, v2

    invoke-virtual {v7, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.os.Handler"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/Handler;

    return-object p0

    :cond_0
    :try_start_0
    new-array p1, v1, [Ljava/lang/Class;

    aput-object v6, p1, v2

    const-class v4, Landroid/os/Handler$Callback;

    aput-object v4, p1, v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, p1, v0

    invoke-virtual {v7, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object v5, v1, v3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p0, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0

    :catch_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p1

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p1
.end method

.method public static final d(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/e;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/android/HandlerContext;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final e(Landroid/view/Choreographer;Lkotlinx/coroutines/n;)V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/android/f;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/android/f;-><init>(Lkotlinx/coroutines/n;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private static final f(Lkotlinx/coroutines/n;J)V
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lkotlinx/coroutines/n;->resumeUndispatched(Lkotlinx/coroutines/i0;Ljava/lang/Object;)V

    return-void
.end method

.method private static final g(Lkotlinx/coroutines/n;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/android/g;->choreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/android/g;->choreographer:Landroid/view/Choreographer;

    :cond_0
    invoke-static {v0, p0}, Lkotlinx/coroutines/android/g;->e(Landroid/view/Choreographer;Lkotlinx/coroutines/n;)V

    return-void
.end method
