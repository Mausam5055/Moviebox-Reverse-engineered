.class public final synthetic Lcom/tmc/network/strategy/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tmc/network/strategy/LocalDnsStrategy;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tmc/network/strategy/a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/tmc/network/strategy/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tmc/network/strategy/a;->c:Lcom/tmc/network/strategy/LocalDnsStrategy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tmc/network/strategy/a;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/tmc/network/strategy/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tmc/network/strategy/a;->c:Lcom/tmc/network/strategy/LocalDnsStrategy;

    invoke-static {v0, v1, v2}, Lcom/tmc/network/strategy/LocalDnsStrategy;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/tmc/network/strategy/LocalDnsStrategy;)V

    return-void
.end method
