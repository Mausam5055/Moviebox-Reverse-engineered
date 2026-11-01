.class Lcom/google/firebase/crashlytics/internal/settings/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/settings/e;->p(Lcom/google/firebase/crashlytics/internal/settings/SettingsCacheBehavior;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/settings/e;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/settings/e;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->b:Lcom/google/firebase/crashlytics/internal/settings/e;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->a:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/internal/settings/e$a;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/settings/e$a;->b()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->b:Lcom/google/firebase/crashlytics/internal/settings/e;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/e;->j(Lcom/google/firebase/crashlytics/internal/settings/e;)Lcom/google/firebase/crashlytics/internal/settings/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->b:Lcom/google/firebase/crashlytics/internal/settings/e;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/settings/e;->f(Lcom/google/firebase/crashlytics/internal/settings/e;)Lcom/google/firebase/crashlytics/internal/settings/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/settings/i;->a(Lcom/google/firebase/crashlytics/internal/settings/h;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->a:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->d:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/d;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/settings/d;-><init>(Lcom/google/firebase/crashlytics/internal/settings/e$a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->b:Lcom/google/firebase/crashlytics/internal/settings/e;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/e;->c(Lcom/google/firebase/crashlytics/internal/settings/e;)Lcom/google/firebase/crashlytics/internal/settings/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/f;->b(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->b:Lcom/google/firebase/crashlytics/internal/settings/e;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/settings/e;->d(Lcom/google/firebase/crashlytics/internal/settings/e;)Lwb/a;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/firebase/crashlytics/internal/settings/c;->c:J

    invoke-virtual {v1, v2, v3, p1}, Lwb/a;->c(JLorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->b:Lcom/google/firebase/crashlytics/internal/settings/e;

    const-string v2, "Loaded settings: "

    invoke-static {v1, p1, v2}, Lcom/google/firebase/crashlytics/internal/settings/e;->e(Lcom/google/firebase/crashlytics/internal/settings/e;Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->b:Lcom/google/firebase/crashlytics/internal/settings/e;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/e;->f(Lcom/google/firebase/crashlytics/internal/settings/e;)Lcom/google/firebase/crashlytics/internal/settings/h;

    move-result-object v1

    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/settings/h;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/firebase/crashlytics/internal/settings/e;->g(Lcom/google/firebase/crashlytics/internal/settings/e;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->b:Lcom/google/firebase/crashlytics/internal/settings/e;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/e;->h(Lcom/google/firebase/crashlytics/internal/settings/e;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/e$a;->b:Lcom/google/firebase/crashlytics/internal/settings/e;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/e;->i(Lcom/google/firebase/crashlytics/internal/settings/e;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/e$a;->c(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
