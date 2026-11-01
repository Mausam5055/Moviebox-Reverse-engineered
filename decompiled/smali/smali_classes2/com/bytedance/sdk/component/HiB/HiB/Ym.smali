.class public Lcom/bytedance/sdk/component/HiB/HiB/Ym;
.super Lcom/bytedance/sdk/component/HiB/HiB/Sj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/HiB/Sj;-><init>()V

    return-void
.end method

.method private Sj(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/HiB/Dq;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "net_request"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 9

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/TKC/vS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->EjP()Lcom/bytedance/sdk/component/HiB/EjP;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Z)V

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/HiB/sP/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Fmk()Z

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sef()Z

    move-result v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->dx()Lcom/bytedance/sdk/component/HiB/sef;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/bytedance/sdk/component/HiB/sP/sP;-><init>(Ljava/lang/String;ZZLcom/bytedance/sdk/component/HiB/sef;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/EjP;->Sj(Lcom/bytedance/sdk/component/HiB/HiB;)Lcom/bytedance/sdk/component/HiB/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/vS;->sP()I

    move-result v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/vS;->Sj()Lcom/bytedance/sdk/component/HiB/Jcg;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/Jcg;)V

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/vS;->sP()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/vS;->TKC()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [B

    new-instance v1, Lcom/bytedance/sdk/component/HiB/HiB/sP;

    invoke-direct {v1, v6, v0}, Lcom/bytedance/sdk/component/HiB/HiB/sP;-><init>([BLcom/bytedance/sdk/component/HiB/vS;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->RiZ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/component/HiB/sP;->HiB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->RiZ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TzV;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Jcg()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;-><init>(Lcom/bytedance/sdk/component/HiB/HiB/Ym;Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/TKC/vS;Lcom/bytedance/sdk/component/HiB/TKC/TKC;Ljava/lang/String;[B)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/vS;->TKC()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/vS;->EjP()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/bytedance/sdk/component/HiB/HiB/Ym;->Sj(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    const/16 v1, 0x3ec

    const-string v2, "net request failed!"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/bytedance/sdk/component/HiB/HiB/Ym;->Sj(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V

    return-void
.end method
