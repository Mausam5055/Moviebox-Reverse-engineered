.class final Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$a;
.super Landroidx/compose/runtime/snapshots/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private c:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/e0;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$a;->c:F

    return-void
.end method


# virtual methods
.method public c(Landroidx/compose/runtime/snapshots/e0;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$a;

    iget p1, p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$a;->c:F

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$a;->c:F

    return-void
.end method

.method public d()Landroidx/compose/runtime/snapshots/e0;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$a;

    iget v1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$a;->c:F

    invoke-direct {v0, v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$a;-><init>(F)V

    return-object v0
.end method

.method public final i()F
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$a;->c:F

    return v0
.end method

.method public final j(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$a;->c:F

    return-void
.end method
