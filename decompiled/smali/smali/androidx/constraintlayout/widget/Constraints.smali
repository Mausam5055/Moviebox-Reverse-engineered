.class public Landroidx/constraintlayout/widget/Constraints;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/Constraints$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Constraints"


# instance fields
.field a:Landroidx/constraintlayout/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/Constraints;->b(Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/Constraints;->b(Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 1

    const-string p1, "Constraints"

    const-string v0, " ################# init"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected a()Landroidx/constraintlayout/widget/Constraints$a;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/Constraints$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/Constraints$a;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Constraints;->a()Landroidx/constraintlayout/widget/Constraints$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Constraints;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/Constraints$a;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/Constraints$a;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/Constraints$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/Constraints$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getConstraintSet()Landroidx/constraintlayout/widget/b;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/b;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/widget/b;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/b;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/b;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/b;->s(Landroidx/constraintlayout/widget/Constraints;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/Constraints;->a:Landroidx/constraintlayout/widget/b;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method
