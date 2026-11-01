.class public final Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->insertNativeCover(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "com/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2",
        "Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;",
        "innerCallback",
        "",
        "getInnerCallback",
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
.field final synthetic $component:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

.field private final innerCallback:Ljava/lang/String;

.field private final innerRender:Lcom/cloud/tmc/kernel/render/IRender;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;)V
    .locals 0

    iput-object p3, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->$component:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getInnerCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final getInnerRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    return-object v0
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    iget-object v3, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerCallback:Ljava/lang/String;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendErrorMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 10

    const-string v0, "NativeComponentEventCenter"

    iget-object v2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->$component:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    :try_start_0
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;->onResume()V

    const-class v3, Lcom/cloud/tmc/kernel/minicover/NativeComponentProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/minicover/NativeComponentProxy;

    iget-object v4, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v4}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/minicover/NativeComponentProxy;->checkResumedStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "insertNativeCover onPause"

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;->onPause()V

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuccess: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object v0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerCallback:Ljava/lang/String;

    const/16 v8, 0x30

    const/4 v9, 0x0

    const-string v3, "insertNativeCover"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendSuccessMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
