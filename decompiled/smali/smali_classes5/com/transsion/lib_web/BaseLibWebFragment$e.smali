.class public final Lcom/transsion/lib_web/BaseLibWebFragment$e;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/BaseLibWebFragment;->v0(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/lib_web/BaseLibWebFragment;


# direct methods
.method constructor <init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$e;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$e;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0}, Lcom/transsion/lib_web/BaseLibWebFragment;->G0()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$e;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->H0(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$e;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->X0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$e;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->I0(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    iget-object v0, p0, Lcom/transsion/lib_web/BaseLibWebFragment$e;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/lib_web/BaseLibWebFragment;->J0(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
