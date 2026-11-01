.class public abstract La2/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/j$c;,
        La2/j$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Landroidx/media3/common/r;

.field public final c:Lcom/google/common/collect/ImmutableList;

.field public final d:J

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field private final h:La2/i;


# direct methods
.method private constructor <init>(JLandroidx/media3/common/r;Ljava/util/List;La2/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iput-wide p1, p0, La2/j;->a:J

    iput-object p3, p0, La2/j;->b:Landroidx/media3/common/r;

    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, La2/j;->c:Lcom/google/common/collect/ImmutableList;

    if-nez p6, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, La2/j;->e:Ljava/util/List;

    iput-object p7, p0, La2/j;->f:Ljava/util/List;

    iput-object p8, p0, La2/j;->g:Ljava/util/List;

    invoke-virtual {p5, p0}, La2/k;->a(La2/j;)La2/i;

    move-result-object p1

    iput-object p1, p0, La2/j;->h:La2/i;

    invoke-virtual {p5}, La2/k;->b()J

    move-result-wide p1

    iput-wide p1, p0, La2/j;->d:J

    return-void
.end method

.method synthetic constructor <init>(JLandroidx/media3/common/r;Ljava/util/List;La2/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;La2/j$a;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, La2/j;-><init>(JLandroidx/media3/common/r;Ljava/util/List;La2/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static n(JLandroidx/media3/common/r;Ljava/util/List;La2/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)La2/j;
    .locals 14

    move-object/from16 v0, p4

    instance-of v1, v0, La2/k$e;

    if-eqz v1, :cond_0

    new-instance v1, La2/j$c;

    move-object v7, v0

    check-cast v7, La2/k$e;

    const-wide/16 v12, -0x1

    move-object v2, v1

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v13}, La2/j$c;-><init>(JLandroidx/media3/common/r;Ljava/util/List;La2/k$e;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V

    return-object v1

    :cond_0
    instance-of v1, v0, La2/k$a;

    if-eqz v1, :cond_1

    new-instance v1, La2/j$b;

    move-object v7, v0

    check-cast v7, La2/k$a;

    move-object v2, v1

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, La2/j$b;-><init>(JLandroidx/media3/common/r;Ljava/util/List;La2/k$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

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

.method public abstract k()Lz1/e;
.end method

.method public abstract l()La2/i;
.end method

.method public m()La2/i;
    .locals 1

    iget-object v0, p0, La2/j;->h:La2/i;

    return-object v0
.end method
