.class public final Landroidx/compose/foundation/text/modifiers/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroidx/compose/ui/text/AnnotatedString;

.field private b:Landroidx/compose/ui/text/d0;

.field private c:Landroidx/compose/ui/text/font/h$b;

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:Ljava/util/List;

.field private i:Landroidx/compose/foundation/text/modifiers/c;

.field private j:J

.field private k:Lo0/e;

.field private l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

.field private m:Landroidx/compose/ui/unit/LayoutDirection;

.field private n:Landroidx/compose/ui/text/z;

.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->a:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/e;->b:Landroidx/compose/ui/text/d0;

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/e;->c:Landroidx/compose/ui/text/font/h$b;

    iput p4, p0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/e;->e:Z

    iput p6, p0, Landroidx/compose/foundation/text/modifiers/e;->f:I

    iput p7, p0, Landroidx/compose/foundation/text/modifiers/e;->g:I

    iput-object p8, p0, Landroidx/compose/foundation/text/modifiers/e;->h:Ljava/util/List;

    sget-object p1, Landroidx/compose/foundation/text/modifiers/a;->a:Landroidx/compose/foundation/text/modifiers/a$a;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/a$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/e;->j:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/text/modifiers/e;->o:I

    iput p1, p0, Landroidx/compose/foundation/text/modifiers/e;->p:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/text/modifiers/e;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;)V

    return-void
.end method

