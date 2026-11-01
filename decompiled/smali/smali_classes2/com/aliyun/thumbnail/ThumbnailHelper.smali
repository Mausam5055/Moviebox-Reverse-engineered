.class public Lcom/aliyun/thumbnail/ThumbnailHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/thumbnail/ThumbnailHelper$ByteHttp;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;,
        Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x1388

.field private static final MSG_KEY_BITMAP_FAIL:I = 0x2

.field private static final MSG_KEY_BITMAP_SUCCESS:I = 0x3

.field private static final MSG_KEY_PREPARE_FAIL:I = 0x0

.field private static final MSG_KEY_PREPARE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailHelper"


# instance fields
.field private volatile hasPrepared:Z

.field private final lock:Ljava/lang/Object;

.field private mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

.field private mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

.field private mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

.field private mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

.field private mUrl:Ljava/lang/String;

.field private mUrlDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrlDataMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->hasPrepared:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    iput-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrl:Ljava/lang/String;

    new-instance p1, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-direct {p1, p0}, Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/aliyun/thumbnail/ThumbnailHelper;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mUrlDataMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/net/URLConnection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getResponseCode(Ljava/net/URLConnection;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Ljava/io/InputStream;)[B
    .locals 0

    invoke-static {p0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->readStream(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getThumbnailInfos(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/aliyun/thumbnail/ThumbnailHelper;)[Lcom/aliyun/thumbnail/ThumbnailInfo;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    return-object p0
.end method

.method static synthetic access$302(Lcom/aliyun/thumbnail/ThumbnailHelper;[Lcom/aliyun/thumbnail/ThumbnailInfo;)[Lcom/aliyun/thumbnail/ThumbnailInfo;
    .locals 0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendPrepareSuccessMsg()V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/thumbnail/ThumbnailHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendPrepareFailMsg()V

    return-void
.end method

.method static synthetic access$600(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getBitmap(Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendRequestBitmapFailMsg(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendRequestBitmapSuccMsg(Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcom/aliyun/thumbnail/ThumbnailHelper;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private getBitmap(Lcom/aliyun/thumbnail/ThumbnailInfo;[B)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p2, 0x1

    :try_start_0
    invoke-static {v0, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mLeft:I

    iget v3, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mTop:I

    iget v4, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mWidth:I

    add-int/2addr v4, v2

    iget p1, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mHeight:I

    add-int/2addr p1, v3

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p2, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u7f29\u7565\u56fe\u5f02\u5e38\u3002\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    instance-of v1, p1, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p1

    :catch_1
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p1

    :catch_1
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getInfoByPosition(J)Lcom/aliyun/thumbnail/ThumbnailInfo;
    .locals 6

    sget-object v0, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInfoByPosition position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "mThumbnailInfoArray == null"

    invoke-static {v0, p1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    array-length v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mThumbnailInfoArray:[Lcom/aliyun/thumbnail/ThumbnailInfo;

    aget-object v3, v3, v1

    iget-wide v4, v3, Lcom/aliyun/thumbnail/ThumbnailInfo;->mStart:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_1

    iget-wide v4, v3, Lcom/aliyun/thumbnail/ThumbnailInfo;->mUntil:J

    cmp-long v4, v4, p1

    if-ltz v4, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p1, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mThumbnailInfoArray targetInfo = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getResponseCode(Ljava/net/URLConnection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private native getThumbnailInfos(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private getUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getHttpsUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;->onPrepareSuccess()V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;->onPrepareFail()V

    goto :goto_0

    :cond_1
    const-string v3, "pos"

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, v0, v1, p1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;->onThumbnailGetFail(JLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "start"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "until"

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    new-instance v1, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;

    invoke-direct {v1}, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;-><init>()V

    new-array v0, v0, [J

    const/4 v9, 0x0

    aput-wide v5, v0, v9

    aput-wide v7, v0, v2

    invoke-virtual {v1, v0}, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->setPositionRange([J)V

    invoke-virtual {v1, p1}, Lcom/aliyun/thumbnail/ThumbnailBitmapInfo;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    invoke-interface {p1, v3, v4, v1}, Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;->onThumbnailGetSuccess(JLcom/aliyun/thumbnail/ThumbnailBitmapInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method

.method private static readStream(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    throw p0
.end method

.method private requestImgData(Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V
    .locals 2

    sget-object v0, Lcom/aliyun/utils/ThreadManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aliyun/thumbnail/ThumbnailHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper$3;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private sendPrepareFailMsg()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendPrepareSuccessMsg()V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendRequestBitmapFailMsg(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pos"

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendRequestBitmapSuccMsg(Lcom/aliyun/thumbnail/ThumbnailInfo;JLandroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pos"

    invoke-virtual {p4, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-wide p2, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mStart:J

    const-string v1, "start"

    invoke-virtual {p4, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "until"

    iget-wide v1, p1, Lcom/aliyun/thumbnail/ThumbnailInfo;->mUntil:J

    invoke-virtual {p4, p2, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mResultHandler:Lcom/aliyun/thumbnail/ThumbnailHelper$ResultHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 3

    iget-object v0, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->hasPrepared:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/aliyun/thumbnail/ThumbnailHelper;->TAG:Ljava/lang/String;

    const-string v2, "prepare again?"

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->hasPrepared:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/aliyun/utils/ThreadManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/aliyun/thumbnail/ThumbnailHelper$1;

    invoke-direct {v1, p0}, Lcom/aliyun/thumbnail/ThumbnailHelper$1;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestBitmapAtPosition(J)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->getInfoByPosition(J)Lcom/aliyun/thumbnail/ThumbnailInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no match thumbnail at position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->sendRequestBitmapFailMsg(Ljava/lang/String;J)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/aliyun/thumbnail/ThumbnailInfo;->mPath:Ljava/lang/String;

    new-instance v2, Lcom/aliyun/thumbnail/ThumbnailHelper$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/aliyun/thumbnail/ThumbnailHelper$2;-><init>(Lcom/aliyun/thumbnail/ThumbnailHelper;Lcom/aliyun/thumbnail/ThumbnailInfo;J)V

    invoke-direct {p0, v1, v2}, Lcom/aliyun/thumbnail/ThumbnailHelper;->requestImgData(Ljava/lang/String;Lcom/aliyun/thumbnail/ThumbnailHelper$OnImgDataResultListener;)V

    return-void
.end method

.method public setOnPrepareListener(Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnPrepareListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnPrepareListener;

    return-void
.end method

.method public setOnThumbnailGetListener(Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/thumbnail/ThumbnailHelper;->mOnThumbnailGetListener:Lcom/aliyun/thumbnail/ThumbnailHelper$OnThumbnailGetListener;

    return-void
.end method
