.class public final Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->j0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {p1, p2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->k0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    const-string p3, "onPageStarted()"

    invoke-static {p1, p2, p3}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->i0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 p3, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrn/b;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lrn/b;->f:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->h0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {p1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->h0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->l0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    sget-object p1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {v0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->e0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> mWebViewClient --> onReceivedError() --> url = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " --> error = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->l0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Z)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    sget-object p1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {v0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->e0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> mWebViewClient --> onReceivedHttpError() --> url = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " --> errorResponse = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->n0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Z)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {v0}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->f0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {v0, v1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->m0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Landroid/webkit/WebView;)V

    :cond_0
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    iget-object v2, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-static {v2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->e0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lgm/j;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> renderer gone, didCrash = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", close cashier"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    sget-object v0, Lgm/n;->a:Lgm/n;

    const-string v2, "payment"

    invoke-virtual {v0, p1, p2, v2}, Lgm/n;->c(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v1, p2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_2
    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "shouldInterceptRequest()"

    invoke-static {v0, v1, v2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment$c;->a:Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "tel:"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object p2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-static {v1}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->e0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> mWebViewClient --> shouldOverrideUrlLoading() --> \u4f7f\u7528Intent\u6765\u5904\u7406\u62e8\u53f7\u8bf7\u6c42 --> url = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v3

    :cond_1
    const-string v2, "shouldOverrideUrlLoading()"

    invoke-static {v1, v0, v2}, Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;->d0(Lcom/transsion/payment/lib/strategy/ui/PayWebFragment;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method
