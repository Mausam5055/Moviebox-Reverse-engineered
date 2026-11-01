.class public final Landroidx/compose/ui/text/font/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/text/font/x;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/compose/ui/text/font/b0;->a()Landroidx/compose/ui/text/font/x;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/font/t;->a:Landroidx/compose/ui/text/font/x;

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/font/d0;Landroidx/compose/ui/text/font/u;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/font/e0;
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/d0;->c()Landroidx/compose/ui/text/font/h;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    instance-of p3, p2, Landroidx/compose/ui/text/font/f;

    :goto_0
    const/4 p4, 0x0

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/text/font/t;->a:Landroidx/compose/ui/text/font/x;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/d0;->e()Landroidx/compose/ui/text/font/p;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/d0;->d()I

    move-result p1

    invoke-interface {p2, p3, p1}, Landroidx/compose/ui/text/font/x;->b(Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1

    :cond_1
    instance-of p2, p2, Landroidx/compose/ui/text/font/s;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/compose/ui/text/font/t;->a:Landroidx/compose/ui/text/font/x;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/d0;->c()Landroidx/compose/ui/text/font/h;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/text/font/s;

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/d0;->e()Landroidx/compose/ui/text/font/p;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/font/d0;->d()I

    move-result p1

    invoke-interface {p2, p3, v0, p1}, Landroidx/compose/ui/text/font/x;->a(Landroidx/compose/ui/text/font/s;Landroidx/compose/ui/text/font/p;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_1
    new-instance p2, Landroidx/compose/ui/text/font/e0$a;

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0, p4}, Landroidx/compose/ui/text/font/e0$a;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p2

    :cond_2
    return-object p4
.end method
