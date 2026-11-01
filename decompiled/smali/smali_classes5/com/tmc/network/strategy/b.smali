.class public final synthetic Lcom/tmc/network/strategy/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tmc/network/strategy/LocalDnsStrategy;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tmc/network/strategy/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tmc/network/strategy/b;->b:Lcom/tmc/network/strategy/LocalDnsStrategy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tmc/network/strategy/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tmc/network/strategy/b;->b:Lcom/tmc/network/strategy/LocalDnsStrategy;

    invoke-static {v0, v1}, Lcom/tmc/network/strategy/LocalDnsStrategy;->b(Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V

    return-void
.end method
