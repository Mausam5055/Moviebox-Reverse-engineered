.class public abstract Lx9/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx9/j$b;,
        Lx9/j$c;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/o1;

.field public final c:Lcom/google/common/collect/ImmutableList;

.field public final d:J

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field private final h:Lx9/i;


# direct methods
.method private constructor <init>(JLcom/google/android/exoplayer2/o1;Ljava/util/List;Lx9/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-wide p1, p0, Lx9/j;->a:J

    iput-object p3, p0, Lx9/j;->b:Lcom/google/android/exoplayer2/o1;

    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lx9/j;->c:Lcom/google/common/collect/ImmutableList;

    if-nez p6, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lx9/j;->e:Ljava/util/List;

    iput-object p7, p0, Lx9/j;->f:Ljava/util/List;

    iput-object p8, p0, Lx9/j;->g:Ljava/util/List;

    invoke-virtual {p5, p0}, Lx9/k;->a(Lx9/j;)Lx9/i;

    move-result-object p1

    iput-object p1, p0, Lx9/j;->h:Lx9/i;

    invoke-virtual {p5}, Lx9/k;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lx9/j;->d:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/exoplayer2/o1;Ljava/util/List;Lx9/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lx9/j$a;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lx9/j;-><init>(JLcom/google/android/exoplayer2/o1;Ljava/util/List;Lx9/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static n(JLcom/google/android/exoplayer2/o1;Ljava/util/List;Lx9/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lx9/j;
    .locals 14

    move-object/from16 v0, p4

    instance-of v1, v0, Lx9/k$e;

    if-eqz v1, :cond_0

    new-instance v1, Lx9/j$c;

    move-object v7, v0

    check-cast v7, Lx9/k$e;

    const-wide/16 v12, -0x1

    move-object v2, v1

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v13}, Lx9/j$c;-><init>(JLcom/google/android/exoplayer2/o1;Ljava/util/List;Lx9/k$e;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V

    return-object v1

    :cond_0
    instance-of v1, v0, Lx9/k$a;

    if-eqz v1, :cond_1

    new-instance v1, Lx9/j$b;

    move-object v7, v0

    check-cast v7, Lx9/k$a;

    move-object v2, v1

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lx9/j$b;-><init>(JLcom/google/android/exoplayer2/o1;Ljava/util/List;Lx9/k$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()Lw9/e;
.end method

.method public abstract l()Lx9/i;
.end method

.method public m()Lx9/i;
    .locals 1

    iget-object v0, p0, Lx9/j;->h:Lx9/i;

    return-object v0
.end method
