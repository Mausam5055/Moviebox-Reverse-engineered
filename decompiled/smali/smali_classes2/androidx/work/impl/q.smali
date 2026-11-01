.class public final synthetic Landroidx/work/impl/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/s;

.field public final synthetic b:Lcom/google/common/util/concurrent/r;

.field public final synthetic c:Landroidx/work/impl/WorkerWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/s;Lcom/google/common/util/concurrent/r;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/q;->a:Landroidx/work/impl/s;

    iput-object p2, p0, Landroidx/work/impl/q;->b:Lcom/google/common/util/concurrent/r;

    iput-object p3, p0, Landroidx/work/impl/q;->c:Landroidx/work/impl/WorkerWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/q;->a:Landroidx/work/impl/s;

    iget-object v1, p0, Landroidx/work/impl/q;->b:Lcom/google/common/util/concurrent/r;

    iget-object v2, p0, Landroidx/work/impl/q;->c:Landroidx/work/impl/WorkerWrapper;

    invoke-static {v0, v1, v2}, Landroidx/work/impl/s;->d(Landroidx/work/impl/s;Lcom/google/common/util/concurrent/r;Landroidx/work/impl/WorkerWrapper;)V

    return-void
.end method
