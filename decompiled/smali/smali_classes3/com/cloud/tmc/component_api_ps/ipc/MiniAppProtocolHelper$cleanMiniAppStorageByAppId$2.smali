.class final Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorageByAppId$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->cleanMiniAppStorageByAppId(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "ipcHandle",
        "Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;",
        "callbackId",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorageByAppId$2;->$bundle:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorageByAppId$2;->invoke(Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "typeMiniAppCleanStorage"

    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$cleanMiniAppStorageByAppId$2;->$bundle:Landroid/os/Bundle;

    invoke-interface {p1, v0, p2, v1}, Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;->miniAppDataSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method
