.class public final synthetic Lcom/cloud/tmc/integration/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/App;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/c;->a:Lcom/cloud/tmc/integration/structure/App;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/c;->a:Lcom/cloud/tmc/integration/structure/App;

    invoke-static {v0}, Lcom/cloud/tmc/integration/MsgDispatcher;->a(Lcom/cloud/tmc/integration/structure/App;)V

    return-void
.end method
