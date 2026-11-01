.class public final synthetic Lcom/transsion/shorttv/base/image/blurhash/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/RequestBuilder;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/base/image/blurhash/b;->a:Lcom/bumptech/glide/RequestBuilder;

    iput-object p2, p0, Lcom/transsion/shorttv/base/image/blurhash/b;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/base/image/blurhash/b;->a:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/transsion/shorttv/base/image/blurhash/b;->b:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, v1, p1}, Lcom/transsion/shorttv/base/image/blurhash/c;->a(Lcom/bumptech/glide/RequestBuilder;Lkotlin/jvm/functions/Function1;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
