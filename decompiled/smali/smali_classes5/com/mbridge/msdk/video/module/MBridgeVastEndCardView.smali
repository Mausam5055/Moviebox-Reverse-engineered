.class public Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;
.super Lcom/mbridge/msdk/video/module/MBridgeBaseView;


# instance fields
.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private e()Z
    .locals 5

    const-string v0, "mbridge_rl_content"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->m:Landroid/view/ViewGroup;

    const-string v0, "mbridge_iv_vastclose"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->n:Landroid/view/View;

    const-string v0, "mbridge_iv_vastok"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->m:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->n:Landroid/view/View;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->isNotNULL([Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->setMatchParent()V

    const-string v0, "mbridge_reward_endcard_vast_bg"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected d()V
    .locals 2

    invoke-super {p0}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->d()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->n:Landroid/view/View;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView$a;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->o:Landroid/view/View;

    new-instance v1, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView$b;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView$b;-><init>(Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const-string p1, "mbridge_reward_endcard_vast"

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->findLayout(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->e:Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->d()V

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/MBridgeVastEndCardView;->f()V

    :cond_0
    return-void
.end method

.method public notifyShowListener()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v1, 0x6f

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    return-void
.end method
