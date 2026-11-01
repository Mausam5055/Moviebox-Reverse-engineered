.class Landroidx/databinding/l$a;
.super Landroidx/databinding/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/l;
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

    check-cast p1, Landroidx/databinding/i$a;

    check-cast p2, Landroidx/databinding/i;

    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/l$a;->b(Landroidx/databinding/i$a;Landroidx/databinding/i;ILjava/lang/Void;)V

    return-void
.end method

.method public b(Landroidx/databinding/i$a;Landroidx/databinding/i;ILjava/lang/Void;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroidx/databinding/i$a;->a(Landroidx/databinding/i;I)V

    return-void
.end method
