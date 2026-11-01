.class public final Lg2/z;
.super Ljava/lang/Object;


# static fields
.field public static final d:Lg2/z;

.field private static final e:Ljava/lang/String;


# instance fields
.field public final a:I

.field private final b:Lcom/google/common/collect/ImmutableList;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg2/z;

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/common/f0;

    invoke-direct {v0, v2}, Lg2/z;-><init>([Landroidx/media3/common/f0;)V

    sput-object v0, Lg2/z;->d:Lg2/z;

    invoke-static {v1}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg2/z;->e:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/common/f0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

    array-length p1, p1

    iput p1, p0, Lg2/z;->a:I

    invoke-direct {p0}, Lg2/z;->f()V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/f0;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lg2/z;->e(Landroidx/media3/common/f0;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Landroidx/media3/common/f0;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Landroidx/media3/common/f0;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    iget-object v3, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/f0;

    iget-object v4, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/f0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v4, "TrackGroupArray"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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
.method public b(I)Landroidx/media3/common/f0;
    .locals 1

    iget-object v0, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/f0;

    return-object p1
.end method

.method public c()Lcom/google/common/collect/ImmutableList;
    .locals 2

    iget-object v0, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

    new-instance v1, Lg2/y;

    invoke-direct {v1}, Lg2/y;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->o(Ljava/util/List;Lcom/google/common/base/f;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroidx/media3/common/f0;)I
    .locals 1

    iget-object v0, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

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

    const-class v3, Lg2/z;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lg2/z;

    iget v2, p0, Lg2/z;->a:I

    iget v3, p1, Lg2/z;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

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

    iget v0, p0, Lg2/z;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    iput v0, p0, Lg2/z;->c:I

    :cond_0
    iget v0, p0, Lg2/z;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg2/z;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
