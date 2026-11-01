.class public Lcom/bytedance/sdk/openadsdk/core/model/RiZ;
.super Ljava/lang/Object;


# instance fields
.field private EjP:J

.field private HiB:Ljava/lang/String;

.field private Sj:J

.field private TKC:J

.field private sP:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP:J

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC:J

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->HiB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public EjP()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP:J

    return-wide v0
.end method

.method public EjP(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x14

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP:J

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP:J

    return-void
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->HiB:Ljava/lang/String;

    return-object v0
.end method

.method public Sj()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj:J

    return-wide v0
.end method

.method public Sj(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj:J

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj:J

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->HiB:Ljava/lang/String;

    return-void
.end method

.method public TKC()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC:J

    return-wide v0
.end method

.method public TKC(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC:J

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC:J

    return-void
.end method

.method public sP()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP:J

    return-wide v0
.end method

.method public sP(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x14

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP:J

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP:J

    return-void
.end method
