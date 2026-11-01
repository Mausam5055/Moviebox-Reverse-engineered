.class public final Landroidx/media3/exoplayer/upstream/e$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/e$a$a$a;
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

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/upstream/e$a$a$a;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/media3/exoplayer/upstream/e$a$a;->d(Landroidx/media3/exoplayer/upstream/e$a$a$a;IJJ)V

    return-void
.end method

.method private static synthetic d(Landroidx/media3/exoplayer/upstream/e$a$a$a;IJJ)V
    .locals 6

    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/e$a$a$a;->a(Landroidx/media3/exoplayer/upstream/e$a$a$a;)Landroidx/media3/exoplayer/upstream/e$a;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/upstream/e$a;->onBandwidthSample(IJJ)V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/e$a;)V
    .locals 2

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/upstream/e$a$a;->e(Landroidx/media3/exoplayer/upstream/e$a;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media3/exoplayer/upstream/e$a$a$a;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/upstream/e$a$a$a;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/e$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(IJJ)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v3, Landroidx/media3/exoplayer/upstream/e$a$a$a;

    invoke-static {v3}, Landroidx/media3/exoplayer/upstream/e$a$a$a;->b(Landroidx/media3/exoplayer/upstream/e$a$a$a;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Landroidx/media3/exoplayer/upstream/e$a$a$a;->c(Landroidx/media3/exoplayer/upstream/e$a$a$a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v9, Landroidx/media3/exoplayer/upstream/d;

    move-object v2, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/upstream/d;-><init>(Landroidx/media3/exoplayer/upstream/e$a$a$a;IJJ)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Landroidx/media3/exoplayer/upstream/e$a;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/upstream/e$a$a$a;

    invoke-static {v1}, Landroidx/media3/exoplayer/upstream/e$a$a$a;->a(Landroidx/media3/exoplayer/upstream/e$a$a$a;)Landroidx/media3/exoplayer/upstream/e$a;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/e$a$a$a;->d()V

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/e$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
