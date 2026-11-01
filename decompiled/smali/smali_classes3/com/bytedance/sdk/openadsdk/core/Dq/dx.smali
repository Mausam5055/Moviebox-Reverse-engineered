.class public Lcom/bytedance/sdk/openadsdk/core/Dq/dx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/TKC;


# instance fields
.field private EjP:Ljava/lang/String;

.field private HiB:Ljava/lang/String;

.field private final Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Sj:J

.field private TKC:I

.field private sP:J

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Sj:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->sP:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->TKC:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->EjP:Ljava/lang/String;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->HiB:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->TKC:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->EjP:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->HiB:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->sP:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->sP:J

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Sj:J

    sub-long v9, v1, v3

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->HiB:Ljava/lang/String;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->vS:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v8, "success"

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v14}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->sP:J

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Sj:J

    sub-long v9, v1, v3

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->HiB:Ljava/lang/String;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->vS:Ljava/lang/String;

    iget v13, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->TKC:I

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->EjP:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "fail"

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v14}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->vS:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Sj:J

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->HiB:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->sP:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
