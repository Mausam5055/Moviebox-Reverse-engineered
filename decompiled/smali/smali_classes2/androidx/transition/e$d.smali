.class Landroidx/transition/e$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/transition/j$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/e;->z(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Landroidx/core/os/e;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroidx/transition/e;


# direct methods
.method constructor <init>(Landroidx/transition/e;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/e$d;->b:Landroidx/transition/e;

    iput-object p2, p0, Landroidx/transition/e$d;->a:Ljava/lang/Runnable;

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
    .locals 0

    iget-object p1, p0, Landroidx/transition/e$d;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

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
