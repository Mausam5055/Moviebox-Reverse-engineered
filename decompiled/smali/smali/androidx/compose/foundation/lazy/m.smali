.class public final Landroidx/compose/foundation/lazy/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/lazy/l;
.implements Landroidx/compose/ui/layout/v;


# instance fields
.field private final a:Landroidx/compose/foundation/lazy/n;

.field private b:I

.field private c:Z

.field private d:F

.field private final e:F

.field private final f:Z

.field private final g:Lkotlinx/coroutines/n0;

.field private final h:Lo0/e;

.field private final i:J

.field private final j:Ljava/util/List;

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:Z

.field private final o:Landroidx/compose/foundation/gestures/Orientation;

.field private final p:I

.field private final q:I

.field private final synthetic r:Landroidx/compose/ui/layout/v;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroidx/compose/foundation/lazy/n;IZFLandroidx/compose/ui/layout/v;FZLkotlinx/coroutines/n0;Lo0/e;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/lazy/m;->a:Landroidx/compose/foundation/lazy/n;

    move v1, p2

    iput v1, v0, Landroidx/compose/foundation/lazy/m;->b:I

    move v1, p3

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/m;->c:Z

    move v1, p4

    iput v1, v0, Landroidx/compose/foundation/lazy/m;->d:F

    move v1, p6

    iput v1, v0, Landroidx/compose/foundation/lazy/m;->e:F

    move v1, p7

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/m;->f:Z

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/foundation/lazy/m;->g:Lkotlinx/coroutines/n0;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/foundation/lazy/m;->h:Lo0/e;

    move-wide v1, p10

    iput-wide v1, v0, Landroidx/compose/foundation/lazy/m;->i:J

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/foundation/lazy/m;->j:Ljava/util/List;

    move/from16 v1, p13

    iput v1, v0, Landroidx/compose/foundation/lazy/m;->k:I

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/foundation/lazy/m;->l:I

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/foundation/lazy/m;->m:I

    move/from16 v1, p16

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/m;->n:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/foundation/lazy/m;->o:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 v1, p18

    iput v1, v0, Landroidx/compose/foundation/lazy/m;->p:I

    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/foundation/lazy/m;->q:I

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/foundation/lazy/m;->r:Landroidx/compose/ui/layout/v;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/n;IZFLandroidx/compose/ui/layout/v;FZLkotlinx/coroutines/n0;Lo0/e;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p19}, Landroidx/compose/foundation/lazy/m;-><init>(Landroidx/compose/foundation/lazy/n;IZFLandroidx/compose/ui/layout/v;FZLkotlinx/coroutines/n0;Lo0/e;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lo0/u;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/m;->p:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/m;->l:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/m;->m:I

    return v0
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->g()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/m;->q:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/m;->k:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->r:Landroidx/compose/ui/layout/v;

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->o:Landroidx/compose/foundation/gestures/Orientation;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->r:Landroidx/compose/ui/layout/v;

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->getWidth()I

    move-result v0

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->j:Ljava/util/List;

    return-object v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->a:Landroidx/compose/foundation/lazy/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/lazy/m;->b:I

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/m;->c:Z

    return v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/m;->i:J

    return-wide v0
.end method

.method public final l()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/m;->d:F

    return v0
.end method

.method public final m()Lkotlinx/coroutines/n0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->g:Lkotlinx/coroutines/n0;

    return-object v0
.end method

.method public final n()Lo0/e;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->h:Lo0/e;

    return-object v0
.end method

.method public final o()Landroidx/compose/foundation/lazy/n;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->a:Landroidx/compose/foundation/lazy/n;

    return-object v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/m;->b:I

    return v0
.end method

.method public final q()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/m;->e:F

    return v0
.end method

.method public final r(IZ)Z
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/m;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->a:Landroidx/compose/foundation/lazy/n;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/lazy/m;->b:I

    sub-int/2addr v2, p1

    if-ltz v2, :cond_3

    if-ge v2, v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->h()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->p()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/n;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    if-gez p1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->g()I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->g()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/n;->g()I

    move-result v0

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/n;->h()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->c()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    neg-int v2, p1

    if-le v0, v2, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->g()I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/n;->g()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->c()I

    move-result v0

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/n;->g()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v0, p1, :cond_3

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/lazy/m;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/lazy/m;->b:I

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/m;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/n;

    invoke-virtual {v3, p1, p2}, Landroidx/compose/foundation/lazy/n;->l(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    int-to-float p2, p1

    iput p2, p0, Landroidx/compose/foundation/lazy/m;->d:F

    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/m;->c:Z

    const/4 v1, 0x1

    if-nez p2, :cond_3

    if-lez p1, :cond_3

    iput-boolean v1, p0, Landroidx/compose/foundation/lazy/m;->c:Z

    :cond_3
    :goto_2
    return v1
.end method

.method public v()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->r:Landroidx/compose/ui/layout/v;

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->r:Landroidx/compose/ui/layout/v;

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->w()V

    return-void
.end method

.method public x()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/m;->r:Landroidx/compose/ui/layout/v;

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->x()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method
