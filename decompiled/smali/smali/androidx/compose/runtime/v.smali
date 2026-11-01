.class public final Landroidx/compose/runtime/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/b2;


# instance fields
.field private final a:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/v;->a:Lkotlinx/coroutines/n0;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/n0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/v;->a:Lkotlinx/coroutines/n0;

    return-object v0
.end method

.method public onAbandoned()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/v;->a:Lkotlinx/coroutines/n0;

    new-instance v1, Landroidx/compose/runtime/LeftCompositionCancellationException;

    invoke-direct {v1}, Landroidx/compose/runtime/LeftCompositionCancellationException;-><init>()V

    invoke-static {v0, v1}, Lkotlinx/coroutines/o0;->c(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public onForgotten()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/v;->a:Lkotlinx/coroutines/n0;

    new-instance v1, Landroidx/compose/runtime/LeftCompositionCancellationException;

    invoke-direct {v1}, Landroidx/compose/runtime/LeftCompositionCancellationException;-><init>()V

    invoke-static {v0, v1}, Lkotlinx/coroutines/o0;->c(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public onRemembered()V
    .locals 0

    return-void
.end method
