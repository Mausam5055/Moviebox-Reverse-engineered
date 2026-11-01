.class public Landroidx/media3/exoplayer/offline/SegmentDownloader$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lw1/h;


# direct methods
.method public constructor <init>(JLw1/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->a:J

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/offline/SegmentDownloader$b;)I
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->a:J

    iget-wide v2, p1, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->a:J

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/common/util/a1;->n(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->a(Landroidx/media3/exoplayer/offline/SegmentDownloader$b;)I

    move-result p1

    return p1
.end method
