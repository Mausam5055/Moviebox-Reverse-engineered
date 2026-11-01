.class public final synthetic Lcom/cloud/tmc/integration/structure/node/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/model/listener/URLVisitListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisitStart(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/DataNode;
    .locals 0

    invoke-static {p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->b(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/DataNode;

    move-result-object p1

    return-object p1
.end method
