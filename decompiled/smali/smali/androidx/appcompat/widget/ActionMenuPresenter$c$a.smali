.class Landroidx/appcompat/widget/ActionMenuPresenter$c$a;
.super Landroidx/appcompat/widget/ForwardingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActionMenuPresenter$c;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Landroidx/appcompat/widget/ActionMenuPresenter;

.field final synthetic k:Landroidx/appcompat/widget/ActionMenuPresenter$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter$c;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c$a;->k:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    iput-object p3, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c$a;->j:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/o;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c$a;->k:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/k;->c()Landroidx/appcompat/view/menu/j;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c$a;->k:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->N()Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$c$a;->k:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$c;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->D()Z

    const/4 v0, 0x1

    return v0
.end method
