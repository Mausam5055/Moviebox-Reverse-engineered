.class final Landroidx/work/impl/r1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/r1;->d(Lcom/google/common/util/concurrent/r;Landroidx/work/s;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/s;

.field final synthetic b:Lcom/google/common/util/concurrent/r;


# direct methods
.method constructor <init>(Landroidx/work/s;Lcom/google/common/util/concurrent/r;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/r1$a;->a:Landroidx/work/s;

    iput-object p2, p0, Landroidx/work/impl/r1$a;->b:Lcom/google/common/util/concurrent/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p1, Landroidx/work/impl/WorkerStoppedException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/r1$a;->a:Landroidx/work/s;

    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    invoke-virtual {p1}, Landroidx/work/impl/WorkerStoppedException;->getReason()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/work/s;->m(I)V

    :cond_0
    iget-object p1, p0, Landroidx/work/impl/r1$a;->b:Lcom/google/common/util/concurrent/r;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/work/impl/r1$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
