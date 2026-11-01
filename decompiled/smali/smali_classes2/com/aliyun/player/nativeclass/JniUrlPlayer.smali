.class public Lcom/aliyun/player/nativeclass/JniUrlPlayer;
.super Lcom/aliyun/player/nativeclass/NativePlayerBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "JniUrlPlayer"


# instance fields
.field private mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

.field private mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/NativePlayerBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    return-void
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method

.method private nRead([B)I
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/source/BitStreamSource$ReadCallback;->read([B)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, -0x16

    return p1
.end method

.method private nSeek(JI)J
    .locals 1
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/aliyun/player/source/BitStreamSource$SeekCallback;->seek(JI)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, -0x16

    return-wide p1
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/BitStreamSource;)V
.end method

.method private native nSetDataSource(Lcom/aliyun/player/source/UrlSource;)V
.end method


# virtual methods
.method public setDataSource(Lcom/aliyun/player/source/BitStreamSource;)V
    .locals 1

    invoke-virtual {p1}, Lcom/aliyun/player/source/BitStreamSource;->getReadCallback()Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->mReadCallback:Lcom/aliyun/player/source/BitStreamSource$ReadCallback;

    invoke-virtual {p1}, Lcom/aliyun/player/source/BitStreamSource;->getSeekCallback()Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->mSeekCallback:Lcom/aliyun/player/source/BitStreamSource$SeekCallback;

    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->nSetDataSource(Lcom/aliyun/player/source/BitStreamSource;)V

    return-void
.end method

.method public setDataSource(Lcom/aliyun/player/source/UrlSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->nSetDataSource(Lcom/aliyun/player/source/UrlSource;)V

    return-void
.end method
