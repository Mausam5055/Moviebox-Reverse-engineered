.class public Lcom/bytedance/sdk/openadsdk/TKC/Jcg;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field private final TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

.field private sP:Lcom/bytedance/sdk/openadsdk/TKC/Dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/FilterWord;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->Sj()V

    return-void
.end method

.method private Sj()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->TKC()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->sP()V

    return-void
.end method

.method private TKC()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x18

    const/16 v3, 0x23

    const/16 v4, 0x55

    const/16 v5, 0x16

    invoke-static {v4, v5, v0, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->uA()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private sP()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/Dq;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TKC/Dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/TKC/Dq;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/TKC/Dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/Dq;->Sj(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/TKC/Dq;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
