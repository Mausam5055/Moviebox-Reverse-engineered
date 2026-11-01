.class public final Lcom/cloud/tmc/miniapp/ipc/binderimpl/OooO0O0;
.super Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel$Stub;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/IIpcMiniPSChannel$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public miniAppAbility(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public miniAppDataSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public miniAppExtra(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public miniAppPerformance(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/ipc/helper/OooO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method
