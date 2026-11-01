.class public final synthetic Lcom/cloud/tmc/component_api_ps/ipc/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/component_api_ps/ipc/a;->a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    iput-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/component_api_ps/ipc/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/component_api_ps/ipc/a;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/cloud/tmc/component_api_ps/ipc/a;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/component_api_ps/ipc/a;->a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/component_api_ps/ipc/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/component_api_ps/ipc/a;->d:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/cloud/tmc/component_api_ps/ipc/a;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->d(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
