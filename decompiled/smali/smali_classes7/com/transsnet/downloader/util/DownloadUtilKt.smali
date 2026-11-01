.class public abstract Lcom/transsnet/downloader/util/DownloadUtilKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;

    invoke-direct {v7, p0, p2, p1, v3}, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {v1, p0}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object p0

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p0, p3}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method
