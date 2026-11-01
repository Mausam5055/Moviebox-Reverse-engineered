.class public final Lcom/google/android/exoplayer2/source/rtsp/o$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableListMultimap$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/collect/ImmutableListMultimap$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableListMultimap$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/o$b;->a:Lcom/google/common/collect/ImmutableListMultimap$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/o$b;-><init>()V

    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    const-string p1, "CSeq"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    if-eqz p2, :cond_0

    const-string p1, "Session"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/o$b;)Lcom/google/common/collect/ImmutableListMultimap$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/o$b;->a:Lcom/google/common/collect/ImmutableListMultimap$a;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/o$b;->a:Lcom/google/common/collect/ImmutableListMultimap$a;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$a;->l(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$a;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/o$b;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":\\s?"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->T0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v0

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public d(Ljava/util/Map;)Lcom/google/android/exoplayer2/source/rtsp/o$b;
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/o$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/o$b;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public e()Lcom/google/android/exoplayer2/source/rtsp/o;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;-><init>(Lcom/google/android/exoplayer2/source/rtsp/o$b;Lcom/google/android/exoplayer2/source/rtsp/o$a;)V

    return-object v0
.end method
