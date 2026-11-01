.class public Lcom/cloud/tmc/integration/defaultImpl/DefaultBridgeFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/IBridgeFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativeBridge()Lcom/cloud/tmc/kernel/bridge/NativeBridge;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;-><init>()V

    return-object v0
.end method
