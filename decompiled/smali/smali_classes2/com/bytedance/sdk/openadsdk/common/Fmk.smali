.class public Lcom/bytedance/sdk/openadsdk/common/Fmk;
.super Ljava/lang/Object;


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/common/uvD;

.field private EjP:Lcom/bytedance/sdk/component/uA/vS;

.field private HiB:Landroid/widget/ImageView;

.field private Jcg:Lcom/bytedance/sdk/openadsdk/common/TzV;

.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final TKC:Landroid/content/Context;

.field private sP:Landroid/widget/RelativeLayout;

.field private final vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->TKC:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->vS:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/Fmk;->vS()V

    return-void
.end method

.method private static Sj(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 6

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/uA;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/common/uA;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->db:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x3

    sget v5, Lcom/bytedance/sdk/openadsdk/utils/Zq;->cX:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/Dq;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/common/Dq;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private vS()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->TKC:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Sj(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->sP:Landroid/widget/RelativeLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->db:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/uA/vS;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->EjP:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->sP:Landroid/widget/RelativeLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->cX:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/TzV;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->TKC:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/common/TzV;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Jcg:Lcom/bytedance/sdk/openadsdk/common/TzV;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/common/TzV;->TKC()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->HiB:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->sP:Landroid/widget/RelativeLayout;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Ir:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/uvD;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->TKC:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->EjP:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->vS:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/common/uvD;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Dq:Lcom/bytedance/sdk/openadsdk/common/uvD;

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->EjP:Lcom/bytedance/sdk/component/uA/vS;

    return-object v0
.end method

.method public HiB()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->sP:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Jcg:Lcom/bytedance/sdk/openadsdk/common/TzV;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Dq:Lcom/bytedance/sdk/openadsdk/common/uvD;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/uvD;->Sj()V

    :cond_1
    return-void
.end method

.method public Sj(Landroid/webkit/WebView;ILcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Jcg:Lcom/bytedance/sdk/openadsdk/common/TzV;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj(I)V

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Dq:Lcom/bytedance/sdk/openadsdk/common/uvD;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/common/uvD;->Sj(Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;)V

    :cond_1
    return-void
.end method

.method public TKC()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->HiB:Landroid/widget/ImageView;

    return-object v0
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Jcg:Lcom/bytedance/sdk/openadsdk/common/TzV;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/TzV;->sP()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Fmk;->Dq:Lcom/bytedance/sdk/openadsdk/common/uvD;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/uvD;->sP()V

    :cond_1
    return-void
.end method
