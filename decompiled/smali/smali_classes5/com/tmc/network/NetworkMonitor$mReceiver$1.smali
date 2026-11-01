.class public final Lcom/tmc/network/NetworkMonitor$mReceiver$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmc/network/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/tmc/network/NetworkMonitor$mReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "c",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/tmc/network/NetworkMonitor$mReceiver$1;->onReceive$lambda-0(Landroid/content/Context;)V

    return-void
.end method

.method private static final onReceive$lambda-0(Landroid/content/Context;)V
    .locals 1

    const-string v0, "$c"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-static {v0, p0}, Lcom/tmc/network/NetworkMonitor;->access$checkNetworkStatus(Lcom/tmc/network/NetworkMonitor;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lgg/c;->c:Lgg/c$a;

    invoke-virtual {p2}, Lgg/c$a;->a()Lgg/c;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tmc/network/b;

    invoke-direct {v0, p1}, Lcom/tmc/network/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lgg/c;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
