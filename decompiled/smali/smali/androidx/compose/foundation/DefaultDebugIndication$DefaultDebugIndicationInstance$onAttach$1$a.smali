.class final Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic d:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->d:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of p2, p1, Lp/k$b;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v0

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lp/k$c;

    if-eqz p2, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lp/k$a;

    if-eqz p2, :cond_2

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lp/d;

    if-eqz p2, :cond_3

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v0

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lp/e;

    if-eqz p2, :cond_4

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lp/b;

    if-eqz p2, :cond_5

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v0

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_5
    instance-of p1, p1, Lp/c;

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_6
    :goto_0
    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 p2, 0x0

    if-lez p1, :cond_7

    move p1, v0

    goto :goto_1

    :cond_7
    move p1, p2

    :goto_1
    iget-object v1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v1, :cond_8

    move v1, v0

    goto :goto_2

    :cond_8
    move v1, p2

    :goto_2
    iget-object v2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->c:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v2, :cond_9

    move v2, v0

    goto :goto_3

    :cond_9
    move v2, p2

    :goto_3
    iget-object v3, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->d:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {v3}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->G1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)Z

    move-result v3

    if-eq v3, p1, :cond_a

    iget-object p2, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->d:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p2, p1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->J1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;Z)V

    move p2, v0

    :cond_a
    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->d:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->F1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)Z

    move-result p1

    if-eq p1, v1, :cond_b

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->d:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p1, v1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->I1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;Z)V

    move p2, v0

    :cond_b
    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->d:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p1}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->E1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;)Z

    move-result p1

    if-eq p1, v2, :cond_c

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->d:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p1, v2}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->H1(Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;Z)V

    goto :goto_4

    :cond_c
    move v0, p2

    :goto_4
    if-eqz v0, :cond_d

    iget-object p1, p0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->d:Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    invoke-static {p1}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    :cond_d
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lp/f;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1$a;->a(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
