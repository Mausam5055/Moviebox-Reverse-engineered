.class public final Lt9/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# static fields
.field public static final d:Lt9/x;

.field public static final e:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final a:I

.field private final b:Lcom/google/common/collect/ImmutableList;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt9/x;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lt9/x;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sput-object v0, Lt9/x;->d:Lt9/x;

    new-instance v0, Lt9/w;

    invoke-direct {v0}, Lt9/w;-><init>()V

    sput-object v0, Lt9/x;->e:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    array-length p1, p1

    iput p1, p0, Lt9/x;->a:I

    invoke-direct {p0}, Lt9/x;->f()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lt9/x;
    .locals 0

    invoke-static {p0}, Lt9/x;->e(Landroid/os/Bundle;)Lt9/x;

    move-result-object p0

    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Landroid/os/Bundle;)Lt9/x;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lt9/x;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lt9/x;

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {p0, v0}, Lt9/x;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object p0

    :cond_0
    new-instance v1, Lt9/x;

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroup;->f:Lcom/google/android/exoplayer2/k$a;

    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/d;->b(Lcom/google/android/exoplayer2/k$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v1, p0}, Lt9/x;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object v1
.end method

.method private f()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    iget-object v3, p0, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v4, p0, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v4, "TrackGroupArray"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1

    iget-object v0, p0, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object p1
.end method

.method public c(Lcom/google/android/exoplayer2/source/TrackGroup;)I
    .locals 1

    iget-object v0, p0, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lt9/x;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lt9/x;

    iget v2, p0, Lt9/x;->a:I

    iget v3, p1, Lt9/x;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lt9/x;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    iput v0, p0, Lt9/x;->c:I

    :cond_0
    iget v0, p0, Lt9/x;->c:I

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lt9/x;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lt9/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/d;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
