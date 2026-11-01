.class public final Lcom/cloud/tmc/miniapp/prepare/controller/OooO0o;
.super Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x0

    if-eq p3, v2, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    new-instance p3, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xc

    invoke-direct {p3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0OO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0OO;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo00;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo00;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;

    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    new-instance p3, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p4, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance p4, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;

    invoke-direct {p4}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;-><init>()V

    invoke-interface {p3, p4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;

    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p3, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    invoke-direct {v0, p4, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    invoke-direct {v0, p4, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;

    invoke-direct {v0, p4, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->bindContext(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->setInterceptors(Ljava/util/List;)V

    return-void
.end method
