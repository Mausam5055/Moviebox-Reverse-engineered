.class public final Li4/j;
.super Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;


# instance fields
.field private final g:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj4/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Landroid/content/Context;Lj4/c;)V

    invoke-virtual {p0}, Li4/g;->d()Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Li4/j;->g:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic f()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li4/j;->m()Landroidx/work/impl/constraints/g;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public l(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    invoke-static {}, Li4/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network broadcast received"

    invoke-virtual {p1, v0, v1}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Li4/j;->g:Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Li4/i;->c(Landroid/net/ConnectivityManager;Z)Landroidx/work/impl/constraints/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Li4/g;->h(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public m()Landroidx/work/impl/constraints/g;
    .locals 2

    iget-object v0, p0, Li4/j;->g:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li4/i;->c(Landroid/net/ConnectivityManager;Z)Landroidx/work/impl/constraints/g;

    move-result-object v0

    return-object v0
.end method
