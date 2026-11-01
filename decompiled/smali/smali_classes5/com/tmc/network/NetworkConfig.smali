.class public final Lcom/tmc/network/NetworkConfig;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u0007J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0007J\u0010\u0010\u001a\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0007J\u000e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u0004J\u0014\u0010\u001f\u001a\u00020\u00182\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\n0!R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Lcom/tmc/network/NetworkConfig;",
        "",
        "()V",
        "isNetworkImproveEnable",
        "",
        "isNetworkMonitorEnable",
        "monitorId",
        "",
        "monitorRandomNum",
        "packageName",
        "",
        "getPackageName",
        "()Ljava/lang/String;",
        "setPackageName",
        "(Ljava/lang/String;)V",
        "preConnectList",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "getPreConnectList",
        "()Ljava/util/concurrent/CopyOnWriteArraySet;",
        "setPreConnectList",
        "(Ljava/util/concurrent/CopyOnWriteArraySet;)V",
        "getAppMonitorId",
        "getAppMonitorRandom",
        "setAppMonitorId",
        "",
        "id",
        "setAppMonitorRandom",
        "num",
        "setNetworkImproveEnable",
        "enable",
        "setNetworkMonitorEnable",
        "setPreHostList",
        "urlList",
        "",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tmc/network/NetworkConfig;

.field private static isNetworkImproveEnable:Z

.field private static isNetworkMonitorEnable:Z

.field private static monitorId:I

.field private static monitorRandomNum:I

.field private static packageName:Ljava/lang/String;

.field private static preConnectList:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tmc/network/NetworkConfig;

    invoke-direct {v0}, Lcom/tmc/network/NetworkConfig;-><init>()V

    sput-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/tmc/network/NetworkConfig;->preConnectList:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-string v0, ""

    sput-object v0, Lcom/tmc/network/NetworkConfig;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/tmc/network/NetworkConfig;->monitorId:I

    const/16 v0, 0x3e8

    sput v0, Lcom/tmc/network/NetworkConfig;->monitorRandomNum:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic setAppMonitorRandom$default(Lcom/tmc/network/NetworkConfig;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x3e8

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tmc/network/NetworkConfig;->setAppMonitorRandom(I)V

    return-void
.end method


# virtual methods
.method public final getAppMonitorId()I
    .locals 1

    sget v0, Lcom/tmc/network/NetworkConfig;->monitorId:I

    return v0
.end method

.method public final getAppMonitorRandom()I
    .locals 1

    sget v0, Lcom/tmc/network/NetworkConfig;->monitorRandomNum:I

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tmc/network/NetworkConfig;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreConnectList()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tmc/network/NetworkConfig;->preConnectList:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public final isNetworkImproveEnable()Z
    .locals 1

    sget-boolean v0, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable:Z

    return v0
.end method

.method public final isNetworkMonitorEnable()Z
    .locals 1

    sget-boolean v0, Lcom/tmc/network/NetworkConfig;->isNetworkMonitorEnable:Z

    return v0
.end method

.method public final setAppMonitorId(I)V
    .locals 0

    sput p1, Lcom/tmc/network/NetworkConfig;->monitorId:I

    return-void
.end method

.method public final setAppMonitorRandom(I)V
    .locals 0

    sput p1, Lcom/tmc/network/NetworkConfig;->monitorRandomNum:I

    return-void
.end method

.method public final setNetworkImproveEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable:Z

    return-void
.end method

.method public final setNetworkMonitorEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/tmc/network/NetworkConfig;->isNetworkMonitorEnable:Z

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tmc/network/NetworkConfig;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setPreConnectList(Ljava/util/concurrent/CopyOnWriteArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/tmc/network/NetworkConfig;->preConnectList:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public final setPreHostList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "urlList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/NetworkConfig;->preConnectList:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
