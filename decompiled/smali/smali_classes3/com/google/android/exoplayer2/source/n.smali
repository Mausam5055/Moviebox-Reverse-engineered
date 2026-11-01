.class public interface abstract Lcom/google/android/exoplayer2/source/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/n$a;
    }
.end annotation


# virtual methods
.method public abstract a(JLcom/google/android/exoplayer2/c3;)J
.end method

.method public abstract b([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJ)J
.end method

.method public abstract continueLoading(J)Z
.end method

.method public abstract discardBuffer(JZ)V
.end method

.method public abstract e(Lcom/google/android/exoplayer2/source/n$a;J)V
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract getTrackGroups()Lt9/x;
.end method

.method public abstract isLoading()Z
.end method

.method public abstract maybeThrowPrepareError()V
.end method

.method public abstract readDiscontinuity()J
.end method

.method public abstract reevaluateBuffer(J)V
.end method

.method public abstract seekToUs(J)J
.end method
