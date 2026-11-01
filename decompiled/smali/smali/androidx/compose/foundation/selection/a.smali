.class final Landroidx/compose/foundation/selection/a;
.super Landroidx/compose/foundation/ClickableNode;


# instance fields
.field private J:Z


# direct methods
.method private constructor <init>(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableNode;-><init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Landroidx/compose/foundation/selection/a;->J:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/selection/a;-><init>(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public P1(Landroidx/compose/ui/semantics/n;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/selection/a;->J:Z

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->C(Landroidx/compose/ui/semantics/n;Z)V

    return-void
.end method

.method public final e2(ZLp/i;Landroidx/compose/foundation/b0;ZLandroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V
    .locals 8

    iget-boolean v0, p0, Landroidx/compose/foundation/selection/a;->J:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/compose/foundation/selection/a;->J:Z

    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    :cond_0
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-super/range {v1 .. v7}, Landroidx/compose/foundation/ClickableNode;->d2(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
