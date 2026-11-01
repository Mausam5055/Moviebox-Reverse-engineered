.class public Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/EjP;
.implements Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
        "Landroid/view/View;",
        ">;",
        "Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;"
    }
.end annotation


# instance fields
.field private Dq:Landroid/widget/FrameLayout;

.field private EjP:Ljava/lang/String;

.field private Fmk:I

.field private final HiB:Landroid/content/Context;

.field private final Jcg:I

.field Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final TEQ:I

.field private TKC:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private Ym:Ljava/lang/String;

.field private Zq:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

.field private aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

.field private sP:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

.field private sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

.field private uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Ym:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result p5

    if-eqz p5, :cond_0

    const-string p5, "fullscreen_interstitial_ad"

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Ym:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->vS:I

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Jcg:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->TEQ:I

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Fmk:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->vS()V

    return-void
.end method

.method private Dq()Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->sP()Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Ym:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$sP;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    return-object v0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Ym:Ljava/lang/String;

    return-object p0
.end method

.method private Jcg()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v2, 0x800053

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->TEQ:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    return-object p0
.end method

.method private vS()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->vS:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Jcg:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->vS:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Jcg:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq()Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Jcg()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Snq:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    :cond_1
    sget-object v2, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    if-eqz v1, :cond_3

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_3

    check-cast v1, Landroid/app/Activity;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->IPx:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TT:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sP:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->uvD()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public HiB()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public Sj()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Sj(II)V
    .locals 1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    if-eqz p2, :cond_0

    const-string v0, "render fail"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Zq:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    const/16 v1, 0x6a

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "dsp data is null"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->aa:Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;->sU()V

    return-void

    :cond_3
    :goto_0
    const-string v0, "material null"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nru()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Zq:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/uP;)V
    .locals 1

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sP:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->EjP:Ljava/lang/String;

    return-void
.end method

.method public TKC()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public e_()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sef;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->vS:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(D)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->HiB:Landroid/content/Context;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Jcg:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(D)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->sef:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    :cond_0
    return-void
.end method

.method public sP()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$Sj;->Dq:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
