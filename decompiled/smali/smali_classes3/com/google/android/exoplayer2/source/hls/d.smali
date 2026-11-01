.class public final Lcom/google/android/exoplayer2/source/hls/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/g;


# static fields
.field private static final d:[I


# instance fields
.field private final b:I

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/d;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/d;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->b:I

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/hls/d;->c:Z

    return-void
.end method

.method private static b(ILjava/util/List;)V
    .locals 2

    sget-object v0, Lcom/google/android/exoplayer2/source/hls/d;->d:[I

    invoke-static {v0, p0}, Lcom/google/common/primitives/Ints;->j([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private d(ILcom/google/android/exoplayer2/o1;Ljava/util/List;Lcom/google/android/exoplayer2/util/l0;)Lg9/l;
    .locals 1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 p3, 0xd

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/r;

    iget-object p2, p2, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplayer2/source/hls/r;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/l0;)V

    return-object p1

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/source/hls/d;->b:I

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/d;->c:Z

    invoke-static {p1, v0, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/d;->f(IZLcom/google/android/exoplayer2/o1;Ljava/util/List;Lcom/google/android/exoplayer2/util/l0;)Lq9/h0;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p4, p2, p3}, Lcom/google/android/exoplayer2/source/hls/d;->e(Lcom/google/android/exoplayer2/util/l0;Lcom/google/android/exoplayer2/o1;Ljava/util/List;)Lo9/g;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ln9/f;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Ln9/f;-><init>(IJ)V

    return-object p1

    :cond_4
    new-instance p1, Lq9/h;

    invoke-direct {p1}, Lq9/h;-><init>()V

    return-object p1

    :cond_5
    new-instance p1, Lq9/e;

    invoke-direct {p1}, Lq9/e;-><init>()V

    return-object p1

    :cond_6
    new-instance p1, Lq9/b;

    invoke-direct {p1}, Lq9/b;-><init>()V

    return-object p1
.end method

.method private static e(Lcom/google/android/exoplayer2/util/l0;Lcom/google/android/exoplayer2/o1;Ljava/util/List;)Lo9/g;
    .locals 2

    new-instance v0, Lo9/g;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/d;->g(Lcom/google/android/exoplayer2/o1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_1
    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1, p2}, Lo9/g;-><init>(ILcom/google/android/exoplayer2/util/l0;Lo9/o;Ljava/util/List;)V

    return-object v0
.end method

.method private static f(IZLcom/google/android/exoplayer2/o1;Ljava/util/List;Lcom/google/android/exoplayer2/util/l0;)Lq9/h0;
    .locals 1

    or-int/lit8 v0, p0, 0x10

    if-eqz p3, :cond_0

    or-int/lit8 v0, p0, 0x30

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    const-string p1, "application/cea-608"

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :goto_0
    iget-object p0, p2, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "audio/mp4a-latm"

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/w;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const-string p1, "video/avc"

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/w;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    new-instance p0, Lq9/h0;

    new-instance p1, Lq9/j;

    invoke-direct {p1, v0, p3}, Lq9/j;-><init>(ILjava/util/List;)V

    const/4 p2, 0x2

    invoke-direct {p0, p2, p4, p1}, Lq9/h0;-><init>(ILcom/google/android/exoplayer2/util/l0;Lq9/i0$c;)V

    return-object p0
.end method

.method private static g(Lcom/google/android/exoplayer2/o1;)Z
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;

    iget-object p0, v2, Lcom/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static h(Lg9/l;Lg9/m;)Z
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Lg9/l;->d(Lg9/m;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    throw p0

    :catch_0
    invoke-interface {p1}, Lg9/m;->resetPeekPosition()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/net/Uri;Lcom/google/android/exoplayer2/o1;Ljava/util/List;Lcom/google/android/exoplayer2/util/l0;Ljava/util/Map;Lg9/m;Le9/u1;)Lcom/google/android/exoplayer2/source/hls/j;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/hls/d;->c(Landroid/net/Uri;Lcom/google/android/exoplayer2/o1;Ljava/util/List;Lcom/google/android/exoplayer2/util/l0;Ljava/util/Map;Lg9/m;Le9/u1;)Lcom/google/android/exoplayer2/source/hls/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/net/Uri;Lcom/google/android/exoplayer2/o1;Ljava/util/List;Lcom/google/android/exoplayer2/util/l0;Ljava/util/Map;Lg9/m;Le9/u1;)Lcom/google/android/exoplayer2/source/hls/b;
    .locals 6

    iget-object p7, p2, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-static {p7}, Lcom/google/android/exoplayer2/util/l;->a(Ljava/lang/String;)I

    move-result p7

    invoke-static {p5}, Lcom/google/android/exoplayer2/util/l;->b(Ljava/util/Map;)I

    move-result p5

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/l;->c(Landroid/net/Uri;)I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplayer2/source/hls/d;->d:[I

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p7, v0}, Lcom/google/android/exoplayer2/source/hls/d;->b(ILjava/util/List;)V

    invoke-static {p5, v0}, Lcom/google/android/exoplayer2/source/hls/d;->b(ILjava/util/List;)V

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/hls/d;->b(ILjava/util/List;)V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/source/hls/d;->b(ILjava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p6}, Lg9/m;->resetPeekPosition()V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/d;->d(ILcom/google/android/exoplayer2/o1;Ljava/util/List;Lcom/google/android/exoplayer2/util/l0;)Lg9/l;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg9/l;

    invoke-static {v4, p6}, Lcom/google/android/exoplayer2/source/hls/d;->h(Lg9/l;Lg9/m;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p1, Lcom/google/android/exoplayer2/source/hls/b;

    invoke-direct {p1, v4, p2, p4}, Lcom/google/android/exoplayer2/source/hls/b;-><init>(Lg9/l;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/util/l0;)V

    return-object p1

    :cond_1
    if-nez v1, :cond_3

    if-eq v2, p7, :cond_2

    if-eq v2, p5, :cond_2

    if-eq v2, p1, :cond_2

    const/16 v5, 0xb

    if-ne v2, v5, :cond_3

    :cond_2
    move-object v1, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/b;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg9/l;

    invoke-direct {p1, p3, p2, p4}, Lcom/google/android/exoplayer2/source/hls/b;-><init>(Lg9/l;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/util/l0;)V

    return-object p1
.end method
