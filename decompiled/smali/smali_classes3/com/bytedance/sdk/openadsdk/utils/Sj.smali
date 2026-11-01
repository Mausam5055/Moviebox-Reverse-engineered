.class public Lcom/bytedance/sdk/openadsdk/utils/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;,
        Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;,
        Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;,
        Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;,
        Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;
    }
.end annotation


# static fields
.field public static Sj:Z

.field public static TKC:J

.field public static sP:J


# instance fields
.field private final Dq:Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

.field private final EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile Fmk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;

.field private final Jcg:Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;

.field private volatile TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/adexpress/Sj;",
            ">;>;"
        }
    .end annotation
.end field

.field private Ym:Landroid/os/HandlerThread;

.field private aa:Landroid/os/Handler;

.field private final sef:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private uA:I

.field private final vS:Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->vS:Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Sj$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Ym:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->aa:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sef:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TKC()V

    return-void
.end method

.method private EjP()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/utils/Sj;)Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/utils/Sj$Sj;

    return-object p0
.end method

.method private Sj(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Ym:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TKC()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->aa:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private TKC()V
    .locals 2

    const-string v0, "lifecycle"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Ym:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Ym:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->aa:Landroid/os/Handler;

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/utils/Sj;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/adexpress/Sj;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public Sj(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    return p1

    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    return p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sef:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/Sj;

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/adexpress/Sj;->Sj(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sef:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->isIsInit()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/utils/Sj$TKC;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->vS:Lcom/bytedance/sdk/openadsdk/utils/Sj$EjP;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sP:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj:Z

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Fmk:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/Sj$1;

    invoke-direct {v3, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Sj;Landroid/view/View;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v2, "TTAD.ActivityLifecycle"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->aa:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 7

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->uA:I

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj:Z

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/sef;->sP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TKC:J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/utils/Sj$sP;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Ljava/lang/Runnable;)V

    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;

    sget-wide v2, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sP:J

    sget-wide v4, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TKC:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj()Z

    move-result v6

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/Sj$HiB;-><init>(Lcom/bytedance/sdk/openadsdk/utils/Sj;JJZ)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Sj;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sP()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sef:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->sef:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public sP(Lcom/bytedance/sdk/component/adexpress/Sj;)Z
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Sj;->TEQ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
