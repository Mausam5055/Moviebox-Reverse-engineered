.class public Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/offline/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

.field public final f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

.field public final g:J

.field public final h:J


# direct methods
.method private constructor <init>(IIJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->a:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->b:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->g:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->h:J

    iput p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->c:I

    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    iput-object p9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    iput-object p10, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    return-void
.end method

.method public constructor <init>(IIJJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;)V
    .locals 18

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_0

    move-wide v10, v3

    goto :goto_0

    :cond_0
    const-wide/32 v7, 0xf4240

    move-wide/from16 v5, p5

    move-wide/from16 v9, p3

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v5

    move-wide v10, v5

    :goto_0
    cmp-long v0, p7, v0

    if-nez v0, :cond_1

    :goto_1
    move-wide v12, v3

    goto :goto_2

    :cond_1
    const-wide/32 v14, 0xf4240

    move-wide/from16 v12, p7

    move-wide/from16 v16, p3

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v3

    goto :goto_1

    :goto_2
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    invoke-direct/range {v7 .. v17}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;-><init>(IIJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/offline/StreamKey;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    iget v7, v5, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    aget-object v6, v6, v7

    if-eq v6, v2, :cond_0

    if-eqz v2, :cond_0

    new-array v7, v3, [Lcom/google/android/exoplayer2/o1;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/exoplayer2/o1;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->b([Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v2, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->j:[Lcom/google/android/exoplayer2/o1;

    iget v5, v5, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    aget-object v2, v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object v2, v6

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-array v0, v3, [Lcom/google/android/exoplayer2/o1;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/o1;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->b([Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-array v0, v3, [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->a:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->b:I

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->g:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->h:J

    iget v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->c:I

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->d:Z

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;-><init>(IIJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;)V

    return-object p1
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->a(Ljava/util/List;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    move-result-object p1

    return-object p1
.end method
