.class public abstract Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;
.implements Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0O0;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tmcresource:PrepareController"


# instance fields
.field public callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

.field public context:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public currentExecutingStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

.field public errorIntercepted:Z

.field private interceptedBeforeSteps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;",
            ">;"
        }
    .end annotation
.end field

.field public interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;",
            ">;"
        }
    .end annotation
.end field

.field private locked:Z

.field private lockedKey:Ljava/lang/Object;

.field private pendingAfterStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

.field private status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

.field public steps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;",
            ">;"
        }
    .end annotation
.end field

.field public timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptedBeforeSteps:Ljava/util/Set;

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->INIT:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->errorIntercepted:Z

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0OO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0OO;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo00;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo00;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    invoke-static {}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    invoke-static {}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO00o()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0O0;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0O0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO00o;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    invoke-static {}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0OO()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs constructor <init>([Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptedBeforeSteps:Ljava/util/Set;

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->INIT:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->errorIntercepted:Z

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    return-void
.end method

.method private interceptAfter(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)Z
    .locals 5

    const-string v0, "step "

    const-string v1, "Tmcresource:PrepareController"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " interceptAfter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;

    invoke-interface {v3, p1, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " intercepted after by "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->finish()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->finish()V

    const/4 p1, 0x0

    return p1

    :goto_0
    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->finish()V

    throw v0
.end method

.method private interceptBefore(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)Z
    .locals 5

    const-string v0, "step "

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " interceptBefore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tmcresource:PrepareController"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptedBeforeSteps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;

    invoke-interface {v3, p1, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " intercepted before by "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private interceptOnError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;

    invoke-interface {v1, p1, p0}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public bindContext(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    return-void
.end method

.method public createTimer(Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0O0;)Lcom/cloud/tmc/miniapp/prepare/controller/OooO;
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;-><init>(Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0O0;Lcom/cloud/tmc/miniapp/prepare/controller/OooOO0;)V

    return-object v0
.end method

.method public finish()V
    .locals 3

    const-string v0, "Tmcresource:PrepareController"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->FINISH:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0O0:Z

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/controller/OooOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;->OooO00o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public getStatus()Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    return-object v0
.end method

.method public lock(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locked with key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tmcresource:PrepareController"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    return-void
.end method

.method public moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->canContinue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->errorIntercepted:Z

    return-void

    :cond_0
    const-string v0, "Tmcresource:PrepareController"

    const-string v2, "moveToError!"

    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->unlock(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->errorIntercepted:Z

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptOnError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->errorIntercepted:Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/PrepareContext;->getPrepareData()Lcom/cloud/tmc/integration/model/PrepareData;

    move-result-object v3

    :goto_0
    invoke-interface {v2, v3, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareData;Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_3
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    sget-object p1, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->ERROR:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    if-eqz v0, :cond_4

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0O0:Z

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/controller/OooOO0;

    check-cast p1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;->OooO00o:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public moveToNext()V
    .locals 6

    const-string v0, "step "

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    const-string v2, "Tmcresource:PrepareController"

    if-eqz v1, :cond_0

    const-string v0, "controller locked by "

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->currentExecutingStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot moveToNext!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->canContinue()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "controller cannot moveToNext with status: "

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->EXECUTING:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->pendingAfterStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptAfter(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)Z

    move-result v1

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->pendingAfterStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    invoke-interface {v1, p0, v4, v5}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->currentExecutingStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptedBeforeSteps:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptBefore(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " execute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->pendingAfterStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    invoke-interface {v1, p0, v4, v5}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    :try_end_0
    .catch Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    if-nez v4, :cond_6

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO00o()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->canContinue()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " can\'t continue after execute. status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->pendingAfterStep:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptAfter(Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToNext()V

    goto :goto_1

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " execute error!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->finish()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onGetAppInfo(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/model/AppModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onTimeout(J)V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR_TIMEOUT with elapsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "3"

    invoke-direct {v0, p2, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    return-void
.end method

.method public postTimeOut(J)V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->createTimer(Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0O0;)Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postTimeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tmcresource:PrepareController"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->timer:Lcom/cloud/tmc/miniapp/prepare/controller/OooO;

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO0O0:Z

    iget-wide v2, v1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;->OooO00o:J

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/controller/OooOO0;

    check-cast v4, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;

    iget-object v4, v4, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;->OooO00o:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    invoke-direct {v1, v0, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/prepare/controller/OooO;J)V

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO0OO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/controller/OooOO0;

    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/prepare/controller/OooO$OooO00o;->OooO00o:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setInterceptors(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->status:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;->INIT:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController$Status;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->context:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->callback:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Ooo;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot set interceptor after execute"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->moveToNext()V

    return-void
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unlocked with key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lockedKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tmcresource:PrepareController"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->locked:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->lockedKey:Ljava/lang/Object;

    return-void
.end method
