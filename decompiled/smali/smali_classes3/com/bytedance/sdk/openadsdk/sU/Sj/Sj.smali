.class public Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$Sj;
    }
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field private final EjP:I

.field private volatile Fmk:Z

.field private final HiB:Landroid/widget/FrameLayout;

.field private Jcg:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field protected Sj:Lcom/bytedance/sdk/component/uA/vS;

.field private TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

.field private final TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private TzV:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$Sj;

.field private Ym:Lcom/bytedance/sdk/openadsdk/aa/vS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aa:Z

.field private dNu:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

.field private final sP:Landroid/content/Context;

.field private volatile sef:Z

.field private final uA:Ljava/lang/String;

.field private uvD:Lcom/bytedance/sdk/openadsdk/core/widget/uA;

.field private vS:Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZLandroid/widget/FrameLayout;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZLandroid/widget/FrameLayout;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZLandroid/widget/FrameLayout;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->aa:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->EjP:I

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Dq:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    move-result p1

    if-eqz p6, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sP(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Dq:Ljava/lang/String;

    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Fmk(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->uA:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB:Landroid/widget/FrameLayout;

    invoke-direct {p0, p5}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(Landroid/widget/FrameLayout;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(I)V

    invoke-direct {p0, p4}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg()V

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Fmk:Z

    return p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Dq:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    return-object p0
.end method

.method private Jcg()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$5;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$6;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$6;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const/16 v3, 0x1bca

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/uA/vS;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMixedContentMode(I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-object p0
.end method

.method private Sj(I)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "click_scence"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sP:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Dq:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-void
.end method

.method private Sj(Landroid/widget/FrameLayout;)V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->HiB()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/uA/vS;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/uA/vS;->setTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hif()Lcom/bytedance/sdk/component/uA/sP/Sj;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/uA/vS;->setMaterialMeta(Lcom/bytedance/sdk/component/uA/sP/Sj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setLandingPage(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/uA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/uA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/uA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Dq:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->dNu:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/sP/Sj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/uA;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eEJ()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->pR()Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "is_new_playable"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pag_json_data"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->aa:Z

    return p1
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private TKC(Z)V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cid"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "log_extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->RiZ()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Jcg$Sj;)V

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)V

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/sU/TKC;Lcom/bytedance/sdk/openadsdk/sU/Sj;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->uA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Jcg(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->HiB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->EjP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Ym(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->EjP(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sU(Lcom/bytedance/sdk/openadsdk/core/model/sU;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(J)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sU(Lcom/bytedance/sdk/openadsdk/core/model/sU;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(J)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    const-string v0, "sdkEdition"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->TKC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HiB(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vS(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/HiB;->sP(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(F)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Ym()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "subscribe_app_ad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "adInfo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "webview_time_track"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "download_app_ad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP()Lcom/bytedance/sdk/component/Sj/dNu;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$4;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$4;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v2, v1, v3}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->uA:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/aa/vS;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Ym:Lcom/bytedance/sdk/openadsdk/aa/vS;

    return-object p0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/widget/uA;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/uA;

    return-object p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->aa:Z

    return p0
.end method


# virtual methods
.method public EjP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Mts()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    return-void
.end method

.method public HiB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Fmk:Z

    return v0
.end method

.method public Sj()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sef:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->EjP:I

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Yf()V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz v3, :cond_4

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "webview_state"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->xD()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "has_loading"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "is_new_playable"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pag_json_data"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "playable_event"

    const-string v1, "start_show_plb"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Dq:Ljava/lang/String;

    const-string v4, "playable_track"

    invoke-static {v0, v1, v4, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vS(Z)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    return-void
.end method

.method public Sj(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sef:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sef:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Fmk:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Fmk:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Fmk:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(I)V

    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Fmk:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TzV:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$Sj;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$Sj;->Sj()V

    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$7;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/Sj;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->dNu:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->uvD:Lcom/bytedance/sdk/openadsdk/core/widget/uA;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/uA;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/sP/Sj;)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TzV:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$Sj;

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    :cond_0
    return-void
.end method

.method public Sj(ZLcom/bytedance/sdk/openadsdk/aa/vS;)V
    .locals 1

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Ym:Lcom/bytedance/sdk/openadsdk/aa/vS;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->sP(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->uA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/uA/vS;->a_(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->vS(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->uA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->TKC(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    :cond_0
    return-void
.end method

.method public sP(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TEQ:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->HiB(Z)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    :cond_0
    return-void
.end method

.method public vS()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->vS()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
