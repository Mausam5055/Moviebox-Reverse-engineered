.class public final Lcom/tmc/network/NetworkAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u00020\u0008H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/tmc/network/NetworkAdapter;",
        "",
        "()V",
        "MAX_PRE_CONNECT",
        "",
        "isInit",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "init",
        "",
        "startPreConnect",
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
.field public static final INSTANCE:Lcom/tmc/network/NetworkAdapter;

.field private static final MAX_PRE_CONNECT:I = 0x3

.field private static final isInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tmc/network/NetworkAdapter;

    invoke-direct {v0}, Lcom/tmc/network/NetworkAdapter;-><init>()V

    sput-object v0, Lcom/tmc/network/NetworkAdapter;->INSTANCE:Lcom/tmc/network/NetworkAdapter;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tmc/network/NetworkAdapter;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/tmc/network/NetworkAdapter;->startPreConnect$lambda-0()V

    return-void
.end method

.method private final startPreConnect()V
    .locals 2

    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->isNetworkImproveEnable()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lgg/b;->a:Lgg/b;

    const-string v1, "isNetworkImprove is disable."

    invoke-virtual {v0, v1}, Lgg/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getPreConnectList()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lgg/b;->a:Lgg/b;

    const-string v1, "preConnectList is empty"

    invoke-virtual {v0, v1}, Lgg/b;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lgg/c;->c:Lgg/c$a;

    invoke-virtual {v0}, Lgg/c$a;->a()Lgg/c;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/tmc/network/a;

    invoke-direct {v1}, Lcom/tmc/network/a;-><init>()V

    invoke-virtual {v0, v1}, Lgg/c;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final startPreConnect$lambda-0()V
    .locals 5

    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getPreConnectList()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/tmc/network/strategy/c;

    const-string v4, "url"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/tmc/network/strategy/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tmc/network/strategy/c;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final init()V
    .locals 3

    sget-object v0, Lgg/b;->a:Lgg/b;

    const-string v1, "NetworkAdapter init"

    invoke-virtual {v0, v1}, Lgg/b;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/NetworkAdapter;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tmc/network/NetworkAdapter;->startPreConnect()V

    :cond_0
    return-void
.end method
