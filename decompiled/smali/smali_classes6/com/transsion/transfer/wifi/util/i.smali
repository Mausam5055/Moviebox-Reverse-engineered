.class public final Lcom/transsion/transfer/wifi/util/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/transfer/wifi/util/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/wifi/util/i;

    invoke-direct {v0}, Lcom/transsion/transfer/wifi/util/i;-><init>()V

    sput-object v0, Lcom/transsion/transfer/wifi/util/i;->a:Lcom/transsion/transfer/wifi/util/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/transfer/wifi/util/i;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/wifi/util/i;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final c()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/transfer/wifi/util/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic e(Lcom/transsion/transfer/wifi/util/i;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZZZZILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move v8, v1

    goto :goto_3

    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/transfer/wifi/util/i;->d(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZZZZ)V

    return-void
.end method


# virtual methods
.method public final b(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "unknown"

    goto :goto_0

    :cond_0
    const-string p1, "3 -- \u8868\u793a {@link discoveryServices} \u5931\u8d25\uff0c\u56e0\u4e3a\u6ca1\u6709\u6dfb\u52a0\u670d\u52a1\u8bf7\u6c42\u3002\u4f7f\u7528 {@link addServiceRequest} \u6dfb\u52a0\u670d\u52a1\u8bf7\u6c42\u3002"

    goto :goto_0

    :cond_1
    const-string p1, "2 -- \u8868\u793a\u64cd\u4f5c\u5931\u8d25\uff0c\u56e0\u4e3a\u6846\u67b6\u6b63\u5fd9\uff0c\u65e0\u6cd5\u5904\u7406\u8bf7\u6c42"

    goto :goto_0

    :cond_2
    const-string p1, "1 -- \u8868\u793a\u64cd\u4f5c\u5931\u8d25\uff0c\u56e0\u4e3a\u8bbe\u5907\u4e0d\u652f\u6301 p2p\u3002"

    goto :goto_0

    :cond_3
    const-string p1, "0 -- \u8868\u793a\u64cd\u4f5c\u7531\u4e8e\u5185\u90e8\u9519\u8bef\u800c\u5931\u8d25\u3002"

    :goto_0
    return-object p1
.end method

.method public final d(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZZZZ)V
    .locals 5

    if-eqz p2, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    invoke-static {p2}, Lcom/transsion/transfer/wifi/util/h;->a(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    sget-object v1, Lcom/transsion/transfer/wifi/util/i;->a:Lcom/transsion/transfer/wifi/util/i;

    invoke-direct {v1}, Lcom/transsion/transfer/wifi/util/i;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> release() --> WifiP2pManager.close() --> API27\u624d\u6709\u8fd9\u4e2a\u65b9\u6cd5 --> \u6210\u529f"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    if-eqz p6, :cond_1

    if-eqz p1, :cond_1

    new-instance p6, Lcom/transsion/transfer/wifi/util/i$a;

    invoke-direct {p6}, Lcom/transsion/transfer/wifi/util/i$a;-><init>()V

    invoke-virtual {p1, p2, p6}, Landroid/net/wifi/p2p/WifiP2pManager;->clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    new-instance p3, Lcom/transsion/transfer/wifi/util/i$b;

    invoke-direct {p3}, Lcom/transsion/transfer/wifi/util/i$b;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2
    if-eqz p4, :cond_3

    if-eqz p1, :cond_3

    new-instance p3, Lcom/transsion/transfer/wifi/util/i$c;

    invoke-direct {p3}, Lcom/transsion/transfer/wifi/util/i$c;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_3
    if-eqz p5, :cond_4

    if-eqz p1, :cond_4

    new-instance p3, Lcom/transsion/transfer/wifi/util/i$d;

    invoke-direct {p3}, Lcom/transsion/transfer/wifi/util/i$d;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_4
    return-void
.end method
