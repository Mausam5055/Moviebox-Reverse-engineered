.class public abstract Landroidx/compose/ui/draganddrop/h;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/draganddrop/b;)J
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/draganddrop/b;->a()Landroid/view/DragEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/draganddrop/b;->a()Landroid/view/DragEvent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DragEvent;->getY()F

    move-result p0

    invoke-static {v0, p0}, Ly/h;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method
