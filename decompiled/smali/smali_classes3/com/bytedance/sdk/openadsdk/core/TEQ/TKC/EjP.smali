.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/Ym;
.implements Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/sP/Ym;",
        "Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/TKC<",
        "Lcom/bytedance/sdk/component/uA/vS;",
        ">;"
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field private HiB:Ljava/lang/String;

.field private Jcg:I

.field private Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/component/uA/vS;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Jcg:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Jcg:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Jcg:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/Zq$Sj;->Sj(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->HiB:Ljava/lang/String;

    return-void
.end method

.method private Dq()V
    .locals 7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/sP;->Sj(FFZLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/TKC;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Ym;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-void
.end method

.method private Jcg()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/component/adexpress/HiB/sP;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/webkit/WebView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->sef()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v2, 0x1bca

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setUserAgentString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMixedContentMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setDomStorageEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setDatabaseEnabled(Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setSupportZoom(Z)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setBuiltInZoomControls(Z)V

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setUseWideViewPort(Z)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public synthetic EjP()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->vS()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    return-object v0
.end method

.method public HiB()Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-object v0
.end method

.method public Sj()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Sj:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Jcg()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->Dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/Wjd;->Sj(Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/utils/Wjd$sP;Ljava/util/List;)V

    return-void
.end method

.method public Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V
    .locals 0

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;

    return-void
.end method

.method public Sj(Z)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "visibleState"

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v1, "visibleStateChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->HiB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->HiB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->a_(Ljava/lang/String;)V

    return-void
.end method

.method public vS()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/EjP;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    return-object v0
.end method
