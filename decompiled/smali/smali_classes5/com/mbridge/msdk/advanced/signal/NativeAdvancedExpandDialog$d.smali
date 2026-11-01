.class Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->c(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/advanced/middle/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->c(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/advanced/middle/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/advanced/middle/a;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    const-string v4, "utf-8"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->a(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;->a:Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->a(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;Lcom/mbridge/msdk/advanced/middle/a;)Lcom/mbridge/msdk/advanced/middle/a;

    return-void
.end method
