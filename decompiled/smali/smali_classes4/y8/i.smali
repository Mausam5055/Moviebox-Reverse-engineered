.class public final Ly8/i;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# instance fields
.field private final a:Luz/a;

.field private final b:Luz/a;

.field private final c:Luz/a;

.field private final d:Luz/a;


# direct methods
.method public constructor <init>(Luz/a;Luz/a;Luz/a;Luz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/i;->a:Luz/a;

    iput-object p2, p0, Ly8/i;->b:Luz/a;

    iput-object p3, p0, Ly8/i;->c:Luz/a;

    iput-object p4, p0, Ly8/i;->d:Luz/a;

    return-void
.end method

.method public static a(Luz/a;Luz/a;Luz/a;Luz/a;)Ly8/i;
    .locals 1

    new-instance v0, Ly8/i;

    invoke-direct {v0, p0, p1, p2, p3}, Ly8/i;-><init>(Luz/a;Luz/a;Luz/a;Luz/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;La9/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lc9/a;)Lz8/u;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly8/h;->a(Landroid/content/Context;La9/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lc9/a;)Lz8/u;

    move-result-object p0

    invoke-static {p0}, Lu8/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz8/u;

    return-object p0
.end method


# virtual methods
.method public b()Lz8/u;
    .locals 4

    iget-object v0, p0, Ly8/i;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Ly8/i;->b:Luz/a;

    invoke-interface {v1}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La9/d;

    iget-object v2, p0, Ly8/i;->c:Luz/a;

    invoke-interface {v2}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    iget-object v3, p0, Ly8/i;->d:Luz/a;

    invoke-interface {v3}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc9/a;

    invoke-static {v0, v1, v2, v3}, Ly8/i;->c(Landroid/content/Context;La9/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lc9/a;)Lz8/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly8/i;->b()Lz8/u;

    move-result-object v0

    return-object v0
.end method
