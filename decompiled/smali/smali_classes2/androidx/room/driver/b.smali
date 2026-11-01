.class public final Landroidx/room/driver/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# instance fields
.field private final a:Landroidx/room/driver/c;


# direct methods
.method public constructor <init>(Landroidx/room/driver/c;)V
    .locals 1

    const-string v0, "supportDriver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/driver/b;->a:Landroidx/room/driver/c;

    return-void
.end method

.method private final d()Landroidx/room/driver/SupportSQLitePooledConnection;
    .locals 3

    iget-object v0, p0, Landroidx/room/driver/b;->a:Landroidx/room/driver/c;

    invoke-virtual {v0}, Landroidx/room/driver/c;->a()La4/e;

    move-result-object v0

    invoke-interface {v0}, La4/e;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ":memory:"

    :cond_0
    new-instance v1, Landroidx/room/driver/SupportSQLitePooledConnection;

    iget-object v2, p0, Landroidx/room/driver/b;->a:Landroidx/room/driver/c;

    invoke-virtual {v2, v0}, Landroidx/room/driver/c;->b(Ljava/lang/String;)Landroidx/room/driver/a;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/room/driver/SupportSQLitePooledConnection;-><init>(Landroidx/room/driver/a;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/b;->a:Landroidx/room/driver/c;

    invoke-virtual {v0}, Landroidx/room/driver/c;->a()La4/e;

    move-result-object v0

    invoke-interface {v0}, La4/e;->close()V

    return-void
.end method

.method public f(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Landroidx/room/driver/b;->d()Landroidx/room/driver/SupportSQLitePooledConnection;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Landroidx/room/driver/c;
    .locals 1

    iget-object v0, p0, Landroidx/room/driver/b;->a:Landroidx/room/driver/c;

    return-object v0
.end method
