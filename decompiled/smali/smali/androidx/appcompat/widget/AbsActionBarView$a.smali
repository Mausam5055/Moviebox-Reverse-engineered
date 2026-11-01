.class public Landroidx/appcompat/widget/AbsActionBarView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field b:I

.field final synthetic c:Landroidx/appcompat/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Landroidx/appcompat/widget/AbsActionBarView;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView$a;->c:Landroidx/appcompat/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/AbsActionBarView$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/view/ViewPropertyAnimatorCompat;I)Landroidx/appcompat/widget/AbsActionBarView$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView$a;->c:Landroidx/appcompat/widget/AbsActionBarView;

    iput-object p1, v0, Landroidx/appcompat/widget/AbsActionBarView;->f:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput p2, p0, Landroidx/appcompat/widget/AbsActionBarView$a;->b:I

    return-object p0
.end method

.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/AbsActionBarView$a;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Landroidx/appcompat/widget/AbsActionBarView$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView$a;->c:Landroidx/appcompat/widget/AbsActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/widget/AbsActionBarView;->f:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, p0, Landroidx/appcompat/widget/AbsActionBarView$a;->b:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/AbsActionBarView;->b(Landroidx/appcompat/widget/AbsActionBarView;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView$a;->c:Landroidx/appcompat/widget/AbsActionBarView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/appcompat/widget/AbsActionBarView;->a(Landroidx/appcompat/widget/AbsActionBarView;I)V

    iput-boolean v0, p0, Landroidx/appcompat/widget/AbsActionBarView$a;->a:Z

    return-void
.end method
