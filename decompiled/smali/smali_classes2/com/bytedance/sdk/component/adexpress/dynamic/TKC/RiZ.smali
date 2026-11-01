.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg<",
        "Lcom/bytedance/sdk/component/adexpress/vS/wE;",
        ">;"
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

.field private HiB:Ljava/lang/String;

.field private Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

.field private sP:Landroid/content/Context;

.field private vS:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->sP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->HiB:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->vS:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->HiB()V

    return-void
.end method

.method private HiB()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->ndK()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "convertActionType"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-string v2, "18"

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->HiB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/vS/wE;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->sP:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/component/adexpress/TKC/Sj;->uA(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->vS:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/component/adexpress/vS/wE;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->getWriggleLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->getWriggleLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->getTopTextView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Uc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->getTopTextView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->sP:Landroid/content/Context;

    const-string v4, "tt_splash_wriggle_top_text_style_17"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/ib;->sP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->getTopTextView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Uc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/vS/wE;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->sP:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/component/adexpress/TKC/Sj;->uA(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->vS:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/component/adexpress/vS/wE;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    :cond_3
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x51

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->sP:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v4, v0}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->setShakeText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->getWriggleProgressIv()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    new-instance v3, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->setOnShakeViewListener(Lcom/bytedance/sdk/component/adexpress/vS/wE$Sj;)V

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/component/adexpress/vS/wE;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    return-object v0
.end method

.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->Sj()V

    return-void
.end method

.method public synthetic TKC()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->EjP()Lcom/bytedance/sdk/component/adexpress/vS/wE;

    move-result-object v0

    return-object v0
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/RiZ;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
