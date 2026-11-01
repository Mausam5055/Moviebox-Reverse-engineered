.class public final synthetic Lcom/cloud/tmc/integration/structure/node/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/node/AppNode;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/b;->a:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/b;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/node/b;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onLoadSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/b;->a:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/b;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/b;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->a(Lcom/cloud/tmc/integration/structure/node/AppNode;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
