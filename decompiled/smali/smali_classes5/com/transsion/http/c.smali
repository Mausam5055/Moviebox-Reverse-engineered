.class public Lcom/transsion/http/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/transsion/http/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/transsion/http/impl/r;

.field private final b:Lam/f;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lxl/h;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lwl/b;Lcom/transsion/http/impl/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/transsion/http/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/transsion/http/c;->a:Lcom/transsion/http/impl/r;

    invoke-virtual {p1}, Lwl/b;->d()Lam/f;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {p1}, Lwl/b;->b()Lxl/h;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/http/c;->d:Lxl/h;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lam/f;->e()Lam/e;

    move-result-object p2

    invoke-virtual {p2}, Lam/e;->m()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v0}, Lam/f;->g()V

    invoke-virtual {p0}, Lcom/transsion/http/c;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v0}, Lam/f;->a()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v0}, Lam/f;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcm/a;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcm/a;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/http/c;->a:Lcom/transsion/http/impl/r;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v2}, Lam/f;->f()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/transsion/http/impl/r;->c(I[B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v1}, Lam/f;->e()Lam/e;

    move-result-object v1

    invoke-virtual {v1}, Lam/e;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/http/c;->d:Lxl/h;

    if-eqz v1, :cond_2

    new-instance v1, Lxl/a;

    invoke-direct {v1}, Lxl/a;-><init>()V

    new-instance v2, Lxl/j;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lxl/j;-><init>(Lxl/a;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/http/c;->d:Lxl/h;

    new-instance v1, Lwl/d;

    iget-object v3, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v3}, Lam/f;->e()Lam/e;

    move-result-object v3

    invoke-virtual {v3}, Lam/e;->n()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lwl/d;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v0, Lxl/b;

    :try_start_2
    invoke-virtual {v0, v1, v2}, Lxl/b;->c(Lwl/e;Lxl/h$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v0}, Lam/f;->a()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v1}, Lam/f;->a()V

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/http/c;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/c;->a:Lcom/transsion/http/impl/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/http/impl/r;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/http/c;->c()V

    :cond_0
    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/transsion/http/c;

    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 6

    const-string v0, "image"

    sget-object v1, Lbm/a;->a:Lbm/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run Current Looper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const-string v3, "Main Looper"

    goto :goto_0

    :cond_0
    const-string v3, "thread Looper"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "book"

    invoke-interface {v1, v3, v2}, Lbm/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/http/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/http/c;->a:Lcom/transsion/http/impl/r;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/transsion/http/impl/r;->a()V

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v1}, Lam/f;->e()Lam/e;

    move-result-object v1

    invoke-virtual {v1}, Lam/e;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/transsion/http/c;->d:Lxl/h;

    if-eqz v1, :cond_6

    new-instance v2, Lwl/d;

    iget-object v3, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v3}, Lam/f;->e()Lam/e;

    move-result-object v3

    invoke-virtual {v3}, Lam/e;->n()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lwl/d;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Lxl/b;

    :try_start_1
    invoke-virtual {v1, v2}, Lxl/b;->a(Lwl/e;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    sget-object v2, Lbm/a;->a:Lbm/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "image url:"

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v4}, Lam/f;->e()Lam/e;

    move-result-object v4

    invoke-virtual {v4}, Lam/e;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lbm/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lbm/a;->a:Lbm/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "image path:"

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lbm/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/http/c;->a()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v0}, Lam/f;->a()V

    iget-object v0, p0, Lcom/transsion/http/c;->d:Lxl/h;

    if-eqz v0, :cond_3

    check-cast v0, Lxl/b;

    invoke-virtual {v0}, Lxl/b;->b()V

    :cond_3
    return-void

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/transsion/http/c;->a:Lcom/transsion/http/impl/r;

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcm/a;->a(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcm/a;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    const/16 v2, 0xfa

    invoke-interface {v0, v2, v1}, Lcom/transsion/http/impl/r;->c(I[B)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/transsion/http/c;->b()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/transsion/http/c;->b()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/transsion/http/c;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v0}, Lam/f;->a()V

    iget-object v0, p0, Lcom/transsion/http/c;->d:Lxl/h;

    if-eqz v0, :cond_a

    goto :goto_3

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lcom/transsion/http/c;->a()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/transsion/http/c;->a:Lcom/transsion/http/impl/r;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v2}, Lam/f;->f()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/transsion/http/impl/r;->d(I[BLjava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    iget-object v0, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v0}, Lam/f;->a()V

    iget-object v0, p0, Lcom/transsion/http/c;->d:Lxl/h;

    if-eqz v0, :cond_a

    :goto_3
    check-cast v0, Lxl/b;

    invoke-virtual {v0}, Lxl/b;->b()V

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/http/c;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/transsion/http/c;->a:Lcom/transsion/http/impl/r;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/transsion/http/impl/r;->b()V

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/http/c;->e:Z

    return-void

    :goto_4
    iget-object v1, p0, Lcom/transsion/http/c;->b:Lam/f;

    invoke-virtual {v1}, Lam/f;->a()V

    iget-object v1, p0, Lcom/transsion/http/c;->d:Lxl/h;

    if-eqz v1, :cond_d

    check-cast v1, Lxl/b;

    invoke-virtual {v1}, Lxl/b;->b()V

    :cond_d
    throw v0
.end method
