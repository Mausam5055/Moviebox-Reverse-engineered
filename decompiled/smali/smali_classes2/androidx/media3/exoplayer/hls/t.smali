.class public final Landroidx/media3/exoplayer/hls/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/t;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/media3/common/util/p0;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/t;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/p0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/common/util/p0;

    const-wide v1, 0x7ffffffffffffffeL

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/p0;-><init>(J)V

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/t;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/t;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
