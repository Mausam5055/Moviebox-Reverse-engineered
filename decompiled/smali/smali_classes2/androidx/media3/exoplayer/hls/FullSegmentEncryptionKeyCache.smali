.class final Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;

    add-int/lit8 v2, p1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;-><init>(Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;IFZI)V

    iput-object v6, p0, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public b(Landroid/net/Uri;[B)[B
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public c(Landroid/net/Uri;)[B
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method
