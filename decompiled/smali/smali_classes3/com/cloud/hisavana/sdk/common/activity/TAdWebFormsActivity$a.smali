.class Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;
.super Le7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    invoke-direct {p0}, Le7/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Le7/j;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInterceptRequest URL== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAdWebFormsActivity"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/util/r0;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->l(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->l(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->n(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)J

    move-result-wide v1

    sub-long/2addr p1, v1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->l(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
