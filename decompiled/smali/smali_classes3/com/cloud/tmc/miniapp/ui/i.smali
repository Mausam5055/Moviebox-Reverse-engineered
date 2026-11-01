.class public final synthetic Lcom/cloud/tmc/miniapp/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/node/AppNode;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/i;->a:Lcom/cloud/tmc/integration/structure/node/AppNode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/i;->a:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->s0(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    return-void
.end method
