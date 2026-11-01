.class public final Lnh/l;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnh/l$a;
    }
.end annotation


# static fields
.field public static final g:Lnh/l$a;

.field private static final h:Lkotlin/Lazy;

.field private static final i:Lkotlin/Lazy;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private volatile b:Ljava/lang/Boolean;

.field private volatile c:Ljava/lang/Boolean;

.field private d:Lcom/tn/lib/util/networkinfo/NetworkType;

.field private final e:Lkotlin/jvm/functions/Function0;

.field private final f:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnh/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnh/l$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnh/l;->g:Lnh/l$a;

    new-instance v0, Lnh/d;

    invoke-direct {v0}, Lnh/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lnh/l;->h:Lkotlin/Lazy;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lnh/e;

    invoke-direct {v1}, Lnh/e;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lnh/l;->i:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lnh/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lnh/f;

    invoke-direct {v0, p0}, Lnh/f;-><init>(Lnh/l;)V

    iput-object v0, p0, Lnh/l;->e:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lnh/g;

    invoke-direct {v0, p0}, Lnh/g;-><init>(Lnh/l;)V

    iput-object v0, p0, Lnh/l;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private static final A(Lnh/l;)Lkotlin/Unit;
    .locals 6

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnh/m;->j(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lnh/m;->i(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnh/l;->c:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lnh/l;->v()I

    move-result v0

    const-string v2, " netState = "

    const-string v3, " --> onLost() --> disposeOnLost --> lostRunnable --> networkConnected = "

    if-eqz v1, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Lnh/l;->b:Ljava/lang/Boolean;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnh/l;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --  \u7f51\u7edc\u91cd\u65b0\u8fde\u63a5\u4e86"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnh/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnh/n;

    iget-object v2, p0, Lnh/l;->b:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lnh/n;->onConnected()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lnh/l;->G()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnh/l;->u()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -- \u7f51\u7edc\u65ad\u5f00\u4e86"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnh/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnh/n;

    iget-object v2, p0, Lnh/l;->b:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lnh/n;->onDisconnected()V

    goto :goto_1

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final B()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private static final D(Lnh/l;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/ConnectivityManager;

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private static final E(Lnh/l;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/ConnectivityManager;

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private final G()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lnh/l;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lnh/l;->c:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lnh/l;->d:Lcom/tn/lib/util/networkinfo/NetworkType;

    return-void
.end method

.method private final H()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnh/l;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> startTimer() --> \u5f00\u542f\u5b9a\u65f6\u4efb\u52a1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lnh/l;->g:Lnh/l$a;

    invoke-virtual {v0}, Lnh/l$a;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnh/l;->f:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lnh/j;

    invoke-direct {v2, v1}, Lnh/j;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final I(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final J(Lnh/l;)Lkotlin/Unit;
    .locals 3

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnh/m;->i(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnh/l;->c:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnh/l;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> timerRunnable --> isValidated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnh/l;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lnh/l;->H()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lnh/l;->I(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lnh/l;->r(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic c(Lnh/l;)V
    .locals 0

    invoke-static {p0}, Lnh/l;->D(Lnh/l;)V

    return-void
.end method

.method public static synthetic d(Lnh/l;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lnh/l;->A(Lnh/l;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lnh/l;->B()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lnh/l;)V
    .locals 0

    invoke-static {p0}, Lnh/l;->E(Lnh/l;)V

    return-void
.end method

.method public static synthetic g(Lnh/l;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lnh/l;->J(Lnh/l;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h()Lnh/l;
    .locals 1

    invoke-static {}, Lnh/l;->k()Lnh/l;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lnh/l;->s(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic j(Lnh/l;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnh/l;->o(Lnh/l;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method private static final k()Lnh/l;
    .locals 1

    new-instance v0, Lnh/l;

    invoke-direct {v0}, Lnh/l;-><init>()V

    return-object v0
.end method

.method public static final synthetic l()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lnh/l;->i:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic m()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lnh/l;->h:Lkotlin/Lazy;

    return-object v0
.end method

.method private final n(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnh/l;->b:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lnh/l;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnh/l;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onCapabilitiesChanged --> disposeConnect --> \u8868\u793a\u662f\u5426\u8fde\u63a5\u4e0a\u4e86\u4e92\u8054\u7f51\uff08\u4e0d\u5173\u5fc3\u662f\u5426\u53ef\u4ee5\u4e0a\u7f51"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lnh/l;->g:Lnh/l$a;

    invoke-virtual {v0}, Lnh/l$a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnh/c;

    invoke-direct {v1, p0, p1, p2}, Lnh/c;-><init>(Lnh/l;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static final o(Lnh/l;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    iget-object v0, p0, Lnh/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnh/n;

    iget-object v2, p0, Lnh/l;->b:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, p2}, Lnh/n;->onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final p(Landroid/net/NetworkCapabilities;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/tn/lib/util/networkinfo/NetworkType;->NETWORK_WIFI:Lcom/tn/lib/util/networkinfo/NetworkType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lnh/l;->w()Lcom/tn/lib/util/networkinfo/NetworkType;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tn/lib/util/networkinfo/NetworkType;->NETWORK_UNKNOWN:Lcom/tn/lib/util/networkinfo/NetworkType;

    :goto_0
    iget-object v0, p0, Lnh/l;->d:Lcom/tn/lib/util/networkinfo/NetworkType;

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lnh/l;->d:Lcom/tn/lib/util/networkinfo/NetworkType;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u7c7b\u578b\u662f mNetworkType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnh/l;->d:Lcom/tn/lib/util/networkinfo/NetworkType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final q()V
    .locals 5

    sget-object v0, Lnh/l;->g:Lnh/l$a;

    invoke-virtual {v0}, Lnh/l$a;->b()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lnh/l;->e:Lkotlin/jvm/functions/Function0;

    new-instance v3, Lnh/h;

    invoke-direct {v3, v2}, Lnh/h;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lnh/l$a;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnh/l;->e:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lnh/i;

    invoke-direct {v2, v1}, Lnh/i;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final r(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final s(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final t(Landroid/net/NetworkCapabilities;)V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lnh/l;->c:Ljava/lang/Boolean;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnh/l;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> disposeValidated() --> isValidated = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnh/l;->c:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " netState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnh/l;->v()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final u()Ljava/lang/String;
    .locals 2

    const-class v0, Lnh/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final w()Lcom/tn/lib/util/networkinfo/NetworkType;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->d()Lcom/tn/lib/util/networkinfo/NetworkType;

    move-result-object v0

    goto/16 :goto_15

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lnh/a;->a(Landroid/telephony/TelephonyManager;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1a

    :goto_3
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1a

    :goto_4
    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    goto/16 :goto_14

    :cond_7
    :goto_5
    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_19

    :goto_6
    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_19

    :goto_7
    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_19

    :goto_8
    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_19

    :goto_9
    if-nez v0, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_19

    :goto_a
    if-nez v0, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_19

    :goto_b
    if-nez v0, :cond_e

    goto :goto_c

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_19

    :goto_c
    if-nez v0, :cond_f

    goto :goto_d

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_10

    goto :goto_13

    :cond_10
    :goto_d
    if-nez v0, :cond_11

    goto :goto_e

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_18

    :goto_e
    if-nez v0, :cond_12

    goto :goto_f

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_13

    goto :goto_12

    :cond_13
    :goto_f
    if-nez v0, :cond_14

    goto :goto_10

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_15

    sget-object v0, Lcom/tn/lib/util/networkinfo/NetworkType;->NETWORK_5G:Lcom/tn/lib/util/networkinfo/NetworkType;

    goto :goto_15

    :cond_15
    :goto_10
    if-nez v0, :cond_16

    goto :goto_11

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/tn/lib/util/networkinfo/NetworkType;->NETWORK_UNKNOWN:Lcom/tn/lib/util/networkinfo/NetworkType;

    goto :goto_15

    :cond_17
    :goto_11
    sget-object v0, Lcom/tn/lib/util/networkinfo/NetworkType;->NETWORK_UNKNOWN:Lcom/tn/lib/util/networkinfo/NetworkType;

    goto :goto_15

    :cond_18
    :goto_12
    sget-object v0, Lcom/tn/lib/util/networkinfo/NetworkType;->NETWORK_4G:Lcom/tn/lib/util/networkinfo/NetworkType;

    goto :goto_15

    :cond_19
    :goto_13
    sget-object v0, Lcom/tn/lib/util/networkinfo/NetworkType;->NETWORK_3G:Lcom/tn/lib/util/networkinfo/NetworkType;

    goto :goto_15

    :cond_1a
    :goto_14
    sget-object v0, Lcom/tn/lib/util/networkinfo/NetworkType;->NETWORK_2G:Lcom/tn/lib/util/networkinfo/NetworkType;

    goto :goto_15

    :cond_1b
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->d()Lcom/tn/lib/util/networkinfo/NetworkType;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method private final z()Z
    .locals 3

    iget-object v0, p0, Lnh/l;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnh/l;->c:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnh/m;->i(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final C()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/ConnectivityManager;

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lnh/l;->g:Lnh/l$a;

    invoke-virtual {v0}, Lnh/l$a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnh/b;

    invoke-direct {v1, p0}, Lnh/b;-><init>(Lnh/l;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :catch_1
    sget-object v0, Lnh/l;->g:Lnh/l$a;

    invoke-virtual {v0}, Lnh/l$a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnh/k;

    invoke-direct {v1, p0}, Lnh/k;-><init>(Lnh/l;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    invoke-direct {p0}, Lnh/l;->H()V

    return-void
.end method

.method public final F(Lnh/n;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnh/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnh/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final K(Lnh/n;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnh/l;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;Z)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCapabilities"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0, p1, p2}, Lnh/l;->n(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p2}, Lnh/l;->t(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p2}, Lnh/l;->p(Landroid/net/NetworkCapabilities;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnh/l;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> it = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "net_log"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkProperties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    invoke-direct {p0}, Lnh/l;->q()V

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    return-void
.end method

.method public final v()I
    .locals 1

    invoke-virtual {p0}, Lnh/l;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnh/l;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnh/l;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnh/l;->y()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public final x()Lcom/tn/lib/util/networkinfo/NetworkType;
    .locals 3

    iget-object v0, p0, Lnh/l;->d:Lcom/tn/lib/util/networkinfo/NetworkType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnh/m;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tn/lib/util/networkinfo/NetworkType;->NETWORK_WIFI:Lcom/tn/lib/util/networkinfo/NetworkType;

    iput-object v0, p0, Lnh/l;->d:Lcom/tn/lib/util/networkinfo/NetworkType;

    return-object v0

    :cond_1
    invoke-direct {p0}, Lnh/l;->w()Lcom/tn/lib/util/networkinfo/NetworkType;

    move-result-object v0

    iput-object v0, p0, Lnh/l;->d:Lcom/tn/lib/util/networkinfo/NetworkType;

    return-object v0
.end method

.method public final y()Z
    .locals 3

    iget-object v0, p0, Lnh/l;->b:Ljava/lang/Boolean;

    const-string v1, "getApp(...)"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnh/l;->b:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnh/m;->j(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lnh/l;->b:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnh/m;->j(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
