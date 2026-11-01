.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;


# instance fields
.field private Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->aNB()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_0

    move-wide v0, v5

    :cond_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->cX()D

    move-result-wide v7

    cmpl-double v2, v7, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v5, v7

    :goto_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v7, 0x3fd47ae147ae147bL    # 0.32

    mul-double/2addr v2, v7

    mul-double/2addr v2, v0

    double-to-int v0, v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicWidth()I

    move-result p2

    int-to-double v1, p2

    mul-double/2addr v1, v7

    mul-double/2addr v1, v5

    double-to-int p2, v1

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/sP;

    invoke-direct {v1, p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/vS/sP;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Chv()I

    move-result p2

    add-int/lit8 p2, p2, -0x7

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Bml()I

    move-result p2

    add-int/lit8 p2, p2, -0x3

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj()V

    return-void
.end method

.method public TKC()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;

    return-object v0
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->sP()V

    return-void
.end method
