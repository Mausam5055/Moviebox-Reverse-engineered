.class final Landroidx/compose/material/ripple/RippleNode$onAttach$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/material/ripple/RippleNode;

.field final synthetic b:Lkotlinx/coroutines/n0;


# direct methods
.method constructor <init>(Landroidx/compose/material/ripple/RippleNode;Lkotlinx/coroutines/n0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$a;->a:Landroidx/compose/material/ripple/RippleNode;

    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$a;->b:Lkotlinx/coroutines/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    instance-of p2, p1, Lp/k;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$a;->a:Landroidx/compose/material/ripple/RippleNode;

    invoke-static {p2}, Landroidx/compose/material/ripple/RippleNode;->D1(Landroidx/compose/material/ripple/RippleNode;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$a;->a:Landroidx/compose/material/ripple/RippleNode;

    check-cast p1, Lp/k;

    invoke-static {p2, p1}, Landroidx/compose/material/ripple/RippleNode;->G1(Landroidx/compose/material/ripple/RippleNode;Lp/k;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$a;->a:Landroidx/compose/material/ripple/RippleNode;

    invoke-static {p2}, Landroidx/compose/material/ripple/RippleNode;->F1(Landroidx/compose/material/ripple/RippleNode;)Landroidx/collection/l0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/collection/l0;->e(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$a;->a:Landroidx/compose/material/ripple/RippleNode;

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1$a;->b:Lkotlinx/coroutines/n0;

    invoke-static {p2, p1, v0}, Landroidx/compose/material/ripple/RippleNode;->H1(Landroidx/compose/material/ripple/RippleNode;Lp/f;Lkotlinx/coroutines/n0;)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lp/f;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1$a;->a(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
