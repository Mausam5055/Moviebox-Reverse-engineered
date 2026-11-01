.class public Lcom/google/android/exoplayer2/drm/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/s$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/o$b;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/drm/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/s$a;->n(Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/s$a;->o(Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/s$a;->p(Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->q(Lcom/google/android/exoplayer2/drm/s;I)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->r(Lcom/google/android/exoplayer2/drm/s;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/s$a;->s(Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method private synthetic n(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/s;->B(ILcom/google/android/exoplayer2/source/o$b;)V

    return-void
.end method

.method private synthetic o(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/s;->r(ILcom/google/android/exoplayer2/source/o$b;)V

    return-void
.end method

.method private synthetic p(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/s;->F(ILcom/google/android/exoplayer2/source/o$b;)V

    return-void
.end method

.method private synthetic q(Lcom/google/android/exoplayer2/drm/s;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/s;->s(ILcom/google/android/exoplayer2/source/o$b;)V

    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/drm/s;->D(ILcom/google/android/exoplayer2/source/o$b;I)V

    return-void
.end method

.method private synthetic r(Lcom/google/android/exoplayer2/drm/s;Ljava/lang/Exception;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/drm/s;->y(ILcom/google/android/exoplayer2/source/o$b;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic s(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/s;->E(ILcom/google/android/exoplayer2/source/o$b;)V

    return-void
.end method


# virtual methods
.method public g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/r;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/r;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/p;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/p;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/q;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/q;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/o;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/o;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;I)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/m;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/m;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;Ljava/lang/Exception;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/n;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/n;-><init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/p0;->K0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/s$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/s$a$a;->b:Lcom/google/android/exoplayer2/drm/s;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public u(ILcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/drm/s$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;)V

    return-object v0
.end method
