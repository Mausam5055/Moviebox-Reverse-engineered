.class public final Landroidx/compose/runtime/snapshots/t$a;
.super Landroidx/compose/runtime/snapshots/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private c:Lt/g;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lt/g;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/e0;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/t$a;->c:Lt/g;

    return-void
.end method


# virtual methods
.method public c(Landroidx/compose/runtime/snapshots/e0;)V
    .locals 2

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord, V of androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/snapshots/t$a;

    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroidx/compose/runtime/snapshots/t$a;->c:Lt/g;

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/t$a;->c:Lt/g;

    iget p1, p1, Landroidx/compose/runtime/snapshots/t$a;->d:I

    iput p1, p0, Landroidx/compose/runtime/snapshots/t$a;->d:I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public d()Landroidx/compose/runtime/snapshots/e0;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/snapshots/t$a;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/t$a;->c:Lt/g;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/t$a;-><init>(Lt/g;)V

    return-object v0
.end method

.method public final i()Lt/g;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/t$a;->c:Lt/g;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/snapshots/t$a;->d:I

    return v0
.end method

.method public final k(Lt/g;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/t$a;->c:Lt/g;

    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/snapshots/t$a;->d:I

    return-void
.end method
