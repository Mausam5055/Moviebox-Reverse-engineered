.class final Landroidx/compose/runtime/SnapshotMutableIntStateImpl$a;
.super Landroidx/compose/runtime/snapshots/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SnapshotMutableIntStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/e0;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$a;->c:I

    return-void
.end method


# virtual methods
.method public c(Landroidx/compose/runtime/snapshots/e0;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$a;

    iget p1, p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$a;->c:I

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$a;->c:I

    return-void
.end method

.method public d()Landroidx/compose/runtime/snapshots/e0;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$a;

    iget v1, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$a;->c:I

    invoke-direct {v0, v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$a;-><init>(I)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$a;->c:I

    return v0
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$a;->c:I

    return-void
.end method
