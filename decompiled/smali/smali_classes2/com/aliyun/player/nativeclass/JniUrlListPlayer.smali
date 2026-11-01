.class public Lcom/aliyun/player/nativeclass/JniUrlListPlayer;
.super Lcom/aliyun/player/nativeclass/JniListPlayerBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "JniUrlListPlayer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;-><init>(Landroid/content/Context;J)V

    return-void
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->nAddUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public moveTo(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->nMoveTo(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public moveToNext()Z
    .locals 1

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->nMoveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPrev()Z
    .locals 1

    invoke-virtual {p0}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->nMoveToPrev()Z

    move-result v0

    return v0
.end method

.method native nAddUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native nMoveTo(Ljava/lang/String;)Z
.end method

.method native nMoveToNext()Z
.end method

.method native nMoveToPrev()Z
.end method
