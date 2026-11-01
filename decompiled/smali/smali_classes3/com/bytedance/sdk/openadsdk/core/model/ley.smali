.class public Lcom/bytedance/sdk/openadsdk/core/model/ley;
.super Ljava/lang/Object;


# instance fields
.field private Dq:J

.field private EjP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

.field private HiB:J

.field private Jcg:J

.field public Sj:Z

.field private TEQ:J

.field private TKC:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

.field private Ym:I

.field public sP:J

.field private uA:J

.field private vS:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->TKC()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->TKC:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->TKC()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->EjP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    return-void
.end method


# virtual methods
.method public Dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Ym:I

    return v0
.end method

.method public EjP()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Jcg:J

    return-wide v0
.end method

.method public HiB()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Dq:J

    return-wide v0
.end method

.method public Jcg()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->TEQ:J

    return-wide v0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/utils/WMZ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->TKC:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Ym:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->TEQ:J

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->TKC:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/utils/WMZ;ILcom/bytedance/sdk/openadsdk/utils/WMZ;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->TKC:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->HiB:J

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->vS:J

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Jcg:J

    invoke-virtual {p4, p2}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Dq:J

    return-void
.end method

.method public TKC()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->vS:J

    return-wide v0
.end method

.method public sP()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->HiB:J

    return-wide v0
.end method

.method public sP(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->EjP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->TKC:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->uA:J

    return-void
.end method

.method public vS()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->uA:J

    return-wide v0
.end method
