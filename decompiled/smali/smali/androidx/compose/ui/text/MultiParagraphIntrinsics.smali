.class public final Landroidx/compose/ui/text/MultiParagraphIntrinsics;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/o;


# instance fields
.field private final a:Landroidx/compose/ui/text/AnnotatedString;

.field private final b:Ljava/util/List;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Ljava/util/List;Lo0/e;Landroidx/compose/ui/text/font/h$b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a:Landroidx/compose/ui/text/AnnotatedString;

    move-object/from16 v2, p3

    iput-object v2, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b:Ljava/util/List;

    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Landroidx/compose/ui/text/MultiParagraphIntrinsics$minIntrinsicWidth$2;

    invoke-direct {v3, v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$minIntrinsicWidth$2;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    iput-object v3, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->c:Lkotlin/Lazy;

    new-instance v3, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;

    invoke-direct {v3, v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$maxIntrinsicWidth$2;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->d:Lkotlin/Lazy;

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/d0;->K()Landroidx/compose/ui/text/r;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/text/d;->l(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/r;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$c;

    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$c;->f()I

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$c;->d()I

    move-result v9

    invoke-static {v1, v8, v9}, Landroidx/compose/ui/text/d;->e(Landroidx/compose/ui/text/AnnotatedString;II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v8

    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$c;->e()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/text/r;

    invoke-static {v0, v9, v2}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->d(Landroidx/compose/ui/text/MultiParagraphIntrinsics;Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/r;)Landroidx/compose/ui/text/r;

    move-result-object v9

    new-instance v10, Landroidx/compose/ui/text/n;

    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v15, p2

    invoke-virtual {v15, v9}, Landroidx/compose/ui/text/d0;->H(Landroidx/compose/ui/text/r;)Landroidx/compose/ui/text/d0;

    move-result-object v12

    invoke-virtual {v8}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->g()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$c;->f()I

    move-result v9

    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$c;->d()I

    move-result v14

    invoke-static {v8, v9, v14}, Landroidx/compose/ui/text/h;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v14

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-static/range {v11 .. v16}, Landroidx/compose/ui/text/p;->a(Ljava/lang/String;Landroidx/compose/ui/text/d0;Ljava/util/List;Ljava/util/List;Lo0/e;Landroidx/compose/ui/text/font/h$b;)Landroidx/compose/ui/text/o;

    move-result-object v8

    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$c;->f()I

    move-result v9

    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$c;->d()I

    move-result v7

    invoke-direct {v10, v8, v9, v7}, Landroidx/compose/ui/text/n;-><init>(Landroidx/compose/ui/text/o;II)V

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iput-object v4, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic d(Landroidx/compose/ui/text/MultiParagraphIntrinsics;Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/r;)Landroidx/compose/ui/text/r;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->h(Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/r;)Landroidx/compose/ui/text/r;

    move-result-object p0

    return-object p0
.end method

.method private final h(Landroidx/compose/ui/text/r;Landroidx/compose/ui/text/r;)Landroidx/compose/ui/text/r;
    .locals 14

    invoke-virtual {p1}, Landroidx/compose/ui/text/r;->i()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/style/j;->b:Landroidx/compose/ui/text/style/j$a;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/j$a;->f()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/j;->j(II)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/text/r;->i()I

    move-result v3

    const/16 v12, 0x1fd

    const/4 v13, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/text/r;->b(Landroidx/compose/ui/text/r;IIJLandroidx/compose/ui/text/style/n;Landroidx/compose/ui/text/u;Landroidx/compose/ui/text/style/g;IILandroidx/compose/ui/text/style/o;ILjava/lang/Object;)Landroidx/compose/ui/text/r;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/n;

    invoke-virtual {v4}, Landroidx/compose/ui/text/n;->b()Landroidx/compose/ui/text/o;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/text/o;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public c()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final e()Landroidx/compose/ui/text/AnnotatedString;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a:Landroidx/compose/ui/text/AnnotatedString;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->e:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b:Ljava/util/List;

    return-object v0
.end method
