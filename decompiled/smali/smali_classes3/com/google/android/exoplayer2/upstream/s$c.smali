.class Lcom/google/android/exoplayer2/upstream/s$c;
.super Lcom/google/common/collect/n2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/n2;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/s$c;->a:Ljava/util/Map;

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/s$c;->p(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/s$c;->o(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method private static synthetic o(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic p(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/n2;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/n2;->standardContainsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/s$c;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s$c;->a:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/n2;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/u;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/u;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->b(Ljava/util/Set;Lcom/google/common/base/n;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/n2;->standardEquals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/s$c;->n(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/n2;->standardHashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/common/collect/n2;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/google/common/collect/n2;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/n2;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/t;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/t;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->b(Ljava/util/Set;Lcom/google/common/base/n;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/n2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/n2;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/google/common/collect/n2;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
