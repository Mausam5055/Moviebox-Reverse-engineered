.class public abstract Landroidx/compose/runtime/snapshots/d0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/snapshots/c0;


# static fields
.field public static final $stable:I


# instance fields
.field private final readerKind:Landroidx/compose/runtime/AtomicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/AtomicInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/AtomicInt;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/snapshots/d0;->readerKind:Landroidx/compose/runtime/AtomicInt;

    return-void
.end method


# virtual methods
.method public final isReadIn-h_f27i8$runtime_release(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/d0;->readerKind:Landroidx/compose/runtime/AtomicInt;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/f;->a(I)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic mergeRecords(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/snapshots/b0;->a(Landroidx/compose/runtime/snapshots/c0;Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/e0;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object p1

    return-object p1
.end method

.method public final recordReadIn-h_f27i8$runtime_release(I)V
    .locals 3

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/d0;->readerKind:Landroidx/compose/runtime/AtomicInt;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/f;->a(I)I

    move-result v0

    and-int v1, v0, p1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    or-int v1, v0, p1

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/f;->a(I)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/snapshots/d0;->readerKind:Landroidx/compose/runtime/AtomicInt;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
