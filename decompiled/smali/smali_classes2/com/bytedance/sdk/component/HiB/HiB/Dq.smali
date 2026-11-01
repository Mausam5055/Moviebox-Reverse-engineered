.class public Lcom/bytedance/sdk/component/HiB/HiB/Dq;
.super Lcom/bytedance/sdk/component/HiB/HiB/Sj;


# instance fields
.field private Sj:Ljava/lang/Throwable;

.field private TKC:Ljava/lang/String;

.field private sP:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/HiB/Sj;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->sP:I

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->TKC:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->Sj:Ljava/lang/Throwable;

    return-void
.end method

.method private sP(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Dq()Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->sP:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->TKC:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->Sj:Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "failed"

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj;

    iget v1, p0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->sP:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->TKC:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->Sj:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/HiB/TKC/Sj;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->zR()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV()Lcom/bytedance/sdk/component/HiB/TKC/vS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Dq()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->sP(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V

    return-void

    :cond_0
    monitor-enter v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->sP(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v2

    throw p1
.end method
