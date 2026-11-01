.class public abstract Landroidx/media3/decoder/h;
.super Landroidx/media3/decoder/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/decoder/h$a;
    }
.end annotation


# instance fields
.field public shouldBeSkipped:Z

.field public skippedOutputBufferCount:I

.field public timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/decoder/a;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-super {p0}, Landroidx/media3/decoder/a;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/decoder/h;->timeUs:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/decoder/h;->skippedOutputBufferCount:I

    iput-boolean v0, p0, Landroidx/media3/decoder/h;->shouldBeSkipped:Z

    return-void
.end method

.method public abstract release()V
.end method
