.class public abstract Lcom/transsion/http/impl/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/http/impl/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/http/impl/q$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/http/impl/q;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/http/impl/q;-><init>(Landroid/os/Looper;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/http/impl/q;->d:Landroid/os/Looper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    const-string v0, "use looper thread, must call Looper.prepare() first!"

    invoke-static {v1, v0}, Lcm/b;->a(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/http/impl/q;->d:Landroid/os/Looper;

    new-instance v0, Lcom/transsion/http/impl/q$a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/http/impl/q$a;-><init>(Lcom/transsion/http/impl/q;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    const-string p1, "use pool thread, looper should be null!"

    invoke-static {v1, p1}, Lcm/b;->a(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/http/impl/q;->d:Landroid/os/Looper;

    iput-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    :goto_0
    iput-boolean p2, p0, Lcom/transsion/http/impl/q;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

    return-void
.end method

.method public c(I[B)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/http/impl/q;->d(I[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/http/impl/q;->v(I[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(I[BLjava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p2, 0x2

    aput-object p3, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

    return-void
.end method

.method protected f(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method protected g(Landroid/os/Message;)V
    .locals 6

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "HttpCallbackImpl"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->o()V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->l()V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v3, :cond_0

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->q(I)V

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lbm/a;->a:Lbm/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "RETRY_MESSAGE didn\'t get enough params"

    :try_start_2
    invoke-interface {p1, v4, v0}, Lbm/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    array-length v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v0, v1, :cond_1

    :try_start_3
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/http/impl/q;->p(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    sget-object v0, Lbm/a;->a:Lbm/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "custom onProgress contains an error"

    :try_start_5
    invoke-interface {v0, v4, v1, p1}, Lbm/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lbm/a;->a:Lbm/c;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v0, "PROGRESS_MESSAGE didn\'t got enough params"

    :try_start_6
    invoke-interface {p1, v4, v0}, Lbm/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->n()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->r()V

    goto :goto_1

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v5, 0x3

    if-lt v0, v5, :cond_2

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v2, p1, v3

    check-cast v2, [B

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v2, p1}, Lcom/transsion/http/impl/q;->m(I[BLjava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lbm/a;->a:Lbm/c;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v0, "FAILURE_MESSAGE didn\'t got enough params"

    :try_start_7
    invoke-interface {p1, v4, v0}, Lbm/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lt v0, v1, :cond_3

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v3

    check-cast p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/transsion/http/impl/q;->s(I[B)V

    goto :goto_1

    :cond_3
    sget-object p1, Lbm/a;->a:Lbm/c;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v0, "SUCCESS_MESSAGE didn\'t got enough params"

    :try_start_8
    invoke-interface {p1, v4, v0}, Lbm/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->t(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected h(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected i(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->k()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "handler should not be null!"

    invoke-static {v0, v1}, Lcm/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->g(Landroid/os/Message;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/http/impl/q;->c:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/http/impl/q;->b:Z

    return v0
.end method

.method public l()V
    .locals 3

    sget-object v0, Lbm/a;->a:Lbm/c;

    const-string v1, "HttpCallbackImpl"

    const-string v2, "Request got cancelled"

    invoke-interface {v0, v1, v2}, Lbm/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract m(I[BLjava/lang/Throwable;)V
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 3

    sget-object v0, Lbm/a;->a:Lbm/c;

    const-string v1, "HttpCallbackImpl"

    const-string v2, "Request got onPaused"

    invoke-interface {v0, v1, v2}, Lbm/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p(JJ)V
    .locals 5

    sget-object v0, Lbm/a;->a:Lbm/c;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-lez v3, :cond_0

    long-to-double p1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v3

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, p3

    goto :goto_0

    :cond_0
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object v1, p2, p3

    const/4 p3, 0x1

    aput-object v2, p2, p3

    const/4 p3, 0x2

    aput-object p1, p2, p3

    const-string p1, "Progress %d from %d (%2.0f%%)"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpCallbackImpl"

    invoke-interface {v0, p2, p1}, Lbm/c;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(I)V
    .locals 3

    sget-object v0, Lbm/a;->a:Lbm/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Request retry no. %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "HttpCallbackImpl"

    invoke-interface {v0, v1, p1}, Lbm/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public abstract s(I[B)V
.end method

.method public t(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lbm/a;->a:Lbm/c;

    const-string v1, "HttpCallbackImpl"

    const-string v2, "User-space exception detected!"

    invoke-interface {v0, v1, v2, p1}, Lbm/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public u()V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

    return-void
.end method

.method public v(I[B)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

    return-void
.end method
