.class public Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
.super Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;


# instance fields
.field protected d:Lcom/mbridge/msdk/mbsignalcommon/windvane/j;

.field protected e:Lcom/mbridge/msdk/mbsignalcommon/windvane/b;

.field protected f:Lcom/mbridge/msdk/mbsignalcommon/windvane/e;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/String;

.field private j:Lcom/mbridge/msdk/mbsignalcommon/windvane/c;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private n:I

.field private o:Z

.field private p:F

.field private q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->o:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->p:F

    iput p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->q:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->o:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->p:F

    iput p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->q:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->o:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->p:F

    iput p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->q:F

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->o:Z

    return p1
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-super {p0}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WindVane/3.0.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->d:Lcom/mbridge/msdk/mbsignalcommon/windvane/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;-><init>(Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->d:Lcom/mbridge/msdk/mbsignalcommon/windvane/j;

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->d:Lcom/mbridge/msdk/mbsignalcommon/windvane/j;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewChromeClient(Lcom/mbridge/msdk/mbsignalcommon/windvane/j;)V

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/k;

    invoke-direct {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/k;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->mWebViewClient:Lcom/mbridge/msdk/mbsignalcommon/base/b;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/h;

    iget-object v1, p0, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/b;

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setSignalCommunication(Lcom/mbridge/msdk/mbsignalcommon/windvane/b;)V

    :cond_1
    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;

    iget-object v1, p0, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;-><init>(Landroid/content/Context;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->f:Lcom/mbridge/msdk/mbsignalcommon/windvane/e;

    return-void
.end method

.method public clearWebView()V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->o:Z

    if-nez v0, :cond_0

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->f:Lcom/mbridge/msdk/mbsignalcommon/windvane/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLocalRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getMraidObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public getRid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalCommunication()Lcom/mbridge/msdk/mbsignalcommon/windvane/b;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/b;

    return-object v0
.end method

.method public getWebViewListener()Lcom/mbridge/msdk/mbsignalcommon/windvane/c;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->j:Lcom/mbridge/msdk/mbsignalcommon/windvane/c;

    return-object v0
.end method

.method public isDestoryed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->o:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->mWebViewClient:Lcom/mbridge/msdk/mbsignalcommon/base/b;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/base/b;->a()Lcom/mbridge/msdk/mbsignalcommon/base/a;

    move-result-object v0

    instance-of v0, v0, Landroid/content/IntentFilter;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "https://play.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->q:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->p:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->q:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    const/high16 v4, -0x40800000    # -1.0f

    const/16 v5, 0x30

    if-gez v3, :cond_1

    mul-float v3, v0, v4

    int-to-float v6, v5

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_5

    :cond_1
    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    int-to-float v3, v5

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_5

    :cond_2
    cmpg-float v0, v1, v2

    if-gez v0, :cond_3

    mul-float/2addr v4, v1

    int-to-float v0, v5

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_5

    :cond_3
    cmpl-float v0, v1, v2

    if-lez v0, :cond_4

    int-to-float v0, v5

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_5

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public registerWindVanePlugin(Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->f:Lcom/mbridge/msdk/mbsignalcommon/windvane/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public release()V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->o:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    const-string v1, "type"

    iget v2, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    const-string v2, "2000135"

    iget-object v3, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2, v3, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 v0, 0x8

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->o:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView$a;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView$a;-><init>(Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setApiManagerContext(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->f:Lcom/mbridge/msdk/mbsignalcommon/windvane/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setApiManagerJSFactory(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->f:Lcom/mbridge/msdk/mbsignalcommon/windvane/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/e;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCampaignEx(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->m:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-void
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->i:Ljava/lang/String;

    return-void
.end method

.method public setLocalRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->l:Ljava/lang/String;

    return-void
.end method

.method public setMraidObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->h:Ljava/lang/Object;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->g:Ljava/lang/Object;

    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->k:Ljava/lang/String;

    return-void
.end method

.method public setSignalCommunication(Lcom/mbridge/msdk/mbsignalcommon/windvane/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/b;

    invoke-interface {p1, p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/b;->a(Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    return-void
.end method

.method public setTempTypeForMetrics(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->n:I

    return-void
.end method

.method public setWebViewChromeClient(Lcom/mbridge/msdk/mbsignalcommon/windvane/j;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->d:Lcom/mbridge/msdk/mbsignalcommon/windvane/j;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewListener(Lcom/mbridge/msdk/mbsignalcommon/windvane/c;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->j:Lcom/mbridge/msdk/mbsignalcommon/windvane/c;

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->d:Lcom/mbridge/msdk/mbsignalcommon/windvane/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/j;->a(Lcom/mbridge/msdk/mbsignalcommon/windvane/c;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->mWebViewClient:Lcom/mbridge/msdk/mbsignalcommon/base/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/base/b;->a(Lcom/mbridge/msdk/mbsignalcommon/windvane/c;)V

    :cond_1
    return-void
.end method

.method public setWebViewTransparent()V
    .locals 0

    invoke-super {p0}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setTransparent()V

    return-void
.end method
