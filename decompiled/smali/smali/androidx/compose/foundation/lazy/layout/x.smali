.class public final Landroidx/compose/foundation/lazy/layout/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/x$a;,
        Landroidx/compose/foundation/lazy/layout/x$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/foundation/lazy/layout/i0;

.field private final b:Lkotlin/jvm/functions/Function1;

.field private final c:Landroidx/compose/foundation/lazy/layout/f0;

.field private d:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/compose/foundation/lazy/layout/x;-><init>(Landroidx/compose/foundation/lazy/layout/i0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/i0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/x;->a:Landroidx/compose/foundation/lazy/layout/i0;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/x;->b:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroidx/compose/foundation/lazy/layout/f0;

    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/f0;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/x;->c:Landroidx/compose/foundation/lazy/layout/f0;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/i0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/x;-><init>(Landroidx/compose/foundation/lazy/layout/i0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/lazy/layout/x;)Landroidx/compose/foundation/lazy/layout/f0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/x;->c:Landroidx/compose/foundation/lazy/layout/f0;

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/x;->b:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/lazy/layout/x$a;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/lazy/layout/x$a;-><init>(Landroidx/compose/foundation/lazy/layout/x;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/x$a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/x;->d:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    return-object v0
.end method

.method public final d()Landroidx/compose/foundation/lazy/layout/i0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/x;->a:Landroidx/compose/foundation/lazy/layout/i0;

    return-object v0
.end method

.method public final e(IJ)Landroidx/compose/foundation/lazy/layout/x$b;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/x;->d:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/x;->c:Landroidx/compose/foundation/lazy/layout/f0;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;->d(IJLandroidx/compose/foundation/lazy/layout/f0;)Landroidx/compose/foundation/lazy/layout/x$b;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Landroidx/compose/foundation/lazy/layout/a;->a:Landroidx/compose/foundation/lazy/layout/a;

    :cond_1
    return-object p1
.end method

.method public final f(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/x;->d:Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider;

    return-void
.end method
