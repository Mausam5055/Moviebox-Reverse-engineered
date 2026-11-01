.class public final Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;-><init>(Lcom/cloud/hisavana/sdk/common/widget/webview/ActionWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILjava/lang/String;JLcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001c\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2",
        "Landroid/webkit/WebChromeClient;",
        "onProgressChanged",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "newProgress",
        "",
        "onReceivedTitle",
        "title",
        "",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->setProcess(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getProcess()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x64

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->setSpendEndTime(J)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getCallback()Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;->onProgressChanged(I)V

    :cond_1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedTitle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$1$2;->this$0:Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;->getCallback()Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry$PreloadCallback;->onReceivedTitle(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
