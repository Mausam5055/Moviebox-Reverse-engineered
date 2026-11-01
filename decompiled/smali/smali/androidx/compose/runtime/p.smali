.class public abstract Landroidx/compose/runtime/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Landroidx/compose/runtime/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/p;->a:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/p$a;

    invoke-direct {v0}, Landroidx/compose/runtime/p$a;-><init>()V

    sput-object v0, Landroidx/compose/runtime/p;->b:Landroidx/compose/runtime/w;

    return-void
.end method

.method public static final a(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m;)Landroidx/compose/runtime/l;
    .locals 7

    new-instance v6, Landroidx/compose/runtime/o;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/o;-><init>(Landroidx/compose/runtime/m;Landroidx/compose/runtime/f;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public static final b(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m;)Landroidx/compose/runtime/d2;
    .locals 7

    new-instance v6, Landroidx/compose/runtime/o;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/o;-><init>(Landroidx/compose/runtime/m;Landroidx/compose/runtime/f;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public static final synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/p;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic d(Landroidx/collection/d0;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/p;->f(Landroidx/collection/d0;II)V

    return-void
.end method

.method public static final synthetic e(Ljava/util/List;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/p;->g(Ljava/util/List;II)V

    return-void
.end method

.method private static final f(Landroidx/collection/d0;II)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/collection/m;->a(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroidx/collection/m;->a(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/collection/d0;->j(II)I

    invoke-virtual {p0, p2, v0}, Landroidx/collection/d0;->j(II)I

    return-void
.end method

.method private static final g(Ljava/util/List;II)V
    .locals 2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
