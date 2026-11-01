.class public abstract Landroidx/compose/ui/node/BackwardsCompatNodeKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/node/BackwardsCompatNodeKt$a;

.field private static final b:Lkotlin/jvm/functions/Function1;

.field private static final c:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt$a;

    invoke-direct {v0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->a:Landroidx/compose/ui/node/BackwardsCompatNodeKt$a;

    sget-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt$onDrawCacheReadsChanged$1;->INSTANCE:Landroidx/compose/ui/node/BackwardsCompatNodeKt$onDrawCacheReadsChanged$1;

    sput-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->b:Lkotlin/jvm/functions/Function1;

    sget-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt$updateModifierLocalConsumer$1;->INSTANCE:Landroidx/compose/ui/node/BackwardsCompatNodeKt$updateModifierLocalConsumer$1;

    sput-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/node/BackwardsCompatNodeKt$a;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->a:Landroidx/compose/ui/node/BackwardsCompatNodeKt$a;

    return-object v0
.end method

.method public static final synthetic b()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->c:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic c(Landroidx/compose/ui/node/BackwardsCompatNode;)Z
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->d(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result p0

    return p0
.end method

.method private static final d(Landroidx/compose/ui/node/BackwardsCompatNode;)Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.TailModifierNode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/node/l1;

    invoke-virtual {p0}, Landroidx/compose/ui/node/l1;->D1()Z

    move-result p0

    return p0
.end method
