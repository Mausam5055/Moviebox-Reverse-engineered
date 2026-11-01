.class public Lcom/aliyun/player/AliPlayerGlobalSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;,
        Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;
    }
.end annotation


# static fields
.field private static sOnGetUrlHashCallback:Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    const/4 v0, 0x0

    sput-object v0, Lcom/aliyun/player/AliPlayerGlobalSettings;->sOnGetUrlHashCallback:Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCaches()V
    .locals 0

    invoke-static {}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nClearCaches()V

    return-void
.end method

.method public static enableHttpDns(Z)V
    .locals 0

    invoke-static {p0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nEnableHttpDns(Z)V

    return-void
.end method

.method public static enableLocalCache(ZILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nEnableLocalCache(ZILjava/lang/String;)V

    return-void
.end method

.method public static enableNetworkBalance(Z)V
    .locals 0

    invoke-static {p0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nEnableNetworkBalance(Z)V

    return-void
.end method

.method public static forceAudioRendingFormat(ZLjava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nForceAudioRendingFormat(ZLjava/lang/String;II)V

    return-void
.end method

.method public static loadClass()V
    .locals 0

    return-void
.end method

.method private static native nClearCaches()V
.end method

.method private static native nEnableHttpDns(Z)V
.end method

.method private static native nEnableLocalCache(ZILjava/lang/String;)V
.end method

.method private static native nEnableNetworkBalance(Z)V
.end method

.method private static native nForceAudioRendingFormat(ZLjava/lang/String;II)V
.end method

.method private static declared-synchronized nOnGetUrlHashCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    const-class v0, Lcom/aliyun/player/AliPlayerGlobalSettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/aliyun/player/AliPlayerGlobalSettings;->sOnGetUrlHashCallback:Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;->getUrlHashCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static native nSetAudioStreamType(I)V
.end method

.method private static native nSetCacheFileClearConfig(JJJ)V
.end method

.method private static native nSetCacheUrlHashCallback(Z)V
.end method

.method private static native nSetDNSResolve(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nSetIPResolveType(I)V
.end method

.method private static native nSetUseHttp2(Z)V
.end method

.method public static setAudioStreamType(Lcom/aliyun/player/AliPlayerGlobalSettings$StreamType;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetAudioStreamType(I)V

    return-void
.end method

.method public static setCacheFileClearConfig(JJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetCacheFileClearConfig(JJJ)V

    return-void
.end method

.method public static declared-synchronized setCacheUrlHashCallback(Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;)V
    .locals 1

    const-class v0, Lcom/aliyun/player/AliPlayerGlobalSettings;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/aliyun/player/AliPlayerGlobalSettings;->sOnGetUrlHashCallback:Lcom/aliyun/player/AliPlayerGlobalSettings$OnGetUrlHashCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetCacheUrlHashCallback(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setDNSResolve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetDNSResolve(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setIPResolveType(Lcom/aliyun/player/IPlayer$IPResolveType;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetIPResolveType(I)V

    return-void
.end method

.method public static setUseHttp2(Z)V
    .locals 0

    invoke-static {p0}, Lcom/aliyun/player/AliPlayerGlobalSettings;->nSetUseHttp2(Z)V

    return-void
.end method
