.class public final Landroidx/compose/ui/text/MultiParagraph;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

.field private final b:I

.field private final c:Z

.field private final d:F

.field private final e:F

.field private final f:I

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZ)V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move/from16 v2, p4

    iput v2, v0, Landroidx/compose/ui/text/MultiParagraph;->b:I

    invoke-static/range {p2 .. p3}, Lo0/b;->n(J)I

    move-result v2

    if-nez v2, :cond_9

    invoke-static/range {p2 .. p3}, Lo0/b;->m(J)I

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v10, v4

    move v12, v5

    move v5, v10

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/n;

    invoke-virtual {v6}, Landroidx/compose/ui/text/n;->b()Landroidx/compose/ui/text/o;

    move-result-object v7

    invoke-static/range {p2 .. p3}, Lo0/b;->l(J)I

    move-result v14

    invoke-static/range {p2 .. p3}, Lo0/b;->g(J)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static/range {p2 .. p3}, Lo0/b;->k(J)I

    move-result v8

    invoke-static {v12}, Landroidx/compose/ui/text/q;->d(F)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8, v4}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v8

    :goto_1
    move/from16 v16, v8

    goto :goto_2

    :cond_0
    invoke-static/range {p2 .. p3}, Lo0/b;->k(J)I

    move-result v8

    goto :goto_1

    :goto_2
    const/16 v17, 0x5

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lo0/c;->b(IIIIILjava/lang/Object;)J

    move-result-wide v8

    iget v11, v0, Landroidx/compose/ui/text/MultiParagraph;->b:I

    sub-int/2addr v11, v10

    move/from16 v14, p5

    invoke-static {v7, v8, v9, v11, v14}, Landroidx/compose/ui/text/q;->c(Landroidx/compose/ui/text/o;JIZ)Landroidx/compose/ui/text/l;

    move-result-object v15

    invoke-interface {v15}, Landroidx/compose/ui/text/l;->getHeight()F

    move-result v7

    add-float v16, v12, v7

    invoke-interface {v15}, Landroidx/compose/ui/text/l;->h()I

    move-result v7

    add-int v13, v10, v7

    new-instance v11, Landroidx/compose/ui/text/m;

    invoke-virtual {v6}, Landroidx/compose/ui/text/n;->c()I

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/ui/text/n;->a()I

    move-result v9

    move-object v6, v11

    move-object v7, v15

    move-object v4, v11

    move v11, v13

    move-object/from16 p4, v1

    move v1, v13

    move/from16 v13, v16

    invoke-direct/range {v6 .. v13}, Landroidx/compose/ui/text/m;-><init>(Landroidx/compose/ui/text/l;IIIIFF)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Landroidx/compose/ui/text/l;->k()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, v0, Landroidx/compose/ui/text/MultiParagraph;->b:I

    if-ne v1, v4, :cond_1

    iget-object v4, v0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-virtual {v4}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->f()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v4

    if-eq v5, v4, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v10, v1

    move/from16 v12, v16

    const/4 v4, 0x0

    move-object/from16 v1, p4

    goto/16 :goto_0

    :cond_2
    :goto_3
    const/4 v3, 0x1

    move v10, v1

    move/from16 v12, v16

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    iput v12, v0, Landroidx/compose/ui/text/MultiParagraph;->e:F

    iput v10, v0, Landroidx/compose/ui/text/MultiParagraph;->f:I

    iput-boolean v3, v0, Landroidx/compose/ui/text/MultiParagraph;->c:Z

    iput-object v2, v0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static/range {p2 .. p3}, Lo0/b;->l(J)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x0

    if-ge v4, v3, :cond_6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/m;

    invoke-virtual {v6}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/ui/text/l;->u()Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_5

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ly/i;

    if-eqz v11, :cond_4

    invoke-virtual {v6, v11}, Landroidx/compose/ui/text/m;->i(Ly/i;)Ly/i;

    move-result-object v11

    goto :goto_7

    :cond_4
    move-object v11, v5

    :goto_7
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_5
    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-virtual {v3}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v2, v0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-virtual {v2}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->B0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    :cond_8
    iput-object v1, v0, Landroidx/compose/ui/text/MultiParagraph;->g:Ljava/util/List;

    return-void

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZ)V

    return-void
.end method

