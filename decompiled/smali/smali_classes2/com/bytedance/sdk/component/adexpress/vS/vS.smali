.class public Lcom/bytedance/sdk/component/adexpress/vS/vS;
.super Lcom/bytedance/sdk/component/adexpress/vS/zR;


# instance fields
.field private Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/vS/zR;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj(Landroid/content/Context;IIILorg/json/JSONObject;)V

    return-void
.end method

.method private Sj(Landroid/content/Context;IIILorg/json/JSONObject;)V
    .locals 8

    new-instance v7, Lcom/bytedance/sdk/component/adexpress/vS/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/TKC/Sj;->TKC(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    move-object v0, v7

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/adexpress/vS/sU;-><init>(Landroid/content/Context;Landroid/view/View;IIILorg/json/JSONObject;)V

    iput-object v7, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getShakeView()Lcom/bytedance/sdk/component/adexpress/vS/sU;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    return-object v0
.end method

.method public setShakeText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/vS/sU;->setShakeText(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/vS;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sU;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/vS/sU;->setShakeText(Ljava/lang/String;)V

    return-void
.end method
