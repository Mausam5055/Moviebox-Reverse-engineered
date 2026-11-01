.class public final Lcom/cloud/tmc/miniapp/ipc/OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Landroid/content/Context;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

.field public final synthetic OooO0Oo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0O0:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0Oo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, ":IpcTaskManagerService"

    :try_start_0
    const-string v0, "warmupWebview iMiniLauncherChannel"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0Oo:Ljava/lang/String;

    const-string v2, "keyMiniAppSyncData"

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO00o:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/cloud/tmc/miniapp/IIpcMiniLauncherChannel;->preLauncherData(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0O0:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    const-string v0, "Exception startService"

    invoke-static {p1, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/OooO0OO;->OooO0OO:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/miniapp/ipc/OooO0O0;->OooO00o(Ljava/lang/Integer;Ljava/lang/Throwable;)V

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