.method public static synthetic A(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;IILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, p6

    :goto_3
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_4

    sget-object v0, Lz/g;->o1:Lz/g$a;

    invoke-virtual {v0}, Lz/g$a;->a()I

    move-result v0

    move v8, v0

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Landroidx/compose/ui/text/MultiParagraph;->z(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V

    return-void
.end method

.method private final B(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of bounds [0, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final C(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of bounds [0, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final D(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/compose/ui/text/MultiParagraph;->f:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lineIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of bounds [0, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/compose/ui/text/MultiParagraph;->f:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final b()Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->e()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic y(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;IILjava/lang/Object;)V
    .locals 6

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, p4

    :goto_1
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object v4, p5

    :goto_2
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, p6

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    sget-object v5, Lz/g;->o1:Lz/g$a;

    invoke-virtual {v5}, Lz/g$a;->a()I

    move-result v5

    goto :goto_4

    :cond_4
    move v5, p7

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-object p6, v2

    move-object p7, v4

    move-object p8, v3

    move p9, v5

    invoke-virtual/range {p2 .. p9}, Landroidx/compose/ui/text/MultiParagraph;->x(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V

    return-void
.end method


# virtual methods
.method public final a(J[FI)[F
    .locals 7

    invoke-static {p1, p2}, Landroidx/compose/ui/text/b0;->j(J)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/MultiParagraph;->B(I)V

    invoke-static {p1, p2}, Landroidx/compose/ui/text/b0;->i(J)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/MultiParagraph;->C(I)V

    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput p4, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object p4, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    new-instance v0, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;

    move-object v1, v0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/MultiParagraph$fillBoundingBoxes$1;-><init>(J[FLkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-static {p4, p1, p2, v0}, Landroidx/compose/ui/text/i;->d(Ljava/util/List;JLkotlin/jvm/functions/Function1;)V

    return-object p3
.end method

.method public final c(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->C(I)V

    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->m(I)I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->r(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)Ly/i;
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->B(I)V

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->m(I)I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->t(I)Ly/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->i(Ly/i;)Ly/i;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)Ly/i;
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->C(I)V

    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->m(I)I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->d(I)Ly/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->i(Ly/i;)Ly/i;

    move-result-object p1

    return-object p1
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/MultiParagraph;->c:Z

    return v0
.end method

.method public final g()F
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/text/l;->e()F

    move-result v0

    :goto_0
    return v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/MultiParagraph;->e:F

    return v0
.end method

.method public final i()Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    return-object v0
.end method

.method public final j()F
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/text/l;->o()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/m;->l(F)F

    move-result v0

    :goto_0
    return v0
.end method

.method public final k(I)F
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->s(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->l(F)F

    move-result p1

    return p1
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/MultiParagraph;->f:I

    return v0
.end method

.method public final m(IZ)I
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    move-result p1

    invoke-interface {v1, p1, p2}, Landroidx/compose/ui/text/l;->g(IZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->j(I)I

    move-result p1

    return p1
.end method

.method public final n(I)I
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->m(I)I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->p(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->k(I)I

    move-result p1

    return p1
.end method

.method public final o(F)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->c(Ljava/util/List;F)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->d()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->g()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->o(F)F

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->l(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->k(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final p(I)F
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->m(I)F

    move-result p1

    return p1
.end method

.method public final q(I)F
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->i(I)F

    move-result p1

    return p1
.end method

.method public final r(I)I
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->f(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->j(I)I

    move-result p1

    return p1
.end method

.method public final s(I)F
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->D(I)V

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->b(Ljava/util/List;I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->n(I)I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->c(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->l(F)F

    move-result p1

    return p1
.end method

.method public final t(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/MultiParagraph;->C(I)V

    invoke-direct {p0}, Landroidx/compose/ui/text/MultiParagraph;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/i;->a(Ljava/util/List;I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/m;

    invoke-virtual {v0}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/m;->m(I)I

    move-result p1

    invoke-interface {v1, p1}, Landroidx/compose/ui/text/l;->b(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p1

    return-object p1
.end method

.method public final u()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraph;->g:Ljava/util/List;

    return-object v0
.end method

.method public final w()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    return v0
.end method

.method public final x(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V
    .locals 13

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->n()V

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/text/MultiParagraph;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/m;

    invoke-virtual {v4}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v5

    move-object v6, p1

    move-wide v7, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-interface/range {v5 .. v12}, Landroidx/compose/ui/text/l;->q(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V

    invoke-virtual {v4}, Landroidx/compose/ui/text/m;->e()Landroidx/compose/ui/text/l;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/text/l;->getHeight()F

    move-result v4

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Landroidx/compose/ui/graphics/m1;->c(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v6, p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    return-void
.end method

.method public final z(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/compose/ui/text/platform/b;->a(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V

    return-void
.end method
