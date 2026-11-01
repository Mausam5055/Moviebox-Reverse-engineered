.class public final Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;->this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;->this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooO0Oo()V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;->this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->access$setMLoadErrorFlag$p(Lcom/cloud/tmc/miniapp/ui/WebViewActivity;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/WebViewActivity$onReceivedError$2;->this$0:Lcom/cloud/tmc/miniapp/ui/WebViewActivity;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getWb()Lcom/cloud/tmc/kernel/render/IWebView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IWebView;->reload()V

    :cond_1
    return-void
.end method
