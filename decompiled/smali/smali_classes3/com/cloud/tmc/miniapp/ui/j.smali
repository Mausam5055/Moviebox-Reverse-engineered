.class public final synthetic Lcom/cloud/tmc/miniapp/ui/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/j;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/ui/j;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/j;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/j;->b:Z

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->W(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V

    return-void
.end method
