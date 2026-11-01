.class public final Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->startIpcPSInvoke(Landroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Lkotlin/jvm/functions/Function2;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
        "com.cloud.tmc.component_api_ps"
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
.field final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $callback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

.field final synthetic $callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $innerContext:Landroid/content/Context;

.field final synthetic $startTime:J


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function2;JLandroid/content/Context;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;J",
            "Landroid/content/Context;",
            "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$block:Lkotlin/jvm/functions/Function2;

    iput-wide p3, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$startTime:J

    iput-object p5, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$innerContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$callback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, ""

    const-string v0, "MiniAppProtocolIpcProcessor"

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected,callbackId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$block:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v1, p2, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_2
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$startTime:J

    sub-long/2addr v1, v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ipc used time:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_1
    :try_start_5
    iget-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$innerContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    :try_start_6
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    sget-object p2, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->INSTANCE:Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;

    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$callback:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    invoke-static {p2, v1, v2}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->access$exceptionCallback(Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;)V

    const-string p2, "Exception startService"

    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor$startIpcPSInvoke$1$1;->$callbackId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected,callbackId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiniAppProtocolIpcProcessor"

    invoke-static {v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
