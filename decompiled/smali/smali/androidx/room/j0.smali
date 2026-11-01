.class public abstract Landroidx/room/j0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/j0;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/j0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Landroidx/room/i0;

    invoke-direct {p1, p0}, Landroidx/room/i0;-><init>(Landroidx/room/j0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/j0;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Landroidx/room/j0;)La4/h;
    .locals 0

    invoke-static {p0}, Landroidx/room/j0;->i(Landroidx/room/j0;)La4/h;

    move-result-object p0

    return-object p0
.end method

.method private final d()La4/h;
    .locals 2

    invoke-virtual {p0}, Landroidx/room/j0;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/j0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->m(Ljava/lang/String;)La4/h;

    move-result-object v0

    return-object v0
.end method

.method private final f()La4/h;
    .locals 1

    iget-object v0, p0, Landroidx/room/j0;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La4/h;

    return-object v0
.end method

.method private final g(Z)La4/h;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/room/j0;->f()La4/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/room/j0;->d()La4/h;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static final i(Landroidx/room/j0;)La4/h;
    .locals 0

    invoke-direct {p0}, Landroidx/room/j0;->d()La4/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()La4/h;
    .locals 3

    invoke-virtual {p0}, Landroidx/room/j0;->c()V

    iget-object v0, p0, Landroidx/room/j0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/room/j0;->g(Z)La4/h;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Landroidx/room/j0;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->i()V

    return-void
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method public h(La4/h;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/room/j0;->f()La4/h;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/room/j0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
