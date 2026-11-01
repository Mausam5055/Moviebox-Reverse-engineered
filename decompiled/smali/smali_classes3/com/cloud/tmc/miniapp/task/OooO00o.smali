.class public final Lcom/cloud/tmc/miniapp/task/OooO00o;
.super Lcom/cloud/tmc/offline/download/task/base/BaseTask;


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "uniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "execute"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "NormalTask"

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/task/OooO00o;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/task/OooO00o;->OooO0O0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getTrigger()Ljava/lang/String;
    .locals 1

    const-string v0, "normal"

    return-object v0
.end method

.method public run(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/task/OooO00o;->OooO0O0:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
