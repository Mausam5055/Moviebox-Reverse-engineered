.class Lv0/f$i;
.super Lv0/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv0/f;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/d;)Z
    .locals 6

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lv0/f;->f(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/d;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-boolean p1, p0, Landroidx/constraintlayout/core/motion/utils/n;->h:Z

    return p1
.end method
