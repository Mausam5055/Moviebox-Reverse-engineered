.class public final Landroidx/work/impl/utils/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    const-string v0, "workDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/m;->a:Landroidx/work/impl/WorkDatabase;

    return-void
.end method

.method public static synthetic a(Landroidx/work/impl/utils/m;II)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/utils/m;->c(Landroidx/work/impl/utils/m;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Landroidx/work/impl/utils/m;II)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/m;->a:Landroidx/work/impl/WorkDatabase;

    const-string v1, "next_job_scheduler_id"

    invoke-static {v0, v1}, Landroidx/work/impl/utils/n;->a(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    move-result v0

    if-gt p1, v0, :cond_0

    if-gt v0, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/work/impl/utils/m;->a:Landroidx/work/impl/WorkDatabase;

    add-int/lit8 p2, p1, 0x1

    invoke-static {p0, v1, p2}, Landroidx/work/impl/utils/n;->b(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(II)I
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/m;->a:Landroidx/work/impl/WorkDatabase;

    new-instance v1, Landroidx/work/impl/utils/l;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/utils/l;-><init>(Landroidx/work/impl/utils/m;II)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->Y(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "runInTransaction(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method
