.class Landroidx/transition/u$b;
.super Landroidx/transition/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/transition/u;


# direct methods
.method constructor <init>(Landroidx/transition/u;)V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/r;-><init>()V

    iput-object p1, p0, Landroidx/transition/u$b;->a:Landroidx/transition/u;

    return-void
.end method


# virtual methods
.method public b(Landroidx/transition/j;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/u$b;->a:Landroidx/transition/u;

    iget-boolean v0, p1, Landroidx/transition/u;->Q:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/transition/j;->d0()V

    iget-object p1, p0, Landroidx/transition/u$b;->a:Landroidx/transition/u;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/transition/u;->Q:Z

    :cond_0
    return-void
.end method

.method public e(Landroidx/transition/j;)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/u$b;->a:Landroidx/transition/u;

    iget v1, v0, Landroidx/transition/u;->P:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/transition/u;->P:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/transition/u;->Q:Z

    invoke-virtual {v0}, Landroidx/transition/j;->p()V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/j;->S(Landroidx/transition/j$f;)Landroidx/transition/j;

    return-void
.end method
