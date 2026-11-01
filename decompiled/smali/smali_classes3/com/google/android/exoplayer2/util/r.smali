.class public final Lcom/google/android/exoplayer2/util/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/r$c;,
        Lcom/google/android/exoplayer2/util/r$b;,
        Lcom/google/android/exoplayer2/util/r$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/e;

.field private final b:Lcom/google/android/exoplayer2/util/o;

.field private final c:Lcom/google/android/exoplayer2/util/r$b;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final e:Ljava/util/ArrayDeque;

.field private final f:Ljava/util/ArrayDeque;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/r;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/util/r;->a:Lcom/google/android/exoplayer2/util/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lcom/google/android/exoplayer2/util/r;->c:Lcom/google/android/exoplayer2/util/r$b;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/r;->f:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/exoplayer2/util/q;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/util/q;-><init>(Lcom/google/android/exoplayer2/util/r;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/exoplayer2/util/e;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/r;->b:Lcom/google/android/exoplayer2/util/o;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/r;->h(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/util/r;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/r;->g(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private g(Landroid/os/Message;)Z
    .locals 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/r$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->c:Lcom/google/android/exoplayer2/util/r$b;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/r$c;->b(Lcom/google/android/exoplayer2/util/r$b;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Lcom/google/android/exoplayer2/util/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic h(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/r$c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/r$c;->a(ILcom/google/android/exoplayer2/util/r$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/r;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/google/android/exoplayer2/util/r$c;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/r$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)Lcom/google/android/exoplayer2/util/r;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/util/r;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/r;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)V

    return-object v0
.end method

.method public e(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/r$b;)Lcom/google/android/exoplayer2/util/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->a:Lcom/google/android/exoplayer2/util/e;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/r;->d(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)Lcom/google/android/exoplayer2/util/r;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Lcom/google/android/exoplayer2/util/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Lcom/google/android/exoplayer2/util/o;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(I)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->b(Lcom/google/android/exoplayer2/util/o$a;)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/r;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-nez v0, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public i(ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->f:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/util/p;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/util/p;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/r$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/r$c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/r;->c:Lcom/google/android/exoplayer2/util/r$b;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/r$c;->c(Lcom/google/android/exoplayer2/util/r$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/r;->g:Z

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/r$c;

    iget-object v2, v1, Lcom/google/android/exoplayer2/util/r$c;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/r;->c:Lcom/google/android/exoplayer2/util/r$b;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/r$c;->c(Lcom/google/android/exoplayer2/util/r$b;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/r;->f()V

    return-void
.end method
