.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/dash/a$a;

.field private final b:Lcom/google/android/exoplayer2/upstream/k$a;

.field private c:Lcom/google/android/exoplayer2/drm/x;

.field private d:Lt9/d;

.field private e:Lcom/google/android/exoplayer2/upstream/z;

.field private f:J

.field private g:Lcom/google/android/exoplayer2/upstream/b0$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/dash/a$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    new-instance p1, Lcom/google/android/exoplayer2/drm/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lcom/google/android/exoplayer2/drm/x;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lcom/google/android/exoplayer2/upstream/z;

    const-wide/16 p1, 0x7530

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:J

    new-instance p1, Lt9/e;

    invoke-direct {p1}, Lt9/e;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Lt9/d;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/dash/c$a;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/upstream/k$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/source/o;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .locals 13

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->g:Lcom/google/android/exoplayer2/upstream/b0$a;

    if-nez v0, :cond_0

    new-instance v0, Lx9/d;

    invoke-direct {v0}, Lx9/d;-><init>()V

    :cond_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    iget-object v2, v2, Lcom/google/android/exoplayer2/v1$h;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/exoplayer2/offline/d;

    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplayer2/offline/d;-><init>(Lcom/google/android/exoplayer2/upstream/b0$a;Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    new-instance v12, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Lt9/d;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lcom/google/android/exoplayer2/drm/x;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/x;->a(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/drm/u;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lcom/google/android/exoplayer2/upstream/z;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:J

    const/4 v11, 0x0

    const/4 v2, 0x0

    move-object v0, v12

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/v1;Lx9/c;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/upstream/b0$a;Lcom/google/android/exoplayer2/source/dash/a$a;Lt9/d;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;JLcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    return-object v12
.end method

.method public e(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/drm/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/j;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lcom/google/android/exoplayer2/drm/x;

    return-object p0
.end method

.method public f(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/v;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lcom/google/android/exoplayer2/upstream/z;

    return-object p0
.end method
