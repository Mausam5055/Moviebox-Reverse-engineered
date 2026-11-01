.class final Landroidx/compose/foundation/selection/ToggleableNode;
.super Landroidx/compose/foundation/ClickableNode;


# instance fields
.field private J:Z

.field private K:Lkotlin/jvm/functions/Function1;

.field private final L:Lkotlin/jvm/functions/Function0;


# direct methods
.method private constructor <init>(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    new-instance v6, Landroidx/compose/foundation/selection/ToggleableNode$1;

    invoke-direct {v6, p6, p1}, Landroidx/compose/foundation/selection/ToggleableNode$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableNode;-><init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Landroidx/compose/foundation/selection/ToggleableNode;->J:Z

    iput-object p6, p0, Landroidx/compose/foundation/selection/ToggleableNode;->K:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroidx/compose/foundation/selection/ToggleableNode$_onClick$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/selection/ToggleableNode$_onClick$1;-><init>(Landroidx/compose/foundation/selection/ToggleableNode;)V

    iput-object p1, p0, Landroidx/compose/foundation/selection/ToggleableNode;->L:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/selection/ToggleableNode;-><init>(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic e2(Landroidx/compose/foundation/selection/ToggleableNode;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->K:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic f2(Landroidx/compose/foundation/selection/ToggleableNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->J:Z

    return p0
.end method


# virtual methods
.method public P1(Landroidx/compose/ui/semantics/n;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->J:Z

    invoke-static {v0}, Lj0/a;->a(Z)Landroidx/compose/ui/state/ToggleableState;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->I(Landroidx/compose/ui/semantics/n;Landroidx/compose/ui/state/ToggleableState;)V

    return-void
.end method

.method public final g2(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    iget-boolean v0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->J:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/compose/foundation/selection/ToggleableNode;->J:Z

    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    :cond_0
    iput-object p6, p0, Landroidx/compose/foundation/selection/ToggleableNode;->K:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    iget-object v7, p0, Landroidx/compose/foundation/selection/ToggleableNode;->L:Lkotlin/jvm/functions/Function0;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-super/range {v1 .. v7}, Landroidx/compose/foundation/ClickableNode;->d2(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
