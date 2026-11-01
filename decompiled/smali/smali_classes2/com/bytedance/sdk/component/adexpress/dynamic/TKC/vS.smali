.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu<",
        "Lcom/bytedance/sdk/component/adexpress/vS/vS;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;IIILorg/json/JSONObject;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move-object v4, p7

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS;->Sj(IIILorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    return-void
.end method

.method private Sj(IIILorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 7

    new-instance v6, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/vS/vS;-><init>(Landroid/content/Context;IIILorg/json/JSONObject;)V

    iput-object v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    const/high16 p3, 0x43960000    # 300.0f

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x51

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->ndK()I

    move-result p3

    const/4 p4, 0x0

    if-lez p3, :cond_0

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->ndK()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, p4

    goto :goto_0

    :cond_1
    const/16 p3, 0x78

    :goto_0
    int-to-float p3, p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->setSlideText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    instance-of p2, p1, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->IOh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/vS/vS;->setShakeText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/vS/vS;->getShakeView()Lcom/bytedance/sdk/component/adexpress/vS/sU;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS;Lcom/bytedance/sdk/component/adexpress/vS/sU;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->setOnShakeViewListener(Lcom/bytedance/sdk/component/adexpress/vS/RiZ$Sj;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;

    move-result-object p2

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected EjP()V
    .locals 0

    return-void
.end method
