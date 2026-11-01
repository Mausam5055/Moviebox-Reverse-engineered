.class public final Lcom/transsion/baselib/helper/ScreenRotationHelper;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lkotlin/jvm/functions/Function0;

.field private final c:Lkotlin/jvm/functions/Function1;

.field private d:Z

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isCloseAutoRotationCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotationCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->b:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->c:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/transsion/baselib/helper/h;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/helper/h;-><init>(Lcom/transsion/baselib/helper/ScreenRotationHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->e:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/baselib/helper/i;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/helper/i;-><init>(Lcom/transsion/baselib/helper/ScreenRotationHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/baselib/helper/ScreenRotationHelper;)Lcom/transsion/baselib/helper/k;
    .locals 0

    invoke-static {p0}, Lcom/transsion/baselib/helper/ScreenRotationHelper;->i(Lcom/transsion/baselib/helper/ScreenRotationHelper;)Lcom/transsion/baselib/helper/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/baselib/helper/ScreenRotationHelper;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baselib/helper/ScreenRotationHelper;->j(Lcom/transsion/baselib/helper/ScreenRotationHelper;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/baselib/helper/ScreenRotationHelper;)Lcom/transsion/baselib/helper/g;
    .locals 0

    invoke-static {p0}, Lcom/transsion/baselib/helper/ScreenRotationHelper;->k(Lcom/transsion/baselib/helper/ScreenRotationHelper;)Lcom/transsion/baselib/helper/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/baselib/helper/ScreenRotationHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/baselib/helper/ScreenRotationHelper;->e(Z)V

    return-void
.end method

.method private final e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final f()Lcom/transsion/baselib/helper/k;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/helper/k;

    return-object v0
.end method

.method private final g()Lcom/transsion/baselib/helper/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/helper/g;

    return-object v0
.end method

.method private static final i(Lcom/transsion/baselib/helper/ScreenRotationHelper;)Lcom/transsion/baselib/helper/k;
    .locals 4

    new-instance v0, Lcom/transsion/baselib/helper/k;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/transsion/baselib/helper/j;

    invoke-direct {v3, p0}, Lcom/transsion/baselib/helper/j;-><init>(Lcom/transsion/baselib/helper/ScreenRotationHelper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/baselib/helper/k;-><init>(Landroid/os/Handler;Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private static final j(Lcom/transsion/baselib/helper/ScreenRotationHelper;Z)Lkotlin/Unit;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->d:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final k(Lcom/transsion/baselib/helper/ScreenRotationHelper;)Lcom/transsion/baselib/helper/g;
    .locals 3

    new-instance v0, Lcom/transsion/baselib/helper/g;

    iget-object v1, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->a:Landroid/content/Context;

    new-instance v2, Lcom/transsion/baselib/helper/ScreenRotationHelper$orientationListener$2$1;

    invoke-direct {v2, p0}, Lcom/transsion/baselib/helper/ScreenRotationHelper$orientationListener$2$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/baselib/helper/g;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method


# virtual methods
.method public final h()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/transsion/baselib/helper/ScreenRotationHelper;->f()Lcom/transsion/baselib/helper/k;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/transsion/baselib/helper/ScreenRotationHelper;->f()Lcom/transsion/baselib/helper/k;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/helper/k;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->d:Z

    invoke-direct {p0}, Lcom/transsion/baselib/helper/ScreenRotationHelper;->g()Lcom/transsion/baselib/helper/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/baselib/helper/ScreenRotationHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/baselib/helper/ScreenRotationHelper;->f()Lcom/transsion/baselib/helper/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/transsion/baselib/helper/ScreenRotationHelper;->g()Lcom/transsion/baselib/helper/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
