.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;

.field private b:Ljava/util/UUID;

.field private c:Landroidx/media3/exoplayer/drm/b0$c;

.field private d:Z

.field private e:[I

.field private f:Z

.field private g:Landroidx/media3/exoplayer/upstream/m;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->a:Ljava/util/HashMap;

    sget-object v0, Landroidx/media3/common/h;->d:Ljava/util/UUID;

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->b:Ljava/util/UUID;

    sget-object v0, Landroidx/media3/exoplayer/drm/k0;->d:Landroidx/media3/exoplayer/drm/b0$c;

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->c:Landroidx/media3/exoplayer/drm/b0$c;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->e:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->f:Z

    new-instance v0, Landroidx/media3/exoplayer/upstream/k;

    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/k;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->g:Landroidx/media3/exoplayer/upstream/m;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->h:J

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/drm/m0;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
    .locals 13

    new-instance v12, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->b:Ljava/util/UUID;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->c:Landroidx/media3/exoplayer/drm/b0$c;

    iget-object v4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->a:Ljava/util/HashMap;

    iget-boolean v5, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->d:Z

    iget-object v6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->e:[I

    iget-boolean v7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->f:Z

    iget-object v8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->g:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v9, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->h:J

    const/4 v11, 0x0

    move-object v0, v12

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/b0$c;Landroidx/media3/exoplayer/drm/m0;Ljava/util/HashMap;Z[IZLandroidx/media3/exoplayer/upstream/m;JLandroidx/media3/exoplayer/drm/DefaultDrmSessionManager$a;)V

    return-object v12
.end method

.method public b(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/upstream/m;

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->g:Landroidx/media3/exoplayer/upstream/m;

    return-object p0
.end method

.method public c(Z)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->d:Z

    return-object p0
.end method

.method public d(Z)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->f:Z

    return-object p0
.end method

.method public varargs e([I)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    :cond_1
    :goto_1
    invoke-static {v5}, Landroidx/media3/common/util/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->e:[I

    return-object p0
.end method

.method public f(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/b0$c;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->b:Ljava/util/UUID;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/b0$c;

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->c:Landroidx/media3/exoplayer/drm/b0$c;

    return-object p0
.end method
