.class public Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, ":IpcTaskManagerService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO00o;-><init>()V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, ":IpcTaskManagerService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, ":IpcTaskManagerService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, ":IpcTaskManagerService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, ":IpcTaskManagerService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
