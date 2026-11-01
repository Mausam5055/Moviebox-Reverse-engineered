.class public final Landroidx/compose/ui/text/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:J

.field private final d:Landroidx/compose/ui/text/style/n;

.field private final e:Landroidx/compose/ui/text/u;

.field private final f:Landroidx/compose/ui/text/style/g;

.field private final g:I

.field private final h:I

.field private final i:Landroidx/compose/ui/text/style/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/r;->a:I

    iput p2, p0, Landroidx/compose/ui/text/r;->b:I

    iput-wide p3, p0, Landroidx/compose/ui/text/r;->c:J

    iput-object p5, p0, Landroidx/compose/ui/text/r;->d:Landroidx/compose/ui/text/style/n;

    iput-object p6, p0, Landroidx/compose/ui/text/r;->e:Landroidx/compose/ui/text/u;

    iput-object p7, p0, Landroidx/compose/ui/text/r;->f:Landroidx/compose/ui/text/style/g;

    iput p8, p0, Landroidx/compose/ui/text/r;->g:I

    iput p9, p0, Landroidx/compose/ui/text/r;->h:I

    iput-object p10, p0, Landroidx/compose/ui/text/r;->i:Landroidx/compose/ui/text/style/o;

    sget-object p1, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {p1}, Lo0/w$a;->a()J

    move-result-wide p1

    invoke-static {p3, p4, p1, p2}, Lo0/w;->e(JJ)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p3, p4}, Lo0/w;->h(J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "lineHeight can\'t be negative ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lo0/w;->h(J)F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/text/style/h;->b:Landroidx/compose/ui/text/style/h$a;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/h$a;->g()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/compose/ui/text/style/j;->b:Landroidx/compose/ui/text/style/j$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/j$a;->f()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    sget-object v3, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v3}, Lo0/w$a;->a()J

    move-result-wide v3

    goto :goto_2

    :cond_2
    move-wide v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v6

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v6

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    sget-object v9, Landroidx/compose/ui/text/style/e;->a:Landroidx/compose/ui/text/style/e$a;

    invoke-virtual {v9}, Landroidx/compose/ui/text/style/e$a;->b()I

    move-result v9

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    sget-object v10, Landroidx/compose/ui/text/style/d;->a:Landroidx/compose/ui/text/style/d$a;

    invoke-virtual {v10}, Landroidx/compose/ui/text/style/d$a;->c()I

    move-result v10

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v6, p10

    :goto_8
    const/4 v0, 0x0

    move-object p1, p0

    move p2, v1

    move p3, v2

    move-wide p4, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move-object/from16 p11, v6

    move-object/from16 p12, v0

    invoke-direct/range {p1 .. p12}, Landroidx/compose/ui/text/r;-><init>(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroidx/compose/ui/text/r;-><init>(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)V

    return-void
.end method

.method public static synthetic b(Landroidx/compose/ui/text/r;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;ILjava/lang/Object;)Landroidx/compose/ui/text/r;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Landroidx/compose/ui/text/r;->a:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Landroidx/compose/ui/text/r;->b:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Landroidx/compose/ui/text/r;->c:J

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Landroidx/compose/ui/text/r;->d:Landroidx/compose/ui/text/style/n;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Landroidx/compose/ui/text/r;->e:Landroidx/compose/ui/text/u;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroidx/compose/ui/text/r;->f:Landroidx/compose/ui/text/style/g;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Landroidx/compose/ui/text/r;->g:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget v10, v0, Landroidx/compose/ui/text/r;->h:I

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/compose/ui/text/r;->i:Landroidx/compose/ui/text/style/o;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p10

    :goto_8
    move p1, v2

    move p2, v3

    move-wide p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Landroidx/compose/ui/text/r;->a(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/r;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/r;
    .locals 13

    new-instance v12, Landroidx/compose/ui/text/r;

    const/4 v11, 0x0

    move-object v0, v12

    move v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/text/r;-><init>(IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/r;->h:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/r;->g:I

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/r;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/compose/ui/text/r;->a:I

    check-cast p1, Landroidx/compose/ui/text/r;

    iget v3, p1, Landroidx/compose/ui/text/r;->a:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/h;->k(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/r;->b:I

    iget v3, p1, Landroidx/compose/ui/text/r;->b:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/j;->j(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/ui/text/r;->c:J

    iget-wide v5, p1, Landroidx/compose/ui/text/r;->c:J

    invoke-static {v3, v4, v5, v6}, Lo0/w;->e(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/ui/text/r;->d:Landroidx/compose/ui/text/style/n;

    iget-object v3, p1, Landroidx/compose/ui/text/r;->d:Landroidx/compose/ui/text/style/n;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/compose/ui/text/r;->e:Landroidx/compose/ui/text/u;

    iget-object v3, p1, Landroidx/compose/ui/text/r;->e:Landroidx/compose/ui/text/u;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/compose/ui/text/r;->f:Landroidx/compose/ui/text/style/g;

    iget-object v3, p1, Landroidx/compose/ui/text/r;->f:Landroidx/compose/ui/text/style/g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Landroidx/compose/ui/text/r;->g:I

    iget v3, p1, Landroidx/compose/ui/text/r;->g:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/e;->d(II)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Landroidx/compose/ui/text/r;->h:I

    iget v3, p1, Landroidx/compose/ui/text/r;->h:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/d;->e(II)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/compose/ui/text/r;->i:Landroidx/compose/ui/text/style/o;

    iget-object p1, p1, Landroidx/compose/ui/text/r;->i:Landroidx/compose/ui/text/style/o;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f()Landroidx/compose/ui/text/style/g;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/r;->f:Landroidx/compose/ui/text/style/g;

    return-object v0
.end method

.method public final g()Landroidx/compose/ui/text/u;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/r;->e:Landroidx/compose/ui/text/u;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/r;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/text/r;->a:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/h;->l(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/r;->b:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/j;->k(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/text/r;->c:J

    invoke-static {v1, v2}, Lo0/w;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/r;->d:Landroidx/compose/ui/text/style/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/n;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/r;->e:Landroidx/compose/ui/text/u;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/ui/text/u;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/r;->f:Landroidx/compose/ui/text/style/g;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/g;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/r;->g:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/e;->h(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/r;->h:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/d;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/r;->i:Landroidx/compose/ui/text/style/o;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/o;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/r;->b:I

    return v0
.end method

.method public final j()Landroidx/compose/ui/text/style/n;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/r;->d:Landroidx/compose/ui/text/style/n;

    return-object v0
.end method

.method public final k()Landroidx/compose/ui/text/style/o;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/r;->i:Landroidx/compose/ui/text/style/o;

    return-object v0
.end method

.method public final l(Landroidx/compose/ui/text/r;)Landroidx/compose/ui/text/r;
    .locals 11

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v1, p1, Landroidx/compose/ui/text/r;->a:I

    iget v2, p1, Landroidx/compose/ui/text/r;->b:I

    iget-wide v3, p1, Landroidx/compose/ui/text/r;->c:J

    iget-object v5, p1, Landroidx/compose/ui/text/r;->d:Landroidx/compose/ui/text/style/n;

    iget-object v6, p1, Landroidx/compose/ui/text/r;->e:Landroidx/compose/ui/text/u;

    iget-object v7, p1, Landroidx/compose/ui/text/r;->f:Landroidx/compose/ui/text/style/g;

    iget v8, p1, Landroidx/compose/ui/text/r;->g:I

    iget v9, p1, Landroidx/compose/ui/text/r;->h:I

    iget-object v10, p1, Landroidx/compose/ui/text/r;->i:Landroidx/compose/ui/text/style/o;

    move-object v0, p0

    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/text/s;->a(Landroidx/compose/ui/text/r;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;)Landroidx/compose/ui/text/r;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParagraphStyle(textAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/r;->a:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/h;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/r;->b:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/j;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/text/r;->c:J

    invoke-static {v1, v2}, Lo0/w;->j(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textIndent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/r;->d:Landroidx/compose/ui/text/style/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platformStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/r;->e:Landroidx/compose/ui/text/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineHeightStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/r;->f:Landroidx/compose/ui/text/style/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineBreak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/r;->g:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/e;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hyphens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/r;->h:I

    invoke-static {v1}, Landroidx/compose/ui/text/style/d;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textMotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/r;->i:Landroidx/compose/ui/text/style/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
