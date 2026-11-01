.class Lcom/google/firebase/crashlytics/internal/common/n$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/n;->Z(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/Task;

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/common/n;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/n;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$d;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n$d;->a:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "Deleting cached crash reports..."

    invoke-virtual {p1, v0}, Lob/g;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$d;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/n;->N()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/n;->m(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$d;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/n;->g(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/w0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/w0;->y()V

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$d;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/n;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Sending cached crash reports..."

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n$d;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->j(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/d0;->c(Z)V

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$d;->a:Lcom/google/android/gms/tasks/Task;

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n$d;->b:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->k(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    move-result-object v0

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/n$d$a;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/n$d$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/n$d;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n$d;->a(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
