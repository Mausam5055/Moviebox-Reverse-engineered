.class public Lcom/google/android/exoplayer2/mediacodec/u$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/u;
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
.method public a(Lcom/google/android/exoplayer2/mediacodec/l$a;)Lcom/google/android/exoplayer2/mediacodec/l;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/u$b;->b(Lcom/google/android/exoplayer2/mediacodec/l$a;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "configureCodec"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/m0;->a(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->b:Landroid/media/MediaFormat;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->d:Landroid/view/Surface;

    iget-object v4, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->e:Landroid/media/MediaCrypto;

    iget p1, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->f:I

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    const-string p1, "startCodec"

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/m0;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/u;

    invoke-direct {p1, v1, v0}, Lcom/google/android/exoplayer2/mediacodec/u;-><init>(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/u$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_0
    throw p1
.end method

.method protected b(Lcom/google/android/exoplayer2/mediacodec/l$a;)Landroid/media/MediaCodec;
    .locals 2

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->a:Lcom/google/android/exoplayer2/mediacodec/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/l$a;->a:Lcom/google/android/exoplayer2/mediacodec/m;

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/m;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCodec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/m0;->a(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    return-object p1
.end method
