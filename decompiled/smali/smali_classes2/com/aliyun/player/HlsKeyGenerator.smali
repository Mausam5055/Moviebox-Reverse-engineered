.class public Lcom/aliyun/player/HlsKeyGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/aliyun/player/HlsKeyGenerator;


# instance fields
.field private mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    return-void
.end method

.method private static getHlsKey(Ljava/lang/String;)[B
    .locals 1

    invoke-static {}, Lcom/aliyun/player/HlsKeyGenerator;->getInstance()Lcom/aliyun/player/HlsKeyGenerator;

    move-result-object v0

    iget-object v0, v0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;->getHlsKey(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/aliyun/player/HlsKeyGenerator;
    .locals 2

    sget-object v0, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    if-nez v0, :cond_1

    const-class v0, Lcom/aliyun/player/HlsKeyGenerator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    if-nez v1, :cond_0

    new-instance v1, Lcom/aliyun/player/HlsKeyGenerator;

    invoke-direct {v1}, Lcom/aliyun/player/HlsKeyGenerator;-><init>()V

    sput-object v1, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/aliyun/player/HlsKeyGenerator;->instance:Lcom/aliyun/player/HlsKeyGenerator;

    return-object v0
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method

.method private static onHlsKeyInfoInit(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/aliyun/player/HlsKeyGenerator;->getInstance()Lcom/aliyun/player/HlsKeyGenerator;

    move-result-object v0

    iget-object v0, v0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;->onHlsKeyInfoInit(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setOnKeyGenerateListener(Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/HlsKeyGenerator;->mOnKeyGenerateListener:Lcom/aliyun/player/HlsKeyGenerator$OnKeyGenerateListener;

    return-void
.end method
