.class public final Lw1/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/h$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:J

.field public final c:I

.field public final d:[B

.field public final e:Ljava/util/Map;

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.datasource"

    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-long v8, v1, v4

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ltz v12, :cond_0

    move v12, v14

    goto :goto_0

    :cond_0
    move v12, v13

    :goto_0
    invoke-static {v12}, Landroidx/media3/common/util/a;->a(Z)V

    cmp-long v12, v4, v10

    if-ltz v12, :cond_1

    move v12, v14

    goto :goto_1

    :cond_1
    move v12, v13

    :goto_1
    invoke-static {v12}, Landroidx/media3/common/util/a;->a(Z)V

    cmp-long v10, v6, v10

    if-gtz v10, :cond_2

    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-nez v10, :cond_3

    :cond_2
    move v13, v14

    :cond_3
    invoke-static {v13}, Landroidx/media3/common/util/a;->a(Z)V

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    iput-object v10, v0, Lw1/h;->a:Landroid/net/Uri;

    iput-wide v1, v0, Lw1/h;->b:J

    move/from16 v1, p4

    iput v1, v0, Lw1/h;->c:I

    if-eqz v3, :cond_4

    array-length v1, v3

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    move-object v3, v1

    :goto_2
    iput-object v3, v0, Lw1/h;->d:[B

    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lw1/h;->e:Ljava/util/Map;

    iput-wide v4, v0, Lw1/h;->g:J

    iput-wide v8, v0, Lw1/h;->f:J

    iput-wide v6, v0, Lw1/h;->h:J

    move-object/from16 v1, p11

    iput-object v1, v0, Lw1/h;->i:Ljava/lang/String;

    move/from16 v1, p12

    iput v1, v0, Lw1/h;->j:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lw1/h;->k:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lw1/h$a;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lw1/h;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lw1/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 14

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v13}, Lw1/h;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "HEAD"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "POST"

    return-object p0

    :cond_2
    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public a()Lw1/h$b;
    .locals 2

    new-instance v0, Lw1/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw1/h$b;-><init>(Lw1/h;Lw1/h$a;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lw1/h;->c:I

    invoke-static {v0}, Lw1/h;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Z
    .locals 1

    iget v0, p0, Lw1/h;->j:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(J)Lw1/h;
    .locals 5

    iget-wide v0, p0, Lw1/h;->h:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, v0, p1

    :goto_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lw1/h;->f(JJ)Lw1/h;

    move-result-object p1

    return-object p1
.end method

.method public f(JJ)Lw1/h;
    .locals 16

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-wide v1, v0, Lw1/h;->h:J

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lw1/h;

    iget-object v3, v0, Lw1/h;->a:Landroid/net/Uri;

    iget-wide v4, v0, Lw1/h;->b:J

    iget v6, v0, Lw1/h;->c:I

    iget-object v7, v0, Lw1/h;->d:[B

    iget-object v8, v0, Lw1/h;->e:Ljava/util/Map;

    iget-wide v9, v0, Lw1/h;->g:J

    add-long v9, v9, p1

    iget-object v13, v0, Lw1/h;->i:Ljava/lang/String;

    iget v14, v0, Lw1/h;->j:I

    iget-object v15, v0, Lw1/h;->k:Ljava/lang/Object;

    move-object v2, v1

    move-wide/from16 v11, p3

    invoke-direct/range {v2 .. v15}, Lw1/h;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v1
.end method

.method public g(Landroid/net/Uri;)Lw1/h;
    .locals 16

    move-object/from16 v0, p0

    new-instance v15, Lw1/h;

    iget-wide v3, v0, Lw1/h;->b:J

    iget v5, v0, Lw1/h;->c:I

    iget-object v6, v0, Lw1/h;->d:[B

    iget-object v7, v0, Lw1/h;->e:Ljava/util/Map;

    iget-wide v8, v0, Lw1/h;->g:J

    iget-wide v10, v0, Lw1/h;->h:J

    iget-object v12, v0, Lw1/h;->i:Ljava/lang/String;

    iget v13, v0, Lw1/h;->j:I

    iget-object v14, v0, Lw1/h;->k:Ljava/lang/Object;

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lw1/h;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v15
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw1/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw1/h;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lw1/h;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lw1/h;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw1/h;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lw1/h;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
