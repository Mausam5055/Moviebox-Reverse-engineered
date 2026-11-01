.class public final synthetic Lcom/cloud/tmc/miniapp/ipc/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ipc/a;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ipc/a;->d:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ipc/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ipc/a;->c:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ipc/a;->d:Lcom/cloud/tmc/miniapp/ipc/OooO0O0;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/ipc/IpcMiniLauncherService$OooO00o;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/cloud/tmc/miniapp/ipc/OooO0O0;)V

    return-void
.end method
