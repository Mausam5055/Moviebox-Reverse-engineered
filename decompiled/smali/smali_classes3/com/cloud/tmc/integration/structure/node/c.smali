.class public final synthetic Lcom/cloud/tmc/integration/structure/node/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/node/PageNode;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/node/PageNode;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/c;->a:Lcom/cloud/tmc/integration/structure/node/PageNode;

    iput-boolean p2, p0, Lcom/cloud/tmc/integration/structure/node/c;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/c;->a:Lcom/cloud/tmc/integration/structure/node/PageNode;

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/c;->b:Z

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->a(Lcom/cloud/tmc/integration/structure/node/PageNode;Z)V

    return-void
.end method
