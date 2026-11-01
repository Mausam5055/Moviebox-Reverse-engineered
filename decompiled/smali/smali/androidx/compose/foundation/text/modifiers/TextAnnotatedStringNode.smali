.class public final Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/x;
.implements Landroidx/compose/ui/node/n;
.implements Landroidx/compose/ui/node/i1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;
    }
.end annotation


# instance fields
.field private A:Ljava/util/Map;

.field private B:Landroidx/compose/foundation/text/modifiers/e;

.field private C:Lkotlin/jvm/functions/Function1;

.field private D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

.field private n:Landroidx/compose/ui/text/AnnotatedString;

.field private o:Landroidx/compose/ui/text/d0;

.field private p:Landroidx/compose/ui/text/font/h$b;

.field private q:Lkotlin/jvm/functions/Function1;

.field private r:I

.field private s:Z

.field private t:I

.field private u:I

.field private v:Ljava/util/List;

.field private w:Lkotlin/jvm/functions/Function1;

.field private x:Landroidx/compose/foundation/text/modifiers/h;

.field private y:Landroidx/compose/ui/graphics/x1;

.field private z:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Landroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    iput-object p4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->q:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    iput-boolean p6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    iput p7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    iput p8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    iput-object p9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    iput-object p10, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->w:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/graphics/x1;

    iput-object p13, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Landroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Landroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic D1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)Landroidx/compose/foundation/text/modifiers/e;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M1()Landroidx/compose/foundation/text/modifiers/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic E1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic F1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)Landroidx/compose/ui/graphics/x1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/graphics/x1;

    return-object p0
.end method

.method public static final synthetic G1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)Landroidx/compose/ui/text/d0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    return-object p0
.end method

.method public static final synthetic H1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->P1()V

    return-void
.end method

