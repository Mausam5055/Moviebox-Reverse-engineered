.class public final Ll0/j;
.super Landroid/text/style/ReplacementSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0/j$a;
    }
.end annotation


# static fields
.field public static final k:Ll0/j$a;

.field public static final l:I


# instance fields
.field private final a:F

.field private final b:I

.field private final c:F

.field private final d:I

.field private final e:F

.field private final f:I

.field private g:Landroid/graphics/Paint$FontMetricsInt;

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll0/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll0/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ll0/j;->k:Ll0/j$a;

    const/16 v0, 0x8

    sput v0, Ll0/j;->l:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    iget-object v0, p0, Ll0/j;->g:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "fontMetrics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()I
    .locals 2

    iget-boolean v0, p0, Ll0/j;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ll0/j;->i:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PlaceholderSpan is not laid out yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Ll0/j;->f:I

    return v0
.end method

.method public final d()I
    .locals 2

    iget-boolean v0, p0, Ll0/j;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ll0/j;->h:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PlaceholderSpan is not laid out yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    const/4 p2, 0x1

    iput-boolean p2, p0, Ll0/j;->j:Z

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iput-object p1, p0, Ll0/j;->g:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p0}, Ll0/j;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Ll0/j;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-le p1, p4, :cond_6

    iget p1, p0, Ll0/j;->b:I

    const-string p4, "Unsupported unit."

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    iget p1, p0, Ll0/j;->a:F

    mul-float/2addr p1, p3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, p0, Ll0/j;->a:F

    iget v0, p0, Ll0/j;->e:F

    mul-float/2addr p1, v0

    :goto_0
    invoke-static {p1}, Ll0/k;->a(F)I

    move-result p1

    iput p1, p0, Ll0/j;->h:I

    iget p1, p0, Ll0/j;->d:I

    if-eqz p1, :cond_3

    if-ne p1, p2, :cond_2

    iget p1, p0, Ll0/j;->c:F

    mul-float/2addr p1, p3

    invoke-static {p1}, Ll0/k;->a(F)I

    move-result p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p1, p0, Ll0/j;->c:F

    iget p2, p0, Ll0/j;->e:F

    mul-float/2addr p1, p2

    invoke-static {p1}, Ll0/k;->a(F)I

    move-result p1

    :goto_1
    iput p1, p0, Ll0/j;->i:I

    if-eqz p5, :cond_5

    invoke-virtual {p0}, Ll0/j;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Ll0/j;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Ll0/j;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iget p1, p0, Ll0/j;->f:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown verticalAlign."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Ll0/j;->b()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Ll0/j;->b()I

    move-result p2

    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p3, p4

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Ll0/j;->b()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_2

    :pswitch_1
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Ll0/j;->b()I

    move-result p3

    sub-int/2addr p2, p3

    if-le p1, p2, :cond_4

    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Ll0/j;->b()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_2

    :pswitch_2
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Ll0/j;->b()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le p1, p2, :cond_4

    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Ll0/j;->b()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_2

    :pswitch_3
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Ll0/j;->b()I

    move-result p2

    neg-int p2, p2

    if-le p1, p2, :cond_4

    invoke-virtual {p0}, Ll0/j;->b()I

    move-result p1

    neg-int p1, p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_4
    :goto_2
    invoke-virtual {p0}, Ll0/j;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {p0}, Ll0/j;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_5
    invoke-virtual {p0}, Ll0/j;->d()I

    move-result p1

    return p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid fontMetrics: line height can not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
