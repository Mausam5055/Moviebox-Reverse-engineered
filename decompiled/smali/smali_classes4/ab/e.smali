.class public Lab/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFLab/p;)V
    .locals 0

    return-void
.end method

.method public b(Lab/p;FFF)V
    .locals 0

    invoke-virtual {p0, p2, p3, p1}, Lab/e;->a(FFLab/p;)V

    return-void
.end method

.method public c(Lab/p;FFLandroid/graphics/RectF;Lab/d;)V
    .locals 0

    invoke-interface {p5, p4}, Lab/d;->a(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lab/e;->b(Lab/p;FFF)V

    return-void
.end method
