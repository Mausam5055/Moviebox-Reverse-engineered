.class public final Landroidx/compose/foundation/text/modifiers/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroidx/compose/ui/text/d0;

.field private c:Landroidx/compose/ui/text/font/h$b;

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:J

.field private i:Lo0/e;

.field private j:Landroidx/compose/ui/text/l;

.field private k:Z

.field private l:J

.field private m:Landroidx/compose/foundation/text/modifiers/c;

.field private n:Landroidx/compose/ui/text/o;

.field private o:Landroidx/compose/ui/unit/LayoutDirection;

.field private p:J

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/f;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/f;->b:Landroidx/compose/ui/text/d0;

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/f;->c:Landroidx/compose/ui/text/font/h$b;

    iput p4, p0, Landroidx/compose/foundation/text/modifiers/f;->d:I

    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/f;->e:Z

    iput p6, p0, Landroidx/compose/foundation/text/modifiers/f;->f:I

    iput p7, p0, Landroidx/compose/foundation/text/modifiers/f;->g:I

    sget-object p1, Landroidx/compose/foundation/text/modifiers/a;->a:Landroidx/compose/foundation/text/modifiers/a$a;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/a$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/f;->h:J

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lo0/u;->a(II)J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/foundation/text/modifiers/f;->l:J

    sget-object p2, Lo0/b;->b:Lo0/b$a;

    invoke-virtual {p2, p1, p1}, Lo0/b$a;->c(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/f;->p:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/text/modifiers/f;->q:I

    iput p1, p0, Landroidx/compose/foundation/text/modifiers/f;->r:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroidx/compose/foundation/text/modifiers/f;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZII)V

    return-void
.end method

