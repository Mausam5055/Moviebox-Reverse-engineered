.class Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$1$1;
.super Lcom/google/gson/reflect/TypeToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$1;->getType()Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/cloud/tmc/integration/net/BaseResponse<",
        "Lcom/cloud/tmc/integration/model/UniqueIdBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$1;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$1;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$1$1;->this$1:Lcom/cloud/tmc/integration/bridge/GetSystemInfoBridge$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
