.class final Lcom/google/android/exoplayer2/source/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lcom/google/android/exoplayer2/source/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/q$a;,
        Lcom/google/android/exoplayer2/source/q$c;,
        Lcom/google/android/exoplayer2/source/q$b;
    }
.end annotation


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/source/n;

.field private final b:Ljava/util/IdentityHashMap;

.field private final c:Lt9/d;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/HashMap;

.field private f:Lcom/google/android/exoplayer2/source/n$a;

.field private g:Lt9/x;

.field private h:[Lcom/google/android/exoplayer2/source/n;

.field private i:Lcom/google/android/exoplayer2/source/b0;


# direct methods
.method public varargs constructor <init>(Lt9/d;[J[Lcom/google/android/exoplayer2/source/n;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->c:Lt9/d;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {p1, v1}, Lt9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->b:Ljava/util/IdentityHashMap;

    new-array p1, v0, [Lcom/google/android/exoplayer2/source/n;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    :goto_0
    array-length p1, p3

    if-ge v0, p1, :cond_1

    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    new-instance v3, Lcom/google/android/exoplayer2/source/q$b;

    aget-object v4, p3, v0

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/exoplayer2/source/q$b;-><init>(Lcom/google/android/exoplayer2/source/n;J)V

    aput-object v3, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/c3;)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    aget-object v0, v0, v2

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->a(JLcom/google/android/exoplayer2/c3;)J

    move-result-wide p1

    return-wide p1
.end method

.method public b([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJ)J
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    :goto_0
    array-length v7, v1

    const/4 v8, 0x0

    if-ge v6, v7, :cond_4

    aget-object v7, v2, v6

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/q;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    :goto_1
    const/4 v7, -0x1

    if-nez v8, :cond_1

    move v8, v7

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    aput v8, v3, v6

    aput v7, v4, v6

    aget-object v8, v1, v6

    if-eqz v8, :cond_3

    invoke-interface {v8}, Lla/m;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/q;->e:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    array-length v11, v10

    if-ge v9, v11, :cond_3

    aget-object v10, v10, v9

    invoke-interface {v10}, Lcom/google/android/exoplayer2/source/n;->getTrackGroups()Lt9/x;

    move-result-object v10

    invoke-virtual {v10, v8}, Lt9/x;->c(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    if-eq v10, v7, :cond_2

    aput v9, v4, v6

    goto :goto_4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/q;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    array-length v6, v1

    new-array v7, v6, [Lt9/s;

    array-length v9, v1

    new-array v9, v9, [Lt9/s;

    array-length v10, v1

    new-array v15, v10, [Lcom/google/android/exoplayer2/trackselection/h;

    new-instance v14, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    array-length v10, v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v17, p5

    const/4 v13, 0x0

    :goto_5
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    array-length v10, v10

    if-ge v13, v10, :cond_f

    const/4 v10, 0x0

    :goto_6
    array-length v11, v1

    if-ge v10, v11, :cond_7

    aget v11, v3, v10

    if-ne v11, v13, :cond_5

    aget-object v11, v2, v10

    goto :goto_7

    :cond_5
    move-object v11, v8

    :goto_7
    aput-object v11, v9, v10

    aget v11, v4, v10

    if-ne v11, v13, :cond_6

    aget-object v11, v1, v10

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v11}, Lla/m;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v12

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/q;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-instance v12, Lcom/google/android/exoplayer2/source/q$a;

    invoke-direct {v12, v11, v5}, Lcom/google/android/exoplayer2/source/q$a;-><init>(Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v12, v15, v10

    goto :goto_8

    :cond_6
    aput-object v8, v15, v10

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    aget-object v10, v5, v13

    move-object v11, v15

    move-object/from16 v12, p2

    move v5, v13

    move-object v13, v9

    move-object v8, v14

    move-object/from16 v14, p4

    move-object/from16 v19, v15

    move-wide/from16 v15, v17

    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/n;->b([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJ)J

    move-result-wide v10

    if-nez v5, :cond_8

    move-wide/from16 v17, v10

    goto :goto_9

    :cond_8
    cmp-long v10, v10, v17

    if-nez v10, :cond_e

    :goto_9
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_a
    array-length v12, v1

    if-ge v10, v12, :cond_c

    aget v12, v4, v10

    const/4 v13, 0x1

    if-ne v12, v5, :cond_9

    aget-object v11, v9, v10

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lt9/s;

    aget-object v12, v9, v10

    aput-object v12, v7, v10

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/q;->b:Ljava/util/IdentityHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v11, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v13

    goto :goto_c

    :cond_9
    aget v12, v3, v10

    if-ne v12, v5, :cond_b

    aget-object v12, v9, v10

    if-nez v12, :cond_a

    goto :goto_b

    :cond_a
    const/4 v13, 0x0

    :goto_b
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    :cond_b
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_d

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    aget-object v10, v10, v5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v13, v5, 0x1

    move-object v14, v8

    move-object/from16 v15, v19

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object v8, v14

    const/4 v1, 0x0

    invoke-static {v7, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/n;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/n;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/q;->c:Lt9/d;

    invoke-interface {v2, v1}, Lt9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    return-wide v17
.end method

.method public c(I)Lcom/google/android/exoplayer2/source/n;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    aget-object p1, v0, p1

    instance-of v0, p1, Lcom/google/android/exoplayer2/source/q$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/source/q$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/q$b;->c(Lcom/google/android/exoplayer2/source/q$b;)Lcom/google/android/exoplayer2/source/n;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public continueLoading(J)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/n;->continueLoading(J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->f:Lcom/google/android/exoplayer2/source/n$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/exoplayer2/source/n;->e(Lcom/google/android/exoplayer2/source/n$a;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->f:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    return-void
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q;->f(Lcom/google/android/exoplayer2/source/n;)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lt9/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->g:Lt9/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt9/x;

    return-object v0
.end method

.method public h(Lcom/google/android/exoplayer2/source/n;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/n;->getTrackGroups()Lt9/x;

    move-result-object v4

    iget v4, v4, Lt9/x;->a:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    move v0, v1

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/n;->getTrackGroups()Lt9/x;

    move-result-object v3

    iget v4, v3, Lt9/x;->a:I

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/q;->e:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    aput-object v7, p1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lt9/x;

    invoke-direct {v0, p1}, Lt9/x;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q;->g:Lt9/x;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->f:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->a:[Lcom/google/android/exoplayer2/source/n;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/n;->maybeThrowPrepareError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 15

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    array-length v1, v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_8

    aget-object v8, v0, v5

    invoke-interface {v8}, Lcom/google/android/exoplayer2/source/n;->readDiscontinuity()J

    move-result-wide v9

    cmp-long v11, v9, v2

    const-string v12, "Unexpected child seekToUs result."

    if-eqz v11, :cond_5

    cmp-long v11, v6, v2

    if-nez v11, :cond_3

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    array-length v7, v6

    move v11, v4

    :goto_1
    if-ge v11, v7, :cond_2

    aget-object v13, v6, v11

    if-ne v13, v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v13, v9, v10}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-nez v13, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    move-wide v6, v9

    goto :goto_3

    :cond_3
    cmp-long v8, v9, v6

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Conflicting discontinuities."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    cmp-long v9, v6, v2

    if-eqz v9, :cond_7

    invoke-interface {v8, v6, v7}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    return-wide v6
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->i:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    move-result-wide p1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q;->h:[Lcom/google/android/exoplayer2/source/n;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide p1
.end method
