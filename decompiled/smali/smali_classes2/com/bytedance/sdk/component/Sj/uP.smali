.class public Lcom/bytedance/sdk/component/Sj/uP;
.super Lcom/bytedance/sdk/component/Sj/Sj;


# static fields
.field static final synthetic TEQ:Z = true


# instance fields
.field protected Dq:Ljava/lang/String;

.field protected uA:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/Sj;-><init>()V

    return-void
.end method

.method private Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/Sj/Sj;->vS:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/component/Sj/uP$1;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/component/Sj/uP$1;-><init>(Lcom/bytedance/sdk/component/Sj/uP;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/component/Sj/Sj;->EjP:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method protected EjP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/uP;->uA:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uP;->Dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/component/Sj/TEQ;)Landroid/content/Context;
    .locals 1

    iget-object v0, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->HiB:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "WebView cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/uP;->uA:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Sj(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uP;->Dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "._handleMessageFromToutiao("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Sj/uP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    iget-object v3, p2, Lcom/bytedance/sdk/component/Sj/uvD;->Dq:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p2, p2, Lcom/bytedance/sdk/component/Sj/uvD;->Dq:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iframe[src=\"%s\""

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v4, "javascript:(function(){   const iframe = document.querySelector(atob(\'%s\'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, atob(\'%s\'));   }})()"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v0

    aput-object p1, v5, v1

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj/uP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V

    return-void
.end method

.method protected TKC()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/Sj/uP;->TEQ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/uP;->uA:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/uP;->uA:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uP;->Dq:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/Sj/Sj;->invokeMethod(Ljava/lang/String;)V

    return-void
.end method

.method protected sP()V
    .locals 0

    invoke-super {p0}, Lcom/bytedance/sdk/component/Sj/Sj;->sP()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/uP;->EjP()V

    return-void
.end method

.method protected sP(Lcom/bytedance/sdk/component/Sj/TEQ;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface",
            "AddJavascriptInterface"
        }
    .end annotation

    iget-object v0, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uP;->uA:Landroid/webkit/WebView;

    iget-object v0, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uP;->Dq:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->sef:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/uP;->TKC()V

    :cond_0
    return-void
.end method
