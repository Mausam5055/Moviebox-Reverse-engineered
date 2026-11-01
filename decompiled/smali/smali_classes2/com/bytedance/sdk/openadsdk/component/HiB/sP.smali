.class public Lcom/bytedance/sdk/openadsdk/component/HiB/sP;
.super Ljava/lang/Object;


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field private HiB:I

.field private Jcg:Z

.field private Sj:I

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private sP:I

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Sj:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->sP:I

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->vS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Sj:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->sP:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    return-void
.end method


# virtual methods
.method public EjP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->sP:I

    return v0
.end method

.method public HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object v0
.end method

.method public Jcg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->vS:Ljava/lang/String;

    return-object v0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/core/model/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    return-object v0
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Jcg:Z

    return-void
.end method

.method public TKC()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Sj:I

    return v0
.end method

.method public sP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Jcg:Z

    return v0
.end method

.method public vS()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB:I

    return v0
.end method
