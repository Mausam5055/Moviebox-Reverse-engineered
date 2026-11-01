.class public final Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

.field private final b:Landroidx/compose/ui/layout/SubcomposeLayoutState;

.field private final c:Landroidx/compose/foundation/lazy/layout/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->a:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->b:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->c:Landroidx/compose/foundation/lazy/layout/i0;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->a:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;)Landroidx/compose/ui/layout/SubcomposeLayoutState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->b:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    return-object p0
.end method


# virtual methods
.method public final c(IJLandroidx/compose/foundation/lazy/layout/f0;)Landroidx/compose/foundation/lazy/layout/g0;
    .locals 8

    new-instance v7, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;-><init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;IJLandroidx/compose/foundation/lazy/layout/f0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final d(IJLandroidx/compose/foundation/lazy/layout/f0;)Landroidx/compose/foundation/lazy/layout/x$b;
    .locals 8

    new-instance v7, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;-><init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;IJLandroidx/compose/foundation/lazy/layout/f0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->c:Landroidx/compose/foundation/lazy/layout/i0;

    invoke-interface {p1, v7}, Landroidx/compose/foundation/lazy/layout/i0;->schedulePrefetch(Landroidx/compose/foundation/lazy/layout/g0;)V

    return-object v7
.end method
