.class public abstract Landroidx/compose/ui/node/NodeChainKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/node/NodeChainKt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/NodeChainKt$a;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeChainKt$a;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->t1(I)V

    sput-object v0, Landroidx/compose/ui/node/NodeChainKt;->a:Landroidx/compose/ui/node/NodeChainKt$a;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/f;Landroidx/compose/runtime/collection/b;)Landroidx/compose/runtime/collection/b;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/node/NodeChainKt;->e(Landroidx/compose/ui/f;Landroidx/compose/runtime/collection/b;)Landroidx/compose/runtime/collection/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Landroidx/compose/ui/node/NodeChainKt$a;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeChainKt;->a:Landroidx/compose/ui/node/NodeChainKt$a;

    return-object v0
.end method

.method public static final synthetic c(Landroidx/compose/ui/node/l0;Landroidx/compose/ui/f$c;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/node/NodeChainKt;->f(Landroidx/compose/ui/node/l0;Landroidx/compose/ui/f$c;)V

    return-void
.end method

.method public static final d(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;)I
    .locals 1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final e(Landroidx/compose/ui/f;Landroidx/compose/runtime/collection/b;)Landroidx/compose/runtime/collection/b;
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    new-instance v1, Landroidx/compose/runtime/collection/b;

    new-array v0, v0, [Landroidx/compose/ui/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/f;

    instance-of v2, v0, Landroidx/compose/ui/CombinedModifier;

    if-eqz v2, :cond_0

    check-cast v0, Landroidx/compose/ui/CombinedModifier;

    invoke-virtual {v0}, Landroidx/compose/ui/CombinedModifier;->a()Landroidx/compose/ui/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/compose/ui/CombinedModifier;->i()Landroidx/compose/ui/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v2, v0, Landroidx/compose/ui/f$b;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(Landroidx/compose/runtime/collection/b;)V

    :cond_2
    move-object v2, p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/f;->c(Lkotlin/jvm/functions/Function1;)Z

    move-object p0, v2

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private static final f(Landroidx/compose/ui/node/l0;Landroidx/compose/ui/f$c;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type T of androidx.compose.ui.node.NodeChainKt.updateUnsafe"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/l0;->i(Landroidx/compose/ui/f$c;)V

    return-void
.end method
