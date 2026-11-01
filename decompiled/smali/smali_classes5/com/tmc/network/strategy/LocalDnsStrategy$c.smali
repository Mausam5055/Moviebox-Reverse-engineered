.class public final Lcom/tmc/network/strategy/LocalDnsStrategy$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tmc/network/NetworkMonitor$INetworkChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmc/network/strategy/LocalDnsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tmc/network/strategy/LocalDnsStrategy;


# direct methods
.method public constructor <init>(Lcom/tmc/network/strategy/LocalDnsStrategy;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tmc/network/strategy/LocalDnsStrategy$c;->a:Lcom/tmc/network/strategy/LocalDnsStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(Lcom/tmc/network/NetworkMonitor$NetworkStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tmc/network/strategy/LocalDnsStrategy$c;->a:Lcom/tmc/network/strategy/LocalDnsStrategy;

    invoke-static {p1}, Lcom/tmc/network/strategy/LocalDnsStrategy;->e(Lcom/tmc/network/strategy/LocalDnsStrategy;)V

    return-void
.end method
