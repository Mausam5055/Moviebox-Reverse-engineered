.class public Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;
.super Ljava/lang/Object;


# instance fields
.field private Dq:I

.field private EjP:I

.field private HiB:Z

.field private Jcg:I

.field private Sj:Ljava/lang/String;

.field private TKC:Ljava/lang/String;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private uA:I

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Dq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->uA:I

    return-void
.end method


# virtual methods
.method public Dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Dq:I

    return v0
.end method

.method public EjP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->EjP:I

    return v0
.end method

.method public EjP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->uA:I

    return-void
.end method

.method public HiB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->HiB:Z

    return v0
.end method

.method public Jcg()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Jcg:I

    return v0
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->EjP:I

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj:Ljava/lang/String;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->HiB:Z

    return-void
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public TKC(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Dq:I

    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->vS:Ljava/lang/String;

    return-void
.end method

.method public sP()Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object v0
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Jcg:I

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC:Ljava/lang/String;

    return-void
.end method

.method public uA()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->uA:I

    return v0
.end method

.method public vS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->vS:Ljava/lang/String;

    return-object v0
.end method
