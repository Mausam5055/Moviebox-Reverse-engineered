.class Lcom/google/firebase/crashlytics/internal/common/n$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/n;->J(Lwb/b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Ljava/lang/Thread;

.field final synthetic d:Lwb/b;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/firebase/crashlytics/internal/common/n;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/n;JLjava/lang/Throwable;Ljava/lang/Thread;Lwb/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    iput-wide p2, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->a:J

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->b:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->c:Ljava/lang/Thread;

    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->d:Lwb/b;

    iput-boolean p7, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/Task;
    .locals 8

    iget-wide v0, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->a:J

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->c(J)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->d(Lcom/google/firebase/crashlytics/internal/common/n;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v2, "Tried to write a fatal exception while no session was open."

    invoke-virtual {v0, v2}, Lob/g;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/n;->f(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/y;->a()Z

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/n;->g(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/w0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->b:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->c:Ljava/lang/Thread;

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/google/firebase/crashlytics/internal/common/w0;->v(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    iget-wide v3, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->a:J

    invoke-static {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/n;->h(Lcom/google/firebase/crashlytics/internal/common/n;J)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->d:Lwb/b;

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/common/n;->u(Lwb/b;)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/g;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/internal/common/g;-><init>()V

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/internal/common/g;->c()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->e:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/n;->i(Lcom/google/firebase/crashlytics/internal/common/n;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/n;->j(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/d0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/d0;->d()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->d:Lwb/b;

    invoke-interface {v1}, Lwb/b;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n$b;->f:Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/n;->k(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    move-result-object v2

    iget-object v2, v2, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/n$b$a;

    invoke-direct {v3, p0, v0}, Lcom/google/firebase/crashlytics/internal/common/n$b$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/n$b;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n$b;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
