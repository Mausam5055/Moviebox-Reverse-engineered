.class final Lh4/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lh4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh4/c;

    invoke-direct {v0}, Lh4/c;-><init>()V

    sput-object v0, Lh4/c;->a:Lh4/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/job/JobScheduler;)Landroid/app/job/JobScheduler;
    .locals 1

    const-string v0, "jobScheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.work.systemjobscheduler"

    invoke-static {p1, v0}, Lh4/b;->a(Landroid/app/job/JobScheduler;Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object p1

    const-string v0, "forNamespace(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
