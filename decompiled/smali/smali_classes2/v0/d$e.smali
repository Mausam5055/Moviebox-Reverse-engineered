.class Lv0/d$e;
.super Lv0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/utils/i;->a(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method
