.class public final synthetic Lcom/cloud/tmc/miniapp/ui/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/u;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/u;->b:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/ui/u;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/u;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/u;->b:Landroid/os/Bundle;

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/u;->c:Z

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->Y(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/os/Bundle;Z)V

    return-void
.end method
