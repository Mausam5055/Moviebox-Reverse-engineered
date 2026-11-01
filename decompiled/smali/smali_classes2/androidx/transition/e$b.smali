.class Landroidx/transition/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/transition/j$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/e;->m(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Landroidx/transition/e;


# direct methods
.method constructor <init>(Landroidx/transition/e;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/e$b;->c:Landroidx/transition/e;

    iput-object p2, p0, Landroidx/transition/e$b;->a:Landroid/view/View;

    iput-object p3, p0, Landroidx/transition/e$b;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/j;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/transition/j;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/transition/j;->S(Landroidx/transition/j$f;)Landroidx/transition/j;

    invoke-virtual {p1, p0}, Landroidx/transition/j;->a(Landroidx/transition/j$f;)Landroidx/transition/j;

    return-void
.end method

.method public c(Landroidx/transition/j;)V
    .locals 0

    return-void
.end method

.method public synthetic d(Landroidx/transition/j;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/transition/k;->a(Landroidx/transition/j$f;Landroidx/transition/j;Z)V

    return-void
.end method

.method public e(Landroidx/transition/j;)V
    .locals 3

    invoke-virtual {p1, p0}, Landroidx/transition/j;->S(Landroidx/transition/j$f;)Landroidx/transition/j;

    iget-object p1, p0, Landroidx/transition/e$b;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/transition/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Landroidx/transition/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Landroidx/transition/j;)V
    .locals 0

    return-void
.end method

.method public synthetic g(Landroidx/transition/j;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/transition/k;->b(Landroidx/transition/j$f;Landroidx/transition/j;Z)V

    return-void
.end method