.method private final d(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;
    .locals 7

    invoke-direct {p0, p3}, Landroidx/compose/foundation/text/modifiers/e;->i(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v1

    new-instance p3, Landroidx/compose/ui/text/MultiParagraph;

    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/e;->e:Z

    iget v2, p0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a()F

    move-result v3

    invoke-static {p1, p2, v0, v2, v3}, Landroidx/compose/foundation/text/modifiers/b;->a(JZIF)J

    move-result-wide v2

    iget-boolean p1, p0, Landroidx/compose/foundation/text/modifiers/e;->e:Z

    iget p2, p0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    iget v0, p0, Landroidx/compose/foundation/text/modifiers/e;->f:I

    invoke-static {p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/b;->b(ZII)I

    move-result v4

    iget p1, p0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    sget-object p2, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {p2}, Landroidx/compose/ui/text/style/p$a;->b()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/text/style/p;->e(II)Z

    move-result v5

    const/4 v6, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p3
.end method

.method private final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/text/modifiers/e;->p:I

    iput v0, p0, Landroidx/compose/foundation/text/modifiers/e;->o:I

    return-void
.end method

.method private final g(Landroidx/compose/ui/text/z;JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraph;->i()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/y;->d()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    if-eq p4, v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/ui/text/y;->a()J

    move-result-wide v1

    invoke-static {p2, p3, v1, v2}, Lo0/b;->f(JJ)Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    return v1

    :cond_3
    invoke-static {p2, p3}, Lo0/b;->l(J)I

    move-result p4

    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/y;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo0/b;->l(J)I

    move-result v2

    if-eq p4, v2, :cond_4

    return v0

    :cond_4
    invoke-static {p2, p3}, Lo0/b;->k(J)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/ui/text/MultiParagraph;->h()F

    move-result p3

    cmpg-float p2, p2, p3

    if-ltz p2, :cond_6

    invoke-virtual {p1}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/MultiParagraph;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0
.end method

.method private final i(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/e;->m:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->m:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/e;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->b:Landroidx/compose/ui/text/d0;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/e0;->c(Landroidx/compose/ui/text/d0;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/d0;

    move-result-object v4

    iget-object v6, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v7, p0, Landroidx/compose/foundation/text/modifiers/e;->c:Landroidx/compose/ui/text/font/h$b;

    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->h:Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :cond_1
    move-object v5, p1

    new-instance v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Ljava/util/List;Lo0/e;Landroidx/compose/ui/text/font/h$b;)V

    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->l:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    return-object v0
.end method

.method private final j(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/z;
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/MultiParagraph;->i()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a()F

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/MultiParagraph;->w()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    new-instance v8, Landroidx/compose/ui/text/z;

    new-instance v3, Landroidx/compose/ui/text/y;

    iget-object v10, v0, Landroidx/compose/foundation/text/modifiers/e;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v11, v0, Landroidx/compose/foundation/text/modifiers/e;->b:Landroidx/compose/ui/text/d0;

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/e;->h:Ljava/util/List;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v2

    :cond_0
    move-object v12, v2

    iget v13, v0, Landroidx/compose/foundation/text/modifiers/e;->f:I

    iget-boolean v14, v0, Landroidx/compose/foundation/text/modifiers/e;->e:Z

    iget v15, v0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v4, v0, Landroidx/compose/foundation/text/modifiers/e;->c:Landroidx/compose/ui/text/font/h$b;

    const/16 v21, 0x0

    move-object v9, v3

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move-object/from16 v18, v4

    move-wide/from16 v19, p2

    invoke-direct/range {v9 .. v21}, Landroidx/compose/ui/text/y;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Ljava/util/List;IZILo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/h$b;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Landroidx/compose/foundation/text/b;->a(F)I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/MultiParagraph;->h()F

    move-result v2

    invoke-static {v2}, Landroidx/compose/foundation/text/b;->a(F)I

    move-result v2

    invoke-static {v1, v2}, Lo0/u;->a(II)J

    move-result-wide v1

    move-wide/from16 v4, p2

    invoke-static {v4, v5, v1, v2}, Lo0/c;->f(JJ)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v2, v8

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/z;-><init>(Landroidx/compose/ui/text/y;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method


# virtual methods
.method public final a()Lo0/e;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/text/z;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/text/z;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call layoutWithConstraints first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 8

    iget v0, p0, Landroidx/compose/foundation/text/modifiers/e;->g:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v2, Landroidx/compose/foundation/text/modifiers/c;->h:Landroidx/compose/foundation/text/modifiers/c$a;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/e;->i:Landroidx/compose/foundation/text/modifiers/c;

    iget-object v5, p0, Landroidx/compose/foundation/text/modifiers/e;->b:Landroidx/compose/ui/text/d0;

    iget-object v6, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v7, p0, Landroidx/compose/foundation/text/modifiers/e;->c:Landroidx/compose/ui/text/font/h$b;

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/foundation/text/modifiers/c$a;->a(Landroidx/compose/foundation/text/modifiers/c;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/d0;Lo0/e;Landroidx/compose/ui/text/font/h$b;)Landroidx/compose/foundation/text/modifiers/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->i:Landroidx/compose/foundation/text/modifiers/c;

    iget v2, p0, Landroidx/compose/foundation/text/modifiers/e;->g:I

    invoke-virtual {v0, p1, p2, v2}, Landroidx/compose/foundation/text/modifiers/c;->c(JI)J

    move-result-wide p1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/e;->g(Landroidx/compose/ui/text/z;JLandroidx/compose/ui/unit/LayoutDirection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/y;->a()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lo0/b;->f(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    invoke-direct {p0, p3, p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/e;->j(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/z;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    return v1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/e;->d(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    invoke-direct {p0, p3, p1, p2, v0}, Landroidx/compose/foundation/text/modifiers/e;->j(Landroidx/compose/ui/unit/LayoutDirection;JLandroidx/compose/ui/text/MultiParagraph;)Landroidx/compose/ui/text/z;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->n:Landroidx/compose/ui/text/z;

    return v1
.end method

.method public final h(Lo0/e;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/compose/foundation/text/modifiers/a;->d(Lo0/e;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/modifiers/a;->a:Landroidx/compose/foundation/text/modifiers/a$a;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/a$a;->a()J

    move-result-wide v1

    :goto_0
    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/e;->j:J

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/e;->j:J

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/foundation/text/modifiers/a;->e(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->k:Lo0/e;

    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/e;->j:J

    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/e;->f()V

    :cond_3
    return-void
.end method

.method public final k(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/e;->a:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/e;->b:Landroidx/compose/ui/text/d0;

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/e;->c:Landroidx/compose/ui/text/font/h$b;

    iput p4, p0, Landroidx/compose/foundation/text/modifiers/e;->d:I

    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/e;->e:Z

    iput p6, p0, Landroidx/compose/foundation/text/modifiers/e;->f:I

    iput p7, p0, Landroidx/compose/foundation/text/modifiers/e;->g:I

    iput-object p8, p0, Landroidx/compose/foundation/text/modifiers/e;->h:Ljava/util/List;

    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/e;->f()V

    return-void
.end method
