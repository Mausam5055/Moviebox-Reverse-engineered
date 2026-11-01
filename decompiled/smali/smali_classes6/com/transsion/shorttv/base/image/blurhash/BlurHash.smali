.class public final Lcom/transsion/shorttv/base/image/blurhash/BlurHash;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:F

.field private c:Landroid/util/LruCache;

.field private final d:Lkotlinx/coroutines/n0;


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->a:Landroid/content/Context;

    iput p3, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->b:F

    new-instance p1, Landroid/util/LruCache;

    invoke-direct {p1, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->c:Landroid/util/LruCache;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->d:Lkotlinx/coroutines/n0;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/shorttv/base/image/blurhash/BlurHash;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->e(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/shorttv/base/image/blurhash/BlurHash;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->g(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/shorttv/base/image/blurhash/BlurHash;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/base/image/blurhash/BlurHash;)F
    .locals 0

    iget p0, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->b:F

    return p0
.end method

.method private final e(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final g(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method


# virtual methods
.method public final f(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .locals 9

    const-string v0, "blurString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->d:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/shorttv/base/image/blurhash/BlurHash$execute$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/transsion/shorttv/base/image/blurhash/BlurHash$execute$1;-><init>(Lcom/transsion/shorttv/base/image/blurhash/BlurHash;Ljava/lang/String;Lkotlin/jvm/functions/Function1;IILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
