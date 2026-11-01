.class final Landroidx/compose/ui/input/rotary/b;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Lf0/a;


# instance fields
.field private n:Lkotlin/jvm/functions/Function1;

.field private o:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/rotary/b;->n:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/ui/input/rotary/b;->o:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final D1(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/rotary/b;->n:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final E1(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/rotary/b;->o:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public J0(Lf0/b;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/rotary/b;->o:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public X0(Lf0/b;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/rotary/b;->n:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
