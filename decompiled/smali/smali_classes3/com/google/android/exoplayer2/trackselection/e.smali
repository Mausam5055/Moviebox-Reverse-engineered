.class public Lcom/google/android/exoplayer2/trackselection/e;
.super Lcom/google/android/exoplayer2/trackselection/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/e$f;,
        Lcom/google/android/exoplayer2/trackselection/e$c;,
        Lcom/google/android/exoplayer2/trackselection/e$g;,
        Lcom/google/android/exoplayer2/trackselection/e$b;,
        Lcom/google/android/exoplayer2/trackselection/e$i;,
        Lcom/google/android/exoplayer2/trackselection/e$h;,
        Lcom/google/android/exoplayer2/trackselection/e$e;,
        Lcom/google/android/exoplayer2/trackselection/e$d;
    }
.end annotation


# static fields
.field private static final k:Lcom/google/common/collect/Ordering;

.field private static final l:Lcom/google/common/collect/Ordering;


# instance fields
.field private final d:Ljava/lang/Object;

.field public final e:Landroid/content/Context;

.field private final f:Lcom/google/android/exoplayer2/trackselection/h$b;

.field private final g:Z

.field private h:Lcom/google/android/exoplayer2/trackselection/e$d;

.field private i:Lcom/google/android/exoplayer2/trackselection/e$f;

