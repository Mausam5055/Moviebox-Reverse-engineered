.class public final synthetic Lcom/cloud/tmc/component_api_ps/ipc/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/component_api_ps/ipc/c;->a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    iput-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/c;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/component_api_ps/ipc/c;->a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/c;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->c(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/os/Bundle;)V

    return-void
.end method
