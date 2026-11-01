.class public final Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->dispatchToEventCenter(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0016J\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "com/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1",
        "Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;",
        "innerCallBackId",
        "",
        "getInnerCallBackId",
        "()Ljava/lang/String;",
        "innerRender",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "getInnerRender",
        "()Lcom/cloud/tmc/kernel/render/IRender;",
        "onFailed",
        "",
        "errorCode",
        "errMsg",
        "onSuccess",
        "jsonObjectBuilder",
        "Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

.field final synthetic $methodName:Ljava/lang/String;

.field private final innerCallBackId:Ljava/lang/String;

.field private final innerRender:Lcom/cloud/tmc/kernel/render/IRender;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;)V
    .locals 0

    iput-object p3, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->$methodName:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->$it:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->innerCallBackId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getInnerCallBackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->innerCallBackId:Ljava/lang/String;

    return-object v0
.end method

.method public final getInnerRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    return-object v0
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    iget-object v3, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->innerCallBackId:Ljava/lang/String;

    const-string v6, "DispatchNativeEvent"

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->access$sendErrorMsgToRender(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;)V
    .locals 7

    iget-object v1, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->$methodName:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->$it:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    sget-object v3, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$dispatchToEventCenter$1$1;->innerCallBackId:Ljava/lang/String;

    const-string v6, "DispatchNativeEvent"

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendSuccessMsgToRender(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;)V

    :cond_0
    return-void
.end method
