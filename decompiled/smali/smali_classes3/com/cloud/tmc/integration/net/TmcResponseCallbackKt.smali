.class public final Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "failType",
        "Ljava/lang/reflect/Type;",
        "getFailType",
        "()Ljava/lang/reflect/Type;",
        "gatewayType",
        "getGatewayType",
        "com.cloud.tmc.integration"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final failType:Ljava/lang/reflect/Type;

.field private static final gatewayType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt$failType$1;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt$failType$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object : TypeToken<BaseResponse<Any>>() {}.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt;->failType:Ljava/lang/reflect/Type;

    new-instance v0, Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt$gatewayType$1;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt$gatewayType$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object : TypeToken<GatewayBean>() {}.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt;->gatewayType:Ljava/lang/reflect/Type;

    return-void
.end method

.method public static final getFailType()Ljava/lang/reflect/Type;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt;->failType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public static final getGatewayType()Ljava/lang/reflect/Type;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/net/TmcResponseCallbackKt;->gatewayType:Ljava/lang/reflect/Type;

    return-object v0
.end method
