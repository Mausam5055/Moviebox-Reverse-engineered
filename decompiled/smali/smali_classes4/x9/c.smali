.class public Lx9/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/offline/c;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:Lx9/o;

.field public final j:Lx9/l;

.field public final k:Landroid/net/Uri;

.field public final l:Lx9/h;

.field private final m:Ljava/util/List;


# direct methods
.method public constructor <init>(JJJZJJJJLx9/h;Lx9/o;Lx9/l;Landroid/net/Uri;Ljava/util/List;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lx9/c;->a:J

    move-wide v1, p3

    iput-wide v1, v0, Lx9/c;->b:J

    move-wide v1, p5

    iput-wide v1, v0, Lx9/c;->c:J

    move v1, p7

    iput-boolean v1, v0, Lx9/c;->d:Z

    move-wide v1, p8

    iput-wide v1, v0, Lx9/c;->e:J

    move-wide v1, p10

    iput-wide v1, v0, Lx9/c;->f:J

    move-wide v1, p12

    iput-wide v1, v0, Lx9/c;->g:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lx9/c;->h:J

    move-object/from16 v1, p16

    iput-object v1, v0, Lx9/c;->l:Lx9/h;

    move-object/from16 v1, p17

    iput-object v1, v0, Lx9/c;->i:Lx9/o;

    move-object/from16 v1, p19

    iput-object v1, v0, Lx9/c;->k:Landroid/net/Uri;

    move-object/from16 v1, p18

    iput-object v1, v0, Lx9/c;->j:Lx9/l;

    if-nez p20, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p20

    :goto_0
    iput-object v1, v0, Lx9/c;->m:Ljava/util/List;

    return-void
.end method

.method private static b(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;
    .locals 13

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/StreamKey;

    iget v1, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget v3, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/a;

    iget-object v5, v4, Lx9/a;->c:Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iget v0, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx9/j;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/StreamKey;

    iget v6, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-ne v6, v1, :cond_2

    iget v6, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    if-eq v6, v3, :cond_1

    :cond_2
    new-instance v3, Lx9/a;

    iget v7, v4, Lx9/a;->a:I

    iget v8, v4, Lx9/a;->b:I

    iget-object v10, v4, Lx9/a;->d:Ljava/util/List;

    iget-object v11, v4, Lx9/a;->e:Ljava/util/List;

    iget-object v12, v4, Lx9/a;->f:Ljava/util/List;

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lx9/a;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-eq v3, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lx9/c;
    .locals 25

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v2, Lcom/google/android/exoplayer2/offline/StreamKey;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3, v3}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lx9/c;->d()I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v6, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/offline/StreamKey;

    iget v6, v6, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-eq v6, v5, :cond_0

    invoke-virtual {v0, v5}, Lx9/c;->e(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_1

    add-long/2addr v3, v9

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5}, Lx9/c;->c(I)Lx9/g;

    move-result-object v6

    iget-object v7, v6, Lx9/g;->c:Ljava/util/List;

    invoke-static {v7, v1}, Lx9/c;->b(Ljava/util/List;Ljava/util/LinkedList;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v7, Lx9/g;

    iget-object v9, v6, Lx9/g;->a:Ljava/lang/String;

    iget-wide v10, v6, Lx9/g;->b:J

    sub-long/2addr v10, v3

    iget-object v13, v6, Lx9/g;->d:Ljava/util/List;

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lx9/g;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-wide v5, v0, Lx9/c;->b:J

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    sub-long/2addr v5, v3

    move-wide v7, v5

    :cond_3
    new-instance v1, Lx9/c;

    move-object v4, v1

    iget-wide v5, v0, Lx9/c;->a:J

    iget-wide v9, v0, Lx9/c;->c:J

    iget-boolean v11, v0, Lx9/c;->d:Z

    iget-wide v12, v0, Lx9/c;->e:J

    iget-wide v14, v0, Lx9/c;->f:J

    move-object/from16 p1, v4

    iget-wide v3, v0, Lx9/c;->g:J

    move-wide/from16 v16, v3

    iget-wide v3, v0, Lx9/c;->h:J

    move-wide/from16 v18, v3

    iget-object v3, v0, Lx9/c;->l:Lx9/h;

    move-object/from16 v20, v3

    iget-object v3, v0, Lx9/c;->i:Lx9/o;

    move-object/from16 v21, v3

    iget-object v3, v0, Lx9/c;->j:Lx9/l;

    move-object/from16 v22, v3

    iget-object v3, v0, Lx9/c;->k:Landroid/net/Uri;

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move-object/from16 v4, p1

    invoke-direct/range {v4 .. v24}, Lx9/c;-><init>(JJJZJJJJLx9/h;Lx9/o;Lx9/l;Landroid/net/Uri;Ljava/util/List;)V

    return-object v1
.end method

.method public final c(I)Lx9/g;
    .locals 1

    iget-object v0, p0, Lx9/c;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx9/g;

    return-object p1
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lx9/c;->a(Ljava/util/List;)Lx9/c;

    move-result-object p1

    return-object p1
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lx9/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e(I)J
    .locals 5

    iget-object v0, p0, Lx9/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lx9/c;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lx9/c;->m:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx9/g;

    iget-wide v2, p1, Lx9/g;->b:J

    :goto_0
    sub-long v2, v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lx9/c;->m:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx9/g;

    iget-wide v0, v0, Lx9/g;->b:J

    iget-object v2, p0, Lx9/c;->m:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx9/g;

    iget-wide v2, p1, Lx9/g;->b:J

    goto :goto_0

    :goto_1
    return-wide v2
.end method

.method public final f(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lx9/c;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide v0

    return-wide v0
.end method
