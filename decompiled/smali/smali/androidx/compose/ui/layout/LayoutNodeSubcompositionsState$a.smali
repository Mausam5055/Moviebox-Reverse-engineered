.class final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lkotlin/jvm/functions/Function2;

.field private c:Landroidx/compose/runtime/d2;

.field private d:Z

.field private e:Z

.field private f:Landroidx/compose/runtime/i1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/d2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->c:Landroidx/compose/runtime/d2;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-static {p1, p2, p3, p2}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->f:Landroidx/compose/runtime/i1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/d2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/d2;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->f:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Landroidx/compose/runtime/d2;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->c:Landroidx/compose/runtime/d2;

    return-object v0
.end method

.method public final c()Lkotlin/jvm/functions/Function2;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->b:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->e:Z

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final g(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->f:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Landroidx/compose/runtime/i1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->f:Landroidx/compose/runtime/i1;

    return-void
.end method

.method public final i(Landroidx/compose/runtime/d2;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->c:Landroidx/compose/runtime/d2;

    return-void
.end method

.method public final j(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->b:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final k(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->d:Z

    return-void
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->e:Z

    return-void
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$a;->a:Ljava/lang/Object;

    return-void
.end method
