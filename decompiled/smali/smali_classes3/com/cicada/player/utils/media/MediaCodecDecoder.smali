.class public Lcom/cicada/player/utils/media/MediaCodecDecoder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/cicada/player/utils/NativeUsed;
.end annotation


# static fields
.field private static CODEC_CATEGORY_AUDIO:I = 0x1

.field private static CODEC_CATEGORY_VIDEO:I = 0x0

.field private static final ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MediaCodecDecoder"

.field private static final TRY_AGAIN:I = -0xb

.field static blackCodecPrefix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static blackCodecSuffix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final queLock:Ljava/lang/Object;


# instance fields
.field private forceInsecureDecoder:Z

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCodecCateGory:I

.field private mCodecSpecificDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMime:Ljava/lang/String;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mediaCrypto:Landroid/media/MediaCrypto;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->queLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecPrefix:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecSuffix:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecSpecificDataMap:Ljava/util/Map;

    sget v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->CODEC_CATEGORY_VIDEO:I

    iput v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecCateGory:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    iput-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->forceInsecureDecoder:Z

    iput-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-boolean v1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->started:Z

    return-void
.end method

.method private createCryptoInfo(Lcom/cicada/player/utils/media/EncryptionInfo;)Landroid/media/MediaCodec$CryptoInfo;
    .locals 5

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iget-object v1, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->key_id:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object v1, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->iv:[B

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget-object v1, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->subsamples:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    new-array v2, v1, [I

    iput-object v2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->subsamples:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->subsamples:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;

    iget-object v3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget v4, v2, Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;->bytes_of_clear_data:I

    aput v4, v3, v1

    iget-object v3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget v2, v2, Lcom/cicada/player/utils/media/SubsampleEncryptionInfo;->bytes_of_protected_data:I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "cenc"

    iget-object v2, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "cbcs"

    const-string v3, "cens"

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "cbc1"

    iget-object v4, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x2

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    :cond_4
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_6

    iget-object v1, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget v1, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->crypt_byte_block:I

    iget p1, p1, Lcom/cicada/player/utils/media/EncryptionInfo;->skip_byte_block:I

    invoke-static {v1, p1}, Landroidx/media3/decoder/d;->a(II)Landroid/media/MediaCodec$CryptoInfo$Pattern;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/decoder/f;->a(Landroid/media/MediaCodec$CryptoInfo;Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_6
    return-object v0
.end method

.method private fillDecodeBufferInfo(I)Lcom/cicada/player/utils/media/OutputBufferInfo;
    .locals 4

    new-instance v0, Lcom/cicada/player/utils/media/OutputBufferInfo;

    invoke-direct {v0}, Lcom/cicada/player/utils/media/OutputBufferInfo;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/cicada/player/utils/media/OutputBufferInfo;->type:I

    iput p1, v0, Lcom/cicada/player/utils/media/OutputBufferInfo;->index:I

    iget-object p1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, v0, Lcom/cicada/player/utils/media/OutputBufferInfo;->pts:J

    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, v0, Lcom/cicada/player/utils/media/OutputBufferInfo;->eos:Z

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v1, v0, Lcom/cicada/player/utils/media/OutputBufferInfo;->bufferSize:I

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput p1, v0, Lcom/cicada/player/utils/media/OutputBufferInfo;->bufferOffset:I

    return-object v0
.end method

.method private fillFormatOutputBufferInfo()Lcom/cicada/player/utils/media/OutputBufferInfo;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/cicada/player/utils/media/OutputBufferInfo;

    invoke-direct {v1}, Lcom/cicada/player/utils/media/OutputBufferInfo;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->type:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->eos:Z

    iget v2, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecCateGory:I

    sget v3, Lcom/cicada/player/utils/media/MediaCodecDecoder;->CODEC_CATEGORY_VIDEO:I

    if-ne v2, v3, :cond_0

    const-string v2, "crop-bottom"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->videoCropBottom:I

    const-string v2, "crop-left"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->videoCropLeft:I

    const-string v2, "crop-right"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->videoCropRight:I

    const-string v2, "crop-top"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->videoCropTop:I

    const-string v2, "width"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->videoHeight:I

    const-string v2, "height"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->videoWidth:I

    const-string v2, "color-format"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->videoPixelFormat:I

    const-string v2, "slice-height"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->videoSliceHeight:I

    const-string v2, "stride"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->videoStride:I

    goto :goto_0

    :cond_0
    const-string v2, "channel-count"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->audioChannelCount:I

    const-string v2, "channel-mask"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->audioChannelMask:I

    const-string v2, "sample-rate"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->audioSampleRate:I

    const-string v2, "pcm-encoding"

    invoke-static {v0, v2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/cicada/player/utils/media/OutputBufferInfo;->audioFormat:I

    :goto_0
    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private findDecoderName(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->forceInsecureDecoder:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getDecoderName(Landroid/media/MediaFormat;Z)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findDecoderName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , secure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private getDecoderName(Landroid/media/MediaFormat;Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMime:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/cicada/player/utils/media/MediaCodecUtils;->getCodecInfos(Ljava/lang/String;ZLandroid/media/MediaFormat;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getNotBlackCodecName(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaCodecInfo;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private static getFormatInteger(Landroid/media/MediaFormat;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInputBuffer fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getNotBlackCodecName(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodecInfo;

    invoke-static {v0}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->isBlackCodec(Landroid/media/MediaCodecInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static isBlackCodec(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecPrefix:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecPrefix:Ljava/util/List;

    const-string v1, "OMX.PV."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecPrefix:Ljava/util/List;

    const-string v1, "OMX.google."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecPrefix:Ljava/util/List;

    const-string v1, "OMX.ARICENT."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecPrefix:Ljava/util/List;

    const-string v1, "OMX.SEC.WMV.Decoder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecPrefix:Ljava/util/List;

    const-string v1, "OMX.SEC.MP3.Decoder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecPrefix:Ljava/util/List;

    const-string v1, "OMX.MTK.VIDEO.DECODER.VC1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecPrefix:Ljava/util/List;

    const-string v1, "OMX.SEC.vp8.dec"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecSuffix:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecSuffix:Ljava/util/List;

    const-string v1, ".sw.dec"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecSuffix:Ljava/util/List;

    const-string v1, ".hevcswvdec"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecPrefix:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_3
    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->blackCodecSuffix:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private queueInputBufferInner(I[BJZZLjava/lang/Object;)I
    .locals 13

    move-object v1, p0

    move-object v0, p2

    iget-object v2, v1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    array-length v5, v0

    invoke-virtual {v2, p2, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_2
    if-eqz p5, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    if-nez v0, :cond_4

    or-int/lit8 v5, v5, 0x4

    :cond_4
    move v12, v5

    if-eqz p6, :cond_5

    if-eqz v0, :cond_5

    :try_start_0
    move-object/from16 v0, p7

    check-cast v0, Lcom/cicada/player/utils/media/EncryptionInfo;

    invoke-direct {p0, v0}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->createCryptoInfo(Lcom/cicada/player/utils/media/EncryptionInfo;)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v9

    sget-object v2, Lcom/cicada/player/utils/media/MediaCodecDecoder;->queLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    move v7, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    and-int/lit8 v0, v12, 0x4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_6

    iget-object v6, v1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    move v7, p1

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_6
    iget-object v6, v1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v9

    const/4 v8, 0x0

    move v7, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return v4

    :goto_2
    sget-object v2, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queueInputBufferInner  fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public configureAudio(Ljava/lang/String;III)I
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> configureAudio start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->CODEC_CATEGORY_AUDIO:I

    iput v1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecCateGory:I

    iput-object p1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMime:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    const-string p3, "is-adts"

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->findDecoderName(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not found codec : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xc

    return p1

    :cond_0
    :try_start_0
    invoke-static {p3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez p1, :cond_1

    sget-object p1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createByCodecName fail : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xd

    return p1

    :cond_1
    :try_start_1
    iget-object p3, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p4

    :catch_1
    move-exception p1

    sget-object p2, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "configure fail : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xe

    return p1
.end method

.method public configureVideo(Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> configureVideo start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->CODEC_CATEGORY_VIDEO:I

    iput v1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecCateGory:I

    iput-object p1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMime:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    if-eqz p4, :cond_0

    const-string p3, "rotation-degrees"

    invoke-virtual {p2, p3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->findDecoderName(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not found video codec : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xc

    return p1

    :cond_1
    :try_start_0
    invoke-static {p3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez p1, :cond_2

    sget-object p1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "createByCodecName fail : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xd

    return p1

    :cond_2
    :try_start_1
    instance-of p3, p5, Landroid/view/Surface;

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    check-cast p5, Landroid/view/Surface;

    iget-object p3, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return p4

    :goto_1
    sget-object p2, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "configure fail : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xe

    return p1
.end method

.method public dequeueInputBufferIndex(J)I
    .locals 12
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecSpecificDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/16 v2, -0xb

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecSpecificDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-gez v6, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, v6}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    iget-object v5, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecSpecificDataMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    array-length v5, v3

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x2

    const/4 v7, 0x0

    move-object v5, v3

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecSpecificDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_6

    return p1

    :cond_6
    return v2

    :goto_1
    sget-object p2, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dequeueInputBufferIndex fail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public dequeueOutputBufferIndex(J)I
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v2, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    return p1

    :cond_1
    if-ne p1, v1, :cond_2

    const/16 p1, -0xb

    return p1

    :cond_2
    const/4 p2, -0x2

    if-ne p1, p2, :cond_3

    return p1

    :cond_3
    const/4 p2, -0x3

    if-ne p1, p2, :cond_4

    return p1

    :cond_4
    return v1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dequeueOutputBufferIndex fail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public flush()I
    .locals 4
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v1, "--> flush start"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    const-string v1, "mMediaCodec  null "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flush  fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOutBuffer(I)Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOutBuffer fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getOutputBufferInfo(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->fillFormatOutputBufferInfo()Lcom/cicada/player/utils/media/OutputBufferInfo;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->fillDecodeBufferInfo(I)Lcom/cicada/player/utils/media/OutputBufferInfo;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public queueInputBuffer(I[BJZ)I
    .locals 8
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->queueInputBufferInner(I[BJZZLjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public queueSecureInputBuffer(I[BLjava/lang/Object;JZ)I
    .locals 8
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p4

    move v5, p6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cicada/player/utils/media/MediaCodecDecoder;->queueInputBufferInner(I[BJZZLjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public release()I
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v1, "--> release "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public releaseOutputBuffer(IZ)I
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseOutputBuffer fail "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setCodecSpecificData(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> setCodecSpecificData datas "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecSpecificDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mCodecSpecificDataMap:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setDrmInfo(Ljava/lang/String;[B)Z
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> setDrmInfo uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    new-instance v0, Landroid/media/MediaCrypto;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMediaCrypto failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setForceInsecureDecoder(Z)V
    .locals 3
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> setForceInsecureDecoder  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->forceInsecureDecoder:Z

    return-void
.end method

.method public start()I
    .locals 5
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v1, "--> start "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const-string v1, "mMediaCodec  null "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->started:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " start fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public stop()I
    .locals 5

    sget-object v0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    const-string v1, "--> stop start"

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/cicada/player/utils/media/MediaCodecDecoder;->started:Z

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/cicada/player/utils/media/MediaCodecDecoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
