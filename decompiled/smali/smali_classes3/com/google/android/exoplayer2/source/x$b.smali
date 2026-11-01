.class public final Lcom/google/android/exoplayer2/source/x$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/k$a;

.field private b:Lcom/google/android/exoplayer2/source/r$a;

.field private c:Lcom/google/android/exoplayer2/drm/x;

.field private d:Lcom/google/android/exoplayer2/upstream/z;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 1

    new-instance v0, Lg9/i;

    invoke-direct {v0}, Lg9/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/x$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Lg9/r;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;)V
    .locals 6

    new-instance v3, Lcom/google/android/exoplayer2/drm/j;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/drm/j;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/v;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/v;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/x$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/upstream/z;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/upstream/z;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$b;->a:Lcom/google/android/exoplayer2/upstream/k$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/x$b;->b:Lcom/google/android/exoplayer2/source/r$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/x$b;->c:Lcom/google/android/exoplayer2/drm/x;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/x$b;->d:Lcom/google/android/exoplayer2/upstream/z;

    iput p5, p0, Lcom/google/android/exoplayer2/source/x$b;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;Lg9/r;)V
    .locals 1

    new-instance v0, Lt9/r;

    invoke-direct {v0, p2}, Lt9/r;-><init>(Lg9/r;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/x$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;)V

    return-void
.end method

.method public static synthetic d(Lg9/r;Le9/u1;)Lcom/google/android/exoplayer2/source/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/x$b;->f(Lg9/r;Le9/u1;)Lcom/google/android/exoplayer2/source/r;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Lg9/r;Le9/u1;)Lcom/google/android/exoplayer2/source/r;
    .locals 0

    new-instance p1, Lt9/a;

    invoke-direct {p1, p0}, Lt9/a;-><init>(Lg9/r;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/source/o;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/x$b;->e(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/source/x;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/x$b;->g(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/x$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/x$b;->h(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/x$b;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/source/x;
    .locals 8

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    iget-object v1, v0, Lcom/google/android/exoplayer2/v1$h;->h:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/x$b;->g:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/v1$h;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$b;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/v1;->b()Lcom/google/android/exoplayer2/v1$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$b;->g:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/v1$c;->h(Ljava/lang/Object;)Lcom/google/android/exoplayer2/v1$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/v1$c;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/v1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/v1$c;->a()Lcom/google/android/exoplayer2/v1;

    move-result-object p1

    :cond_2
    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/v1;->b()Lcom/google/android/exoplayer2/v1$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$b;->g:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/v1$c;->h(Ljava/lang/Object;)Lcom/google/android/exoplayer2/v1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/v1$c;->a()Lcom/google/android/exoplayer2/v1;

    move-result-object p1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/v1;->b()Lcom/google/android/exoplayer2/v1$c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/v1$c;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/v1$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/v1$c;->a()Lcom/google/android/exoplayer2/v1;

    move-result-object p1

    goto :goto_1

    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/source/x;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/x$b;->a:Lcom/google/android/exoplayer2/upstream/k$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/x$b;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x$b;->c:Lcom/google/android/exoplayer2/drm/x;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/x;->a(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/drm/u;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/x$b;->d:Lcom/google/android/exoplayer2/upstream/z;

    iget v6, p0, Lcom/google/android/exoplayer2/source/x$b;->e:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/x;-><init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;ILcom/google/android/exoplayer2/source/x$a;)V

    return-object p1
.end method

.method public g(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/x$b;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/x;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$b;->c:Lcom/google/android/exoplayer2/drm/x;

    return-object p0
.end method

.method public h(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/x$b;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/z;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$b;->d:Lcom/google/android/exoplayer2/upstream/z;

    return-object p0
.end method
