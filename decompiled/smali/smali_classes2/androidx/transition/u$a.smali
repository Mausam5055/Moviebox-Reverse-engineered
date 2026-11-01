.class Landroidx/transition/u$a;
.super Landroidx/transition/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/u;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/transition/j;

.field final synthetic b:Landroidx/transition/u;


# direct methods
.method constructor <init>(Landroidx/transition/u;Landroidx/transition/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/u$a;->b:Landroidx/transition/u;

    iput-object p2, p0, Landroidx/transition/u$a;->a:Landroidx/transition/j;

    invoke-direct {p0}, Landroidx/transition/r;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/transition/j;)V
    .locals 1

    iget-object v0, p0, Landroidx/transition/u$a;->a:Landroidx/transition/j;

    invoke-virtual {v0}, Landroidx/transition/j;->W()V

    invoke-virtual {p1, p0}, Landroidx/transition/j;->S(Landroidx/transition/j$f;)Landroidx/transition/j;

    return-void
.end method
