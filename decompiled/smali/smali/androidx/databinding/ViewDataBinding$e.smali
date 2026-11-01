.class Landroidx/databinding/ViewDataBinding$e;
.super Landroidx/databinding/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
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

    check-cast p1, Landroidx/databinding/k;

    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    check-cast p4, Ljava/lang/Void;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/ViewDataBinding$e;->b(Landroidx/databinding/k;Landroidx/databinding/ViewDataBinding;ILjava/lang/Void;)V

    return-void
.end method

.method public b(Landroidx/databinding/k;Landroidx/databinding/ViewDataBinding;ILjava/lang/Void;)V
    .locals 0

    const/4 p4, 0x1

    if-eq p3, p4, :cond_2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_1

    const/4 p4, 0x3

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/databinding/k;->a(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/databinding/k;->b(Landroidx/databinding/ViewDataBinding;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroidx/databinding/k;->c(Landroidx/databinding/ViewDataBinding;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p2, p4}, Landroidx/databinding/ViewDataBinding;->a(Landroidx/databinding/ViewDataBinding;Z)Z

    :cond_3
    :goto_0
    return-void
.end method
