.class public abstract Lla/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lla/q$a;
    }
.end annotation


# instance fields
.field private a:Lla/q$a;

.field private b:Lcom/google/android/exoplayer2/upstream/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/exoplayer2/upstream/e;
    .locals 1

    iget-object v0, p0, Lla/q;->b:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/e;

    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->A:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    return-object v0
.end method

.method public c(Lla/q$a;Lcom/google/android/exoplayer2/upstream/e;)V
    .locals 0

    iput-object p1, p0, Lla/q;->a:Lla/q$a;

    iput-object p2, p0, Lla/q;->b:Lcom/google/android/exoplayer2/upstream/e;

    return-void
.end method

.method protected final d()V
    .locals 1

    iget-object v0, p0, Lla/q;->a:Lla/q$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lla/q$a;->onTrackSelectionsInvalidated()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract f(Ljava/lang/Object;)V
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lla/q;->a:Lla/q$a;

    iput-object v0, p0, Lla/q;->b:Lcom/google/android/exoplayer2/upstream/e;

    return-void
.end method

.method public abstract h([Lcom/google/android/exoplayer2/z2;Lt9/x;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;)Lla/r;
.end method

.method public i(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 0

    return-void
.end method

.method public j(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    return-void
.end method
