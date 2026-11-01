.class final Landroidx/compose/foundation/FocusablePinnableContainerNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/d;
.implements Landroidx/compose/ui/node/u0;


# instance fields
.field private n:Landroidx/compose/ui/layout/f0$a;

.field private o:Z

.field private final p:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    return-void
.end method

.method private final D1()Landroidx/compose/ui/layout/f0;
    .locals 2

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Landroidx/compose/foundation/FocusablePinnableContainerNode$retrievePinnableContainer$1;

    invoke-direct {v1, v0, p0}, Landroidx/compose/foundation/FocusablePinnableContainerNode$retrievePinnableContainer$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/foundation/FocusablePinnableContainerNode;)V

    invoke-static {p0, v1}, Landroidx/compose/ui/node/v0;->a(Landroidx/compose/ui/f$c;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/f0;

    return-object v0
.end method


# virtual methods
.method public final E1(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/compose/foundation/FocusablePinnableContainerNode;->D1()Landroidx/compose/ui/layout/f0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/layout/f0;->a()Landroidx/compose/ui/layout/f0$a;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->n:Landroidx/compose/ui/layout/f0$a;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->n:Landroidx/compose/ui/layout/f0$a;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/compose/ui/layout/f0$a;->release()V

    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->n:Landroidx/compose/ui/layout/f0$a;

    :goto_0
    iput-boolean p1, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->o:Z

    return-void
.end method

.method public Z()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/foundation/FocusablePinnableContainerNode;->D1()Landroidx/compose/ui/layout/f0;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->n:Landroidx/compose/ui/layout/f0$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/layout/f0$a;->release()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/layout/f0;->a()Landroidx/compose/ui/layout/f0$a;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->n:Landroidx/compose/ui/layout/f0$a;

    :cond_2
    return-void
.end method

.method public i1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->p:Z

    return v0
.end method

.method public p1()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->n:Landroidx/compose/ui/layout/f0$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/f0$a;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/FocusablePinnableContainerNode;->n:Landroidx/compose/ui/layout/f0$a;

    return-void
.end method
