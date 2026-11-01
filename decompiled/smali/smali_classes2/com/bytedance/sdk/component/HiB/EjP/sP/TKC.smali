.class public Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/EjP/sP/vS;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Ljava/lang/String;[B)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/sP;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->sP(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TzV;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;)[B
    .locals 8

    const-string v0, "call is empty"

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->TKC()Lcom/bytedance/sdk/component/HiB/EjP;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Z)V

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/bytedance/sdk/component/HiB/sP/sP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->RiZ()Lcom/bytedance/sdk/component/HiB/sef;

    move-result-object v7

    invoke-direct {v5, v6, v2, v2, v7}, Lcom/bytedance/sdk/component/HiB/sP/sP;-><init>(Ljava/lang/String;ZZLcom/bytedance/sdk/component/HiB/sef;)V

    invoke-interface {v1, v5}, Lcom/bytedance/sdk/component/HiB/EjP;->Sj(Lcom/bytedance/sdk/component/HiB/HiB;)Lcom/bytedance/sdk/component/HiB/vS;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3, v0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lcom/bytedance/sdk/component/HiB/vS;->sP()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    invoke-interface {v1}, Lcom/bytedance/sdk/component/HiB/vS;->TKC()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/HiB/vS;->EjP()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    const-string v1, "net data is empty"

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Ljava/lang/String;[B)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;->sP(Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Ljava/lang/String;[B)V

    return-object v2

    :cond_2
    invoke-interface {v1}, Lcom/bytedance/sdk/component/HiB/vS;->TKC()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Throwable;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_3
    move-object p1, v4

    :goto_0
    invoke-interface {v1}, Lcom/bytedance/sdk/component/HiB/vS;->EjP()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :goto_1
    const-string p2, "net request failed!"

    invoke-virtual {p3, v3, p2, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->TKC(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TKC;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->sP()Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/HiB/TKC;

    invoke-interface {v0, p3}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    return-object p2
.end method

.method private sP(Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Ljava/lang/String;[B)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/sP;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->vS()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Lcom/bytedance/sdk/component/HiB/sP;Ljava/lang/String;[B)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "data_intercept"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Lcom/bytedance/sdk/component/HiB/RiZ;Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dNu()Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sP;->vS()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "data_cache"

    if-eqz p2, :cond_0

    invoke-interface {p2, v3, p1}, Lcom/bytedance/sdk/component/HiB/RiZ;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->sP(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TzV;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, v3, p1}, Lcom/bytedance/sdk/component/HiB/RiZ;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    :cond_3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sP;->Jcg()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    const-string v2, "disk_cache"

    if-eqz p2, :cond_4

    invoke-interface {p2, v2, p1}, Lcom/bytedance/sdk/component/HiB/RiZ;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v1, v4, v0}, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Ljava/lang/String;[B)V

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2, v2, p1}, Lcom/bytedance/sdk/component/HiB/RiZ;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    move-object v2, v0

    :cond_7
    if-eqz v1, :cond_9

    if-nez v2, :cond_9

    const-string v0, "net_request"

    if-eqz p2, :cond_8

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/component/HiB/RiZ;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    :cond_8
    invoke-direct {p0, v1, p1, p3}, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj;)[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    if-eqz p2, :cond_9

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/component/HiB/RiZ;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uA;)V

    :cond_9
    if-nez v2, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

    const/4 p1, 0x0

    return p1

    :cond_a
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj([B)V

    const/4 p1, 0x1

    return p1
.end method
