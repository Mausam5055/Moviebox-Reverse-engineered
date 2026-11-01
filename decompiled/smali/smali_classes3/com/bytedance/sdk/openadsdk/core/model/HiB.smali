.class public Lcom/bytedance/sdk/openadsdk/core/model/HiB;
.super Ljava/lang/Object;


# instance fields
.field private EjP:I

.field private Sj:I

.field private TKC:J

.field private sP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->Sj:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->sP:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->EjP:I

    return-void
.end method


# virtual methods
.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->EjP:I

    return v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->EjP:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->TKC:J

    return-void
.end method

.method public TKC()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->TKC:J

    return-wide v0
.end method

.method public TKC(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->sP:I

    return-void
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->Sj:I

    return v0
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->Sj:I

    return-void
.end method
