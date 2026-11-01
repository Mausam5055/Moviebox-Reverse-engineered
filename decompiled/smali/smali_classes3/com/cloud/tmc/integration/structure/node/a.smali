.class public final synthetic Lcom/cloud/tmc/integration/structure/node/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/node/AppNode;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/cloud/tmc/integration/structure/node/PageNode;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/a;->a:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/node/a;->c:Lcom/cloud/tmc/integration/structure/node/PageNode;

    return-void
.end method


# virtual methods
.method public final onLoadSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/a;->a:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/a;->c:Lcom/cloud/tmc/integration/structure/node/PageNode;

    invoke-static {v0, v1, v2, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->b(Lcom/cloud/tmc/integration/structure/node/AppNode;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;Ljava/lang/String;)V

    return-void
.end method
