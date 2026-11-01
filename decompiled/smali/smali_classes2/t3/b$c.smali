.class final Lt3/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Lt3/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ll2/t;

.field private final b:Ll2/s0;

.field private final c:Lt3/c;

.field private final d:Landroidx/media3/common/r;

.field private final e:I

.field private f:J

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Ll2/t;Ll2/s0;Lt3/c;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/b$c;->a:Ll2/t;

    iput-object p2, p0, Lt3/b$c;->b:Ll2/s0;

    iput-object p3, p0, Lt3/b$c;->c:Lt3/c;

    iget p1, p3, Lt3/c;->b:I

    iget p2, p3, Lt3/c;->f:I

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x8

    iget p2, p3, Lt3/c;->e:I

    if-ne p2, p1, :cond_0

    iget p2, p3, Lt3/c;->c:I

    mul-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x8

    mul-int/2addr p2, p1

    div-int/lit8 p2, p2, 0xa

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lt3/b$c;->e:I

    new-instance p2, Landroidx/media3/common/r$b;

    invoke-direct {p2}, Landroidx/media3/common/r$b;-><init>()V

    const-string v1, "audio/wav"

    invoke-virtual {p2, v1}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->k0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    iget p2, p3, Lt3/c;->b:I

    invoke-virtual {p1, p2}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object p1

    iget p2, p3, Lt3/c;->c:I

    invoke-virtual {p1, p2}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroidx/media3/common/r$b;->o0(I)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    iput-object p1, p0, Lt3/b$c;->d:Landroidx/media3/common/r;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expected block size: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lt3/c;->e:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(IJ)V
    .locals 8

    new-instance v7, Lt3/e;

    iget-object v1, p0, Lt3/b$c;->c:Lt3/c;

    const/4 v2, 0x1

    int-to-long v3, p1

    move-object v0, v7

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lt3/e;-><init>(Lt3/c;IJJ)V

    iget-object p1, p0, Lt3/b$c;->a:Ll2/t;

    invoke-interface {p1, v7}, Ll2/t;->f(Ll2/m0;)V

    iget-object p1, p0, Lt3/b$c;->b:Ll2/s0;

    iget-object p2, p0, Lt3/b$c;->d:Landroidx/media3/common/r;

    invoke-interface {p1, p2}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    iget-object p1, p0, Lt3/b$c;->b:Ll2/s0;

    invoke-virtual {v7}, Lt3/e;->getDurationUs()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Ll2/s0;->f(J)V

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lt3/b$c;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lt3/b$c;->g:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lt3/b$c;->h:J

    return-void
.end method

.method public c(Ll2/s;J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    iget v7, v0, Lt3/b$c;->g:I

    iget v8, v0, Lt3/b$c;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, v0, Lt3/b$c;->b:Ll2/s0;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, Ll2/s0;->e(Landroidx/media3/common/j;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, Lt3/b$c;->g:I

    add-int/2addr v3, v5

    iput v3, v0, Lt3/b$c;->g:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lt3/b$c;->c:Lt3/c;

    iget v2, v1, Lt3/c;->e:I

    iget v3, v0, Lt3/b$c;->g:I

    div-int/2addr v3, v2

    if-lez v3, :cond_2

    iget-wide v7, v0, Lt3/b$c;->f:J

    iget-wide v9, v0, Lt3/b$c;->h:J

    iget v1, v1, Lt3/c;->c:I

    int-to-long v13, v1

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v3, v2

    iget v1, v0, Lt3/b$c;->g:I

    sub-int/2addr v1, v15

    iget-object v11, v0, Lt3/b$c;->b:Ll2/s0;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-interface/range {v11 .. v17}, Ll2/s0;->d(JIIILl2/s0$a;)V

    iget-wide v7, v0, Lt3/b$c;->h:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, Lt3/b$c;->h:J

    iput v1, v0, Lt3/b$c;->g:I

    :cond_2
    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    return v6
.end method
