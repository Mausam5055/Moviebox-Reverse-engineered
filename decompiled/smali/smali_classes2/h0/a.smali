.class public final Lh0/a;
.super Landroid/view/ActionMode$Callback2;


# instance fields
.field private final a:Lh0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lh0/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    iput-object p1, p0, Lh0/a;->a:Lh0/b;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lh0/a;->a:Lh0/b;

    invoke-virtual {v0, p1, p2}, Lh0/b;->d(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lh0/a;->a:Lh0/b;

    invoke-virtual {v0, p1, p2}, Lh0/b;->e(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p1, p0, Lh0/a;->a:Lh0/b;

    invoke-virtual {p1}, Lh0/b;->f()V

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    iget-object p1, p0, Lh0/a;->a:Lh0/b;

    invoke-virtual {p1}, Lh0/b;->c()Ly/i;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ly/i;->f()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Ly/i;->i()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Ly/i;->g()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Ly/i;->c()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lh0/a;->a:Lh0/b;

    invoke-virtual {v0, p1, p2}, Lh0/b;->g(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
