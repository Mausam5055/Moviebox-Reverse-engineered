.class public final Lcom/tn/tranpay/fragment/TranPayWebFragment$c;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/TranPayWebFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/tranpay/fragment/TranPayWebFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->d(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V

    return-void
.end method

.method private final b(Landroid/net/Uri;)Z
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return v3

    :cond_3
    const-string v4, "browser_fallback_url"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_4

    const-string v5, "market://"

    invoke-static {v4, v5, v1, v0, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object v3, Lcom/tn/tranpay/helper/PayUtils;->a:Lcom/tn/tranpay/helper/PayUtils;

    invoke-static {v3, p1, v1, v0, v2}, Lcom/tn/tranpay/helper/PayUtils;->r(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-eqz v4, :cond_5

    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->d0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return v3

    :goto_2
    sget-object v3, Lai/a;->a:Lai/a;

    iget-object v4, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v4}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> handleIntentScheme() --> \u5904\u7406\u5931\u8d25: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2, v0, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_6
    return v1
.end method

.method private final c(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v3, "intent"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2}, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->b(Landroid/net/Uri;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p2

    goto/16 :goto_1

    :cond_1
    const-string v3, "http"

    const-string v4, "https"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->i0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lai/a;->a:Lai/a;

    iget-object v3, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v3}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> shouldOverrideUrlLoadingInner() --> \u5df2\u8df3\u8f6c\u8fc7\u5916\u90e8 deeplink\uff0c\u5ffd\u7565\u91cd\u590d\u89e6\u53d1: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, v2, p1, v2}, Lai/a;->k(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v1

    :cond_2
    sget-object v0, Lcom/tn/tranpay/helper/PayUtils;->a:Lcom/tn/tranpay/helper/PayUtils;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uri.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0, v1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->m0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Z)V

    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->j0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "gopay"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0, v1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->o0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Z)V

    sget-object v0, Lai/a;->a:Lai/a;

    iget-object v3, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v3}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> shouldOverrideUrlLoadingInner() --> gopay \u6210\u529f\u8df3\u8f6c\uff0c\u5173\u95ed\u9875\u9762: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, v2, p1, v2}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->g()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    new-instance v3, Lcom/tn/tranpay/fragment/p;

    invoke-direct {v3, v0}, Lcom/tn/tranpay/fragment/p;-><init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {p2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lai/a;->a:Lai/a;

    iget-object v3, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v3}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> shouldOverrideUrlLoadingInner() --> \u65e0\u6cd5\u5904\u7406\u81ea\u5b9a\u4e49\u534f\u8bae: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\uff0c\u5df2\u963b\u6b62 WebView \u52a0\u8f7d"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, v2, p1, v2}, Lai/a;->k(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return v1

    :cond_5
    return v0

    :goto_1
    sget-object v0, Lai/a;->a:Lai/a;

    iget-object v3, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v3}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> shouldOverrideUrlLoadingInner() --> \u89e3\u6790\u5931\u8d25: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, v2, p1, v2}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v1
.end method

.method private static final d(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget-object p1, Lai/a;->a:Lai/a;

    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> mWebViewClient --> onPageFinished() --> url = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lai/a;->c(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->h0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {p1, p2}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->k0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-virtual {v0}, Lcom/tn/tranpay/fragment/BaseFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tn/tranpay/report/c;->j(Z)V

    :goto_0
    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-virtual {p1}, Lcom/tn/tranpay/fragment/BaseFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "duration"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> mWebViewClient --> onPageFinished() --> \u672a\u8bb0\u5f55\u8bf7\u6c42\u52a0\u8f7d\u7684\u8017\u65f6 --> url = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1, v2, v1}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    const-string p3, "onPageStarted()"

    invoke-static {p1, p2, p3}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->b0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->g0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 p3, 0x8

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-virtual {p1}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgh/c;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lgh/c;->f:Landroid/widget/ProgressBar;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->f0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-virtual {p1}, Lcom/tn/tranpay/fragment/BaseFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Z)V

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

    sget-object p1, Lai/a;->a:Lai/a;

    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

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

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, p3, v0, p3}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->l0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Z)V

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

    sget-object p1, Lai/a;->a:Lai/a;

    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v0}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

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

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, p3, v0, p3}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request.url.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "shouldInterceptRequest()"

    invoke-static {v0, v1, v2}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->b0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 5

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lai/a;->a:Lai/a;

    iget-object v2, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    invoke-static {v2}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->c0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> mWebViewClient --> shouldOverrideUrlLoading() --> url = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lai/a;->c(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/tn/tranpay/fragment/TranPayWebFragment$c;->c(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
