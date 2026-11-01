.class final Lcom/google/android/exoplayer2/source/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/trackselection/h;

.field private final b:Lcom/google/android/exoplayer2/source/TrackGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/source/TrackGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/q$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/h;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/h;->b(Z)V

    return-void
.end method

.method public blacklist(IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/h;->blacklist(IJ)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/h;->c()V

    return-void
.end method

.method public d(JJJLjava/util/List;[Lv9/o;)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/google/android/exoplayer2/trackselection/h;->d(JJJLjava/util/List;[Lv9/o;)V

    return-void
.end method

.method public disable()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/h;->disable()V

    return-void
.end method

.method public e(IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/h;->e(IJ)Z

    move-result p1

    return p1
.end method

.method public enable()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/h;->enable()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/q$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/q$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/q$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/h;->evaluateQueueSize(JLjava/util/List;)I

    move-result p1

    return p1
.end method

.method public f(JLv9/f;Ljava/util/List;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/h;->f(JLv9/f;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public g(Lcom/google/android/exoplayer2/o1;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, p1}, Lla/m;->g(Lcom/google/android/exoplayer2/o1;)I

    move-result p1

    return p1
.end method

.method public getFormat(I)Lcom/google/android/exoplayer2/o1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, p1}, Lla/m;->getFormat(I)Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    return-object p1
.end method

.method public getIndexInTrackGroup(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, p1}, Lla/m;->getIndexInTrackGroup(I)I

    move-result p1

    return p1
.end method

.method public getSelectedFormat()Lcom/google/android/exoplayer2/o1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/h;->getSelectedFormat()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/h;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedIndexInTrackGroup()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/h;->getSelectedIndexInTrackGroup()I

    move-result v0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/h;->getSelectionData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/h;->getSelectionReason()I

    move-result v0

    return v0
.end method

.method public getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public indexOf(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, p1}, Lla/m;->indexOf(I)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0}, Lla/m;->length()I

    move-result v0

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/trackselection/h;->onPlaybackSpeed(F)V

    return-void
.end method
