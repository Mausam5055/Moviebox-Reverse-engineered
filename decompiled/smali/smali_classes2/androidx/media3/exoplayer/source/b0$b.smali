.class public final Landroidx/media3/exoplayer/source/b0$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/a$a;

.field private b:Landroidx/media3/exoplayer/source/v$a;

.field private c:Landroidx/media3/exoplayer/drm/w;

.field private d:Landroidx/media3/exoplayer/upstream/m;

.field private e:I

.field private f:Lcom/google/common/base/q;

.field private g:I

.field private h:Landroidx/media3/common/r;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 1

    new-instance v0, Ll2/m;

    invoke-direct {v0}, Ll2/m;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;Ll2/x;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/source/v$a;)V
    .locals 6

    new-instance v3, Landroidx/media3/exoplayer/drm/j;

    invoke-direct {v3}, Landroidx/media3/exoplayer/drm/j;-><init>()V

    new-instance v4, Landroidx/media3/exoplayer/upstream/k;

    invoke-direct {v4}, Landroidx/media3/exoplayer/upstream/k;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/source/v$a;Landroidx/media3/exoplayer/drm/w;Landroidx/media3/exoplayer/upstream/m;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/source/v$a;Landroidx/media3/exoplayer/drm/w;Landroidx/media3/exoplayer/upstream/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/b0$b;->a:Landroidx/media3/datasource/a$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/b0$b;->b:Landroidx/media3/exoplayer/source/v$a;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/b0$b;->c:Landroidx/media3/exoplayer/drm/w;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/b0$b;->d:Landroidx/media3/exoplayer/upstream/m;

    iput p5, p0, Landroidx/media3/exoplayer/source/b0$b;->e:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;Ll2/x;)V
    .locals 1

    new-instance v0, Lg2/t;

    invoke-direct {v0, p2}, Lg2/t;-><init>(Ll2/x;)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/source/v$a;)V

    return-void
.end method

.method public static synthetic g(Ll2/x;Ly1/f4;)Landroidx/media3/exoplayer/source/v;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/b0$b;->j(Ll2/x;Ly1/f4;)Landroidx/media3/exoplayer/source/v;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic j(Ll2/x;Ly1/f4;)Landroidx/media3/exoplayer/source/v;
    .locals 0

    new-instance p1, Lg2/b;

    invoke-direct {p1, p0}, Lg2/b;-><init>(Ll2/x;)V

    return-object p1
.end method


# virtual methods
.method public synthetic a(Li3/s$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0, p1}, Lg2/l;->c(Landroidx/media3/exoplayer/source/r$a;Li3/s$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(I)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0, p1}, Lg2/l;->b(Landroidx/media3/exoplayer/source/r$a;I)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Z)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0, p1}, Lg2/l;->a(Landroidx/media3/exoplayer/source/r$a;Z)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/b0$b;->h(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/b0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/b0$b;->k(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/b0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/b0$b;->l(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/b0$b;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/b0;
    .locals 12

    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/source/b0;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/b0$b;->a:Landroidx/media3/datasource/a$a;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/b0$b;->b:Landroidx/media3/exoplayer/source/v$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/b0$b;->c:Landroidx/media3/exoplayer/drm/w;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/drm/w;->a(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/exoplayer/source/b0$b;->d:Landroidx/media3/exoplayer/upstream/m;

    iget v7, p0, Landroidx/media3/exoplayer/source/b0$b;->e:I

    iget v8, p0, Landroidx/media3/exoplayer/source/b0$b;->g:I

    iget-object v9, p0, Landroidx/media3/exoplayer/source/b0$b;->h:Landroidx/media3/common/r;

    iget-object v10, p0, Landroidx/media3/exoplayer/source/b0$b;->f:Lcom/google/common/base/q;

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Landroidx/media3/exoplayer/source/b0;-><init>(Landroidx/media3/common/t;Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/source/v$a;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;IILandroidx/media3/common/r;Lcom/google/common/base/q;Landroidx/media3/exoplayer/source/b0$a;)V

    return-object v0
.end method

.method i(ILandroidx/media3/common/r;)Landroidx/media3/exoplayer/source/b0$b;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/source/b0$b;->g:I

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/r;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/b0$b;->h:Landroidx/media3/common/r;

    return-object p0
.end method

.method public k(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/b0$b;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/w;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/b0$b;->c:Landroidx/media3/exoplayer/drm/w;

    return-object p0
.end method

.method public l(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/b0$b;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/upstream/m;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/b0$b;->d:Landroidx/media3/exoplayer/upstream/m;

    return-object p0
.end method
