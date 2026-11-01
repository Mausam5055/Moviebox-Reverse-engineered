.class public Lcom/bumptech/glide/integration/webp/WebpGlideLibraryModule;
.super Lcom/bumptech/glide/module/LibraryGlideModule;


# annotations
.annotation build Lcom/bumptech/glide/annotation/GlideModule;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/module/LibraryGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bumptech/glide/Glide;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object p2

    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;

    invoke-virtual {p3}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1, p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    new-instance v3, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;

    invoke-direct {v3, p2, v1}, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    new-instance v4, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferBitmapWebpDecoder;

    invoke-direct {v4, v2}, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferBitmapWebpDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;)V

    new-instance v5, Lcom/bumptech/glide/integration/webp/decoder/StreamBitmapWebpDecoder;

    invoke-direct {v5, v2, p2}, Lcom/bumptech/glide/integration/webp/decoder/StreamBitmapWebpDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;

    invoke-direct {v2, p1, p2, v1}, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    const-string p1, "Bitmap"

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {p3, p1, v1, v6, v4}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p3

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {p3, p1, v7, v6, v5}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p3

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v8, v0, v4}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    const-string v4, "BitmapDrawable"

    const-class v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3, v4, v1, v9, v8}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p3

    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    invoke-direct {v8, v0, v5}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-virtual {p3, v4, v7, v9, v8}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p3

    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferAnimatedBitmapDecoder;

    invoke-direct {v0, v3}, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferAnimatedBitmapDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;)V

    invoke-virtual {p3, p1, v1, v6, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p3

    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/StreamAnimatedBitmapDecoder;

    invoke-direct {v0, v3}, Lcom/bumptech/glide/integration/webp/decoder/StreamAnimatedBitmapDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;)V

    invoke-virtual {p3, p1, v7, v6, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p3, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    invoke-virtual {p1, v1, p3, v2}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/StreamWebpDecoder;

    invoke-direct {v0, v2, p2}, Lcom/bumptech/glide/integration/webp/decoder/StreamWebpDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-virtual {p1, v7, p3, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableEncoder;

    invoke-direct {p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableEncoder;-><init>()V

    invoke-virtual {p1, p3, p2}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    return-void
.end method
