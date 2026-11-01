.class public final Landroidx/compose/foundation/d0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/f0;


# static fields
.field public static final a:Landroidx/compose/foundation/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/d0;

    invoke-direct {v0}, Landroidx/compose/foundation/d0;-><init>()V

    sput-object v0, Landroidx/compose/foundation/d0;->a:Landroidx/compose/foundation/d0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroidx/compose/ui/f;
    .locals 1

    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    return-object v0
.end method

.method public c(JILkotlin/jvm/functions/Function1;)J
    .locals 0

    invoke-static {p1, p2}, Ly/g;->d(J)Ly/g;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly/g;

    invoke-virtual {p1}, Ly/g;->v()J

    move-result-wide p1

    return-wide p1
.end method

.method public d(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lo0/z;->b(J)Lo0/z;

    move-result-object p1

    invoke-interface {p3, p1, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
