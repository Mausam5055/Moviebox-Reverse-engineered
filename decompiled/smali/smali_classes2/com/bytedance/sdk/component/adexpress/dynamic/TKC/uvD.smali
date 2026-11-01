.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

.field private Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

.field private sP:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->sP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->EjP()V

    return-void
.end method

.method private EjP()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/vS/dx;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/adexpress/vS/dx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->sP:Landroid/content/Context;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/vS/dx;->setGuideText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/dx;->Sj()V

    :cond_0
    return-void
.end method

.method public TKC()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    return-object v0
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uvD;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/dx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/dx;->sP()V

    :cond_0
    return-void
.end method
