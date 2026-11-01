.class public Lcom/aliyun/player/nativeclass/JniSaasListPlayer;
.super Lcom/aliyun/player/nativeclass/JniUrlListPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "JniSaasListPlayer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;-><init>(Landroid/content/Context;J)V

    return-void
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addVid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nAddVid(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public moveTo(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nMoveToWithSts(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z

    move-result p1

    return p1
.end method

.method public moveToNext(Lcom/aliyun/player/source/StsInfo;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nMoveToNextWithSts(Lcom/aliyun/player/source/StsInfo;)Z

    move-result p1

    return p1
.end method

.method public moveToPrev(Lcom/aliyun/player/source/StsInfo;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nMoveToPrevWithSts(Lcom/aliyun/player/source/StsInfo;)Z

    move-result p1

    return p1
.end method

.method native nAddVid(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native nMoveToNextWithSts(Lcom/aliyun/player/source/StsInfo;)Z
.end method

.method native nMoveToPrevWithSts(Lcom/aliyun/player/source/StsInfo;)Z
.end method

.method native nMoveToWithSts(Ljava/lang/String;Lcom/aliyun/player/source/StsInfo;)Z
.end method

.method native nSetDefinition(Ljava/lang/String;)V
.end method

.method public setDefinition(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->nSetDefinition(Ljava/lang/String;)V

    return-void
.end method
