.class public final Ly8/g;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# instance fields
.field private final a:Luz/a;


# direct methods
.method public constructor <init>(Luz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/g;->a:Luz/a;

    return-void
.end method

.method public static a(Lc9/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;
    .locals 0

    invoke-static {p0}, Ly8/f;->a(Lc9/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    move-result-object p0

    invoke-static {p0}, Lu8/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    return-object p0
.end method

.method public static b(Luz/a;)Ly8/g;
    .locals 1

    new-instance v0, Ly8/g;

    invoke-direct {v0, p0}, Ly8/g;-><init>(Luz/a;)V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;
    .locals 1

    iget-object v0, p0, Ly8/g;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc9/a;

    invoke-static {v0}, Ly8/g;->a(Lc9/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly8/g;->c()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    move-result-object v0

    return-object v0
.end method
