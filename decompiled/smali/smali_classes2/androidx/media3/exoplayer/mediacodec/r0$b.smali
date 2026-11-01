.class public Landroidx/media3/exoplayer/mediacodec/r0$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroidx/media3/exoplayer/mediacodec/t;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/r0$b;->b(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "configureCodec"

    invoke-static {v2}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->d:Landroid/view/Surface;

    if-nez v2, :cond_0

    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->a:Landroidx/media3/exoplayer/mediacodec/w;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/mediacodec/w;->k:Z

    if-eqz v3, :cond_0

    sget v3, Landroidx/media3/common/util/a1;->a:I

    const/16 v4, 0x23

    if-lt v3, v4, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_0
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->b:Landroid/media/MediaFormat;

    iget-object v5, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->e:Landroid/media/MediaCrypto;

    invoke-virtual {v1, v4, v2, v5, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    const-string v2, "startCodec"

    invoke-static {v2}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    new-instance v2, Landroidx/media3/exoplayer/mediacodec/r0;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->f:Landroidx/media3/exoplayer/mediacodec/p;

    invoke-direct {v2, v1, p1, v0}, Landroidx/media3/exoplayer/mediacodec/r0;-><init>(Landroid/media/MediaCodec;Landroidx/media3/exoplayer/mediacodec/p;Landroidx/media3/exoplayer/mediacodec/r0$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_1
    throw p1
.end method

.method protected b(Landroidx/media3/exoplayer/mediacodec/t$a;)Landroid/media/MediaCodec;
    .locals 2

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->a:Landroidx/media3/exoplayer/mediacodec/w;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/t$a;->a:Landroidx/media3/exoplayer/mediacodec/w;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/w;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCodec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    return-object p1
.end method
