.class public final Landroidx/compose/animation/core/o0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/animation/core/g;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/o0;-><init>(FFLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/o0;->a:F

    iput p2, p0, Landroidx/compose/animation/core/o0;->b:F

    iput-object p3, p0, Landroidx/compose/animation/core/o0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(FFLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const p2, 0x44bb8000    # 1500.0f

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/o0;-><init>(FFLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/v0;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/o0;->f(Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/e1;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/compose/animation/core/o0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/o0;

    iget v0, p1, Landroidx/compose/animation/core/o0;->a:F

    iget v2, p0, Landroidx/compose/animation/core/o0;->a:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/compose/animation/core/o0;->b:F

    iget v2, p0, Landroidx/compose/animation/core/o0;->b:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/compose/animation/core/o0;->c:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/animation/core/o0;->c:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f(Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/e1;
    .locals 4

    new-instance v0, Landroidx/compose/animation/core/e1;

    iget v1, p0, Landroidx/compose/animation/core/o0;->a:F

    iget v2, p0, Landroidx/compose/animation/core/o0;->b:F

    iget-object v3, p0, Landroidx/compose/animation/core/o0;->c:Ljava/lang/Object;

    invoke-static {p1, v3}, Landroidx/compose/animation/core/h;->a(Landroidx/compose/animation/core/s0;Ljava/lang/Object;)Landroidx/compose/animation/core/o;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/animation/core/e1;-><init>(FFLandroidx/compose/animation/core/o;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/o0;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/o0;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/o0;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
