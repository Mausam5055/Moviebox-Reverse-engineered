.class public Lmp/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;IIII)[I
    .locals 6

    const v5, 0x3f3851ec    # 0.72f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lmp/b;->b(Landroid/content/Context;IIIIF)[I

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;IIIIF)[I
    .locals 0

    if-nez p3, :cond_0

    sget-object p3, Loh/h;->a:Loh/h;

    invoke-virtual {p3, p0}, Loh/h;->e(Landroid/content/Context;)I

    move-result p3

    :cond_0
    if-nez p4, :cond_1

    sget-object p4, Loh/h;->a:Loh/h;

    invoke-virtual {p4, p0}, Loh/h;->c(Landroid/content/Context;)I

    move-result p4

    :cond_1
    int-to-float p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    int-to-float p2, p2

    div-float/2addr p0, p2

    mul-float/2addr p0, p1

    cmpg-float p1, p0, p1

    if-gez p1, :cond_2

    int-to-float p1, p3

    mul-float/2addr p1, p5

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_2
    int-to-float p1, p3

    const p2, 0x3f6b851f    # 0.92f

    mul-float/2addr p1, p2

    goto :goto_0

    :goto_1
    int-to-float p2, p1

    div-float/2addr p2, p0

    float-to-int p2, p2

    int-to-float p3, p4

    mul-float/2addr p3, p5

    float-to-int p3, p3

    if-le p2, p3, :cond_3

    int-to-float p1, p3

    mul-float/2addr p1, p0

    float-to-int p1, p1

    move p2, p3

    :cond_3
    filled-new-array {p1, p2}, [I

    move-result-object p0

    return-object p0
.end method
