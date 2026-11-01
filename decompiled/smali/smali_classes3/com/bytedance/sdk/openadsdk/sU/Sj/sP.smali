.class public Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;
.super Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;


# instance fields
.field private final EjP:Landroid/widget/FrameLayout;

.field private HiB:Landroid/widget/FrameLayout;

.field private TKC:Lcom/bytedance/sdk/openadsdk/aa/vS;

.field private volatile sP:Z

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZLandroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZLandroid/widget/FrameLayout;)V

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->EjP:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->vS:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sP(Z)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result p4

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result p1

    const/4 p5, 0x1

    if-ne p3, p5, :cond_0

    if-gt p4, p1, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p3, p2, p2, p4, p1}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_0
    const/4 p5, 0x2

    if-ne p3, p5, :cond_2

    if-le p4, p1, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p3, p2, p2, p4, p1}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p3, p2, p2, p1, p4}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;)Lcom/bytedance/sdk/openadsdk/aa/vS;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->TKC:Lcom/bytedance/sdk/openadsdk/aa/vS;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->sP:Z

    return p1
.end method


# virtual methods
.method public Dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->vS:Ljava/lang/String;

    return-object v0
.end method

.method public Jcg()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;)V

    const/4 v1, 0x1

    invoke-super {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(ZLcom/bytedance/sdk/openadsdk/aa/vS;)V

    return-void
.end method

.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->HiB:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj()V

    return-void
.end method

.method public Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/aa/vS;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->HiB:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->EjP:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->TKC:Lcom/bytedance/sdk/openadsdk/aa/vS;

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->sP:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->TKC:Lcom/bytedance/sdk/openadsdk/aa/vS;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/aa/vS;->Sj()V

    :cond_0
    return-void
.end method
