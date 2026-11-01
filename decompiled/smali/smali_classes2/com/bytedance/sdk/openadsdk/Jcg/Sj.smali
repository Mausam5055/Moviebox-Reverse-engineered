.class public Lcom/bytedance/sdk/openadsdk/Jcg/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;


# instance fields
.field protected Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

.field protected sP:Lcom/bytedance/sdk/component/sP/Sj/Ym;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->sP:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/sP/Sj/vS;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/sP/Sj/vS;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->sP(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/net/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object p1

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/net/Response;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/vS;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->sP()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bykv/vk/openvk/preload/geckox/net/Response;-><init>(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/net/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lcom/bytedance/sdk/component/sP/Sj/uA;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/uA;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/sP/Sj/sef;->Sj(Lcom/bytedance/sdk/component/sP/Sj/uA;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/sef;

    move-result-object p2

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/sef;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object p1

    new-instance p2, Lcom/bykv/vk/openvk/preload/geckox/net/Response;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/vS;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->sP()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/bykv/vk/openvk/preload/geckox/net/Response;-><init>(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    return-object p2
.end method

.method public doPost(Ljava/lang/String;Ljava/util/List;)Lcom/bykv/vk/openvk/preload/geckox/net/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/bykv/vk/openvk/preload/geckox/net/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {p2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/HiB$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/HiB;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/sef;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object p1

    new-instance p2, Lcom/bykv/vk/openvk/preload/geckox/net/Response;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/vS;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->sP()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/bykv/vk/openvk/preload/geckox/net/Response;-><init>(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    return-object p2
.end method

.method public downloadFile(Ljava/lang/String;JLcom/bykv/vk/openvk/preload/geckox/buffer/stream/BufferOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    const/4 p3, 0x0

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->sP:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->TKC()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x800

    :try_start_2
    new-array v0, p2, [B

    :goto_0
    invoke-virtual {v2, v0, p3, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p4, v0, p3, v3}, Lcom/bykv/vk/openvk/preload/geckox/buffer/stream/BufferOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v2

    goto :goto_3

    :catch_0
    move-exception p2

    :goto_1
    move p3, v1

    goto :goto_2

    :cond_0
    invoke-static {v2}, Lcom/bykv/vk/openvk/preload/geckox/utils/CloseableUtils;->close(Ljava/io/Closeable;)Z

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p3

    move-object v2, p2

    move-object p2, p3

    goto :goto_1

    :catch_2
    move-exception p4

    move-object v2, p2

    move-object p2, p4

    :goto_2
    :try_start_3
    new-instance p4, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadFile failed, code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", url:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", caused by:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/geckox/utils/CloseableUtils;->close(Ljava/io/Closeable;)Z

    throw p1
.end method

.method public syncDoGet(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Jcg/Sj$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/Jcg/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/Jcg/Sj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->Sj(Lcom/bytedance/sdk/component/sP/Sj/TKC;)V

    return-void
.end method
