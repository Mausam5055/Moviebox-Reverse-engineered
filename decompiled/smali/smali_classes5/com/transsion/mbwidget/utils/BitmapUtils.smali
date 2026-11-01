.class public final Lcom/transsion/mbwidget/utils/BitmapUtils;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/mbwidget/utils/BitmapUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/mbwidget/utils/BitmapUtils;

    invoke-direct {v0}, Lcom/transsion/mbwidget/utils/BitmapUtils;-><init>()V

    sput-object v0, Lcom/transsion/mbwidget/utils/BitmapUtils;->a:Lcom/transsion/mbwidget/utils/BitmapUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/mbwidget/utils/BitmapUtils;Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/mbwidget/utils/BitmapUtils;->e(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final e(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p4, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;

    iget v1, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;-><init>(Lcom/transsion/mbwidget/utils/BitmapUtils;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->I$1:I

    iget p2, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->I$0:I

    iget-object p3, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p4

    move-object v7, v0

    move v0, p2

    move-object p2, v2

    :goto_1
    move-object v2, v7

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p4, 0x0

    move-object v7, p2

    move-object p2, p1

    move p1, p4

    move p4, p3

    move-object p3, v7

    :goto_2
    const/4 v2, 0x0

    if-ge p1, p4, :cond_5

    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v4

    new-instance v5, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$2;

    invoke-direct {v5, p2, p3, v2}, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->L$1:Ljava/lang/Object;

    iput p4, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->I$0:I

    iput p1, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->I$1:I

    iput v3, v0, Lcom/transsion/mbwidget/utils/BitmapUtils$loadImageWithRetry$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_3
    return-object p4

    :catch_1
    move-exception v2

    move-object v7, v0

    move v0, p4

    move-object p4, v2

    goto :goto_1

    :goto_4
    add-int/2addr p1, v3

    sget-object v4, Llg/a;->a:Llg/a$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load Bitmap Failed-attempt-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DeskWidget_"

    invoke-virtual {v4, v6, v5, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v0, :cond_4

    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    move p4, v0

    move-object v0, v2

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method static synthetic f(Lcom/transsion/mbwidget/utils/BitmapUtils;Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x2

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/mbwidget/utils/BitmapUtils;->e(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "decodeResource(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 1

    sget v0, Lcom/transsion/mbwidget/R$mipmap;->ic_default_cover:I

    invoke-virtual {p0, v0}, Lcom/transsion/mbwidget/utils/BitmapUtils;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move/from16 v0, p3

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;

    iget v3, v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;-><init>(Lcom/transsion/mbwidget/utils/BitmapUtils;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v4

    iget v5, v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->label:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v8

    if-gtz v0, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    :goto_1
    move v11, v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v0

    goto :goto_1

    :goto_2
    sget-object v9, Lej/g;->a:Lej/g;

    const/16 v17, 0x7c

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p2

    invoke-static/range {v9 .. v18}, Lej/g;->b(Lej/g;Ljava/lang/String;IZZIZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$bitmap$1;

    move-object/from16 v1, p1

    invoke-direct {v11, v1, v0, v7}, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$bitmap$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    move-result-object v0

    iput v6, v2, Lcom/transsion/mbwidget/utils/BitmapUtils$loadBitmap$1;->label:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/r0;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_5

    return-object v4

    :cond_5
    :goto_3
    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v0, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_6
    :goto_4
    return-object v7
.end method
