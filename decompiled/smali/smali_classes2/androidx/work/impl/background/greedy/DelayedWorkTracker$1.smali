.class Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/background/greedy/DelayedWorkTracker;->a(Landroidx/work/impl/model/j0;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

.field final synthetic val$workSpec:Landroidx/work/impl/model/j0;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/greedy/DelayedWorkTracker;Landroidx/work/impl/model/j0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;->this$0:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    iput-object p2, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;->val$workSpec:Landroidx/work/impl/model/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling work "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;->val$workSpec:Landroidx/work/impl/model/j0;

    iget-object v3, v3, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;->this$0:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    iget-object v0, v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->a:Landroidx/work/impl/u;

    iget-object v1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;->val$workSpec:Landroidx/work/impl/model/j0;

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/work/impl/model/j0;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Landroidx/work/impl/u;->b([Landroidx/work/impl/model/j0;)V

    return-void
.end method
