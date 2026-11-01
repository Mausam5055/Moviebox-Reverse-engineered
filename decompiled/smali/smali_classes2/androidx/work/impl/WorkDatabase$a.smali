.class public final Landroidx/work/impl/WorkDatabase$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;La4/e$b;)La4/e;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/WorkDatabase$a;->c(Landroid/content/Context;La4/e$b;)La4/e;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Landroid/content/Context;La4/e$b;)La4/e;
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La4/e$b;->f:La4/e$b$b;

    invoke-virtual {v0, p0}, La4/e$b$b;->a(Landroid/content/Context;)La4/e$b$a;

    move-result-object p0

    iget-object v0, p1, La4/e$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, La4/e$b$a;->d(Ljava/lang/String;)La4/e$b$a;

    move-result-object v0

    iget-object p1, p1, La4/e$b;->c:La4/e$a;

    invoke-virtual {v0, p1}, La4/e$b$a;->c(La4/e$a;)La4/e$b$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, La4/e$b$a;->e(Z)La4/e$b$a;

    move-result-object p1

    invoke-virtual {p1, v0}, La4/e$b$a;->a(Z)La4/e$b$a;

    new-instance p1, Lb4/h;

    invoke-direct {p1}, Lb4/h;-><init>()V

    invoke-virtual {p0}, La4/e$b$a;->b()La4/e$b;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb4/h;->a(La4/e$b;)La4/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/work/a;Z)Landroidx/work/impl/WorkDatabase;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "queryExecutor"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "clock"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroidx/work/impl/WorkDatabase;

    if-eqz p4, :cond_0

    invoke-static {p1, v2}, Landroidx/room/q;->b(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/RoomDatabase$a;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase$a;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, "androidx.work.workdb"

    invoke-static {p1, v2, p4}, Landroidx/room/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object p4

    new-instance v2, Landroidx/work/impl/f0;

    invoke-direct {v2, p1}, Landroidx/work/impl/f0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, v2}, Landroidx/room/RoomDatabase$a;->h(La4/e$c;)Landroidx/room/RoomDatabase$a;

    move-result-object p4

    :goto_0
    invoke-virtual {p4, p2}, Landroidx/room/RoomDatabase$a;->i(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-instance p4, Landroidx/work/impl/c;

    invoke-direct {p4, p3}, Landroidx/work/impl/c;-><init>(Landroidx/work/a;)V

    invoke-virtual {p2, p4}, Landroidx/room/RoomDatabase$a;->a(Landroidx/room/RoomDatabase$b;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-array p3, v1, [Ly3/c;

    sget-object p4, Landroidx/work/impl/j;->c:Landroidx/work/impl/j;

    aput-object p4, p3, v0

    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-instance p3, Landroidx/work/impl/t;

    const/4 p4, 0x2

    const/4 v2, 0x3

    invoke-direct {p3, p1, p4, v2}, Landroidx/work/impl/t;-><init>(Landroid/content/Context;II)V

    new-array p4, v1, [Ly3/c;

    aput-object p3, p4, v0

    invoke-virtual {p2, p4}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-array p3, v1, [Ly3/c;

    sget-object p4, Landroidx/work/impl/k;->c:Landroidx/work/impl/k;

    aput-object p4, p3, v0

    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-array p3, v1, [Ly3/c;

    sget-object p4, Landroidx/work/impl/l;->c:Landroidx/work/impl/l;

    aput-object p4, p3, v0

    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-instance p3, Landroidx/work/impl/t;

    const/4 p4, 0x5

    const/4 v2, 0x6

    invoke-direct {p3, p1, p4, v2}, Landroidx/work/impl/t;-><init>(Landroid/content/Context;II)V

    new-array p4, v1, [Ly3/c;

    aput-object p3, p4, v0

    invoke-virtual {p2, p4}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-array p3, v1, [Ly3/c;

    sget-object p4, Landroidx/work/impl/m;->c:Landroidx/work/impl/m;

    aput-object p4, p3, v0

    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-array p3, v1, [Ly3/c;

    sget-object p4, Landroidx/work/impl/n;->c:Landroidx/work/impl/n;

    aput-object p4, p3, v0

    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-array p3, v1, [Ly3/c;

    sget-object p4, Landroidx/work/impl/o;->c:Landroidx/work/impl/o;

    aput-object p4, p3, v0

    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-instance p3, Landroidx/work/impl/h1;

    invoke-direct {p3, p1}, Landroidx/work/impl/h1;-><init>(Landroid/content/Context;)V

    new-array p4, v1, [Ly3/c;

    aput-object p3, p4, v0

    invoke-virtual {p2, p4}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-instance p3, Landroidx/work/impl/t;

    const/16 p4, 0xa

    const/16 v2, 0xb

    invoke-direct {p3, p1, p4, v2}, Landroidx/work/impl/t;-><init>(Landroid/content/Context;II)V

    new-array p4, v1, [Ly3/c;

    aput-object p3, p4, v0

    invoke-virtual {p2, p4}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-array p3, v1, [Ly3/c;

    sget-object p4, Landroidx/work/impl/f;->c:Landroidx/work/impl/f;

    aput-object p4, p3, v0

    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-array p3, v1, [Ly3/c;

    sget-object p4, Landroidx/work/impl/g;->c:Landroidx/work/impl/g;

    aput-object p4, p3, v0

    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-array p3, v1, [Ly3/c;

    sget-object p4, Landroidx/work/impl/h;->c:Landroidx/work/impl/h;

    aput-object p4, p3, v0

    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-array p3, v1, [Ly3/c;

    sget-object p4, Landroidx/work/impl/i;->c:Landroidx/work/impl/i;

    aput-object p4, p3, v0

    invoke-virtual {p2, p3}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p2

    new-instance p3, Landroidx/work/impl/t;

    const/16 p4, 0x15

    const/16 v2, 0x16

    invoke-direct {p3, p1, p4, v2}, Landroidx/work/impl/t;-><init>(Landroid/content/Context;II)V

    new-array p1, v1, [Ly3/c;

    aput-object p3, p1, v0

    invoke-virtual {p2, p1}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase$a;->f(Z)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Landroidx/work/impl/WorkDatabase;

    return-object p1
.end method
