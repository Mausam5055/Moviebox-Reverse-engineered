.class public final Lcom/google/android/exoplayer2/source/rtsp/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/HashMap;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->b:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->c:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->d:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->e:Ljava/util/HashMap;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->f:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/a$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->b:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/rtsp/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/a$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->d:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/rtsp/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/rtsp/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/rtsp/a$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->f:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/rtsp/a$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public i(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public j()Lcom/google/android/exoplayer2/source/rtsp/a;
    .locals 4

    const-string v0, "rtpmap"

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/a$c;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$c;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->e:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/android/exoplayer2/source/rtsp/a;-><init>(Lcom/google/android/exoplayer2/source/rtsp/a$b;Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/source/rtsp/a$c;Lcom/google/android/exoplayer2/source/rtsp/a$a;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public k(I)Lcom/google/android/exoplayer2/source/rtsp/a$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->f:I

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$b;->g:Ljava/lang/String;

    return-object p0
.end method
