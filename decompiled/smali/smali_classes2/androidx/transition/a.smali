.class public Landroidx/transition/a;
.super Landroidx/transition/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/u;-><init>()V

    invoke-direct {p0}, Landroidx/transition/a;->s0()V

    return-void
.end method

.method private s0()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/transition/u;->p0(I)Landroidx/transition/u;

    new-instance v1, Landroidx/transition/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/transition/c;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/u;->h0(Landroidx/transition/j;)Landroidx/transition/u;

    move-result-object v1

    new-instance v2, Landroidx/transition/b;

    invoke-direct {v2}, Landroidx/transition/b;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/transition/u;->h0(Landroidx/transition/j;)Landroidx/transition/u;

    move-result-object v1

    new-instance v2, Landroidx/transition/c;

    invoke-direct {v2, v0}, Landroidx/transition/c;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/transition/u;->h0(Landroidx/transition/j;)Landroidx/transition/u;

    return-void
.end method
