.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/aa/uA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$Sj;
    }
.end annotation


# instance fields
.field private volatile Dq:Z

.field private EjP:Landroid/widget/ImageView;

.field private HiB:Z

.field private final Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Sj:Landroid/app/Activity;

.field private TEQ:I

.field private TKC:Lcom/bytedance/sdk/component/uA/vS;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final uA:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private vS:Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj:Landroid/app/Activity;

    return-void
.end method

.method private EjP()V
    .locals 2

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method private HiB()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->HiB()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setDisplayZoomControls(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private Sj(II)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, v0

    int-to-float v2, v1

    div-float v2, p2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    mul-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int v0, p1

    goto :goto_0

    :cond_1
    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int v1, p1

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private Sj(ILjava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Dq:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Dq:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Ym()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    :goto_1
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const-string p2, "load_vast_endcard_success"

    const/4 v0, 0x0

    invoke-static {p1, v6, p2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$2;

    const-string v3, "load_vast_endcard_fail"

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setMixedContentMode(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setDatabaseEnabled(Z)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/uA/vS;->setCacheMode(I)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setSupportZoom(Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setBuiltInZoomControls(Z)V

    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setUseWideViewPort(Z)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private Sj(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 9

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->Sj(Lcom/bytedance/sdk/openadsdk/aa/uA;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Jcg()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TEQ:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$1;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v1

    const-string v2, "VAST_END_CARD"

    invoke-direct {v0, p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC()Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->HiB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->HiB:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Dq:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP()I

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->TKC()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj(II)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->TKC()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/sP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$Sj;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v5, v1, p0, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ$Sj;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v2, v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    sget v2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->uA:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/uA/vS;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->HiB()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->EjP()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->HiB:Z

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/uA/vS;->a_(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v5, v0

    goto :goto_0

    :cond_3
    move-object v5, v1

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    const-string v1, "UTF -8"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v6, "text/html"

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/component/uA/vS;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/HiB;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/TKC;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->HiB:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Jcg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC()Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg()J

    move-result-wide v1

    goto :goto_1

    :cond_3
    const-wide/16 v1, -0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP(J)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public TKC()Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->HiB:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->EjP:Landroid/widget/ImageView;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return v2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->onClick(Landroid/view/View;)V

    return v2

    :cond_2
    return v1
.end method

.method public sP()V
    .locals 1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->sP(Lcom/bytedance/sdk/openadsdk/aa/uA;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/JcM;->Sj(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public sP(I)V
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TEQ:I

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->uA(J)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->Jcg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Dq(J)V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TEQ:I

    return-void
.end method
