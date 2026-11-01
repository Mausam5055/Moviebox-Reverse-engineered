.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/EjP;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu<",
        "Lcom/bytedance/sdk/component/adexpress/vS/Jcg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/EjP;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/vS/Jcg;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/adexpress/vS/Jcg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->ndK()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->setSlideText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/vS/Jcg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/Jcg;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->TEQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/vS/Jcg;->setButtonText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected EjP()V
    .locals 0

    return-void
.end method

.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Sj()V

    return-void
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP()V

    return-void
.end method