.field private j:Lcom/google/android/exoplayer2/audio/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lla/c;

    invoke-direct {v0}, Lla/c;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/e;->k:Lcom/google/common/collect/Ordering;

    new-instance v0, Lla/d;

    invoke-direct {v0}, Lla/d;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/e;->l:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/e$d;->S:Lcom/google/android/exoplayer2/trackselection/e$d;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/a$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/e;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/h$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/a$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/a$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/e;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/h$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/h$b;)V
    .locals 0

    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/exoplayer2/trackselection/e;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/h$b;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/h$b;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/e$d;->k(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/e$d;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/trackselection/e;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/h$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/h$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/e;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/h$b;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/trackselection/h$b;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/i;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e;->d:Ljava/lang/Object;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/e;->f:Lcom/google/android/exoplayer2/trackselection/h$b;

    instance-of p2, p1, Lcom/google/android/exoplayer2/trackselection/e$d;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/e$d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e;->h:Lcom/google/android/exoplayer2/trackselection/e$d;

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    sget-object p2, Lcom/google/android/exoplayer2/trackselection/e$d;->S:Lcom/google/android/exoplayer2/trackselection/e$d;

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/google/android/exoplayer2/trackselection/e$d;->k(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/e$d;

    move-result-object p2

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/e$d;->j()Lcom/google/android/exoplayer2/trackselection/e$d$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->c0(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->Y()Lcom/google/android/exoplayer2/trackselection/e$d;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e;->h:Lcom/google/android/exoplayer2/trackselection/e$d;

    :goto_2
    sget-object p1, Lcom/google/android/exoplayer2/audio/e;->g:Lcom/google/android/exoplayer2/audio/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e;->j:Lcom/google/android/exoplayer2/audio/e;

    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/p0;->x0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e;->g:Z

    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    sget p1, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_4

    invoke-static {p3}, Lcom/google/android/exoplayer2/trackselection/e$f;->g(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/e$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e;->i:Lcom/google/android/exoplayer2/trackselection/e$f;

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e;->h:Lcom/google/android/exoplayer2/trackselection/e$d;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->M:Z

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    const-string p1, "DefaultTrackSelector"

    const-string p2, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static A(Lcom/google/android/exoplayer2/trackselection/i$a;Lcom/google/android/exoplayer2/trackselection/e$d;[Lcom/google/android/exoplayer2/trackselection/h$a;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/i$a;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/i$a;->f(I)Lt9/x;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/e$d;->o(ILt9/x;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/trackselection/e$d;->n(ILt9/x;)Lcom/google/android/exoplayer2/trackselection/e$e;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/google/android/exoplayer2/trackselection/e$e;->b:[I

    array-length v4, v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/h$a;

    iget v5, v3, Lcom/google/android/exoplayer2/trackselection/e$e;->a:I

    invoke-virtual {v2, v5}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/e$e;->b:[I

    iget v3, v3, Lcom/google/android/exoplayer2/trackselection/e$e;->d:I

    invoke-direct {v4, v2, v5, v3}, Lcom/google/android/exoplayer2/trackselection/h$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    aput-object v4, p2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static B(Lcom/google/android/exoplayer2/trackselection/i$a;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplayer2/trackselection/h$a;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/i$a;->d()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/trackselection/i$a;->f(I)Lt9/x;

    move-result-object v4

    invoke-static {v4, p1, v1}, Lcom/google/android/exoplayer2/trackselection/e;->C(Lt9/x;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/i$a;->h()Lt9/x;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/google/android/exoplayer2/trackselection/e;->C(Lt9/x;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Ljava/util/Map;)V

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/i$a;->e(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lla/o;

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, p1, Lla/o;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/i$a;->f(I)Lt9/x;

    move-result-object v3

    iget-object v4, p1, Lla/o;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v3, v4}, Lt9/x;->c(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/h$a;

    iget-object v4, p1, Lla/o;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lla/o;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lcom/google/android/exoplayer2/trackselection/h$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    aput-object v3, p2, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static C(Lt9/x;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Ljava/util/Map;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lt9/x;->a:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->y:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lla/o;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lla/o;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lla/o;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lla/o;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lla/o;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Lla/o;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected static D(Lcom/google/android/exoplayer2/o1;Ljava/lang/String;Z)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/e;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/e;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "-"

    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/util/p0;->T0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/p0;->T0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private static E(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)I
    .locals 8

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_2

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v2

    iget v3, v2, Lcom/google/android/exoplayer2/o1;->q:I

    if-lez v3, :cond_1

    iget v4, v2, Lcom/google/android/exoplayer2/o1;->r:I

    if-lez v4, :cond_1

    invoke-static {p3, p1, p2, v3, v4}, Lcom/google/android/exoplayer2/trackselection/e;->F(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    iget v4, v2, Lcom/google/android/exoplayer2/o1;->q:I

    iget v2, v2, Lcom/google/android/exoplayer2/o1;->r:I

    mul-int v5, v4, v2

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f7ae148    # 0.98f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-lt v4, v6, :cond_1

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    if-lt v2, v3, :cond_1

    if-ge v5, v0, :cond_1

    move v0, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static F(ZIIII)Landroid/graphics/Point;
    .locals 3

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-le p3, p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    if-le p1, p2, :cond_1

    move p0, v0

    :cond_1
    if-eq v1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_1
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_3

    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/p0;->l(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_3
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lcom/google/android/exoplayer2/util/p0;->l(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static H(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method private static I(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "video/avc"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string v5, "video/hevc"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v5, "video/av01"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v3

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    return v0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private J(Lcom/google/android/exoplayer2/o1;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->h:Lcom/google/android/exoplayer2/trackselection/e$d;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/e$d;->M:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->g:Z

    if-nez v1, :cond_2

    iget v1, p1, Lcom/google/android/exoplayer2/o1;->y:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/e;->K(Lcom/google/android/exoplayer2/o1;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/util/p0;->a:I

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->i:Lcom/google/android/exoplayer2/trackselection/e$f;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/e$f;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    sget v1, Lcom/google/android/exoplayer2/util/p0;->a:I

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->i:Lcom/google/android/exoplayer2/trackselection/e$f;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/e$f;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->i:Lcom/google/android/exoplayer2/trackselection/e$f;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/e$f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->i:Lcom/google/android/exoplayer2/trackselection/e$f;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/e$f;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->i:Lcom/google/android/exoplayer2/trackselection/e$f;

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/e;->j:Lcom/google/android/exoplayer2/audio/e;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/exoplayer2/trackselection/e$f;->a(Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/o1;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    monitor-exit v0

    return p1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static K(Lcom/google/android/exoplayer2/o1;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "audio/eac3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "audio/ac4"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "audio/ac3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string v3, "audio/eac3-joc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static L(IZ)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/y2;->f(I)I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic M(Lcom/google/android/exoplayer2/trackselection/e$d;ZILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 6

    new-instance v5, Lla/h;

    invoke-direct {v5, p0}, Lla/h;-><init>(Lcom/google/android/exoplayer2/trackselection/e;)V

    move v0, p3

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/e$b;->f(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/e$d;[IZLcom/google/common/base/n;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic N(Lcom/google/android/exoplayer2/trackselection/e$d;Ljava/lang/String;ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 0

    invoke-static {p2, p3, p0, p4, p1}, Lcom/google/android/exoplayer2/trackselection/e$g;->f(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/e$d;[ILjava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic O(Lcom/google/android/exoplayer2/trackselection/e$d;[IILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 0

    aget p1, p1, p2

    invoke-static {p2, p3, p0, p4, p1}, Lcom/google/android/exoplayer2/trackselection/e$i;->i(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/e$d;[II)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic P(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int v1, p0, p1

    :cond_2
    :goto_0
    return v1
.end method

.method private static synthetic Q(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static R(Lcom/google/android/exoplayer2/trackselection/i$a;[[[I[Lcom/google/android/exoplayer2/a3;[Lcom/google/android/exoplayer2/trackselection/h;)V
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/i$a;->d()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_5

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/i$a;->e(I)I

    move-result v5

    aget-object v7, p3, v2

    if-eq v5, v6, :cond_0

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    :cond_0
    if-eqz v7, :cond_4

    aget-object v8, p1, v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/i$a;->f(I)Lt9/x;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/google/android/exoplayer2/trackselection/e;->U([[ILt9/x;Lcom/google/android/exoplayer2/trackselection/h;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-ne v5, v6, :cond_2

    if-eq v4, v0, :cond_1

    :goto_1
    move p0, v1

    goto :goto_3

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    if-eq v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move p0, v6

    :goto_3
    if-eq v4, v0, :cond_6

    if-eq v3, v0, :cond_6

    move v1, v6

    :cond_6
    and-int/2addr p0, v1

    if-eqz p0, :cond_7

    new-instance p0, Lcom/google/android/exoplayer2/a3;

    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/a3;-><init>(Z)V

    aput-object p0, p2, v4

    aput-object p0, p2, v3

    :cond_7
    return-void
.end method

.method private S()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->h:Lcom/google/android/exoplayer2/trackselection/e$d;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/e$d;->M:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->g:Z

    if-nez v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->i:Lcom/google/android/exoplayer2/trackselection/e$f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/e$f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lla/q;->d()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private static U([[ILt9/x;Lcom/google/android/exoplayer2/trackselection/h;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Lla/m;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lt9/x;->c(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result p1

    move v1, v0

    :goto_0
    invoke-interface {p2}, Lla/m;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lla/m;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    invoke-static {v2}, Lcom/google/android/exoplayer2/y2;->h(I)I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private Z(ILcom/google/android/exoplayer2/trackselection/i$a;[[[ILcom/google/android/exoplayer2/trackselection/e$h$a;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18

    move-object/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/trackselection/i$a;->d()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/trackselection/i$a;->e(I)I

    move-result v5

    move/from16 v6, p1

    if-ne v6, v5, :cond_6

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/trackselection/i$a;->f(I)Lt9/x;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Lt9/x;->a:I

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    aget-object v9, p3, v4

    aget-object v9, v9, v7

    move-object/from16 v10, p4

    invoke-interface {v10, v4, v8, v9}, Lcom/google/android/exoplayer2/trackselection/e$h$a;->a(ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object v9

    iget v11, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    new-array v11, v11, [Z

    const/4 v12, 0x0

    :goto_2
    iget v13, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v12, v13, :cond_5

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer2/trackselection/e$h;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/trackselection/e$h;->a()I

    move-result v14

    aget-boolean v15, v11, v12

    if-nez v15, :cond_0

    if-nez v14, :cond_1

    :cond_0
    move/from16 v17, v2

    goto :goto_6

    :cond_1
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-static {v13}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    move/from16 v17, v2

    goto :goto_5

    :cond_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v12, 0x1

    move/from16 v3, v16

    :goto_3
    iget v15, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v3, v15, :cond_4

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer2/trackselection/e$h;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/trackselection/e$h;->a()I

    move-result v0

    move/from16 v17, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {v13, v15}, Lcom/google/android/exoplayer2/trackselection/e$h;->b(Lcom/google/android/exoplayer2/trackselection/e$h;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    aput-boolean v0, v11, v3

    goto :goto_4

    :cond_3
    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_3

    :cond_4
    move/from16 v17, v2

    move-object v13, v14

    :goto_5
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto :goto_2

    :cond_5
    move/from16 v17, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    goto :goto_1

    :cond_6
    move-object/from16 v10, p4

    move/from16 v17, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p2

    move/from16 v2, v17

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p5

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/e$h;

    iget v3, v3, Lcom/google/android/exoplayer2/trackselection/e$h;->c:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/e$h;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/h$a;

    iget-object v3, v0, Lcom/google/android/exoplayer2/trackselection/e$h;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/trackselection/h$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iget v0, v0, Lcom/google/android/exoplayer2/trackselection/e$h;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private b0(Lcom/google/android/exoplayer2/trackselection/e$d;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->h:Lcom/google/android/exoplayer2/trackselection/e$d;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/trackselection/e$d;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e;->h:Lcom/google/android/exoplayer2/trackselection/e$d;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/e$d;->M:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e;->e:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lla/q;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic o(Lcom/google/android/exoplayer2/trackselection/e;Lcom/google/android/exoplayer2/o1;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e;->J(Lcom/google/android/exoplayer2/o1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/google/android/exoplayer2/trackselection/e$d;[IILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/e;->O(Lcom/google/android/exoplayer2/trackselection/e$d;[IILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e;->Q(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic r(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e;->P(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/google/android/exoplayer2/trackselection/e$d;Ljava/lang/String;ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/e;->N(Lcom/google/android/exoplayer2/trackselection/e$d;Ljava/lang/String;ILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/google/android/exoplayer2/trackselection/e;Lcom/google/android/exoplayer2/trackselection/e$d;ZILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/trackselection/e;->M(Lcom/google/android/exoplayer2/trackselection/e$d;ZILcom/google/android/exoplayer2/source/TrackGroup;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/e;->E(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic v(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e;->H(II)I

    move-result p0

    return p0
.end method

.method static synthetic w(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/trackselection/e;->I(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic x()Lcom/google/common/collect/Ordering;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/e;->k:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method static synthetic y()Lcom/google/common/collect/Ordering;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/e;->l:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/trackselection/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/e;->S()V

    return-void
.end method


# virtual methods
.method public G()Lcom/google/android/exoplayer2/trackselection/e$d;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->h:Lcom/google/android/exoplayer2/trackselection/e$d;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected V(Lcom/google/android/exoplayer2/trackselection/i$a;[[[I[ILcom/google/android/exoplayer2/trackselection/e$d;)[Lcom/google/android/exoplayer2/trackselection/h$a;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/i$a;->d()I

    move-result v0

    new-array v1, v0, [Lcom/google/android/exoplayer2/trackselection/h$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/e;->a0(Lcom/google/android/exoplayer2/trackselection/i$a;[[[I[ILcom/google/android/exoplayer2/trackselection/e$d;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/h$a;

    aput-object v2, v1, v3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/e;->W(Lcom/google/android/exoplayer2/trackselection/i$a;[[[I[ILcom/google/android/exoplayer2/trackselection/e$d;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/h$a;

    aput-object v3, v1, v2

    :cond_1
    const/4 v2, 0x0

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, p3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/h$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/h$a;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    check-cast p3, Lcom/google/android/exoplayer2/trackselection/h$a;

    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/h$a;->b:[I

    aget p3, p3, v2

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/google/android/exoplayer2/trackselection/e;->Y(Lcom/google/android/exoplayer2/trackselection/i$a;[[[ILcom/google/android/exoplayer2/trackselection/e$d;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object v3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/exoplayer2/trackselection/h$a;

    aput-object p3, v1, v3

    :cond_3
    :goto_1
    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/i$a;->e(I)I

    move-result p3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_4

    const/4 v3, 0x1

    if-eq p3, v3, :cond_4

    const/4 v3, 0x3

    if-eq p3, v3, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/i$a;->f(I)Lt9/x;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-virtual {p0, p3, v3, v4, p4}, Lcom/google/android/exoplayer2/trackselection/e;->X(ILt9/x;[[ILcom/google/android/exoplayer2/trackselection/e$d;)Lcom/google/android/exoplayer2/trackselection/h$a;

    move-result-object p3

    aput-object p3, v1, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method protected W(Lcom/google/android/exoplayer2/trackselection/i$a;[[[I[ILcom/google/android/exoplayer2/trackselection/e$d;)Landroid/util/Pair;
    .locals 6

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/i$a;->d()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/i$a;->e(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/i$a;->f(I)Lt9/x;

    move-result-object v1

    iget v1, v1, Lt9/x;->a:I

    if-lez v1, :cond_0

    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v4, Lla/f;

    invoke-direct {v4, p0, p4, p3}, Lla/f;-><init>(Lcom/google/android/exoplayer2/trackselection/e;Lcom/google/android/exoplayer2/trackselection/e$d;Z)V

    new-instance v5, Lcom/google/android/exoplayer2/trackselection/c;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/c;-><init>()V

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/e;->Z(ILcom/google/android/exoplayer2/trackselection/i$a;[[[ILcom/google/android/exoplayer2/trackselection/e$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected X(ILt9/x;[[ILcom/google/android/exoplayer2/trackselection/e$d;)Lcom/google/android/exoplayer2/trackselection/h$a;
    .locals 11

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    move-object v4, v2

    move v1, v0

    move v3, v1

    :goto_0
    iget v5, p2, Lt9/x;->a:I

    if-ge v1, v5, :cond_3

    invoke-virtual {p2, v1}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    aget-object v6, p3, v1

    move v7, v0

    :goto_1
    iget v8, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v7, v8, :cond_2

    aget v8, v6, v7

    iget-boolean v9, p4, Lcom/google/android/exoplayer2/trackselection/e$d;->N:Z

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/trackselection/e;->L(IZ)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v8

    new-instance v9, Lcom/google/android/exoplayer2/trackselection/e$c;

    aget v10, v6, v7

    invoke-direct {v9, v8, v10}, Lcom/google/android/exoplayer2/trackselection/e$c;-><init>(Lcom/google/android/exoplayer2/o1;I)V

    if-eqz v4, :cond_0

    invoke-virtual {v9, v4}, Lcom/google/android/exoplayer2/trackselection/e$c;->a(Lcom/google/android/exoplayer2/trackselection/e$c;)I

    move-result v8

    if-lez v8, :cond_1

    :cond_0
    move-object v2, v5

    move v3, v7

    move-object v4, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/h$a;

    filled-new-array {v3}, [I

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lcom/google/android/exoplayer2/trackselection/h$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :goto_2
    return-object p1
.end method

.method protected Y(Lcom/google/android/exoplayer2/trackselection/i$a;[[[ILcom/google/android/exoplayer2/trackselection/e$d;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6

    new-instance v4, Lla/g;

    invoke-direct {v4, p3, p4}, Lla/g;-><init>(Lcom/google/android/exoplayer2/trackselection/e$d;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/exoplayer2/trackselection/d;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/d;-><init>()V

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/e;->Z(ILcom/google/android/exoplayer2/trackselection/i$a;[[[ILcom/google/android/exoplayer2/trackselection/e$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected a0(Lcom/google/android/exoplayer2/trackselection/i$a;[[[I[ILcom/google/android/exoplayer2/trackselection/e$d;)Landroid/util/Pair;
    .locals 6

    new-instance v4, Lla/e;

    invoke-direct {v4, p4, p3}, Lla/e;-><init>(Lcom/google/android/exoplayer2/trackselection/e$d;[I)V

    new-instance v5, Lcom/google/android/exoplayer2/trackselection/b;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/b;-><init>()V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/e;->Z(ILcom/google/android/exoplayer2/trackselection/i$a;[[[ILcom/google/android/exoplayer2/trackselection/e$h$a;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/e;->G()Lcom/google/android/exoplayer2/trackselection/e$d;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->i:Lcom/google/android/exoplayer2/trackselection/e$f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/e$f;->f()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lla/q;->g()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public i(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->j:Lcom/google/android/exoplayer2/audio/e;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/audio/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e;->j:Lcom/google/android/exoplayer2/audio/e;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/e;->S()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 3

    instance-of v0, p1, Lcom/google/android/exoplayer2/trackselection/e$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/e$d;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/trackselection/e;->b0(Lcom/google/android/exoplayer2/trackselection/e$d;)V

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/e$d$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/e;->G()Lcom/google/android/exoplayer2/trackselection/e$d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/e$d$a;-><init>(Lcom/google/android/exoplayer2/trackselection/e$d;Lcom/google/android/exoplayer2/trackselection/e$a;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->c0(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/e$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/e$d$a;->Y()Lcom/google/android/exoplayer2/trackselection/e$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e;->b0(Lcom/google/android/exoplayer2/trackselection/e$d;)V

    return-void
.end method

.method protected final n(Lcom/google/android/exoplayer2/trackselection/i$a;[[[I[ILcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;)Landroid/util/Pair;
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/e;->h:Lcom/google/android/exoplayer2/trackselection/e$d;

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/trackselection/e$d;->M:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/e;->i:Lcom/google/android/exoplayer2/trackselection/e$f;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-virtual {v2, p0, v3}, Lcom/google/android/exoplayer2/trackselection/e$f;->b(Lcom/google/android/exoplayer2/trackselection/e;Landroid/os/Looper;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/i$a;->d()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/trackselection/e;->V(Lcom/google/android/exoplayer2/trackselection/i$a;[[[I[ILcom/google/android/exoplayer2/trackselection/e$d;)[Lcom/google/android/exoplayer2/trackselection/h$a;

    move-result-object p3

    invoke-static {p1, v1, p3}, Lcom/google/android/exoplayer2/trackselection/e;->B(Lcom/google/android/exoplayer2/trackselection/i$a;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplayer2/trackselection/h$a;)V

    invoke-static {p1, v1, p3}, Lcom/google/android/exoplayer2/trackselection/e;->A(Lcom/google/android/exoplayer2/trackselection/i$a;Lcom/google/android/exoplayer2/trackselection/e$d;[Lcom/google/android/exoplayer2/trackselection/h$a;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/trackselection/i$a;->e(I)I

    move-result v5

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/e$d;->m(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->z:Lcom/google/common/collect/ImmutableSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    aput-object v4, p3, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/e;->f:Lcom/google/android/exoplayer2/trackselection/h$b;

    invoke-virtual {p0}, Lla/q;->a()Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v5

    invoke-interface {v3, p3, v5, p4, p5}, Lcom/google/android/exoplayer2/trackselection/h$b;->a([Lcom/google/android/exoplayer2/trackselection/h$a;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;)[Lcom/google/android/exoplayer2/trackselection/h;

    move-result-object p3

    new-array p4, v0, [Lcom/google/android/exoplayer2/a3;

    :goto_2
    if-ge v2, v0, :cond_7

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/i$a;->e(I)I

    move-result p5

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/e$d;->m(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->z:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v3, p5}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/trackselection/i$a;->e(I)I

    move-result p5

    const/4 v3, -0x2

    if-eq p5, v3, :cond_5

    aget-object p5, p3, v2

    if-eqz p5, :cond_6

    :cond_5
    sget-object p5, Lcom/google/android/exoplayer2/a3;->b:Lcom/google/android/exoplayer2/a3;

    goto :goto_4

    :cond_6
    :goto_3
    move-object p5, v4

    :goto_4
    aput-object p5, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-boolean p5, v1, Lcom/google/android/exoplayer2/trackselection/e$d;->O:Z

    if-eqz p5, :cond_8

    invoke-static {p1, p2, p4, p3}, Lcom/google/android/exoplayer2/trackselection/e;->R(Lcom/google/android/exoplayer2/trackselection/i$a;[[[I[Lcom/google/android/exoplayer2/a3;[Lcom/google/android/exoplayer2/trackselection/h;)V

    :cond_8
    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
