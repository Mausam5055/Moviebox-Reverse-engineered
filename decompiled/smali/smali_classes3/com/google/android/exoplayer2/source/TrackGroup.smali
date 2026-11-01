.class public final Lcom/google/android/exoplayer2/source/TrackGroup;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# static fields
.field public static final f:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field private final d:[Lcom/google/android/exoplayer2/o1;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt9/v;

    invoke-direct {v0}, Lt9/v;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->f:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    array-length p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    aget-object p1, p2, v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/w;->l(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    aget-object p1, p2, v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/w;->l(Ljava/lang/String;)I

    move-result p1

    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->c:I

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/TrackGroup;->j()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/o1;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/TrackGroup;->f(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p0

    return-object p0
.end method

.method private static e(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/o1;->H:Lcom/google/android/exoplayer2/k$a;

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/d;->b(Lcom/google/android/exoplayer2/k$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->e(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v0, v0, [Lcom/google/android/exoplayer2/o1;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/o1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    return-object v2
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " combined in one TrackGroup: \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (track 0) and \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (track "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "TrackGroup"

    const-string p1, ""

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "und"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method private static i(I)I
    .locals 0

    or-int/lit16 p0, p0, 0x4000

    return p0
.end method

.method private j()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/google/android/exoplayer2/o1;->e:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->i(I)I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    aget-object v1, v0, v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    const-string v2, "languages"

    invoke-static {v2, v1, v0, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/google/android/exoplayer2/o1;->e:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->i(I)I

    move-result v4

    if-eq v2, v4, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/google/android/exoplayer2/o1;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/google/android/exoplayer2/o1;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "role flags"

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    return-object v0
.end method

.method public c(I)Lcom/google/android/exoplayer2/o1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public d(Lcom/google/android/exoplayer2/o1;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

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

    const-class v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

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
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->e:I

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->e:I

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->d:[Lcom/google/android/exoplayer2/o1;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/d;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->e(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
