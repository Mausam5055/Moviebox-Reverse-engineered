.class public final synthetic Lcom/google/android/exoplayer2/ui/p0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/p0;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/p0;->a:Ljava/util/Comparator;

    check-cast p1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;

    check-cast p2, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a(Ljava/util/Comparator;Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;)I

    move-result p1

    return p1
.end method
