.class public final synthetic Lcom/cloud/tmc/miniapp/ipc/helper/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/helper/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/helper/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ipc/helper/a;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ipc/helper/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/helper/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ipc/helper/a;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO;->OooO0O0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
