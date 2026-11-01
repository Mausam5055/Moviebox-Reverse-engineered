.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/HiB;
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

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/HiB;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 1

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/vS/Dq;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/component/adexpress/vS/Dq;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x51

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/vS/Dq;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/Dq;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/vS/Dq;->setButtonText(Ljava/lang/String;)V

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
