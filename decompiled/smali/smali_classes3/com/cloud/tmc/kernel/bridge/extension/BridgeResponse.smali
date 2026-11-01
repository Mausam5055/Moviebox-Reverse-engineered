.class public Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;,
        Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_FORBIDDEN_ERROR:I = 0x4

.field public static final ERROR_CODE_INVALID_PARAM:I = 0x2

.field public static final ERROR_CODE_JAVA_EXCEPTION:I = 0x6

.field public static final ERROR_CODE_NOT_FOUND:I = 0x1

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_SYSTEM_ERROR:I = 0x5

.field public static final ERROR_CODE_UNAUTHORIZED_USERINFO:I = 0xa

.field public static final ERROR_CODE_UNKNOWN_ERROR:I = 0x3

.field public static FORBIDDEN_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

.field public static INVALID_PARAM:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

.field public static NOT_FOUND:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

.field public static SUCCESS:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

.field public static UNAUTHORIZED_USERINFO_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

.field public static UNKNOWN_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;


# instance fields
.field private response:Lcom/google/gson/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$1;-><init>(Lcom/google/gson/JsonObject;)V

    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->SUCCESS:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    const/4 v1, 0x1

    const-string v2, "not implemented!"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->NOT_FOUND:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    const/4 v1, 0x2

    const-string v2, "invalid parameter!"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->INVALID_PARAM:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    const/4 v1, 0x3

    const-string v2, "unknown error!"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->UNKNOWN_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    const/4 v1, 0x4

    const-string v2, "forbidden error!"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->FORBIDDEN_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    const/16 v1, 0xa

    const-string v2, "\u672a\u6388\u6743\u8bfb\u53d6\u7528\u6237\u4fe1\u606f!"

    invoke-direct {v0, v1, v2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->UNAUTHORIZED_USERINFO_ERROR:Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->response:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public static newError(ILjava/lang/String;)Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static newValue(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;-><init>(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;->response:Lcom/google/gson/JsonObject;

    return-object v0
.end method
