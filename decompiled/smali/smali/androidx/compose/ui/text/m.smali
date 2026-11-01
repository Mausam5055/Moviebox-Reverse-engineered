.class public final Landroidx/compose/ui/text/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/text/l;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/l;IIIIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/m;->a:Landroidx/compose/ui/text/l;

    iput p2, p0, Landroidx/compose/ui/text/m;->b:I

    iput p3, p0, Landroidx/compose/ui/text/m;->c:I

    iput p4, p0, Landroidx/compose/ui/text/m;->d:I

    iput p5, p0, Landroidx/compose/ui/text/m;->e:I

    iput p6, p0, Landroidx/compose/ui/text/m;->f:F

    iput p7, p0, Landroidx/compose/ui/text/m;->g:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->g:F

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->e:I

    return v0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/m;->c:I

    iget v1, p0, Landroidx/compose/ui/text/m;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final e()Landroidx/compose/ui/text/l;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/m;->a:Landroidx/compose/ui/text/l;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/m;

    iget-object v1, p0, Landroidx/compose/ui/text/m;->a:Landroidx/compose/ui/text/l;

    iget-object v3, p1, Landroidx/compose/ui/text/m;->a:Landroidx/compose/ui/text/l;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/m;->b:I

    iget v3, p1, Landroidx/compose/ui/text/m;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/text/m;->c:I

    iget v3, p1, Landroidx/compose/ui/text/m;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/text/m;->d:I

    iget v3, p1, Landroidx/compose/ui/text/m;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/compose/ui/text/m;->e:I

    iget v3, p1, Landroidx/compose/ui/text/m;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/compose/ui/text/m;->f:F

    iget v3, p1, Landroidx/compose/ui/text/m;->f:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Landroidx/compose/ui/text/m;->g:F

    iget p1, p1, Landroidx/compose/ui/text/m;->g:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->b:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->d:I

    return v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->f:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/m;->a:Landroidx/compose/ui/text/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/m;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/m;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/m;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/m;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/m;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/m;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Ly/i;)Ly/i;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroidx/compose/ui/text/m;->f:F

    invoke-static {v0, v1}, Ly/h;->a(FF)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ly/i;->q(J)Ly/i;

    move-result-object p1

    return-object p1
.end method

.method public final j(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->b:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final k(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->d:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final l(F)F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->f:F

    add-float/2addr p1, v0

    return p1
.end method

.method public final m(I)I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/m;->b:I

    iget v1, p0, Landroidx/compose/ui/text/m;->c:I

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p1

    iget v0, p0, Landroidx/compose/ui/text/m;->b:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final n(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->d:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final o(F)F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/m;->f:F

    sub-float/2addr p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParagraphInfo(paragraph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/m;->a:Landroidx/compose/ui/text/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/m;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startLineIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endLineIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/m;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/m;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/m;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
