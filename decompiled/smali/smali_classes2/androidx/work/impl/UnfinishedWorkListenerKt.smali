.class public abstract Landroidx/work/impl/UnfinishedWorkListenerKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UnfinishedWorkListener"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/work/impl/UnfinishedWorkListenerKt;->a:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/UnfinishedWorkListenerKt;->b:J

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Landroidx/work/impl/UnfinishedWorkListenerKt;->b:J

    return-wide v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/work/impl/UnfinishedWorkListenerKt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final c(Lkotlinx/coroutines/n0;Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/work/impl/utils/a0;->b(Landroid/content/Context;Landroidx/work/b;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object p2

    invoke-interface {p2}, Landroidx/work/impl/model/k0;->q()Lkotlinx/coroutines/flow/b;

    move-result-object p2

    new-instance p3, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/d;->E(Lkotlinx/coroutines/flow/b;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/b;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/d;->j(Lkotlinx/coroutines/flow/b;)Lkotlinx/coroutines/flow/b;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/d;->k(Lkotlinx/coroutines/flow/b;)Lkotlinx/coroutines/flow/b;

    move-result-object p2

    new-instance p3, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2;

    invoke-direct {p3, p1, v0}, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/d;->A(Lkotlinx/coroutines/flow/b;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/d;->v(Lkotlinx/coroutines/flow/b;Lkotlinx/coroutines/n0;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method
