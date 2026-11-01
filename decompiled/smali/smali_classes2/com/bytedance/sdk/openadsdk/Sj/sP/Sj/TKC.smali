.class public Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;
.super Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;


# instance fields
.field protected final Dq:Landroid/content/Context;

.field protected TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field protected Ym:Ljava/lang/String;

.field private aa:Z

.field protected uA:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZ)V

    const-string p2, "embeded_ad"

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Ym:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->aa:Z

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aa(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->uA:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Sj()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->sP()V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/core/uvD;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/core/uvD;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->aa:Z

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    return-object p0
.end method

.method private Sj(FF)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Dq:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Dq:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Sj(FF)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V

    :cond_0
    return-void
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    return-object p0
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    return-object v0
.end method

.method public HiB()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA()V

    :cond_0
    return-void
.end method

.method protected Sj()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->uA:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->Ym:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TKC()V

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->aa:Z

    return-void
.end method

.method protected TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj/TKC;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    :cond_0
    return-void
.end method
