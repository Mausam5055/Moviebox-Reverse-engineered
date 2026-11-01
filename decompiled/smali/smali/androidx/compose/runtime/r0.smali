.class public final Landroidx/compose/runtime/r0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/b2;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function2;

.field private final b:Lkotlinx/coroutines/n0;

.field private c:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/r0;->a:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/r0;->b:Lkotlinx/coroutines/n0;

    return-void
.end method


# virtual methods
.method public onAbandoned()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/r0;->c:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/runtime/LeftCompositionCancellationException;

    invoke-direct {v1}, Landroidx/compose/runtime/LeftCompositionCancellationException;-><init>()V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/t1;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/r0;->c:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onForgotten()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/r0;->c:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/runtime/LeftCompositionCancellationException;

    invoke-direct {v1}, Landroidx/compose/runtime/LeftCompositionCancellationException;-><init>()V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/t1;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/r0;->c:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onRemembered()V
    .locals 10

    iget-object v0, p0, Landroidx/compose/runtime/r0;->c:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    const-string v1, "Old job was still running!"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlinx/coroutines/v1;->f(Lkotlinx/coroutines/t1;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Landroidx/compose/runtime/r0;->b:Lkotlinx/coroutines/n0;

    iget-object v7, p0, Landroidx/compose/runtime/r0;->a:Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/r0;->c:Lkotlinx/coroutines/t1;

    return-void
.end method
