.class public final synthetic Lcom/cloud/tmc/miniapp/ui/k0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/Page;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/ui/MiniFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/k0;->a:Lcom/cloud/tmc/integration/structure/Page;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/k0;->b:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    return-void
.end method


# virtual methods
.method public final success()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/k0;->a:Lcom/cloud/tmc/integration/structure/Page;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/k0;->b:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->g0(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    return-void
.end method
