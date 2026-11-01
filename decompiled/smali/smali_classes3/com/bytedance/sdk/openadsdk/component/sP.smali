.class public Lcom/bytedance/sdk/openadsdk/component/sP;
.super Lcom/bytedance/sdk/openadsdk/component/TKC;


# instance fields
.field private final Fmk:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

.field private Zq:Z

.field private sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

.field private uvD:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Sj;IZLcom/bytedance/sdk/openadsdk/component/Dq/Sj;Lcom/bytedance/sdk/openadsdk/component/vS/sP;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/component/TKC;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Sj;IZLcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/sP;)V
    .locals 0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/sP;)Lcom/bytedance/sdk/openadsdk/component/uA/sP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/sP;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/sP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->Zq:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/sP;)V
    .locals 0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj()V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/sP;)Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->uvD:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    return-object p0
.end method


# virtual methods
.method public EjP()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->getDynamicShowType()I

    move-result v0

    return v0
.end method

.method public HiB()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq()V

    :cond_0
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public Sj()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->aa:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;Lcom/bytedance/sdk/openadsdk/component/uA/sP;)Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/sP$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/sP;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/Dq/uA;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->aa:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;Lcom/bytedance/sdk/openadsdk/component/uA/sP;)Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/sP$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/sP$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/sP;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->vS()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/sP$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/sP$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/sP;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V

    return-void
.end method

.method public Sj(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(IZ)V

    return-void
.end method

.method public Sj(Landroid/view/ViewGroup;)V
    .locals 8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Jcg:I

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/Sj;->Sj(Landroid/view/Window;I)Landroid/util/Pair;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->aa:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    const-string v4, "open_ad"

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/Sj;Lcom/bytedance/sdk/openadsdk/component/vS/sP;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->setTopListener(Lcom/bytedance/sdk/openadsdk/component/vS/Sj;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->setExpressVideoListenerProxy(Lu5/b$b;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/sP$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/sP;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aa(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->EjP:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->uvD:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->EjP:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->uvD:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;->getTopDislike()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uA:Landroid/view/View;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->uvD:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;->getTopSkip()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->uvD:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;->getTopCountDown()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    return-void
.end method

.method public TKC()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->TKC()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym()V

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/sP;->sef:Lcom/bytedance/sdk/openadsdk/component/uA/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA()V

    return-void
.end method
