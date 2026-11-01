.class public final Lcom/google/firebase/sessions/SessionLifecycleClient$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SessionLifecycleClient;-><init>(Lkotlin/coroutines/CoroutineContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/sessions/SessionLifecycleClient;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/SessionLifecycleClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connected to SessionLifecycleService. Queue size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    invoke-static {v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->c(Lcom/google/firebase/sessions/SessionLifecycleClient;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->f(Lcom/google/firebase/sessions/SessionLifecycleClient;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/firebase/sessions/SessionLifecycleClient;->g(Lcom/google/firebase/sessions/SessionLifecycleClient;Z)V

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    invoke-static {p1}, Lcom/google/firebase/sessions/SessionLifecycleClient;->a(Lcom/google/firebase/sessions/SessionLifecycleClient;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/firebase/sessions/SessionLifecycleClient;->d(Lcom/google/firebase/sessions/SessionLifecycleClient;Ljava/util/List;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->f(Lcom/google/firebase/sessions/SessionLifecycleClient;Landroid/os/Messenger;)V

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleClient$b;->a:Lcom/google/firebase/sessions/SessionLifecycleClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/firebase/sessions/SessionLifecycleClient;->g(Lcom/google/firebase/sessions/SessionLifecycleClient;Z)V

    return-void
.end method
