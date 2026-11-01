.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x1

    const-string v1, "ProxyServer"

    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    new-instance v3, Ljava/net/ServerSocket;

    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->q(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x32

    invoke-direct {v3, v5, v6, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-static {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->k(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-static {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->h(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;I)I

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v0, "socket not bound"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->o(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->q(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/b;->a(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->u(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/util/concurrent/atomic/AtomicInteger;

    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v0, :cond_3

    :try_start_2
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    invoke-static {v2}, Lf6/a;->q(Ljava/net/Socket;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "accept error"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v5, v0

    const/4 v2, 0x3

    if-gt v5, v2, :cond_3

    goto :goto_0

    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "proxy server crashed!  "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "error"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->o(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V

    return-void

    :catch_1
    move-exception v0

    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create ServerSocket error!  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v1, "create ServerSocket error"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->o(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V

    return-void
.end method
