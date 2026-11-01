.class Landroidx/databinding/h$a;
.super Landroidx/databinding/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/databinding/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/databinding/j$a;

    check-cast p2, Landroidx/databinding/j;

    check-cast p4, Landroidx/databinding/h$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/h$a;->b(Landroidx/databinding/j$a;Landroidx/databinding/j;ILandroidx/databinding/h$b;)V

    return-void
.end method

.method public b(Landroidx/databinding/j$a;Landroidx/databinding/j;ILandroidx/databinding/h$b;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    invoke-virtual {p1, p2}, Landroidx/databinding/j$a;->a(Landroidx/databinding/j;)V

    goto :goto_0

    :cond_0
    iget p3, p4, Landroidx/databinding/h$b;->a:I

    iget p4, p4, Landroidx/databinding/h$b;->b:I

    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/j$a;->e(Landroidx/databinding/j;II)V

    goto :goto_0

    :cond_1
    iget p3, p4, Landroidx/databinding/h$b;->a:I

    iget v0, p4, Landroidx/databinding/h$b;->c:I

    iget p4, p4, Landroidx/databinding/h$b;->b:I

    invoke-virtual {p1, p2, p3, v0, p4}, Landroidx/databinding/j$a;->d(Landroidx/databinding/j;III)V

    goto :goto_0

    :cond_2
    iget p3, p4, Landroidx/databinding/h$b;->a:I

    iget p4, p4, Landroidx/databinding/h$b;->b:I

    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/j$a;->c(Landroidx/databinding/j;II)V

    goto :goto_0

    :cond_3
    iget p3, p4, Landroidx/databinding/h$b;->a:I

    iget p4, p4, Landroidx/databinding/h$b;->b:I

    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/j$a;->b(Landroidx/databinding/j;II)V

    :goto_0
    return-void
.end method
