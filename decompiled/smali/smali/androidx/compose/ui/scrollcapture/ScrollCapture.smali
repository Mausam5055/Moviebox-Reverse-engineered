.class public final Landroidx/compose/ui/scrollcapture/ScrollCapture;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;


# instance fields
.field private final a:Landroidx/compose/runtime/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/scrollcapture/ScrollCapture;->a:Landroidx/compose/runtime/i1;

    return-void
.end method

.method private final e(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/scrollcapture/ScrollCapture;->a:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/ui/scrollcapture/ScrollCapture;->e(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/scrollcapture/ScrollCapture;->e(Z)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/scrollcapture/ScrollCapture;->a:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;Landroidx/compose/ui/semantics/m;Lkotlin/coroutines/CoroutineContext;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/compose/ui/semantics/m;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/compose/runtime/collection/b;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/scrollcapture/i;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {p2}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object p2

    new-instance v1, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$1;

    invoke-direct {v1, v0}, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$1;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p2, v2, v1, v3, v4}, Landroidx/compose/ui/scrollcapture/j;->f(Landroidx/compose/ui/semantics/SemanticsNode;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    new-array p2, v3, [Lkotlin/jvm/functions/Function1;

    sget-object v1, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$2;->INSTANCE:Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$2;

    aput-object v1, p2, v2

    sget-object v1, Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$3;->INSTANCE:Landroidx/compose/ui/scrollcapture/ScrollCapture$onScrollCaptureSearch$3;

    const/4 v2, 0x1

    aput-object v1, p2, v2

    invoke-static {p2}, Lkotlin/comparisons/ComparisonsKt;->b([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/collection/b;->A(Ljava/util/Comparator;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->p()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    aget-object v4, v0, p2

    :goto_0
    check-cast v4, Landroidx/compose/ui/scrollcapture/i;

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p2

    new-instance p3, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    invoke-virtual {v4}, Landroidx/compose/ui/scrollcapture/i;->c()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    invoke-virtual {v4}, Landroidx/compose/ui/scrollcapture/i;->d()Lo0/r;

    move-result-object v1

    invoke-direct {p3, v0, v1, p2, p0}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Lo0/r;Lkotlinx/coroutines/n0;Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback$a;)V

    invoke-virtual {v4}, Landroidx/compose/ui/scrollcapture/i;->a()Landroidx/compose/ui/layout/l;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/ui/layout/m;->b(Landroidx/compose/ui/layout/l;)Ly/i;

    move-result-object p2

    invoke-virtual {v4}, Landroidx/compose/ui/scrollcapture/i;->d()Lo0/r;

    move-result-object v0

    invoke-virtual {v0}, Lo0/r;->i()J

    move-result-wide v0

    invoke-static {p2}, Lo0/s;->b(Ly/i;)Lo0/r;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/ui/graphics/u4;->a(Lo0/r;)Landroid/graphics/Rect;

    move-result-object p2

    new-instance v2, Landroid/graphics/Point;

    invoke-static {v0, v1}, Lo0/p;->h(J)I

    move-result v3

    invoke-static {v0, v1}, Lo0/p;->i(J)I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p3}, Landroidx/compose/ui/scrollcapture/f;->a(Ljava/lang/Object;)Landroid/view/ScrollCaptureCallback;

    move-result-object p3

    invoke-static {p1, p2, v2, p3}, Landroidx/compose/ui/scrollcapture/h;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureCallback;)Landroid/view/ScrollCaptureTarget;

    move-result-object p1

    invoke-virtual {v4}, Landroidx/compose/ui/scrollcapture/i;->d()Lo0/r;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/ui/graphics/u4;->a(Lo0/r;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/scrollcapture/g;->a(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V

    invoke-static {p4, p1}, Landroidx/compose/ui/contentcapture/h;->a(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
