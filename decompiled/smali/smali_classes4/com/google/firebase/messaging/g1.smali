.class Lcom/google/firebase/messaging/g1;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/g1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/messaging/g1$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/g1$a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/g1;->a:Lcom/google/firebase/messaging/g1$a;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/j1$a;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/g1;->b(Lcom/google/firebase/messaging/j1$a;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private static synthetic b(Lcom/google/firebase/messaging/j1$a;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/j1$a;->d()V

    return-void
.end method


# virtual methods
.method c(Lcom/google/firebase/messaging/j1$a;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/google/firebase/messaging/g1;->a:Lcom/google/firebase/messaging/g1$a;

    iget-object v1, p1, Lcom/google/firebase/messaging/j1$a;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/google/firebase/messaging/g1$a;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lw3/m;

    invoke-direct {v1}, Lw3/m;-><init>()V

    new-instance v2, Lcom/google/firebase/messaging/f1;

    invoke-direct {v2, p1}, Lcom/google/firebase/messaging/f1;-><init>(Lcom/google/firebase/messaging/j1$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
