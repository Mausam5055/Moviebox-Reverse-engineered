.class Lcom/google/android/material/snackbar/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/d$c;,
        Lcom/google/android/material/snackbar/d$b;
    }
.end annotation


# static fields
.field private static e:Lcom/google/android/material/snackbar/d;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/google/android/material/snackbar/d$c;

.field private d:Lcom/google/android/material/snackbar/d$c;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/snackbar/d;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/d$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/d$a;-><init>(Lcom/google/android/material/snackbar/d;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/d;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/google/android/material/snackbar/d$c;I)Z
    .locals 2

    iget-object v0, p1, Lcom/google/android/material/snackbar/d$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/d$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/snackbar/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Lcom/google/android/material/snackbar/d$b;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static c()Lcom/google/android/material/snackbar/d;
    .locals 1

    sget-object v0, Lcom/google/android/material/snackbar/d;->e:Lcom/google/android/material/snackbar/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/material/snackbar/d;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/d;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/d;->e:Lcom/google/android/material/snackbar/d;

    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/d;->e:Lcom/google/android/material/snackbar/d;

    return-object v0
.end method

.method private f(Lcom/google/android/material/snackbar/d$b;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/d$c;->a(Lcom/google/android/material/snackbar/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g(Lcom/google/android/material/snackbar/d$b;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->d:Lcom/google/android/material/snackbar/d$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/d$c;->a(Lcom/google/android/material/snackbar/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private l(Lcom/google/android/material/snackbar/d$c;)V
    .locals 4

    iget v0, p1, Lcom/google/android/material/snackbar/d$c;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_2
    const/16 v0, 0xabe

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/material/snackbar/d;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->d:Lcom/google/android/material/snackbar/d$c;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/snackbar/d;->d:Lcom/google/android/material/snackbar/d$c;

    iget-object v0, v0, Lcom/google/android/material/snackbar/d$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/d$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/material/snackbar/d$b;->show()V

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/material/snackbar/d$b;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->f(Lcom/google/android/material/snackbar/d$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/d;->a(Lcom/google/android/material/snackbar/d$c;I)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->g(Lcom/google/android/material/snackbar/d$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/snackbar/d;->d:Lcom/google/android/material/snackbar/d$c;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/d;->a(Lcom/google/android/material/snackbar/d$c;I)Z

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method d(Lcom/google/android/material/snackbar/d$c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/snackbar/d;->d:Lcom/google/android/material/snackbar/d$c;

    if-ne v1, p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/snackbar/d;->a(Lcom/google/android/material/snackbar/d$c;I)Z

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/google/android/material/snackbar/d$b;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->f(Lcom/google/android/material/snackbar/d$b;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->g(Lcom/google/android/material/snackbar/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Lcom/google/android/material/snackbar/d$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->f(Lcom/google/android/material/snackbar/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    iget-object p1, p0, Lcom/google/android/material/snackbar/d;->d:Lcom/google/android/material/snackbar/d$c;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/snackbar/d;->n()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Lcom/google/android/material/snackbar/d$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->f(Lcom/google/android/material/snackbar/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->l(Lcom/google/android/material/snackbar/d$c;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(Lcom/google/android/material/snackbar/d$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->f(Lcom/google/android/material/snackbar/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    iget-boolean v1, p1, Lcom/google/android/material/snackbar/d$c;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/android/material/snackbar/d$c;->c:Z

    iget-object v1, p0, Lcom/google/android/material/snackbar/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Lcom/google/android/material/snackbar/d$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->f(Lcom/google/android/material/snackbar/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    iget-boolean v1, p1, Lcom/google/android/material/snackbar/d$c;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/google/android/material/snackbar/d$c;->c:Z

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->l(Lcom/google/android/material/snackbar/d$c;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(ILcom/google/android/material/snackbar/d$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/snackbar/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/material/snackbar/d;->f(Lcom/google/android/material/snackbar/d$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    iput p1, p2, Lcom/google/android/material/snackbar/d$c;->b:I

    iget-object p1, p0, Lcom/google/android/material/snackbar/d;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/d;->l(Lcom/google/android/material/snackbar/d$c;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/material/snackbar/d;->g(Lcom/google/android/material/snackbar/d$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/google/android/material/snackbar/d;->d:Lcom/google/android/material/snackbar/d$c;

    iput p1, p2, Lcom/google/android/material/snackbar/d$c;->b:I

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/material/snackbar/d$c;

    invoke-direct {v1, p1, p2}, Lcom/google/android/material/snackbar/d$c;-><init>(ILcom/google/android/material/snackbar/d$b;)V

    iput-object v1, p0, Lcom/google/android/material/snackbar/d;->d:Lcom/google/android/material/snackbar/d$c;

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    if-eqz p1, :cond_2

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/snackbar/d;->a(Lcom/google/android/material/snackbar/d$c;I)Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/snackbar/d;->c:Lcom/google/android/material/snackbar/d$c;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/d;->n()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
