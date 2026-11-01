.class public final Lz/m;
.super Lz/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/m$a;
    }
.end annotation


# static fields
.field public static final e:Lz/m$a;

.field private static final f:I

.field private static final g:I


# instance fields
.field private final a:F

.field private final b:F

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lz/m;->e:Lz/m$a;

    sget-object v0, Landroidx/compose/ui/graphics/c5;->a:Landroidx/compose/ui/graphics/c5$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/c5$a;->a()I

    move-result v0

    sput v0, Lz/m;->f:I

    sget-object v0, Landroidx/compose/ui/graphics/d5;->a:Landroidx/compose/ui/graphics/d5$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/d5$a;->b()I

    move-result v0

    sput v0, Lz/m;->g:I

    return-void
.end method

.method private constructor <init>(FFIILandroidx/compose/ui/graphics/p4;)V
    .locals 0

    const/4 p5, 0x0

    invoke-direct {p0, p5}, Lz/h;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lz/m;->a:F

    iput p2, p0, Lz/m;->b:F

    iput p3, p0, Lz/m;->c:I

    iput p4, p0, Lz/m;->d:I

    return-void
.end method

.method public synthetic constructor <init>(FFIILandroidx/compose/ui/graphics/p4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/high16 p2, 0x40800000    # 4.0f

    :cond_1
    move v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    sget p3, Lz/m;->f:I

    :cond_2
    move v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    sget p4, Lz/m;->g:I

    :cond_3
    move v4, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move-object v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lz/m;-><init>(FFIILandroidx/compose/ui/graphics/p4;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(FFIILandroidx/compose/ui/graphics/p4;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lz/m;-><init>(FFIILandroidx/compose/ui/graphics/p4;)V

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Lz/m;->f:I

    return v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lz/m;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lz/m;->d:I

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lz/m;->b:F

    return v0
.end method

.method public final e()Landroidx/compose/ui/graphics/p4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lz/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lz/m;->a:F

    check-cast p1, Lz/m;

    iget v3, p1, Lz/m;->a:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_5

    iget v1, p0, Lz/m;->b:F

    iget v3, p1, Lz/m;->b:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_5

    iget v1, p0, Lz/m;->c:I

    iget v3, p1, Lz/m;->c:I

    invoke-static {v1, v3}, Landroidx/compose/ui/graphics/c5;->e(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lz/m;->d:I

    iget v3, p1, Lz/m;->d:I

    invoke-static {v1, v3}, Landroidx/compose/ui/graphics/d5;->e(II)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    return v2
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Lz/m;->a:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lz/m;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz/m;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz/m;->c:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/c5;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz/m;->d:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/d5;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stroke(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz/m;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", miter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz/m;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz/m;->c:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/c5;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", join="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz/m;->d:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/d5;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pathEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
