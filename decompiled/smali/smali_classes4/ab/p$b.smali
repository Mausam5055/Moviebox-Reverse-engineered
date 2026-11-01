.class Lab/p$b;
.super Lab/p$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lab/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final c:Lab/p$d;


# direct methods
.method public constructor <init>(Lab/p$d;)V
    .locals 0

    invoke-direct {p0}, Lab/p$g;-><init>()V

    iput-object p1, p0, Lab/p$b;->c:Lab/p$d;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lza/a;ILandroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lab/p$b;->c:Lab/p$d;

    invoke-static {v0}, Lab/p$d;->h(Lab/p$d;)F

    move-result v6

    iget-object v0, p0, Lab/p$b;->c:Lab/p$d;

    invoke-static {v0}, Lab/p$d;->i(Lab/p$d;)F

    move-result v7

    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Lab/p$b;->c:Lab/p$d;

    invoke-static {v0}, Lab/p$d;->b(Lab/p$d;)F

    move-result v0

    iget-object v1, p0, Lab/p$b;->c:Lab/p$d;

    invoke-static {v1}, Lab/p$d;->c(Lab/p$d;)F

    move-result v1

    iget-object v2, p0, Lab/p$b;->c:Lab/p$d;

    invoke-static {v2}, Lab/p$d;->d(Lab/p$d;)F

    move-result v2

    iget-object v3, p0, Lab/p$b;->c:Lab/p$d;

    invoke-static {v3}, Lab/p$d;->e(Lab/p$d;)F

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Lza/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
