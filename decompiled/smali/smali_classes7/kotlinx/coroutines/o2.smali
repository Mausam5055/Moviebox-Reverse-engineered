.class public final Lkotlinx/coroutines/o2;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkotlinx/coroutines/o2;

.field private static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/o2;

    invoke-direct {v0}, Lkotlinx/coroutines/o2;-><init>()V

    sput-object v0, Lkotlinx/coroutines/o2;->a:Lkotlinx/coroutines/o2;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "ThreadLocalEventLoop"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/internal/j0;->a(Lkotlinx/coroutines/internal/z;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/o2;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/e1;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/o2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/e1;

    return-object v0
.end method

.method public final b()Lkotlinx/coroutines/e1;
    .locals 2

    sget-object v0, Lkotlinx/coroutines/o2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/e1;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/g1;->a()Lkotlinx/coroutines/e1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/o2;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lkotlinx/coroutines/e1;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/o2;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
