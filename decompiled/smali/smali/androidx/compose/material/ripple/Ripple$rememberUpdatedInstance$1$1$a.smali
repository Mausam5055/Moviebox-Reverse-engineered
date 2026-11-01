.class final Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/material/ripple/RippleIndicationInstance;

.field final synthetic b:Lkotlinx/coroutines/n0;


# direct methods
.method constructor <init>(Landroidx/compose/material/ripple/RippleIndicationInstance;Lkotlinx/coroutines/n0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$a;->a:Landroidx/compose/material/ripple/RippleIndicationInstance;

    iput-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$a;->b:Lkotlinx/coroutines/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    instance-of p2, p1, Lp/k$b;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$a;->a:Landroidx/compose/material/ripple/RippleIndicationInstance;

    check-cast p1, Lp/k$b;

    iget-object v0, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$a;->b:Lkotlinx/coroutines/n0;

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/ripple/RippleIndicationInstance;->b(Lp/k$b;Lkotlinx/coroutines/n0;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lp/k$c;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$a;->a:Landroidx/compose/material/ripple/RippleIndicationInstance;

    check-cast p1, Lp/k$c;

    invoke-virtual {p1}, Lp/k$c;->a()Lp/k$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/material/ripple/RippleIndicationInstance;->d(Lp/k$b;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lp/k$a;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$a;->a:Landroidx/compose/material/ripple/RippleIndicationInstance;

    check-cast p1, Lp/k$a;

    invoke-virtual {p1}, Lp/k$a;->a()Lp/k$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/material/ripple/RippleIndicationInstance;->d(Lp/k$b;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$a;->a:Landroidx/compose/material/ripple/RippleIndicationInstance;

    iget-object v0, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$a;->b:Lkotlinx/coroutines/n0;

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/ripple/RippleIndicationInstance;->e(Lp/f;Lkotlinx/coroutines/n0;)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lp/f;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$a;->a(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
