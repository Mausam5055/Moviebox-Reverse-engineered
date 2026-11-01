.class Lcom/cloud/hisavana/sdk/o$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient$OverrideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/o;->u(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/cloud/hisavana/sdk/o;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o$d;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/o$d;->a:Z

    return-void
.end method


# virtual methods
.method public OnOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o$d;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/o;->x(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clone()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAdChoiceClickUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0, p2}, Lcom/cloud/hisavana/sdk/N0;->m(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return v2

    :cond_0
    return v0
.end method

.method public OnOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$d;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/o;->x(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clone()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAdChoiceClickUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, p2, v1}, Lcom/cloud/hisavana/sdk/N0;->m(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return v2
.end method

.method public onError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/o$d;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o$d;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/o;->b(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/p3;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o$d;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/o;->b(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/p3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->P()V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    const-string p3, "s_err_code"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o$d;->b:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/o;->b(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/p3;

    move-result-object p2

    sget-object p3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_LOAD_WEB_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p2, p3, p1}, Lcom/cloud/hisavana/sdk/p3;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/o$d;->a:Z

    :cond_0
    return-void
.end method
