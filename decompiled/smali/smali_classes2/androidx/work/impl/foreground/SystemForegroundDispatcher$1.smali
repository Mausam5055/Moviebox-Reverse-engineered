.class Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

.field final synthetic val$workSpecId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/work/impl/foreground/SystemForegroundDispatcher;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->this$0:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iput-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->val$workSpecId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->this$0:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    invoke-static {v0}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->a(Landroidx/work/impl/foreground/SystemForegroundDispatcher;)Landroidx/work/impl/f1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/f1;->q()Landroidx/work/impl/s;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->val$workSpecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/work/impl/s;->g(Ljava/lang/String;)Landroidx/work/impl/model/j0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/work/impl/model/j0;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->this$0:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v1, v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->this$0:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v2, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->g:Ljava/util/Map;

    invoke-static {v0}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->this$0:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v3, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->i:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-static {v2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->b(Landroidx/work/impl/foreground/SystemForegroundDispatcher;)Lj4/c;

    move-result-object v2

    invoke-interface {v2}, Lj4/c;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    iget-object v4, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->this$0:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    invoke-static {v3, v0, v2, v4}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->e(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Lkotlinx/coroutines/i0;Landroidx/work/impl/constraints/h;)Lkotlinx/coroutines/t1;

    move-result-object v2

    iget-object v3, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->this$0:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v3, v3, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->h:Ljava/util/Map;

    invoke-static {v0}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
