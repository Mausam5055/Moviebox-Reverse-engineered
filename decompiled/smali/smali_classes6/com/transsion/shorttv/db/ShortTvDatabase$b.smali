.class public final Lcom/transsion/shorttv/db/ShortTvDatabase$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/db/ShortTvDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase$b;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Lcom/transsion/shorttv/db/ShortTvDatabase;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/transsion/shorttv/db/ShortTvDatabase;

    const-string v1, "or-short-tv-db"

    invoke-static {p1, v0, v1}, Landroidx/room/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase$b;->c()Ly3/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ly3/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    new-instance v0, Lcom/transsion/shorttv/db/ShortTvDatabase$b$a;

    invoke-direct {v0}, Lcom/transsion/shorttv/db/ShortTvDatabase$b$a;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase$a;->a(Landroidx/room/RoomDatabase$b;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/db/ShortTvDatabase;

    return-object p1
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/transsion/shorttv/db/ShortTvDatabase;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/shorttv/db/ShortTvDatabase;->g0()Lcom/transsion/shorttv/db/ShortTvDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/shorttv/db/ShortTvDatabase;->g0()Lcom/transsion/shorttv/db/ShortTvDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/shorttv/db/ShortTvDatabase;->p:Lcom/transsion/shorttv/db/ShortTvDatabase$b;

    invoke-direct {v0, p1}, Lcom/transsion/shorttv/db/ShortTvDatabase$b;->a(Landroid/content/Context;)Lcom/transsion/shorttv/db/ShortTvDatabase;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/shorttv/db/ShortTvDatabase;->i0(Lcom/transsion/shorttv/db/ShortTvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method

.method public final c()Ly3/c;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/db/ShortTvDatabase;->h0()Ly3/c;

    move-result-object v0

    return-object v0
.end method
