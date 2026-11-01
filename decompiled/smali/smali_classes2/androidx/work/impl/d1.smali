.class public final Landroidx/work/impl/d1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/b1;


# instance fields
.field private final a:Landroidx/work/impl/s;

.field private final b:Lj4/c;


# direct methods
.method public constructor <init>(Landroidx/work/impl/s;Lj4/c;)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workTaskExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/d1;->a:Landroidx/work/impl/s;

    iput-object p2, p0, Landroidx/work/impl/d1;->b:Lj4/c;

    return-void
.end method

.method public static synthetic f(Landroidx/work/impl/d1;Landroidx/work/impl/y;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/d1;->g(Landroidx/work/impl/d1;Landroidx/work/impl/y;Landroidx/work/WorkerParameters$a;)V

    return-void
.end method

.method private static final g(Landroidx/work/impl/d1;Landroidx/work/impl/y;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/d1;->a:Landroidx/work/impl/s;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/s;->r(Landroidx/work/impl/y;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/work/impl/y;Landroidx/work/WorkerParameters$a;)V
    .locals 2

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/d1;->b:Lj4/c;

    new-instance v1, Landroidx/work/impl/c1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/c1;-><init>(Landroidx/work/impl/d1;Landroidx/work/impl/y;Landroidx/work/WorkerParameters$a;)V

    invoke-interface {v0, v1}, Lj4/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic b(Landroidx/work/impl/y;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/a1;->c(Landroidx/work/impl/b1;Landroidx/work/impl/y;I)V

    return-void
.end method

.method public synthetic c(Landroidx/work/impl/y;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/a1;->a(Landroidx/work/impl/b1;Landroidx/work/impl/y;)V

    return-void
.end method

.method public d(Landroidx/work/impl/y;I)V
    .locals 4

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/d1;->b:Lj4/c;

    new-instance v1, Landroidx/work/impl/utils/StopWorkRunnable;

    iget-object v2, p0, Landroidx/work/impl/d1;->a:Landroidx/work/impl/s;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, p2}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/s;Landroidx/work/impl/y;ZI)V

    invoke-interface {v0, v1}, Lj4/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic e(Landroidx/work/impl/y;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/a1;->b(Landroidx/work/impl/b1;Landroidx/work/impl/y;)V

    return-void
.end method
