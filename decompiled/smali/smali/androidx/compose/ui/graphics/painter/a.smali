.class public final Landroidx/compose/ui/graphics/painter/a;
.super Landroidx/compose/ui/graphics/painter/Painter;


# instance fields
.field private final g:Landroidx/compose/ui/graphics/e4;

.field private final h:J

.field private final i:J

.field private j:I

.field private final k:J

.field private l:F

.field private m:Landroidx/compose/ui/graphics/v1;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/e4;JJ)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/a;->g:Landroidx/compose/ui/graphics/e4;

    iput-wide p2, p0, Landroidx/compose/ui/graphics/painter/a;->h:J

    iput-wide p4, p0, Landroidx/compose/ui/graphics/painter/a;->i:J

    sget-object p1, Landroidx/compose/ui/graphics/x3;->a:Landroidx/compose/ui/graphics/x3$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x3$a;->a()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/painter/a;->j:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/compose/ui/graphics/painter/a;->k(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/painter/a;->k:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/ui/graphics/painter/a;->l:F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/e4;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    sget-object p2, Lo0/p;->b:Lo0/p$a;

    invoke-virtual {p2}, Lo0/p$a;->a()J

    move-result-wide p2

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/e4;->getWidth()I

    move-result p2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/e4;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Lo0/u;->a(II)J

    move-result-wide p4

    :cond_1
    move-wide v4, p4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/painter/a;-><init>(Landroidx/compose/ui/graphics/e4;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/e4;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/graphics/painter/a;-><init>(Landroidx/compose/ui/graphics/e4;JJ)V

    return-void
.end method

.method private final k(JJ)J
    .locals 1

    invoke-static {p1, p2}, Lo0/p;->h(J)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p1, p2}, Lo0/p;->i(J)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-static {p3, p4}, Lo0/t;->g(J)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-static {p3, p4}, Lo0/t;->f(J)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-static {p3, p4}, Lo0/t;->g(J)I

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/graphics/painter/a;->g:Landroidx/compose/ui/graphics/e4;

    invoke-interface {p2}, Landroidx/compose/ui/graphics/e4;->getWidth()I

    move-result p2

    if-gt p1, p2, :cond_0

    invoke-static {p3, p4}, Lo0/t;->f(J)I

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/graphics/painter/a;->g:Landroidx/compose/ui/graphics/e4;

    invoke-interface {p2}, Landroidx/compose/ui/graphics/e4;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_0

    return-wide p3

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a(F)Z
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/painter/a;->l:F

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Landroidx/compose/ui/graphics/v1;)Z
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/a;->m:Landroidx/compose/ui/graphics/v1;

    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/painter/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/graphics/painter/a;->g:Landroidx/compose/ui/graphics/e4;

    check-cast p1, Landroidx/compose/ui/graphics/painter/a;

    iget-object v3, p1, Landroidx/compose/ui/graphics/painter/a;->g:Landroidx/compose/ui/graphics/e4;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/graphics/painter/a;->h:J

    iget-wide v5, p1, Landroidx/compose/ui/graphics/painter/a;->h:J

    invoke-static {v3, v4, v5, v6}, Lo0/p;->g(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/ui/graphics/painter/a;->i:J

    iget-wide v5, p1, Landroidx/compose/ui/graphics/painter/a;->i:J

    invoke-static {v3, v4, v5, v6}, Lo0/t;->e(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/graphics/painter/a;->j:I

    iget p1, p1, Landroidx/compose/ui/graphics/painter/a;->j:I

    invoke-static {v1, p1}, Landroidx/compose/ui/graphics/x3;->d(II)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/painter/a;->k:J

    invoke-static {v0, v1}, Lo0/u;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/a;->g:Landroidx/compose/ui/graphics/e4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/graphics/painter/a;->h:J

    invoke-static {v1, v2}, Lo0/p;->j(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/graphics/painter/a;->i:J

    invoke-static {v1, v2}, Lo0/t;->h(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/painter/a;->j:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/x3;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected j(Lz/g;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/ui/graphics/painter/a;->g:Landroidx/compose/ui/graphics/e4;

    iget-wide v3, v0, Landroidx/compose/ui/graphics/painter/a;->h:J

    iget-wide v5, v0, Landroidx/compose/ui/graphics/painter/a;->i:J

    invoke-interface/range {p1 .. p1}, Lz/g;->i()J

    move-result-wide v7

    invoke-static {v7, v8}, Ly/m;->i(J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-interface/range {p1 .. p1}, Lz/g;->i()J

    move-result-wide v8

    invoke-static {v8, v9}, Ly/m;->g(J)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v7, v8}, Lo0/u;->a(II)J

    move-result-wide v9

    iget v11, v0, Landroidx/compose/ui/graphics/painter/a;->l:F

    iget-object v13, v0, Landroidx/compose/ui/graphics/painter/a;->m:Landroidx/compose/ui/graphics/v1;

    iget v15, v0, Landroidx/compose/ui/graphics/painter/a;->j:I

    const/16 v16, 0x148

    const/16 v17, 0x0

    const-wide/16 v7, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v17}, Lz/f;->e(Lz/g;Landroidx/compose/ui/graphics/e4;JJJJFLz/h;Landroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitmapPainter(image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/graphics/painter/a;->g:Landroidx/compose/ui/graphics/e4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", srcOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/painter/a;->h:J

    invoke-static {v1, v2}, Lo0/p;->m(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", srcSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/painter/a;->i:J

    invoke-static {v1, v2}, Lo0/t;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/painter/a;->j:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/x3;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
