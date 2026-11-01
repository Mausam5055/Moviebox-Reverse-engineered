.class public final synthetic Lcom/cloud/tmc/miniapp/ui/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/l;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/l;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/l;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/l;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->j0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/content/Intent;)V

    return-void
.end method
