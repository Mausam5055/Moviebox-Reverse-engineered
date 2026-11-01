.class public abstract Lcom/transsion/shorttv/base/image/blurhash/c;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/base/image/blurhash/c;->c(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/bumptech/glide/RequestBuilder;Ljava/lang/String;IILcom/transsion/shorttv/base/image/blurhash/BlurHash;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurHash"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Lcom/transsion/shorttv/base/image/blurhash/b;

    invoke-direct {v0, p0, p5}, Lcom/transsion/shorttv/base/image/blurhash/b;-><init>(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/shorttv/base/image/blurhash/BlurHash;->f(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method private static final c(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 1

    const-string v0, "drawable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
