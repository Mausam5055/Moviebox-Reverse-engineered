.class public final Lcom/google/android/exoplayer2/ui/SubtitleView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/exoplayer2/o2$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/SubtitleView$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_BOTTOM_PADDING_FRACTION:F = 0.08f

.field public static final DEFAULT_TEXT_SIZE_FRACTION:F = 0.0533f

.field public static final VIEW_TYPE_CANVAS:I = 0x1

.field public static final VIEW_TYPE_WEB:I = 0x2


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/google/android/exoplayer2/ui/c;

.field private c:I

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/google/android/exoplayer2/ui/SubtitleView$a;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    sget-object p2, Lcom/google/android/exoplayer2/ui/c;->g:Lcom/google/android/exoplayer2/ui/c;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Lcom/google/android/exoplayer2/ui/c;

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    const p2, 0x3d5a511a    # 0.0533f

    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    const p2, 0x3da3d70a    # 0.08f

    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Z

    new-instance v0, Lcom/google/android/exoplayer2/ui/b;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->i:Lcom/google/android/exoplayer2/ui/SubtitleView$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->h:I

    return-void
.end method

.method private getCuesWithStylingPreferencesApplied()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lba/b;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba/b;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->l(Lba/b;)Lba/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getUserCaptionFontScale()F
    .locals 3

    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v1, 0x13

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    :cond_1
    :goto_0
    return v2
.end method

.method private getUserCaptionStyle()Lcom/google/android/exoplayer2/ui/c;
    .locals 2

    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/c;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/ui/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/ui/c;->g:Lcom/google/android/exoplayer2/ui/c;

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    sget-object v0, Lcom/google/android/exoplayer2/ui/c;->g:Lcom/google/android/exoplayer2/ui/c;

    return-object v0
.end method

.method private l(Lba/b;)Lba/b;
    .locals 1

    invoke-virtual {p1}, Lba/b;->b()Lba/b$b;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/m0;->e(Lba/b$b;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/m0;->f(Lba/b$b;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lba/b$b;->a()Lba/b;

    move-result-object p1

    return-object p1
.end method

.method private p(IF)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->r()V

    return-void
.end method

.method private r()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->i:Lcom/google/android/exoplayer2/ui/SubtitleView$a;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getCuesWithStylingPreferencesApplied()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Lcom/google/android/exoplayer2/ui/c;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:F

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/SubtitleView$a;->a(Ljava/util/List;Lcom/google/android/exoplayer2/ui/c;FIF)V

    return-void
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/google/android/exoplayer2/ui/SubtitleView$a;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/q0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/exoplayer2/ui/q0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/q0;->g()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/ui/SubtitleView$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->i:Lcom/google/android/exoplayer2/ui/SubtitleView$a;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->a(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/audio/e;)V

    return-void
.end method

.method public bridge synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->b(Lcom/google/android/exoplayer2/o2$d;I)V

    return-void
.end method

.method public bridge synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/o2$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->c(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/o2$b;)V

    return-void
.end method

.method public bridge synthetic onCues(Lba/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->d(Lcom/google/android/exoplayer2/o2$d;Lba/f;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lba/b;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/r;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->f(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/r;)V

    return-void
.end method

.method public bridge synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->g(Lcom/google/android/exoplayer2/o2$d;IZ)V

    return-void
.end method

.method public bridge synthetic onEvents(Lcom/google/android/exoplayer2/o2;Lcom/google/android/exoplayer2/o2$c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->h(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/o2;Lcom/google/android/exoplayer2/o2$c;)V

    return-void
.end method

.method public bridge synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->i(Lcom/google/android/exoplayer2/o2$d;Z)V

    return-void
.end method

.method public bridge synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->j(Lcom/google/android/exoplayer2/o2$d;Z)V

    return-void
.end method

.method public bridge synthetic onLoadingChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->k(Lcom/google/android/exoplayer2/o2$d;Z)V

    return-void
.end method

.method public bridge synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->l(Lcom/google/android/exoplayer2/o2$d;J)V

    return-void
.end method

.method public bridge synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/v1;I)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/v1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->m(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/v1;I)V

    return-void
.end method

.method public bridge synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->n(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public bridge synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->o(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public bridge synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->p(Lcom/google/android/exoplayer2/o2$d;ZI)V

    return-void
.end method

.method public bridge synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->q(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method public bridge synthetic onPlaybackStateChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->r(Lcom/google/android/exoplayer2/o2$d;I)V

    return-void
.end method

.method public bridge synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->s(Lcom/google/android/exoplayer2/o2$d;I)V

    return-void
.end method

.method public bridge synthetic onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->t(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->u(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateChanged(ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->v(Lcom/google/android/exoplayer2/o2$d;ZI)V

    return-void
.end method

.method public bridge synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->w(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->x(Lcom/google/android/exoplayer2/o2$d;I)V

    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/q2;->y(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;I)V

    return-void
.end method

.method public bridge synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/q2;->z(Lcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->A(Lcom/google/android/exoplayer2/o2$d;I)V

    return-void
.end method

.method public bridge synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->B(Lcom/google/android/exoplayer2/o2$d;J)V

    return-void
.end method

.method public bridge synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->C(Lcom/google/android/exoplayer2/o2$d;J)V

    return-void
.end method

.method public bridge synthetic onSeekProcessed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/q2;->D(Lcom/google/android/exoplayer2/o2$d;)V

    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->E(Lcom/google/android/exoplayer2/o2$d;Z)V

    return-void
.end method

.method public bridge synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->F(Lcom/google/android/exoplayer2/o2$d;Z)V

    return-void
.end method

.method public bridge synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->G(Lcom/google/android/exoplayer2/o2$d;II)V

    return-void
.end method

.method public bridge synthetic onTimelineChanged(Lcom/google/android/exoplayer2/k3;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/q2;->H(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/k3;I)V

    return-void
.end method

.method public bridge synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->I(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public bridge synthetic onTracksChanged(Lcom/google/android/exoplayer2/p3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->J(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/p3;)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/y;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->K(Lcom/google/android/exoplayer2/o2$d;Lcom/google/android/exoplayer2/video/y;)V

    return-void
.end method

.method public bridge synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q2;->L(Lcom/google/android/exoplayer2/o2$d;F)V

    return-void
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->r()V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->r()V

    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:F

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->r()V

    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lba/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->r()V

    return-void
.end method

.method public setFixedTextSize(IF)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->p(IF)V

    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->p(IF)V

    return-void
.end method

.method public setStyle(Lcom/google/android/exoplayer2/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Lcom/google/android/exoplayer2/ui/c;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->r()V

    return-void
.end method

.method public setUserDefaultStyle()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionStyle()Lcom/google/android/exoplayer2/ui/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/ui/c;)V

    return-void
.end method

.method public setUserDefaultTextSize()V
    .locals 2

    const v0, 0x3d5a511a    # 0.0533f

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionFontScale()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method public setViewType(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->h:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/google/android/exoplayer2/ui/q0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/q0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/ui/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setView(Landroid/view/View;)V

    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->h:I

    return-void
.end method
