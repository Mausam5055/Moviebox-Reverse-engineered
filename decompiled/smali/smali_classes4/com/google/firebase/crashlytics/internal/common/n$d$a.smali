.class Lcom/google/firebase/crashlytics/internal/common/n$d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/n$d;->a(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/internal/common/n$d;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/n$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$d$a;->a:Lcom/google/firebase/crashlytics/internal/common/n$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/settings/c;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v1, "Received null app settings at app startup. Cannot send cached reports"

    invoke-virtual {p1, v1}, Lob/g;->k(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$d$a;->a:Lcom/google/firebase/crashlytics/internal/common/n$d;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/n$d;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/n;->l(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$d$a;->a:Lcom/google/firebase/crashlytics/internal/common/n$d;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/n$d;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/n;->g(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/w0;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n$d$a;->a:Lcom/google/firebase/crashlytics/internal/common/n$d;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/common/n$d;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/n;->k(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    move-result-object v1

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/common/w0;->z(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$d$a;->a:Lcom/google/firebase/crashlytics/internal/common/n$d;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/n$d;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/n;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Lcom/google/firebase/crashlytics/internal/settings/c;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n$d$a;->a(Lcom/google/firebase/crashlytics/internal/settings/c;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