.method private final f(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/l;
    .locals 3

    invoke-direct {p0, p3}, Landroidx/compose/foundation/text/modifiers/f;->k(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/o;

    move-result-object p3

    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/f;->e:Z

    iget v1, p0, Landroidx/compose/foundation/text/modifiers/f;->d:I

    invoke-interface {p3}, Landroidx/compose/ui/text/o;->a()F

    move-result v2

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/b;->a(JZIF)J

    move-result-wide p1

    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/f;->e:Z

    iget v1, p0, Landroidx/compose/foundation/text/modifiers/f;->d:I

    iget v2, p0, Landroidx/compose/foundation/text/modifiers/f;->f:I

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/modifiers/b;->b(ZII)I

    move-result v0

    iget v1, p0, Landroidx/compose/foundation/text/modifiers/f;->d:I

    sget-object v2, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/p$a;->b()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/p;->e(II)Z

    move-result v1

    invoke-static {p3, p1, p2, v0, v1}, Landroidx/compose/ui/text/q;->c(Landroidx/compose/ui/text/o;JIZ)Landroidx/compose/ui/text/l;

    move-result-object p1

    return-object p1
.end method

.method private final h()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->j:Landroidx/compose/ui/text/l;

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->n:Landroidx/compose/ui/text/o;

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->o:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/text/modifiers/f;->q:I

    iput v0, p0, Landroidx/compose/foundation/text/modifiers/f;->r:I

    sget-object v0, Lo0/b;->b:Lo0/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lo0/b$a;->c(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/text/modifiers/f;->p:J

    invoke-static {v1, v1}, Lo0/u;->a(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/text/modifiers/f;->l:J

    iput-boolean v1, p0, Landroidx/compose/foundation/text/modifiers/f;->k:Z

    return-void
.end method

.method private final i(JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->j:Landroidx/compose/ui/text/l;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/f;->n:Landroidx/compose/ui/text/o;

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Landroidx/compose/ui/text/o;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/f;->o:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq p3, v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/foundation/text/modifiers/f;->p:J

    invoke-static {p1, p2, v2, v3}, Lo0/b;->f(JJ)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    return v2

    :cond_4
    invoke-static {p1, p2}, Lo0/b;->l(J)I

    move-result p3

    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/f;->p:J

    invoke-static {v3, v4}, Lo0/b;->l(J)I

    move-result v3

    if-eq p3, v3, :cond_5

    return v1

    :cond_5
    invoke-static {p1, p2}, Lo0/b;->k(J)I

    move-result p1

    int-to-float p1, p1

    invoke-interface {v0}, Landroidx/compose/ui/text/l;->getHeight()F

    move-result p2

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_7

    invoke-interface {v0}, Landroidx/compose/ui/text/l;->k()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v1
.end method

.method private final k(Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/o;
    .locals 10

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->n:Landroidx/compose/ui/text/o;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/f;->o:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/text/o;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/f;->o:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/f;->a:Ljava/lang/String;

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->b:Landroidx/compose/ui/text/d0;

    invoke-static {v0, p1}, Landroidx/compose/ui/text/e0;->c(Landroidx/compose/ui/text/d0;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/d0;

    move-result-object v3

    iget-object v6, p0, Landroidx/compose/foundation/text/modifiers/f;->i:Lo0/e;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v7, p0, Landroidx/compose/foundation/text/modifiers/f;->c:Landroidx/compose/ui/text/font/h$b;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/text/p;->b(Ljava/lang/String;Landroidx/compose/ui/text/d0;Ljava/util/List;Ljava/util/List;Lo0/e;Landroidx/compose/ui/text/font/h$b;ILjava/lang/Object;)Landroidx/compose/ui/text/o;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->n:Landroidx/compose/ui/text/o;

    return-object v0
.end method


# virtual methods
.method public final a()Lo0/e;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->i:Lo0/e;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/text/modifiers/f;->k:Z

    return v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/f;->l:J

    return-wide v0
.end method

.method public final d()Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->n:Landroidx/compose/ui/text/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/text/o;->b()Z

    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final e()Landroidx/compose/ui/text/l;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->j:Landroidx/compose/ui/text/l;

    return-object v0
.end method

.method public final g(JLandroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 8

    iget v0, p0, Landroidx/compose/foundation/text/modifiers/f;->g:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v2, Landroidx/compose/foundation/text/modifiers/c;->h:Landroidx/compose/foundation/text/modifiers/c$a;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/f;->m:Landroidx/compose/foundation/text/modifiers/c;

    iget-object v5, p0, Landroidx/compose/foundation/text/modifiers/f;->b:Landroidx/compose/ui/text/d0;

    iget-object v6, p0, Landroidx/compose/foundation/text/modifiers/f;->i:Lo0/e;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v7, p0, Landroidx/compose/foundation/text/modifiers/f;->c:Landroidx/compose/ui/text/font/h$b;

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/foundation/text/modifiers/c$a;->a(Landroidx/compose/foundation/text/modifiers/c;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/d0;Lo0/e;Landroidx/compose/ui/text/font/h$b;)Landroidx/compose/foundation/text/modifiers/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->m:Landroidx/compose/foundation/text/modifiers/c;

    iget v2, p0, Landroidx/compose/foundation/text/modifiers/f;->g:I

    invoke-virtual {v0, p1, p2, v2}, Landroidx/compose/foundation/text/modifiers/c;->c(JI)J

    move-result-wide p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/f;->i(JLandroidx/compose/ui/unit/LayoutDirection;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/f;->p:J

    invoke-static {p1, p2, v3, v4}, Lo0/b;->f(JJ)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/f;->j:Landroidx/compose/ui/text/l;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p3}, Landroidx/compose/ui/text/l;->a()F

    move-result v0

    invoke-interface {p3}, Landroidx/compose/ui/text/l;->getWidth()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/text/b;->a(F)I

    move-result v0

    invoke-interface {p3}, Landroidx/compose/ui/text/l;->getHeight()F

    move-result v3

    invoke-static {v3}, Landroidx/compose/foundation/text/b;->a(F)I

    move-result v3

    invoke-static {v0, v3}, Lo0/u;->a(II)J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Lo0/c;->f(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/compose/foundation/text/modifiers/f;->l:J

    iget v0, p0, Landroidx/compose/foundation/text/modifiers/f;->d:I

    sget-object v5, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {v5}, Landroidx/compose/ui/text/style/p$a;->c()I

    move-result v5

    invoke-static {v0, v5}, Landroidx/compose/ui/text/style/p;->e(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3, v4}, Lo0/t;->g(J)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p3}, Landroidx/compose/ui/text/l;->getWidth()F

    move-result v5

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_2

    invoke-static {v3, v4}, Lo0/t;->f(J)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p3}, Landroidx/compose/ui/text/l;->getHeight()F

    move-result p3

    cmpg-float p3, v0, p3

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/compose/foundation/text/modifiers/f;->k:Z

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/f;->p:J

    :cond_3
    return v2

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text/modifiers/f;->f(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/l;

    move-result-object p3

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/f;->p:J

    invoke-interface {p3}, Landroidx/compose/ui/text/l;->getWidth()F

    move-result v0

    invoke-static {v0}, Landroidx/compose/foundation/text/b;->a(F)I

    move-result v0

    invoke-interface {p3}, Landroidx/compose/ui/text/l;->getHeight()F

    move-result v3

    invoke-static {v3}, Landroidx/compose/foundation/text/b;->a(F)I

    move-result v3

    invoke-static {v0, v3}, Lo0/u;->a(II)J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Lo0/c;->f(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/f;->l:J

    iget v0, p0, Landroidx/compose/foundation/text/modifiers/f;->d:I

    sget-object v3, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/p$a;->c()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/ui/text/style/p;->e(II)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p3}, Landroidx/compose/ui/text/l;->getWidth()F

    move-result v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_5

    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result p1

    int-to-float p1, p1

    invoke-interface {p3}, Landroidx/compose/ui/text/l;->getHeight()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    iput-boolean v2, p0, Landroidx/compose/foundation/text/modifiers/f;->k:Z

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/f;->j:Landroidx/compose/ui/text/l;

    return v1
.end method

.method public final j(Lo0/e;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/f;->i:Lo0/e;

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

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/f;->i:Lo0/e;

    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/f;->h:J

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v3, p0, Landroidx/compose/foundation/text/modifiers/f;->h:J

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/foundation/text/modifiers/a;->e(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/f;->i:Lo0/e;

    iput-wide v1, p0, Landroidx/compose/foundation/text/modifiers/f;->h:J

    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/f;->h()V

    :cond_3
    return-void
.end method

.method public final l(Landroidx/compose/ui/text/d0;)Landroidx/compose/ui/text/z;
    .locals 31

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/compose/foundation/text/modifiers/f;->o:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v1, 0x0

    if-nez v9, :cond_0

    return-object v1

    :cond_0
    iget-object v14, v0, Landroidx/compose/foundation/text/modifiers/f;->i:Lo0/e;

    if-nez v14, :cond_1

    return-object v1

    :cond_1
    new-instance v15, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, v0, Landroidx/compose/foundation/text/modifiers/f;->a:Ljava/lang/String;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/f;->j:Landroidx/compose/ui/text/l;

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/text/modifiers/f;->n:Landroidx/compose/ui/text/o;

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    iget-wide v1, v0, Landroidx/compose/foundation/text/modifiers/f;->p:J

    const/16 v22, 0xa

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v1

    invoke-static/range {v16 .. v23}, Lo0/b;->d(JIIIIILjava/lang/Object;)J

    move-result-wide v26

    new-instance v16, Landroidx/compose/ui/text/z;

    new-instance v17, Landroidx/compose/ui/text/y;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v4

    iget v5, v0, Landroidx/compose/foundation/text/modifiers/f;->f:I

    iget-boolean v6, v0, Landroidx/compose/foundation/text/modifiers/f;->e:Z

    iget v7, v0, Landroidx/compose/foundation/text/modifiers/f;->d:I

    iget-object v10, v0, Landroidx/compose/foundation/text/modifiers/f;->c:Landroidx/compose/ui/text/font/h$b;

    const/4 v13, 0x0

    move-object/from16 v1, v17

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v8, v14

    move-wide/from16 v11, v26

    invoke-direct/range {v1 .. v13}, Landroidx/compose/ui/text/y;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Ljava/util/List;IZILo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/h$b;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Landroidx/compose/ui/text/MultiParagraph;

    new-instance v25, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v5

    iget-object v7, v0, Landroidx/compose/foundation/text/modifiers/f;->c:Landroidx/compose/ui/text/font/h$b;

    move-object/from16 v2, v25

    move-object v3, v15

    move-object/from16 v4, p1

    move-object v6, v14

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Ljava/util/List;Lo0/e;Landroidx/compose/ui/text/font/h$b;)V

    iget v1, v0, Landroidx/compose/foundation/text/modifiers/f;->f:I

    iget v2, v0, Landroidx/compose/foundation/text/modifiers/f;->d:I

    sget-object v3, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/p$a;->b()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/p;->e(II)Z

    move-result v29

    const/16 v30, 0x0

    move-object/from16 v24, v8

    move/from16 v28, v1

    invoke-direct/range {v24 .. v30}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-wide v4, v0, Landroidx/compose/foundation/text/modifiers/f;->l:J

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/z;-><init>(Landroidx/compose/ui/text/y;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v16
.end method

.method public final m(Ljava/lang/String;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZII)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/f;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/f;->b:Landroidx/compose/ui/text/d0;

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/f;->c:Landroidx/compose/ui/text/font/h$b;

    iput p4, p0, Landroidx/compose/foundation/text/modifiers/f;->d:I

    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/f;->e:Z

    iput p6, p0, Landroidx/compose/foundation/text/modifiers/f;->f:I

    iput p7, p0, Landroidx/compose/foundation/text/modifiers/f;->g:I

    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/f;->h()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParagraphLayoutCache(paragraph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/f;->j:Landroidx/compose/ui/text/l;

    if-eqz v1, :cond_0

    const-string v1, "<paragraph>"

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/foundation/text/modifiers/f;->h:J

    invoke-static {v1, v2}, Landroidx/compose/foundation/text/modifiers/a;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
