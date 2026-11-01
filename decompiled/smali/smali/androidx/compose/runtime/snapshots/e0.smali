.class public abstract Landroidx/compose/runtime/snapshots/e0;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroidx/compose/runtime/snapshots/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->H()Landroidx/compose/runtime/snapshots/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/snapshots/e0;->a:I

    return-void
.end method


# virtual methods
.method public abstract c(Landroidx/compose/runtime/snapshots/e0;)V
.end method

.method public abstract d()Landroidx/compose/runtime/snapshots/e0;
.end method

.method public final e()Landroidx/compose/runtime/snapshots/e0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/e0;->b:Landroidx/compose/runtime/snapshots/e0;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/e0;->a:I

    return v0
.end method

.method public final g(Landroidx/compose/runtime/snapshots/e0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/e0;->b:Landroidx/compose/runtime/snapshots/e0;

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/snapshots/e0;->a:I

    return-void
.end method
