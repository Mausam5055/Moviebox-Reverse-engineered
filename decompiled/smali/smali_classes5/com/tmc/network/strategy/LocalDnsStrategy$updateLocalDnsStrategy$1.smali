.class public final Lcom/tmc/network/strategy/LocalDnsStrategy$updateLocalDnsStrategy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tmc/network/strategy/LocalDnsStrategy;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/tmc/network/strategy/LocalDnsStrategy$updateLocalDnsStrategy$1",
        "Ljava/lang/Runnable;",
        "run",
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


# instance fields
.field final synthetic this$0:Lcom/tmc/network/strategy/LocalDnsStrategy;


# direct methods
.method constructor <init>(Lcom/tmc/network/strategy/LocalDnsStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/tmc/network/strategy/LocalDnsStrategy$updateLocalDnsStrategy$1;->this$0:Lcom/tmc/network/strategy/LocalDnsStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/tmc/network/strategy/LocalDnsStrategy;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkMonitor;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tmc/network/strategy/LocalDnsStrategy$updateLocalDnsStrategy$1;->this$0:Lcom/tmc/network/strategy/LocalDnsStrategy;

    invoke-static {v1}, Lcom/tmc/network/strategy/LocalDnsStrategy;->c(Lcom/tmc/network/strategy/LocalDnsStrategy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tmc/network/strategy/StrategyTable;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lgg/b;->a:Lgg/b;

    const-string v3, "updateLocalDnsStrategy  table = "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgg/b;->c(Ljava/lang/String;)V

    sget-object v2, Lfg/b;->a:Lfg/b;

    invoke-virtual {v2, v1, v0}, Lfg/b;->i(Ljava/io/Serializable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lgg/b;->a:Lgg/b;

    invoke-virtual {v1, v0}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
