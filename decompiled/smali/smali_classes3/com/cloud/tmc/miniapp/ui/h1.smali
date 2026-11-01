.class public final synthetic Lcom/cloud/tmc/miniapp/ui/h1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

.field public final synthetic b:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/h1;->a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/h1;->b:Lcom/cloud/tmc/integration/structure/Page;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/h1;->a:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/h1;->b:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->d0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    return-void
.end method
