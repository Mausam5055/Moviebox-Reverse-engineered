.class public final Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/CommonDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/ext/PageExtKt;->checkAlertBeforeUnload(Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function0;)Z
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
        "com/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1",
        "Lcom/cloud/tmc/integration/callback/CommonDialogCallback;",
        "onLeftClick",
        "",
        "onRightClick",
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
.field final synthetic $alertBeforeUnloadCache:Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

.field final synthetic $block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_checkAlertBeforeUnload:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;->$this_checkAlertBeforeUnload:Lcom/cloud/tmc/integration/structure/Page;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;->$alertBeforeUnloadCache:Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftClick()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;->$this_checkAlertBeforeUnload:Lcom/cloud/tmc/integration/structure/Page;

    const-string v1, "miniAppAlertBeforeUnload"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    const-string v0, "PageExt"

    const-string v1, "alertBeforeUnload is cancel"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRightClick()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;->$this_checkAlertBeforeUnload:Lcom/cloud/tmc/integration/structure/Page;

    const-string v1, "miniAppAlertBeforeUnload"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;->$alertBeforeUnloadCache:Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/model/AlertBeforeUnloadCache;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/ext/PageExtKt$checkAlertBeforeUnload$1;->$block:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
