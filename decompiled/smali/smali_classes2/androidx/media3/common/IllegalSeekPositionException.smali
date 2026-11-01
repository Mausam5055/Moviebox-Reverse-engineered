.class public final Landroidx/media3/common/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;


# instance fields
.field public final positionMs:J

.field public final timeline:Landroidx/media3/common/e0;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/e0;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/IllegalSeekPositionException;->timeline:Landroidx/media3/common/e0;

    iput p2, p0, Landroidx/media3/common/IllegalSeekPositionException;->windowIndex:I

    iput-wide p3, p0, Landroidx/media3/common/IllegalSeekPositionException;->positionMs:J

    return-void
.end method
