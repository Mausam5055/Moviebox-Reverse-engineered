.class public final Landroidx/compose/ui/layout/SubcomposeLayoutState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/SubcomposeLayoutState$a;
    }
.end annotation


# static fields
.field public static final f:I = 0x8


# instance fields
.field private final a:Landroidx/compose/ui/layout/p0;

.field private b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field private final c:Lkotlin/jvm/functions/Function2;

.field private final d:Lkotlin/jvm/functions/Function2;

.field private final e:Lkotlin/jvm/functions/Function2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/layout/a0;->a:Landroidx/compose/ui/layout/a0;

    invoke-direct {p0, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(Landroidx/compose/ui/layout/p0;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/layout/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->a:Landroidx/compose/ui/layout/p0;

    new-instance p1, Landroidx/compose/ui/layout/SubcomposeLayoutState$setRoot$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$setRoot$1;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->c:Lkotlin/jvm/functions/Function2;

    new-instance p1, Landroidx/compose/ui/layout/SubcomposeLayoutState$setCompositionContext$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$setCompositionContext$1;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->d:Lkotlin/jvm/functions/Function2;

    new-instance p1, Landroidx/compose/ui/layout/SubcomposeLayoutState$setMeasurePolicy$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$setMeasurePolicy$1;-><init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/layout/p0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->a:Landroidx/compose/ui/layout/p0;

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/layout/SubcomposeLayoutState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->h()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    return-void
.end method

.method private final h()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SubcomposeLayoutState is not attached to SubcomposeLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final d()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->h()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->w()V

    return-void
.end method

.method public final e()Lkotlin/jvm/functions/Function2;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->d:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final f()Lkotlin/jvm/functions/Function2;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->e:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final g()Lkotlin/jvm/functions/Function2;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutState;->c:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$a;
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->h()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->D(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$a;

    move-result-object p1

    return-object p1
.end method
