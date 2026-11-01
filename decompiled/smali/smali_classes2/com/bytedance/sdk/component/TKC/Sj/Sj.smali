.class public Lcom/bytedance/sdk/component/TKC/Sj/Sj;
.super Ljava/lang/Object;


# instance fields
.field Dq:J

.field EjP:J

.field HiB:J

.field Jcg:J

.field Sj:J

.field TKC:J

.field sP:J

.field vS:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Sj:J

    return-void
.end method


# virtual methods
.method public Dq()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->EjP:J

    return-wide v0
.end method

.method public EjP()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Sj:J

    return-wide v0
.end method

.method public Fmk()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Dq:J

    return-void
.end method

.method public HiB()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->vS:J

    return-void
.end method

.method public Jcg()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->TKC:J

    return-wide v0
.end method

.method public Sj()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->TKC:J

    return-void
.end method

.method public TEQ()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Jcg:J

    return-wide v0
.end method

.method public TKC()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->HiB:J

    return-void
.end method

.method public Ym()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Jcg:J

    return-void
.end method

.method public Zq()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->sP:J

    return-void
.end method

.method public aa()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Dq:J

    return-wide v0
.end method

.method public sP()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->EjP:J

    return-void
.end method

.method public sef()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->sP:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestHttpTime{requestBuildTs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Sj:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", asyncCallExecTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->sP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestStartExecTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->TKC:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestConnectStartTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->EjP:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestConnectFinishTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->HiB:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reqCallServerStartTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Jcg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reqCallServerFinishTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Dq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uA()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->HiB:J

    return-wide v0
.end method

.method public vS()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->vS:J

    return-wide v0
.end method
