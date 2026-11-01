.class public final synthetic Lcom/cloud/tmc/miniapp/ipc/helper/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/helper/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/helper/d;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ipc/helper/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ipc/helper/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/helper/d;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ipc/helper/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO;->OooO00o(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
