.class public final Lbi/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbi/k;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbi/k;

    invoke-direct {v0}, Lbi/k;-><init>()V

    sput-object v0, Lbi/k;->a:Lbi/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lbi/k;->m()V

    return-void
.end method

.method public static final c(Landroid/app/Application;Z)V
    .locals 1

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lbi/k;->d(Landroid/app/Application;[Ljava/lang/String;Z)V

    return-void
.end method

.method public static final d(Landroid/app/Application;[Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hosts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-boolean p2, Lbi/k;->b:Z

    const/16 v0, 0x716

    const/4 v1, 0x0

    const-string v2, "NetworkMonitor"

    invoke-static {p0, v2, v0, p2, v1}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    sget-object p2, Lbi/d;->a:Lbi/d;

    invoke-virtual {p2, p1}, Lbi/d;->e([Ljava/lang/String;)V

    sget-object p1, Lbi/k;->a:Lbi/k;

    invoke-direct {p1, p0}, Lbi/k;->h(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lbi/k;->f:J

    invoke-direct {p1}, Lbi/k;->l()V

    return-void
.end method

.method private final h(Landroid/content/Context;)V
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v1, Lbi/k$a;

    invoke-direct {v1}, Lbi/k$a;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private final l()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbi/j;

    invoke-direct {v1}, Lbi/j;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lbi/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "NetworkMonitor"

    invoke-virtual {v1, v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final m()V
    .locals 4

    sget-boolean v0, Lbi/k;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    sget-boolean v1, Lbi/k;->d:Z

    if-eqz v1, :cond_1

    const-string v0, "2"

    :cond_1
    new-instance v1, Lyi/a;

    const-string v2, "monitor_init"

    const/16 v3, 0x716

    invoke-direct {v1, v2, v3}, Lyi/a;-><init>(Ljava/lang/String;I)V

    const-string v2, "net_status"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lyi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;

    move-result-object v0

    invoke-virtual {v0}, Lyi/a;->b()V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    sget-wide v0, Lbi/k;->f:J

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    sget-boolean v0, Lbi/k;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    sget-boolean v0, Lbi/k;->e:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    sget-boolean v0, Lbi/k;->c:Z

    return v0
.end method

.method public final i(Z)V
    .locals 0

    sput-boolean p1, Lbi/k;->d:Z

    return-void
.end method

.method public final j(Z)V
    .locals 0

    sput-boolean p1, Lbi/k;->e:Z

    return-void
.end method

.method public final k(Z)V
    .locals 0

    sput-boolean p1, Lbi/k;->c:Z

    return-void
.end method
