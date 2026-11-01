.class public final Lla/l;
.super Lla/b;


# instance fields
.field private final h:I

.field private final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lla/l;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;IIILjava/lang/Object;)V
    .locals 0

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lla/b;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    iput p4, p0, Lla/l;->h:I

    iput-object p5, p0, Lla/l;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d(JJJLjava/util/List;[Lv9/o;)V
    .locals 0

    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lla/l;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    iget v0, p0, Lla/l;->h:I

    return v0
.end method
