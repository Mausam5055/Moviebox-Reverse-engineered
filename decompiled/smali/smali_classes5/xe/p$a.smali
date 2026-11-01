.class Lxe/p$a;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxe/p;->e(Landroid/content/Context;Lxe/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxe/p;


# direct methods
.method constructor <init>(Lxe/p;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lxe/p$a;->a:Lxe/p;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    iget-object p1, p0, Lxe/p$a;->a:Lxe/p;

    invoke-static {p1}, Lxe/p;->a(Lxe/p;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lxe/p$a;->a:Lxe/p;

    invoke-static {v0}, Lxe/p;->b(Lxe/p;)Lxe/o;

    move-result-object v0

    iget-object v1, p0, Lxe/p$a;->a:Lxe/p;

    invoke-static {v1}, Lxe/p;->a(Lxe/p;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v1, p0, Lxe/p$a;->a:Lxe/p;

    invoke-static {v1}, Lxe/p;->c(Lxe/p;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lxe/p$a;->a:Lxe/p;

    invoke-static {v1, p1}, Lxe/p;->d(Lxe/p;I)I

    invoke-interface {v0, p1}, Lxe/o;->a(I)V

    :cond_0
    return-void
.end method
