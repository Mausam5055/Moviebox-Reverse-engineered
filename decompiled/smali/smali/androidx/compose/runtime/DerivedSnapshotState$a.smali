.class public final Landroidx/compose/runtime/DerivedSnapshotState$a;
.super Landroidx/compose/runtime/snapshots/e0;

# interfaces
.implements Landroidx/compose/runtime/z$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/DerivedSnapshotState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/DerivedSnapshotState$a$a;
    }
.end annotation


# static fields
.field public static final h:Landroidx/compose/runtime/DerivedSnapshotState$a$a;

.field public static final i:I

.field private static final j:Ljava/lang/Object;


# instance fields
.field private c:I

.field private d:I

.field private e:Landroidx/collection/p0;

.field private f:Ljava/lang/Object;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/DerivedSnapshotState$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/DerivedSnapshotState$a;->h:Landroidx/compose/runtime/DerivedSnapshotState$a$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/DerivedSnapshotState$a;->i:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/DerivedSnapshotState$a;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/e0;-><init>()V

    invoke-static {}, Landroidx/collection/q0;->a()Landroidx/collection/p0;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->e:Landroidx/collection/p0;

    sget-object v0, Landroidx/compose/runtime/DerivedSnapshotState$a;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->f:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic i()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/DerivedSnapshotState$a;->j:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Landroidx/collection/p0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->e:Landroidx/collection/p0;

    return-object v0
.end method

.method public c(Landroidx/compose/runtime/snapshots/e0;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState.ResultRecord>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/DerivedSnapshotState$a;

    invoke-virtual {p1}, Landroidx/compose/runtime/DerivedSnapshotState$a;->b()Landroidx/collection/p0;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/DerivedSnapshotState$a;->m(Landroidx/collection/p0;)V

    iget-object v0, p1, Landroidx/compose/runtime/DerivedSnapshotState$a;->f:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->f:Ljava/lang/Object;

    iget p1, p1, Landroidx/compose/runtime/DerivedSnapshotState$a;->g:I

    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->g:I

    return-void
.end method

.method public d()Landroidx/compose/runtime/snapshots/e0;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState$a;

    invoke-direct {v0}, Landroidx/compose/runtime/DerivedSnapshotState$a;-><init>()V

    return-object v0
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Landroidx/compose/runtime/z;Landroidx/compose/runtime/snapshots/j;)Z
    .locals 5

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->c:I

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->d:I

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->j()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    monitor-exit v0

    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->f:Ljava/lang/Object;

    sget-object v2, Landroidx/compose/runtime/DerivedSnapshotState$a;->j:Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    if-eqz v1, :cond_3

    iget v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->g:I

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/DerivedSnapshotState$a;->l(Landroidx/compose/runtime/z;Landroidx/compose/runtime/snapshots/j;)I

    move-result p1

    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->f()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->c:I

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/j;->j()I

    move-result p2

    iput p2, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->d:I

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    goto :goto_3

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_4
    :goto_3
    return v3

    :goto_4
    monitor-exit v0

    throw p1
.end method

.method public final l(Landroidx/compose/runtime/z;Landroidx/compose/runtime/snapshots/j;)I
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const/4 v2, 0x1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->I()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/DerivedSnapshotState$a;->b()Landroidx/collection/p0;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    invoke-virtual {v4}, Landroidx/collection/p0;->g()Z

    move-result v3

    const/4 v5, 0x7

    if-eqz v3, :cond_b

    invoke-static {}, Landroidx/compose/runtime/r2;->a()Landroidx/compose/runtime/collection/b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    :cond_0
    aget-object v10, v8, v9

    check-cast v10, Landroidx/compose/runtime/a0;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/a0;->b(Landroidx/compose/runtime/z;)V

    add-int/2addr v9, v2

    if-lt v9, v6, :cond_0

    :cond_1
    :try_start_1
    iget-object v6, v4, Landroidx/collection/p0;->b:[Ljava/lang/Object;

    iget-object v8, v4, Landroidx/collection/p0;->c:[I

    iget-object v4, v4, Landroidx/collection/p0;->a:[J

    array-length v9, v4

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_8

    move v11, v5

    const/4 v10, 0x0

    :goto_0
    aget-wide v12, v4, v10

    not-long v14, v12

    shl-long/2addr v14, v5

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_7

    sub-int v14, v10, v9

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v14, :cond_5

    const-wide/16 v17, 0xff

    and-long v17, v12, v17

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_4

    shl-int/lit8 v17, v10, 0x3

    add-int v17, v17, v5

    aget-object v18, v6, v17

    aget v7, v8, v17

    move-object/from16 v15, v18

    check-cast v15, Landroidx/compose/runtime/snapshots/c0;

    if-eq v7, v2, :cond_2

    goto :goto_3

    :cond_2
    instance-of v7, v15, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz v7, :cond_3

    check-cast v15, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/DerivedSnapshotState;->c(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v7

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_3
    invoke-interface {v15}, Landroidx/compose/runtime/snapshots/c0;->getFirstStateRecord()Landroidx/compose/runtime/snapshots/e0;

    move-result-object v7

    invoke-static {v7, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->G(Landroidx/compose/runtime/snapshots/e0;Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/e0;

    move-result-object v7

    :goto_2
    mul-int/lit8 v11, v11, 0x1f

    invoke-static {v7}, Landroidx/compose/runtime/b;->c(Ljava/lang/Object;)I

    move-result v15

    add-int/2addr v11, v15

    mul-int/lit8 v11, v11, 0x1f

    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/e0;->f()I

    move-result v7

    add-int/2addr v11, v7

    :goto_3
    const/16 v7, 0x8

    goto :goto_4

    :cond_4
    move v7, v15

    :goto_4
    shr-long/2addr v12, v7

    add-int/2addr v5, v2

    move v15, v7

    goto :goto_1

    :cond_5
    move v7, v15

    if-ne v14, v7, :cond_6

    goto :goto_5

    :cond_6
    move v5, v11

    goto :goto_6

    :cond_7
    :goto_5
    if-eq v10, v9, :cond_6

    add-int/2addr v10, v2

    const/4 v5, 0x7

    goto :goto_0

    :cond_8
    const/4 v5, 0x7

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x0

    :cond_9
    aget-object v4, v3, v7

    check-cast v4, Landroidx/compose/runtime/a0;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/a0;->a(Landroidx/compose/runtime/z;)V

    add-int/2addr v7, v2

    if-lt v7, v0, :cond_9

    goto :goto_9

    :goto_7
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x0

    :goto_8
    aget-object v5, v3, v7

    check-cast v5, Landroidx/compose/runtime/a0;

    invoke-interface {v5, v1}, Landroidx/compose/runtime/a0;->a(Landroidx/compose/runtime/z;)V

    add-int/2addr v7, v2

    if-ge v7, v4, :cond_a

    goto :goto_8

    :cond_a
    throw v0

    :cond_b
    const/4 v5, 0x7

    :cond_c
    :goto_9
    return v5

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v3

    throw v1
.end method

.method public m(Landroidx/collection/p0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->e:Landroidx/collection/p0;

    return-void
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->f:Ljava/lang/Object;

    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->g:I

    return-void
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->c:I

    return-void
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$a;->d:I

    return-void
.end method
