.class Lcom/google/firebase/crashlytics/internal/common/n$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/n$b;->a()Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/common/n$b;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/n$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$b$a;->b:Lcom/google/firebase/crashlytics/internal/common/n$b;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n$b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/settings/c;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v1, "Received null app settings, cannot send reports at crash time."

    invoke-virtual {p1, v1}, Lob/g;->k(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$b$a;->b:Lcom/google/firebase/crashlytics/internal/common/n$b;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/n;->l(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n$b$a;->b:Lcom/google/firebase/crashlytics/internal/common/n$b;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/n;->g(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/w0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n$b$a;->b:Lcom/google/firebase/crashlytics/internal/common/n$b;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/n;->k(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    move-result-object v2

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n$b$a;->b:Lcom/google/firebase/crashlytics/internal/common/n$b;

    iget-boolean v3, v3, Lcom/google/firebase/crashlytics/internal/common/n$b;->e:Z

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n$b$a;->a:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/common/w0;->A(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/tasks/Task;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->whenAll([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n$b$a;->a(Lcom/google/firebase/crashlytics/internal/settings/c;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
