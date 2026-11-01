.class public abstract Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/net/impl/IHttpCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->b:Landroid/os/Looper;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->b:Landroid/os/Looper;

    new-instance v0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;-><init>(Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

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

    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->d(I[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->t(I[B)V

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

    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    return-void
.end method

.method public e(I[BLjava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    new-instance p3, Ljava/io/IOException;

    invoke-direct {p3}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->d(I[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->u(I[BLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(I[BLokhttp3/Headers;)V
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

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->r(I[BLjava/lang/Throwable;Lokhttp3/Headers;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->v(I[BLokhttp3/Headers;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected g(Landroid/os/Message;)V
    .locals 6

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "HttpCallbackImpl"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x7

    if-eq v0, p1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p1

    const-string v0, "UnKnown message"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->k()V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->j()V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->m()V

    goto/16 :goto_1

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_5

    array-length v0, p1

    if-lt v0, v3, :cond_5

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    aget-object v0, p1, v3

    instance-of v1, v0, Lokhttp3/Headers;

    if-eqz v1, :cond_4

    check-cast v0, Lokhttp3/Headers;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->l(Lokhttp3/Headers;)V

    :cond_4
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p1, v5

    check-cast v1, [B

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->i(I[BLjava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p1

    const-string v0, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_9

    array-length v0, p1

    if-lt v0, v4, :cond_9

    array-length v0, p1

    if-lt v0, v3, :cond_8

    aget-object v0, p1, v4

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p1, v5

    check-cast v1, [B

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->o(I[BLjava/lang/String;)V

    goto :goto_1

    :cond_7
    instance-of v1, v0, Lokhttp3/Headers;

    if-eqz v1, :cond_a

    check-cast v0, Lokhttp3/Headers;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->l(Lokhttp3/Headers;)V

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v5

    check-cast p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->n(I[B)V

    goto :goto_1

    :cond_8
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v5

    check-cast p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->n(I[B)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p1

    const-string v0, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->p(Ljava/lang/Throwable;)V

    :cond_a
    :goto_1
    return-void
.end method

.method protected h(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public abstract i(I[BLjava/lang/Throwable;)V
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "HttpCallbackImpl"

    const-string v2, "Request got onPaused"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l(Lokhttp3/Headers;)V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public abstract n(I[B)V
.end method

.method public o(I[BLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public p(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "HttpCallbackImpl"

    const-string v2, "User-space exception detected!"

    invoke-virtual {v0, v1, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected q(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public r(I[BLjava/lang/Throwable;Lokhttp3/Headers;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p2, 0x2

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p4, v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    return-void
.end method

.method protected s(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->g(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public t(I[B)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    return-void
.end method

.method public u(I[BLjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    return-void
.end method

.method public v(I[BLokhttp3/Headers;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    return-void
.end method
