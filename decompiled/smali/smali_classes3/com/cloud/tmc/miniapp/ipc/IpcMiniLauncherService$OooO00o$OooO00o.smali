.class public final Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;->OooO00o(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Landroid/os/Bundle;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO0O0:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO00o:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO0O0:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->launcherMiniApp(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_1
    if-eqz p1, :cond_2

    new-instance p2, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o$OooO00o;

    invoke-direct {p2}, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o$OooO00o;-><init>()V

    invoke-interface {p1, p2}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->registerMiniAppLifecycleListener(Lcom/cloud/tmc/miniapp/IMiniAppLifecycleInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, ":IpcTaskManagerService"

    const-string v0, "Exception startService"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/cloud/tmc/miniapp/ipc/OooO0O0;->OooO00o(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "connect fail"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
