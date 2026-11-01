.class public final Li4/k;
.super Li4/g;


# instance fields
.field private final f:Landroid/net/ConnectivityManager;

.field private final g:Ljava/lang/Object;

.field private volatile h:Z

.field private final i:Li4/k$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj4/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Li4/g;-><init>(Landroid/content/Context;Lj4/c;)V

    invoke-virtual {p0}, Li4/g;->d()Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Li4/k;->f:Landroid/net/ConnectivityManager;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/k;->g:Ljava/lang/Object;

    new-instance p1, Li4/k$a;

    invoke-direct {p1, p0}, Li4/k$a;-><init>(Li4/k;)V

    iput-object p1, p0, Li4/k;->i:Li4/k$a;

    return-void
.end method

.method public static final synthetic k(Li4/k;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Li4/k;->f:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static final synthetic l(Li4/k;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Li4/k;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic m(Li4/k;)Z
    .locals 0

    iget-boolean p0, p0, Li4/k;->h:Z

    return p0
.end method

.method public static final synthetic n(Li4/k;Z)V
    .locals 0

    iput-boolean p1, p0, Li4/k;->h:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic f()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li4/k;->o()Landroidx/work/impl/constraints/g;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 4

    const-string v0, "Received exception while registering network callback"

    :try_start_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    invoke-static {}, Li4/i;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Registering network callback"

    invoke-virtual {v1, v2, v3}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Li4/k;->f:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Li4/k;->i:Li4/k$a;

    invoke-static {v1, v2}, Landroidx/work/impl/utils/o;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v2

    invoke-static {}, Li4/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v2

    invoke-static {}, Li4/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public j()V
    .locals 4

    const-string v0, "Received exception while unregistering network callback"

    :try_start_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    invoke-static {}, Li4/i;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unregistering network callback"

    invoke-virtual {v1, v2, v3}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Li4/k;->f:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Li4/k;->i:Li4/k$a;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v2

    invoke-static {}, Li4/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v2

    invoke-static {}, Li4/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public o()Landroidx/work/impl/constraints/g;
    .locals 2

    iget-object v0, p0, Li4/k;->f:Landroid/net/ConnectivityManager;

    iget-boolean v1, p0, Li4/k;->h:Z

    invoke-static {v0, v1}, Li4/i;->c(Landroid/net/ConnectivityManager;Z)Landroidx/work/impl/constraints/g;

    move-result-object v0

    return-object v0
.end method
