.class public final synthetic Lcom/cloud/tmc/miniapp/ui/q0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

.field public final synthetic b:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/q0;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/q0;->b:Lcom/cloud/tmc/integration/structure/Page;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/q0;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/q0;->b:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->n0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    return-void
.end method