.method public static final synthetic I1(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;Landroidx/compose/ui/text/AnnotatedString;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->R1(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result p0

    return p0
.end method

.method private final M1()Landroidx/compose/foundation/text/modifiers/e;
    .locals 11

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:Landroidx/compose/foundation/text/modifiers/e;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/text/modifiers/e;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    iget-object v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    iget v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    iget-boolean v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    iget-object v9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroidx/compose/foundation/text/modifiers/e;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:Landroidx/compose/foundation/text/modifiers/e;

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->B:Landroidx/compose/foundation/text/modifiers/e;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final N1(Lo0/e;)Landroidx/compose/foundation/text/modifiers/e;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->a()Landroidx/compose/foundation/text/modifiers/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/e;->h(Lo0/e;)V

    return-object v0

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M1()Landroidx/compose/foundation/text/modifiers/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/e;->h(Lo0/e;)V

    return-object v0
.end method

.method private final P1()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    invoke-static {p0}, Landroidx/compose/ui/node/a0;->b(Landroidx/compose/ui/node/x;)V

    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method

.method private final R1(Landroidx/compose/ui/text/AnnotatedString;)Z
    .locals 13

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    return v9

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->f(Landroidx/compose/ui/text/AnnotatedString;)V

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->a()Landroidx/compose/foundation/text/modifiers/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    iget v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    iget v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    iget-object v10, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    move-object v1, p1

    move v7, v8

    move-object v8, v10

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/text/modifiers/e;->k(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    return v9

    :cond_2
    new-instance v10, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/foundation/text/modifiers/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Landroidx/compose/foundation/text/modifiers/e;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    iget v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    iget v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    iget v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    iget-object v9, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    const/4 v12, 0x0

    move-object v0, v11

    move-object v1, p1

    move v7, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/modifiers/e;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M1()Landroidx/compose/foundation/text/modifiers/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/e;->a()Lo0/e;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroidx/compose/foundation/text/modifiers/e;->h(Lo0/e;)V

    invoke-virtual {v10, v11}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->d(Landroidx/compose/foundation/text/modifiers/e;)V

    iput-object v10, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final J1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    return-void
.end method

.method public final K1(ZZZZ)V
    .locals 9

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->M1()Landroidx/compose/foundation/text/modifiers/e;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    iget v4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    iget-boolean v5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    iget v6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    iget v7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    iget-object v8, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/text/modifiers/e;->k(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILjava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    :cond_4
    if-nez p2, :cond_5

    if-nez p3, :cond_5

    if-eqz p4, :cond_6

    :cond_5
    invoke-static {p0}, Landroidx/compose/ui/node/a0;->b(Landroidx/compose/ui/node/x;)V

    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    :cond_7
    return-void
.end method

.method public final L1(Lz/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n(Lz/c;)V

    return-void
.end method

.method public O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final O1()Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    return-object v0
.end method

.method public final Q1(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method

.method public R0(Landroidx/compose/ui/semantics/n;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$1;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->C:Lkotlin/jvm/functions/Function1;

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->E(Landroidx/compose/ui/semantics/n;Landroidx/compose/ui/text/AnnotatedString;)V

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->b()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->F(Landroidx/compose/ui/semantics/n;Landroidx/compose/ui/text/AnnotatedString;)V

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->c()Z

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->D(Landroidx/compose/ui/semantics/n;Z)V

    :cond_1
    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$2;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$2;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->H(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$3;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$3;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V

    invoke-static {p1, v2, v1, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->M(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$4;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$applySemantics$4;-><init>(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;)V

    invoke-static {p1, v2, v1, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->d(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-static {p1, v2, v0, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->j(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final S1(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Lkotlin/jvm/functions/Function1;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->q:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->q:Lkotlin/jvm/functions/Function1;

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->w:Lkotlin/jvm/functions/Function1;

    if-eq v0, p2, :cond_1

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->w:Lkotlin/jvm/functions/Function1;

    move p1, v1

    :cond_1
    iget-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->x:Landroidx/compose/foundation/text/modifiers/h;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    move p1, v1

    :cond_2
    iget-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Lkotlin/jvm/functions/Function1;

    if-eq p2, p4, :cond_3

    iput-object p4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->z:Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    return v1
.end method

.method public final T1(Landroidx/compose/ui/graphics/x1;Landroidx/compose/ui/text/d0;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/graphics/x1;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/graphics/x1;

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/d0;->F(Landroidx/compose/ui/text/d0;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final U1(Landroidx/compose/ui/text/d0;Ljava/util/List;IIZLandroidx/compose/ui/text/font/h$b;I)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/d0;->G(Landroidx/compose/ui/text/d0;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    move v0, v1

    :cond_0
    iget p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    if-eq p1, p3, :cond_1

    iput p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->u:I

    move v0, v1

    :cond_1
    iget p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    if-eq p1, p4, :cond_2

    iput p4, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->t:I

    move v0, v1

    :cond_2
    iget-boolean p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    if-eq p1, p5, :cond_3

    iput-boolean p5, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->s:Z

    move v0, v1

    :cond_3
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-object p6, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->p:Landroidx/compose/ui/text/font/h$b;

    move v0, v1

    :cond_4
    iget p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    invoke-static {p1, p7}, Landroidx/compose/ui/text/style/p;->e(II)Z

    move-result p1

    if-nez p1, :cond_5

    iput p7, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    goto :goto_0

    :cond_5
    move v1, v0

    :goto_0
    return v1
.end method

.method public final V1(Landroidx/compose/ui/text/AnnotatedString;)Z
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->e()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v3, p1}, Landroidx/compose/ui/text/AnnotatedString;->l(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->J1()V

    :cond_3
    return v1
.end method

.method public synthetic W0()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/h1;->b(Landroidx/compose/ui/node/i1;)Z

    move-result v0

    return v0
.end method

.method public n(Lz/c;)V
    .locals 14

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object v0

    invoke-interface {v0}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->N1(Lo0/e;)Landroidx/compose/foundation/text/modifiers/e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/modifiers/e;->c()Landroidx/compose/ui/text/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->i()Z

    move-result v3

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->r:I

    sget-object v4, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {v4}, Landroidx/compose/ui/text/style/p$a;->c()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/text/style/p;->e(II)Z

    move-result v3

    if-nez v3, :cond_1

    move v13, v11

    goto :goto_0

    :cond_1
    move v13, v12

    :goto_0
    if-eqz v13, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->y()J

    move-result-wide v3

    invoke-static {v3, v4}, Lo0/t;->g(J)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->y()J

    move-result-wide v4

    invoke-static {v4, v5}, Lo0/t;->f(J)I

    move-result v1

    int-to-float v1, v1

    sget-object v4, Ly/g;->b:Ly/g$a;

    invoke-virtual {v4}, Ly/g$a;->c()J

    move-result-wide v4

    invoke-static {v3, v1}, Ly/n;->a(FF)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ly/j;->a(JJ)Ly/i;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->n()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v12, v3, v4}, Landroidx/compose/ui/graphics/l1;->e(Landroidx/compose/ui/graphics/m1;Ly/i;IILjava/lang/Object;)V

    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->A()Landroidx/compose/ui/text/style/i;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Landroidx/compose/ui/text/style/i;->b:Landroidx/compose/ui/text/style/i$a;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/i$a;->c()Landroidx/compose/ui/text/style/i;

    move-result-object v1

    :cond_3
    move-object v6, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :goto_1
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->x()Landroidx/compose/ui/graphics/z4;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v1, Landroidx/compose/ui/graphics/z4;->d:Landroidx/compose/ui/graphics/z4$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/z4$a;->a()Landroidx/compose/ui/graphics/z4;

    move-result-object v1

    :cond_4
    move-object v5, v1

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->i()Lz/h;

    move-result-object v1

    if-nez v1, :cond_5

    sget-object v1, Lz/l;->a:Lz/l;

    :cond_5
    move-object v7, v1

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->g()Landroidx/compose/ui/graphics/j1;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->d()F

    move-result v4

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v1, v2

    move-object v2, v0

    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/text/MultiParagraph;->A(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;IILjava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->y:Landroidx/compose/ui/graphics/x1;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroidx/compose/ui/graphics/x1;->a()J

    move-result-wide v3

    goto :goto_2

    :cond_7
    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v3

    :goto_2
    const-wide/16 v8, 0x10

    cmp-long v1, v3, v8

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->h()J

    move-result-wide v3

    cmp-long v1, v3, v8

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->o:Landroidx/compose/ui/text/d0;

    invoke-virtual {v1}, Landroidx/compose/ui/text/d0;->h()J

    move-result-wide v3

    goto :goto_3

    :cond_9
    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide v3

    :goto_3
    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v1, v2

    move-object v2, v0

    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/text/MultiParagraph;->y(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz v13, :cond_a

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->j()V

    :cond_a
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->D:Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$a;->c()Z

    move-result v0

    if-ne v0, v11, :cond_b

    move v0, v12

    goto :goto_5

    :cond_b
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->n:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {v0}, Landroidx/compose/foundation/text/modifiers/i;->a(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v0

    :goto_5
    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->v:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move v11, v12

    :cond_d
    :goto_6
    if-nez v11, :cond_f

    :cond_e
    invoke-interface {p1}, Lz/c;->Y0()V

    :cond_f
    return-void

    :goto_7
    if-eqz v13, :cond_10

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m1;->j()V

    :cond_10
    throw p1
.end method

.method public synthetic w0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/m;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 5

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->N1(Lo0/e;)Landroidx/compose/foundation/text/modifiers/e;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Landroidx/compose/foundation/text/modifiers/e;->e(JLandroidx/compose/ui/unit/LayoutDirection;)Z

    move-result p3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/e;->c()Landroidx/compose/ui/text/z;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->v()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->i()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b()Z

    if-eqz p3, :cond_2

    invoke-static {p0}, Landroidx/compose/ui/node/a0;->a(Landroidx/compose/ui/node/x;)V

    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->q:Lkotlin/jvm/functions/Function1;

    if-eqz p3, :cond_0

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->A:Ljava/util/Map;

    if-nez p3, :cond_1

    new-instance p3, Ljava/util/LinkedHashMap;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    :cond_1
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/h;

    move-result-object v0

    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->h()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/h;

    move-result-object v0

    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->j()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->A:Ljava/util/Map;

    :cond_2
    iget-object p3, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->w:Lkotlin/jvm/functions/Function1;

    if-eqz p3, :cond_3

    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p3, Lo0/b;->b:Lo0/b$a;

    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result v0

    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo0/t;->g(J)I

    move-result v1

    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo0/t;->f(J)I

    move-result v2

    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    move-result-wide v3

    invoke-static {v3, v4}, Lo0/t;->f(J)I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Lo0/b$a;->b(IIII)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    move-result-object p2

    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result p3

    invoke-virtual {p4}, Landroidx/compose/ui/text/z;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/t;->f(J)I

    move-result p4

    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->A:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$measure$1;

    invoke-direct {v1, p2}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$measure$1;-><init>(Landroidx/compose/ui/layout/g0;)V

    invoke-interface {p1, p3, p4, v0, v1}, Landroidx/compose/ui/layout/x;->p0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method
