.class public Lcom/aliyun/player/nativeclass/JniListPlayerBase;
.super Ljava/lang/Object;


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->mNativeContext:J

    invoke-virtual {p0, p2, p3}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->nConstruct(J)V

    return-void
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->nClear()V

    return-void
.end method

.method public getCurrentUid()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->nGetCurrentUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPreloadMemorySizeMB()I
    .locals 1

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->nGetMaxPreloadMemorySizeMB()I

    move-result v0

    return v0
.end method

.method protected getNativeListContext()J
    .locals 2

    iget-wide v0, p0, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->mNativeContext:J

    return-wide v0
.end method

.method native nClear()V
.end method

.method native nConstruct(J)V
.end method

.method native nGetCurrentUid()Ljava/lang/String;
.end method

.method native nGetMaxPreloadMemorySizeMB()I
.end method

.method native nRelease()V
.end method

.method native nRemoveSource(Ljava/lang/String;)V
.end method

.method native nSetMaxPreloadMemorySizeMB(I)V
.end method

.method native nSetPreloadCount(I)V
.end method

.method native nStop()V
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->nRelease()V

    return-void
.end method

.method public removeSource(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->nRemoveSource(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxPreloadMemorySizeMB(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->nSetMaxPreloadMemorySizeMB(I)V

    return-void
.end method

.method protected setNativeListContext(J)V
    .locals 0

    iput-wide p1, p0, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->mNativeContext:J

    return-void
.end method

.method public setPreloadCount(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->nSetPreloadCount(I)V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->nStop()V

    return-void
.end method
