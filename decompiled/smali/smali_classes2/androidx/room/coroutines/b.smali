.class public final Landroidx/room/coroutines/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field private final a:Lz3/c;

.field private final b:Ljava/lang/String;

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lz3/c;Ljava/lang/String;)V
    .locals 1

    const-string v0, "driver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/b;->a:Lz3/c;

    iput-object p2, p0, Landroidx/room/coroutines/b;->b:Ljava/lang/String;

    new-instance p1, Landroidx/room/coroutines/a;

    invoke-direct {p1, p0}, Landroidx/room/coroutines/a;-><init>(Landroidx/room/coroutines/b;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/coroutines/b;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic b(Landroidx/room/coroutines/b;)Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .locals 0

    invoke-static {p0}, Landroidx/room/coroutines/b;->d(Landroidx/room/coroutines/b;)Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Landroidx/room/coroutines/b;)Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .locals 2

    new-instance v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    iget-object v1, p0, Landroidx/room/coroutines/b;->a:Lz3/c;

    iget-object p0, p0, Landroidx/room/coroutines/b;->b:Ljava/lang/String;

    invoke-interface {v1, p0}, Lz3/c;->open(Ljava/lang/String;)Lz3/b;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type androidx.sqlite.driver.AndroidSQLiteConnection"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc4/a;

    invoke-direct {v0, p0}, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;-><init>(Lc4/a;)V

    return-object v0
.end method

.method private final h()Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/b;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-direct {p0}, Landroidx/room/coroutines/b;->h()Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;->f()Lc4/a;

    move-result-object v0

    invoke-virtual {v0}, Lc4/a;->close()V

    return-void
.end method

.method public f(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Landroidx/room/coroutines/b;->h()Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
