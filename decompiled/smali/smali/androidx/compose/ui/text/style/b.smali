.class final Landroidx/compose/ui/text/style/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/style/l;


# instance fields
.field private final b:Landroidx/compose/ui/graphics/y4;

.field private final c:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/y4;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/style/b;->b:Landroidx/compose/ui/graphics/y4;

    iput p2, p0, Landroidx/compose/ui/text/style/b;->c:F

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic b(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/l;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/TextForegroundStyle$-CC;->b(Landroidx/compose/ui/text/style/l;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/l;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Landroidx/compose/ui/text/style/l;)Landroidx/compose/ui/text/style/l;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/TextForegroundStyle$-CC;->a(Landroidx/compose/ui/text/style/l;Landroidx/compose/ui/text/style/l;)Landroidx/compose/ui/text/style/l;

    move-result-object p1

    return-object p1
.end method

.method public d()Landroidx/compose/ui/graphics/j1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/style/b;->b:Landroidx/compose/ui/graphics/y4;

    return-object v0
.end method

.method public final e()Landroidx/compose/ui/graphics/y4;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/style/b;->b:Landroidx/compose/ui/graphics/y4;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/style/b;

    iget-object v1, p0, Landroidx/compose/ui/text/style/b;->b:Landroidx/compose/ui/graphics/y4;

    iget-object v3, p1, Landroidx/compose/ui/text/style/b;->b:Landroidx/compose/ui/graphics/y4;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/style/b;->c:F

    iget p1, p1, Landroidx/compose/ui/text/style/b;->c:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/b;->c:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/style/b;->b:Landroidx/compose/ui/graphics/y4;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/style/b;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrushStyle(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/style/b;->b:Landroidx/compose/ui/graphics/y4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/style/b;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
