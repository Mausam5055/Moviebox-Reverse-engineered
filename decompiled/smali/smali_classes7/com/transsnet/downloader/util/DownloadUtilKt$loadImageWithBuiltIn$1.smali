.class final Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/DownloadUtilKt;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.util.DownloadUtilKt$loadImageWithBuiltIn$1"
    f = "DownloadUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $imageView:Landroid/widget/ImageView;

.field final synthetic $url:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->$imageView:Landroid/widget/ImageView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->h(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->g(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static final g(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static final h(Landroid/widget/ImageView;)V
    .locals 1

    sget v0, Lcom/transsion/baseui/R$mipmap;->ic_default_video:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;

    iget-object v0, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->$imageView:Landroid/widget/ImageView;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->$imageView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Lcom/transsnet/downloader/util/s;

    invoke-direct {v2, v0, v1}, Lcom/transsnet/downloader/util/s;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/transsnet/downloader/util/DownloadUtilKt$loadImageWithBuiltIn$1;->$imageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/transsnet/downloader/util/t;

    invoke-direct {v0, p1}, Lcom/transsnet/downloader/util/t;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
