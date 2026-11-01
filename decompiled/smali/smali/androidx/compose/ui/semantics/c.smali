.class public final Landroidx/compose/ui/semantics/c;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/i1;


# instance fields
.field private n:Z

.field private o:Z

.field private p:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZZLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/semantics/c;->n:Z

    iput-boolean p2, p0, Landroidx/compose/ui/semantics/c;->o:Z

    iput-object p3, p0, Landroidx/compose/ui/semantics/c;->p:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final D1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/semantics/c;->n:Z

    return-void
.end method

.method public final E1(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/semantics/c;->p:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/semantics/c;->o:Z

    return v0
.end method

.method public R0(Landroidx/compose/ui/semantics/n;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/semantics/c;->p:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public W0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/semantics/c;->n:Z

    return v0
.end method
