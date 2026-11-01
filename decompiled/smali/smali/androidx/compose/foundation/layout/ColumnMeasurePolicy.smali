.class public final Landroidx/compose/foundation/layout/ColumnMeasurePolicy;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/t;
.implements Landroidx/compose/foundation/layout/x;


# instance fields
.field private final a:Landroidx/compose/foundation/layout/b$k;

.field private final b:Landroidx/compose/ui/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    iput-object p2, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    return-void
.end method

.method public static final synthetic g(Landroidx/compose/foundation/layout/ColumnMeasurePolicy;Landroidx/compose/ui/layout/g0;Landroidx/compose/foundation/layout/z;IILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->h(Landroidx/compose/ui/layout/g0;Landroidx/compose/foundation/layout/z;IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method private final h(Landroidx/compose/ui/layout/g0;Landroidx/compose/foundation/layout/z;IILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/z;->a()Landroidx/compose/foundation/layout/m;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3, p5, p1, p4}, Landroidx/compose/foundation/layout/m;->a(ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/g0;I)I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result p1

    sub-int/2addr p3, p1

    const/4 p1, 0x0

    invoke-interface {p2, p1, p3, p5}, Landroidx/compose/ui/b$b;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(IIIIZ)J
    .locals 0

    invoke-static {p5, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/i;->b(ZIIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(I[I[ILandroidx/compose/ui/layout/x;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    invoke-interface {v0, p4, p1, p2, p3}, Landroidx/compose/foundation/layout/b$k;->c(Lo0/e;I[I[I)V

    return-void
.end method

.method public c(Landroidx/compose/ui/layout/x;Ljava/util/List;J)Landroidx/compose/ui/layout/v;
    .locals 16

    invoke-static/range {p3 .. p4}, Lo0/b;->m(J)I

    move-result v1

    invoke-static/range {p3 .. p4}, Lo0/b;->n(J)I

    move-result v2

    invoke-static/range {p3 .. p4}, Lo0/b;->k(J)I

    move-result v3

    invoke-static/range {p3 .. p4}, Lo0/b;->l(J)I

    move-result v4

    move-object/from16 v15, p0

    iget-object v0, v15, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    invoke-interface {v0}, Landroidx/compose/foundation/layout/b$k;->a()F

    move-result v0

    move-object/from16 v6, p1

    invoke-interface {v6, v0}, Lo0/e;->c0(F)I

    move-result v5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [Landroidx/compose/ui/layout/g0;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    const/16 v13, 0xc00

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v14}, Landroidx/compose/foundation/layout/y;->b(Landroidx/compose/foundation/layout/x;IIIIILandroidx/compose/ui/layout/x;Ljava/util/List;[Landroidx/compose/ui/layout/g0;II[IIILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    move-result-object v0

    return-object v0
.end method

.method public d([Landroidx/compose/ui/layout/g0;Landroidx/compose/ui/layout/x;I[III[IIII)Landroidx/compose/ui/layout/v;
    .locals 8

    new-instance v7, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    move v3, p6

    move v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy$placeHelper$1$1;-><init>([Landroidx/compose/ui/layout/g0;Landroidx/compose/foundation/layout/ColumnMeasurePolicy;IILandroidx/compose/ui/layout/x;[I)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move v1, p6

    move v2, p5

    move-object v4, v7

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroidx/compose/ui/layout/g0;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    iget-object v3, p1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    iget-object p1, p1, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public f(Landroidx/compose/ui/layout/g0;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColumnMeasurePolicy(verticalArrangement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->a:Landroidx/compose/foundation/layout/b$k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->b:Landroidx/compose/ui/b$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
