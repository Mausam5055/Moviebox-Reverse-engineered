.class Lcom/cloud/hisavana/sdk/common/activity/b$a;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/b;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 10

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x64

    if-ne p2, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->a:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object v1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->d(Lcom/cloud/hisavana/sdk/common/activity/b;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->k(Lcom/cloud/hisavana/sdk/common/activity/b;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_8

    if-ne p2, v2, :cond_8

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setSpendEndTime(J)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-static {p1, v1}, Lcom/cloud/hisavana/sdk/common/activity/b;->e(Lcom/cloud/hisavana/sdk/common/activity/b;Z)Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getRedirectType()I

    move-result v5

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getSpendTime()J

    move-result-wide v6

    const/16 v4, 0x64

    invoke-static/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getRedirectType()I

    move-result v4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    if-eqz p2, :cond_5

    const-string v5, "fail"

    goto :goto_1

    :cond_5
    const-string v5, "success"

    :goto_1
    if-eqz p2, :cond_6

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getErrorType()Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v6, p1

    goto :goto_3

    :cond_6
    const-string p1, "succeed"

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-boolean p2, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->m:Z

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getErrorCode()I

    move-result p1

    :goto_4
    move v7, p1

    goto :goto_5

    :cond_7
    const/16 p1, 0x1f40

    goto :goto_4

    :goto_5
    const-wide/16 v8, -0x1

    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/b;->j(I)V

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->p(Lcom/cloud/hisavana/sdk/common/activity/b;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->k(Lcom/cloud/hisavana/sdk/common/activity/b;)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p1, 0x32

    if-lt p2, p1, :cond_9

    if-ge p2, v2, :cond_9

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->setSpendEndTime(J)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-static {p1, v1}, Lcom/cloud/hisavana/sdk/common/activity/b;->l(Lcom/cloud/hisavana/sdk/common/activity/b;Z)Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getWebId()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getRedirectType()I

    move-result v4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->r:Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/WebPageBean;->getSpendTime()J

    move-result-wide v5

    const/16 v3, 0x32

    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    :cond_9
    :goto_6
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedTitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TBaseLandingActivity"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$a;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/activity/b;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
