.class public final Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/FileBridge;->readSDDir(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/cloud/tmc/integration/bridge/FileBridge$readSDDir$1",
        "Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;",
        "onDenied",
        "",
        "onGranted",
        "com.cloud.tmc.integration"
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
.field final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic $dirPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/FileBridge;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/bridge/FileBridge;",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;->$block:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;->$dirPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;->this$0:Lcom/cloud/tmc/integration/bridge/FileBridge;

    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;->this$0:Lcom/cloud/tmc/integration/bridge/FileBridge;

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "fail permission denied: F10005"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/integration/bridge/FileBridge;->sendErrorMsg$default(Lcom/cloud/tmc/integration/bridge/FileBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onGranted()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;->$block:Lkotlin/jvm/functions/Function1;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/FileBridge$readSDDir$1;->$dirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
