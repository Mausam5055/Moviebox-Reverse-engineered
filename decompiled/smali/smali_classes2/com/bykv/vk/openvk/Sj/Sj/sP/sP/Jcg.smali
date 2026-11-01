.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;
.super Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;
    }
.end annotation


# instance fields
.field private final Fmk:Ljava/net/Socket;

.field private final Zq:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

.field private volatile dNu:Z

.field private final sef:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

.field private volatile uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;)V
    .locals 2

    iget-object v0, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    iget-object v1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->b:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->dNu:Z

    iget-object v0, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->c:Ljava/net/Socket;

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    iget-object p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->sef:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    invoke-static {}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Zq:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    return-void
.end method

.method private Dq()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;
    .locals 4

    const-string v0, "TAG_PROXY_ProxyTask"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->a(Ljava/io/InputStream;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    move-result-object v2

    iput-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;

    :goto_0
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "cache is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$EjP; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    :cond_1
    :goto_1
    return-object v1

    :goto_2
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    invoke-static {v3}, Lf6/a;->q(Ljava/net/Socket;)V

    sget-boolean v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    goto :goto_4

    :goto_3
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    invoke-static {v3}, Lf6/a;->q(Ljava/net/Socket;)V

    sget-boolean v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v3, :cond_3

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    :cond_4
    :goto_4
    return-object v1
.end method

.method private EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;,
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uA()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->e:I

    const-string v4, "GET"

    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;IILjava/lang/String;)Lh6/c;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v3, v6, v4}, Lf6/a;->h(Lh6/c;ZZ)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ", rawKey: "

    if-nez v4, :cond_d

    :try_start_1
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v8, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object v4

    invoke-static {v3}, Lf6/a;->b(Lh6/c;)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "TAG_PROXY_ProxyTask"

    if-eqz v4, :cond_2

    :try_start_2
    iget v10, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    if-eq v10, v8, :cond_2

    sget-boolean p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length not match, old: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    :goto_0
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Content-Length not match, old length: "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", new length: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", currentUrl: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", previousInfo: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->e:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->b()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v3, v2}, Lf6/a;->g(Lh6/c;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    sget-object v2, Lf6/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length v2, p2

    invoke-virtual {p1, p2, v6, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->a([BII)V

    :cond_3
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->dNu:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, ", from: "

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result v2

    int-to-long v10, v2

    cmp-long v2, v7, v10

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v7, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    iget-object v8, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v8, v8, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v8, v8, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    invoke-static {v3, v2, v7, v8}, Lf6/a;->d(Lh6/c;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;

    const-string v7, "rwd"

    invoke-direct {v2, p2, v7}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->c(J)V
    :try_end_5
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v5, v2

    goto/16 :goto_8

    :catch_0
    move-object v2, v5

    :goto_1
    :try_start_6
    sget-boolean v7, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "can write to cache file in network task, cache file size: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :cond_4
    :try_start_7
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "can\'t write to cache file in network task, cache file size: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    move-object v2, v5

    :cond_6
    :goto_2
    :try_start_8
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS()I

    move-result v7

    invoke-virtual {p2, v4, v7}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object p2

    if-nez p2, :cond_7

    move p2, v6

    goto :goto_3

    :cond_7
    iget p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    :goto_3
    const/16 v4, 0x2000

    new-array v4, v4, [B

    invoke-virtual {v3}, Lh6/c;->a()Ljava/io/InputStream;

    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v8, v6

    :goto_4
    :try_start_9
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_b

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    if-lez v10, :cond_a

    invoke-virtual {p1, v4, v6, v10}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->d([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    add-int/2addr v8, v10

    if-eqz v2, :cond_9

    :try_start_a
    invoke-virtual {v2, v4, v6, v10}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->d([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v10

    :try_start_b
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->b()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "append to cache file error in network task!!! "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p1

    :goto_5
    move v6, v8

    goto :goto_8

    :cond_8
    :goto_6
    move-object v2, v5

    goto :goto_7

    :catchall_4
    move-exception p1

    move-object v5, v2

    goto :goto_5

    :cond_9
    :goto_7
    :try_start_d
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result v10

    invoke-virtual {p0, p2, v10}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj(II)V

    :cond_a
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    goto :goto_4

    :cond_b
    sget-boolean p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-virtual {v3}, Lh6/c;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lf6/a;->m(Ljava/io/Closeable;)V

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->b()V

    :cond_c
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void

    :cond_d
    :try_start_e
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_8
    invoke-virtual {v3}, Lh6/c;->a()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lf6/a;->m(Ljava/io/Closeable;)V

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->b()V

    :cond_e
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    throw p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Zq:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    return-object p0
.end method

.method private Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;,
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;

    iget-object v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;->a:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V

    return-void
.end method

.method private Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Ljava/io/File;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3, p4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v2, v0

    invoke-virtual {p3, v0, v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->a([BII)V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    invoke-virtual {p1, v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object p1

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz p1, :cond_2

    const-string p1, "TAG_PROXY_ProxyTask"

    const-string v2, "failed to get video header info from db"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v0, p3, p4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)[B

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    invoke-virtual {p1, v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "failed to get header, rawKey: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;-><init>()V

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->e(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->h(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->k(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    new-instance v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

    iget-object v4, p4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->i(Ljava/util/List;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    new-instance v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$a;

    invoke-direct {v3, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)V

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    move-result-object v2

    iput-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    new-instance v3, Lcom/bytedance/sdk/component/Dq/Jcg;

    const/16 v4, 0xa

    const/4 v5, 0x1

    invoke-direct {v3, v2, v0, v4, v5}, Lcom/bytedance/sdk/component/Dq/Jcg;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;II)V

    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$2;

    const-string v4, "processCacheNetWorkConcurrent"

    invoke-direct {v2, p0, v4, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$2;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Jcg;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/Dq/vS;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v2, :cond_7

    const-string v2, "TAG_PROXY_ProxyTask"

    const-string v4, "fire download in process cache task"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move-object v3, v0

    :cond_7
    :goto_1
    const/16 v2, 0x2000

    new-array v2, v2, [B

    :try_start_0
    new-instance v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;

    const-string v5, "r"

    invoke-direct {v4, p2, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p2

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->c(J)V

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->e:I

    if-lez p2, :cond_8

    iget p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->e:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto/16 :goto_8

    :cond_8
    iget p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    :goto_2
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p2

    if-ge p2, p1, :cond_10

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    invoke-virtual {v4, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->a([B)I

    move-result p2

    if-gtz p2, :cond_f

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->uA()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->Dq()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    throw v0

    :cond_a
    throw v0

    :cond_b
    :goto_3
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    iget-object v0, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->Fmk:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->Fmk:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :goto_5
    :try_start_4
    monitor-exit v0

    throw p1

    :cond_d
    :goto_6
    sget-boolean p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz p1, :cond_e

    const-string p1, "TAG_PROXY_ProxyTask"

    const-string p2, "download task has finished!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "illegal state download task has finished, rawKey: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-virtual {p3, v2, v1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->d([BII)V

    :goto_7
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    goto :goto_2

    :cond_10
    sget-boolean p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz p2, :cond_11

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "read cache file complete: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->b()V

    if-eqz v3, :cond_12

    :try_start_5
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_12
    return-void

    :catchall_3
    move-exception p1

    :goto_8
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->b()V

    :cond_13
    if-eqz v3, :cond_14

    :try_start_6
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :cond_14
    throw p1
.end method

.method private Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;
        }
    .end annotation

    const-string v0, "TAG_PROXY_ProxyTask"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TEQ:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TEQ:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->d()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;

    move-result-object v1

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    :try_end_0
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    sget-boolean v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :catch_2
    move-exception v1

    sget-boolean v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->dNu:Z

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    goto :goto_0

    :catch_3
    move-exception p1

    sget-boolean v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :catch_4
    move-exception v2

    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;->b()V

    :cond_4
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "Canceled"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "okhttp call canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    goto :goto_0

    :catch_5
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;->a()V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    goto/16 :goto_0

    :cond_7
    return v2
.end method

.method private Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-boolean p3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p2

    invoke-static {p1, p2}, Lf6/a;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lf6/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, -0x1

    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1, p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;IILjava/lang/String;)Lh6/c;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :try_start_0
    invoke-static {p1, v1, v1}, Lf6/a;->h(Lh6/c;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v1, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v1, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    invoke-static {p1, p3, v0, v1}, Lf6/a;->d(Lh6/c;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object p3

    sget-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "TAG_PROXY_ProxyTask"

    const-string v1, "get header from network"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p2

    invoke-static {p3, p2}, Lf6/a;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lf6/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lh6/c;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lf6/a;->m(Ljava/io/Closeable;)V

    return-object p2

    :cond_3
    :try_start_1
    new-instance p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rawKey: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p1}, Lh6/c;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lf6/a;->m(Ljava/io/Closeable;)V

    throw p2
.end method

.method private TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;,
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->dNu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    iget-object v5, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v5, v5, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v5, v5, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    invoke-virtual {v3, v4, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result v4

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-lez v5, :cond_2

    sget-boolean v5, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cache hit, remainSize: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v6, v4

    sub-long/2addr v1, v6

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, v3, v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Ljava/io/File;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V

    return-void
.end method

.method private sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)[B

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->a([BII)V

    return-void
.end method

.method private uA()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj()V

    :cond_0
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 0

    invoke-super {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uA()V

    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "TAG_PROXY_ProxyTask"

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Dq()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->sef:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    if-eqz v2, :cond_1

    invoke-interface {v2, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;->a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)V

    :cond_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;->b(Ljava/lang/String;)V

    sget v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->g:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v4, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v4, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    invoke-virtual {v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Zq:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    move-result v3

    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->f(ZLjava/lang/String;)V

    :cond_3
    :try_start_0
    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;)Z
    :try_end_0
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v2, :cond_4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v2, :cond_4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Zq:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->f(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj()V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    invoke-static {v0}, Lf6/a;->q(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->sef:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    if-eqz v0, :cond_5

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)V

    :cond_5
    return-void
.end method
