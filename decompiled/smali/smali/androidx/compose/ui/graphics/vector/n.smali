.class public final Landroidx/compose/ui/graphics/vector/n;
.super Landroidx/compose/ui/graphics/vector/l;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;

.field private final c:I

.field private final d:Landroidx/compose/ui/graphics/j1;

.field private final e:F

.field private final f:Landroidx/compose/ui/graphics/j1;

.field private final g:F

.field private final h:F

.field private final i:I

.field private final j:I

.field private final k:F

.field private final l:F

.field private final m:F

.field private final n:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/j1;FFIIFFFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/l;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/n;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/graphics/vector/n;->b:Ljava/util/List;

    iput p3, p0, Landroidx/compose/ui/graphics/vector/n;->c:I

    iput-object p4, p0, Landroidx/compose/ui/graphics/vector/n;->d:Landroidx/compose/ui/graphics/j1;

    iput p5, p0, Landroidx/compose/ui/graphics/vector/n;->e:F

    iput-object p6, p0, Landroidx/compose/ui/graphics/vector/n;->f:Landroidx/compose/ui/graphics/j1;

    iput p7, p0, Landroidx/compose/ui/graphics/vector/n;->g:F

    iput p8, p0, Landroidx/compose/ui/graphics/vector/n;->h:F

    iput p9, p0, Landroidx/compose/ui/graphics/vector/n;->i:I

    iput p10, p0, Landroidx/compose/ui/graphics/vector/n;->j:I

    iput p11, p0, Landroidx/compose/ui/graphics/vector/n;->k:F

    iput p12, p0, Landroidx/compose/ui/graphics/vector/n;->l:F

    iput p13, p0, Landroidx/compose/ui/graphics/vector/n;->m:F

    iput p14, p0, Landroidx/compose/ui/graphics/vector/n;->n:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/j1;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Landroidx/compose/ui/graphics/vector/n;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/j1;FFIIFFFF)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/graphics/j1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/n;->d:Landroidx/compose/ui/graphics/j1;

    return-object v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/n;->e:F

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/compose/ui/graphics/vector/n;

    if-eq v3, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/n;

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/n;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/n;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/n;->d:Landroidx/compose/ui/graphics/j1;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/n;->d:Landroidx/compose/ui/graphics/j1;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroidx/compose/ui/graphics/vector/n;->e:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/n;->e:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/n;->f:Landroidx/compose/ui/graphics/j1;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/n;->f:Landroidx/compose/ui/graphics/j1;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Landroidx/compose/ui/graphics/vector/n;->g:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/n;->g:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    iget v2, p0, Landroidx/compose/ui/graphics/vector/n;->h:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/n;->h:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    iget v2, p0, Landroidx/compose/ui/graphics/vector/n;->i:I

    iget v3, p1, Landroidx/compose/ui/graphics/vector/n;->i:I

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/c5;->e(II)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget v2, p0, Landroidx/compose/ui/graphics/vector/n;->j:I

    iget v3, p1, Landroidx/compose/ui/graphics/vector/n;->j:I

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/d5;->e(II)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget v2, p0, Landroidx/compose/ui/graphics/vector/n;->k:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/n;->k:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    iget v2, p0, Landroidx/compose/ui/graphics/vector/n;->l:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/n;->l:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    iget v2, p0, Landroidx/compose/ui/graphics/vector/n;->m:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/n;->m:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    iget v2, p0, Landroidx/compose/ui/graphics/vector/n;->n:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/n;->n:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_9

    iget v2, p0, Landroidx/compose/ui/graphics/vector/n;->c:I

    iget v3, p1, Landroidx/compose/ui/graphics/vector/n;->c:I

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/q4;->d(II)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/n;->b:Ljava/util/List;

    iget-object p1, p1, Landroidx/compose/ui/graphics/vector/n;->b:Ljava/util/List;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/n;->b:Ljava/util/List;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/n;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/n;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/n;->d:Landroidx/compose/ui/graphics/j1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/n;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/n;->f:Landroidx/compose/ui/graphics/j1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/n;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/n;->h:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/n;->i:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/c5;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/n;->j:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/d5;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/n;->k:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/n;->l:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/n;->m:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/n;->n:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/n;->c:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/q4;->e(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final j()Landroidx/compose/ui/graphics/j1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/n;->f:Landroidx/compose/ui/graphics/j1;

    return-object v0
.end method

.method public final l()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/n;->g:F

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/n;->i:I

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/n;->j:I

    return v0
.end method

.method public final o()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/n;->k:F

    return v0
.end method

.method public final p()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/n;->h:F

    return v0
.end method

.method public final q()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/n;->m:F

    return v0
.end method

.method public final r()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/n;->n:F

    return v0
.end method

.method public final s()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/vector/n;->l:F

    return v0
.end method
