.class public final synthetic Lcom/cloud/tmc/integration/structure/node/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/render/GoBackCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/node/PageNode;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/node/PageNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/d;->a:Lcom/cloud/tmc/integration/structure/node/PageNode;

    return-void
.end method


# virtual methods
.method public final afterProcess(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/d;->a:Lcom/cloud/tmc/integration/structure/node/PageNode;

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->c(Lcom/cloud/tmc/integration/structure/node/PageNode;Z)V

    return-void
.end method
