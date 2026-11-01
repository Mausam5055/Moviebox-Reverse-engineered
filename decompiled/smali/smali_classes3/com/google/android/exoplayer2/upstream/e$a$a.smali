.class public final Lcom/google/android/exoplayer2/upstream/e$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/e$a$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/upstream/e$a$a$a;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/e$a$a;->d(Lcom/google/android/exoplayer2/upstream/e$a$a$a;IJJ)V

    return-void
.end method

.method private static synthetic d(Lcom/google/android/exoplayer2/upstream/e$a$a$a;IJJ)V
    .locals 6

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->a(Lcom/google/android/exoplayer2/upstream/e$a$a$a;)Lcom/google/android/exoplayer2/upstream/e$a;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/e$a;->onBandwidthSample(IJJ)V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/e$a;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/upstream/e$a$a;->e(Lcom/google/android/exoplayer2/upstream/e$a;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/e$a$a$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/e$a$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/e$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(IJJ)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplayer2/upstream/e$a$a$a;

    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->b(Lcom/google/android/exoplayer2/upstream/e$a$a$a;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->c(Lcom/google/android/exoplayer2/upstream/e$a$a$a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v9, Lcom/google/android/exoplayer2/upstream/d;

    move-object v2, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/d;-><init>(Lcom/google/android/exoplayer2/upstream/e$a$a$a;IJJ)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/e$a;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/e$a$a$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->a(Lcom/google/android/exoplayer2/upstream/e$a$a$a;)Lcom/google/android/exoplayer2/upstream/e$a;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/e$a$a$a;->d()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
