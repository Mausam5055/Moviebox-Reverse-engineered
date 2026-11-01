.class public Lcom/bytedance/sdk/openadsdk/core/model/uvD;
.super Ljava/lang/Object;


# instance fields
.field private EjP:D

.field private HiB:Z

.field private Sj:Ljava/lang/String;

.field private TKC:I

.field private sP:I

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public EjP()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->EjP:D

    return-wide v0
.end method

.method public HiB()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Jcg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->vS:Ljava/lang/String;

    return-object v0
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP:I

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj:Ljava/lang/String;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->HiB:Z

    return-void
.end method

.method public TKC()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC:I

    return v0
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP:I

    return v0
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC:I

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->vS:Ljava/lang/String;

    return-void
.end method

.method public vS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->HiB:Z

    return v0
.end method
