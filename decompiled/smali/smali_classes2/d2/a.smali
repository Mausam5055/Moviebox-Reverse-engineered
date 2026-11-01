.class public final Ld2/a;
.super Landroidx/media3/decoder/SimpleDecoder;

# interfaces
.implements Ld2/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/a$b;,
        Ld2/a$c;
    }
.end annotation


# instance fields
.field private final o:Ld2/a$b;


# direct methods
.method private constructor <init>(Ld2/a$b;)V
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [Landroidx/media3/decoder/DecoderInputBuffer;

    new-array v0, v0, [Ld2/d;

    invoke-direct {p0, v1, v0}, Landroidx/media3/decoder/SimpleDecoder;-><init>([Landroidx/media3/decoder/DecoderInputBuffer;[Landroidx/media3/decoder/h;)V

    iput-object p1, p0, Ld2/a;->o:Ld2/a$b;

    return-void
.end method

.method synthetic constructor <init>(Ld2/a$b;Ld2/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ld2/a;-><init>(Ld2/a$b;)V

    return-void
.end method

.method static synthetic t([BI)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Ld2/a;->x([BI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Ld2/a;Landroidx/media3/decoder/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/decoder/SimpleDecoder;->p(Landroidx/media3/decoder/h;)V

    return-void
.end method

.method private static x([BI)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lw1/b;->a([BILandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/exoplayer/image/ImageDecoderException;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    new-instance v1, Landroidx/media3/exoplayer/image/ImageDecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not decode image data with BitmapFactory. (data.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", input length = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic dequeueOutputBuffer()Ld2/d;
    .locals 1

    invoke-super {p0}, Landroidx/media3/decoder/SimpleDecoder;->k()Landroidx/media3/decoder/h;

    move-result-object v0

    check-cast v0, Ld2/d;

    return-object v0
.end method

.method protected e()Landroidx/media3/decoder/DecoderInputBuffer;
    .locals 2

    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic f()Landroidx/media3/decoder/h;
    .locals 1

    invoke-virtual {p0}, Ld2/a;->v()Ld2/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic g(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
    .locals 0

    invoke-virtual {p0, p1}, Ld2/a;->w(Ljava/lang/Throwable;)Landroidx/media3/exoplayer/image/ImageDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapFactoryImageDecoder"

    return-object v0
.end method

.method protected bridge synthetic h(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/h;Z)Landroidx/media3/decoder/DecoderException;
    .locals 0

    check-cast p2, Ld2/d;

    invoke-virtual {p0, p1, p2, p3}, Ld2/a;->y(Landroidx/media3/decoder/DecoderInputBuffer;Ld2/d;Z)Landroidx/media3/exoplayer/image/ImageDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected v()Ld2/d;
    .locals 1

    new-instance v0, Ld2/a$a;

    invoke-direct {v0, p0}, Ld2/a$a;-><init>(Ld2/a;)V

    return-object v0
.end method

.method protected w(Ljava/lang/Throwable;)Landroidx/media3/exoplayer/image/ImageDecoderException;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/image/ImageDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Landroidx/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected y(Landroidx/media3/decoder/DecoderInputBuffer;Ld2/d;Z)Landroidx/media3/exoplayer/image/ImageDecoderException;
    .locals 2

    :try_start_0
    iget-object p3, p1, Landroidx/media3/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v0, p0, Ld2/a;->o:Ld2/a$b;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    invoke-interface {v0, v1, p3}, Ld2/a$b;->a([BI)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p2, Ld2/d;->a:Landroid/graphics/Bitmap;

    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    iput-wide v0, p2, Landroidx/media3/decoder/h;->timeUs:J
    :try_end_0
    .catch Landroidx/media3/exoplayer/image/ImageDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method
