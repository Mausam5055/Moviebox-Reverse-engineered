.class Landroidx/constraintlayout/core/widgets/analyzer/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/analyzer/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/constraintlayout/core/widgets/analyzer/m;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/m;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/d;I)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/m$a;->h:Landroidx/constraintlayout/core/widgets/analyzer/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/m$a;->a:Ljava/lang/ref/WeakReference;

    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/d;->y(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/m$a;->b:I

    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/d;->y(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/m$a;->c:I

    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/d;->y(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/m$a;->d:I

    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/d;->y(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/m$a;->e:I

    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/d;->y(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/m$a;->f:I

    iput p4, p0, Landroidx/constraintlayout/core/widgets/analyzer/m$a;->g:I

    return-void
.end method
