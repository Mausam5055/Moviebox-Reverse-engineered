.class public final Landroidx/compose/runtime/snapshots/SnapshotIdSet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;
    }
.end annotation


# static fields
.field public static final e:Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;

.field private static final f:Landroidx/compose/runtime/snapshots/SnapshotIdSet;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I

.field private final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e:Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-void
.end method

.method private constructor <init>(JJI[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    iput-wide p3, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    iput p5, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    iput-object p6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    return-object p0
.end method

.method public static final synthetic c()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-object v0
.end method

.method public static final synthetic e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    return p0
.end method

.method public static final synthetic f(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    return-wide v0
.end method

.method public static final synthetic h(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    return-wide v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->b(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final j(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 12

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object v0

    :cond_1
    iget v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    iget v6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    if-ne v0, v6, :cond_2

    iget-object v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    iget-object v7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    if-ne v0, v7, :cond_2

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    iget-wide v3, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    not-long v3, v3

    and-long v2, v1, v3

    iget-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    iget-wide v8, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    not-long v8, v8

    and-long/2addr v4, v8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    move-object v4, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget v5, v0, v3

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v4, p0

    :cond_4
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    const-wide/16 v2, 0x1

    const/16 v7, 0x40

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_6

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v8

    shl-long v10, v2, v0

    and-long/2addr v8, v10

    cmp-long v8, v8, v5

    if-eqz v8, :cond_5

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->h(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v8

    cmp-long v0, v8, v5

    if-eqz v0, :cond_8

    :goto_2
    if-ge v1, v7, :cond_8

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->h(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v8

    shl-long v10, v2, v1

    and-long/2addr v8, v10

    cmp-long v0, v8, v5

    if-eqz v0, :cond_7

    add-int/lit8 v0, v1, 0x40

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v8

    add-int/2addr v0, v8

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->l(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    move-object v4, v0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move-object v0, v4

    :goto_3
    return-object v0
.end method

.method public final l(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    sub-int v2, v1, v6

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x1

    const/16 v5, 0x40

    if-ltz v2, :cond_0

    if-ge v2, v5, :cond_0

    shl-long v1, v7, v2

    iget-wide v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    and-long v9, v7, v1

    cmp-long v3, v9, v3

    if-eqz v3, :cond_5

    new-instance v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    not-long v1, v1

    and-long/2addr v7, v1

    iget-object v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    move-object v1, v9

    move-wide v2, v3

    move-wide v4, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v9

    :cond_0
    if-lt v2, v5, :cond_1

    const/16 v9, 0x80

    if-ge v2, v9, :cond_1

    sub-int/2addr v2, v5

    shl-long v1, v7, v2

    iget-wide v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    and-long v9, v7, v1

    cmp-long v3, v9, v3

    if-eqz v3, :cond_5

    new-instance v9, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    not-long v1, v1

    and-long v2, v7, v1

    iget-wide v4, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    iget-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v9

    :cond_1
    if-gez v2, :cond_5

    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    if-eqz v2, :cond_5

    invoke-static {v2, v1}, Landroidx/compose/runtime/snapshots/m;->a([II)I

    move-result v1

    if-ltz v1, :cond_5

    array-length v3, v2

    add-int/lit8 v4, v3, -0x1

    if-nez v4, :cond_2

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    iget-wide v8, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    iget v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    const/4 v11, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v1

    :cond_2
    new-array v5, v4, [I

    if-lez v1, :cond_3

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v6, v1}, Lkotlin/collections/ArraysKt;->l([I[IIII)[I

    :cond_3
    if-ge v1, v4, :cond_4

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v5, v1, v4, v3}, Lkotlin/collections/ArraysKt;->l([I[IIII)[I

    :cond_4
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    iget-wide v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    iget v4, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    move-object v12, v1

    move-wide v15, v2

    move/from16 v17, v4

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v1

    :cond_5
    return-object v0
.end method

.method public final m(I)Z
    .locals 10

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    sub-int v0, p1, v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x40

    const/4 v7, 0x0

    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    shl-long/2addr v3, v0

    iget-wide v8, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    and-long/2addr v3, v8

    cmp-long p1, v3, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    return v5

    :cond_1
    if-lt v0, v6, :cond_3

    const/16 v8, 0x80

    if-ge v0, v8, :cond_3

    sub-int/2addr v0, v6

    shl-long/2addr v3, v0

    iget-wide v8, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    and-long/2addr v3, v8

    cmp-long p1, v3, v1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    return v5

    :cond_3
    if-lez v0, :cond_4

    return v7

    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    if-eqz v0, :cond_6

    invoke-static {v0, p1}, Landroidx/compose/runtime/snapshots/m;->a([II)I

    move-result p1

    if-ltz p1, :cond_5

    goto :goto_2

    :cond_5
    move v5, v7

    :goto_2
    move v7, v5

    :cond_6
    return v7
.end method

.method public final n(I)I
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1

    :cond_0
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    :cond_1
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    add-int/lit8 p1, p1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    add-int/2addr p1, v0

    :cond_2
    return p1
.end method

.method public final o(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 12

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object p1

    :cond_1
    iget v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    iget v6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    if-ne v0, v6, :cond_2

    iget-object v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    iget-object v7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    if-ne v0, v7, :cond_2

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    iget-wide v3, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    or-long v2, v1, v3

    iget-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    iget-wide v8, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    or-long/2addr v4, v8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    goto/16 :goto_6

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    const-wide/16 v1, 0x1

    const/16 v3, 0x40

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-nez v0, :cond_8

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[I

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v7, v0

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_3

    aget v9, v0, v8

    invoke-virtual {p1, v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_5

    move v0, v4

    :goto_1
    if-ge v0, v3, :cond_5

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v1, v0

    and-long/2addr v7, v9

    cmp-long v7, v7, v5

    if-eqz v7, :cond_4

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->h(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_7

    :goto_2
    if-ge v4, v3, :cond_7

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->h(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v1, v4

    and-long/2addr v7, v9

    cmp-long v0, v7, v5

    if-eqz v0, :cond_6

    add-int/lit8 v0, v4, 0x40

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move-object v0, p1

    goto :goto_6

    :cond_8
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[I

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v7, v0

    move-object v9, p0

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_a

    aget v10, v0, v8

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    move-object v9, p0

    :cond_a
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_c

    move v0, v4

    :goto_4
    if-ge v0, v3, :cond_c

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->f(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v10, v1, v0

    and-long/2addr v7, v10

    cmp-long v7, v7, v5

    if-eqz v7, :cond_b

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v7

    move-object v9, v7

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->h(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_e

    :goto_5
    if-ge v4, v3, :cond_e

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->h(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v10, v1, v4

    and-long/2addr v7, v10

    cmp-long v0, v7, v5

    if-eqz v0, :cond_d

    add-int/lit8 v0, v4, 0x40

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    move-object v9, v0

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_e
    move-object v0, v9

    :goto_6
    return-object v0
.end method

.method public final p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    sub-int v2, v1, v6

    const-wide/16 v3, 0x1

    const-wide/16 v7, 0x0

    const/16 v5, 0x40

    if-ltz v2, :cond_0

    if-ge v2, v5, :cond_0

    shl-long v1, v3, v2

    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    and-long v9, v3, v1

    cmp-long v5, v9, v7

    if-nez v5, :cond_c

    new-instance v8, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    or-long v4, v3, v1

    iget-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    move-object v1, v8

    move-wide v2, v9

    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v8

    :cond_0
    const/16 v9, 0x80

    if-lt v2, v5, :cond_1

    if-ge v2, v9, :cond_1

    sub-int/2addr v2, v5

    shl-long v1, v3, v2

    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    and-long v9, v3, v1

    cmp-long v5, v9, v7

    if-nez v5, :cond_c

    new-instance v8, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    or-long v2, v3, v1

    iget-wide v4, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    iget-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v8

    :cond_1
    if-lt v2, v9, :cond_a

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m(I)Z

    move-result v2

    if-nez v2, :cond_c

    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    iget v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    add-int/lit8 v6, v1, 0x1

    div-int/2addr v6, v5

    mul-int/2addr v6, v5

    const/4 v9, 0x0

    move-wide v14, v13

    move-wide v12, v11

    :goto_0
    if-ge v2, v6, :cond_7

    cmp-long v11, v14, v7

    if-eqz v11, :cond_5

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    if-eqz v11, :cond_2

    array-length v10, v11

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_2

    aget v8, v11, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_4

    shl-long v10, v3, v7

    and-long/2addr v10, v14

    const-wide/16 v17, 0x0

    cmp-long v8, v10, v17

    if-eqz v8, :cond_3

    add-int v8, v7, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v7, 0x0

    :cond_5
    cmp-long v10, v12, v7

    if-nez v10, :cond_6

    move/from16 v16, v6

    move-wide v14, v7

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x40

    move-wide v14, v12

    move-wide v12, v7

    goto :goto_0

    :cond_7
    move/from16 v16, v2

    :goto_3
    new-instance v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-eqz v9, :cond_9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->Q0(Ljava/util/Collection;)[I

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v17, v3

    goto :goto_6

    :cond_9
    :goto_5
    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    goto :goto_4

    :goto_6
    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->p(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v1

    return-object v1

    :cond_a
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->d:[I

    if-nez v2, :cond_b

    new-instance v8, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v2, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    iget-wide v4, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    filled-new-array/range {p1 .. p1}, [I

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v8

    :cond_b
    invoke-static {v2, v1}, Landroidx/compose/runtime/snapshots/m;->a([II)I

    move-result v3

    if-gez v3, :cond_c

    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    array-length v4, v2

    add-int/lit8 v5, v4, 0x1

    new-array v12, v5, [I

    const/4 v5, 0x0

    invoke-static {v2, v12, v5, v5, v3}, Lkotlin/collections/ArraysKt;->l([I[IIII)[I

    add-int/lit8 v5, v3, 0x1

    invoke-static {v2, v12, v5, v3, v4}, Lkotlin/collections/ArraysKt;->l([I[IIII)[I

    aput v1, v12, v3

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->a:J

    iget-wide v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->b:J

    iget v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->c:I

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJI[I)V

    return-object v1

    :cond_c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Landroidx/compose/runtime/snapshots/a;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
