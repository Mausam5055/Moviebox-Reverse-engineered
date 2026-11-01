.class Lv0/c$b;
.super Lv0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field h:[F

.field protected i:Landroidx/constraintlayout/widget/ConstraintAttribute;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv0/c;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lv0/c$b;->h:[F

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iput-object p1, p0, Lv0/c$b;->i:Landroidx/constraintlayout/widget/ConstraintAttribute;

    return-void
.end method

.method public j(Landroid/view/View;F)V
    .locals 2

    iget-object v0, p0, Lv0/c$b;->h:[F

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->a(F)F

    move-result p2

    aput p2, v0, v1

    iget-object p2, p0, Lv0/c$b;->i:Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v0, p0, Lv0/c$b;->h:[F

    invoke-static {p2, p1, v0}, Lv0/a;->b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    return-void
.end method
