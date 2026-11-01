.class public final Lcom/google/android/exoplayer2/source/rtsp/g0$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Lcom/google/common/collect/ImmutableList$a;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/net/Uri;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->b:Lcom/google/common/collect/ImmutableList$a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Lcom/google/common/collect/ImmutableList$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->b:Lcom/google/common/collect/ImmutableList$a;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->g:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->c:I

    return p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public m(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public n(Lcom/google/android/exoplayer2/source/rtsp/a;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->b:Lcom/google/common/collect/ImmutableList$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    return-object p0
.end method

.method public o()Lcom/google/android/exoplayer2/source/rtsp/g0;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/g0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/g0;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g0$b;Lcom/google/android/exoplayer2/source/rtsp/g0$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One of more mandatory SDP fields are not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(I)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->c:I

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public u(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->l:Ljava/lang/String;

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->j:Ljava/lang/String;

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public y(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->g:Landroid/net/Uri;

    return-object p0
.end method
