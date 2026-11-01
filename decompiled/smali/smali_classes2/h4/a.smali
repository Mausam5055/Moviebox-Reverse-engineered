.class final Lh4/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lh4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/a;

    invoke-direct {v0}, Lh4/a;-><init>()V

    sput-object v0, Lh4/a;->a:Lh4/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 1

    const-string v0, "jobScheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1

    const-string v0, "getAllPendingJobs(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
