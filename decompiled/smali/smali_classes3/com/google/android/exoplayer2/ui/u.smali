.class public final synthetic Lcom/google/android/exoplayer2/ui/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/TrackGroup;

.field public final synthetic c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/u;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/u;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/u;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/u;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/u;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/u;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;Landroid/view/View;)V

    return-void
.end method
