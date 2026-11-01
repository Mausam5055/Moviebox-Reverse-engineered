package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.q2;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.v1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SubtitleView extends FrameLayout implements o2.d {
    public static final float DEFAULT_BOTTOM_PADDING_FRACTION = 0.08f;
    public static final float DEFAULT_TEXT_SIZE_FRACTION = 0.0533f;
    public static final int VIEW_TYPE_CANVAS = 1;
    public static final int VIEW_TYPE_WEB = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f27070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f27071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f27073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f27074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f27075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f27076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f27077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f27078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f27079j;

    interface a {
        void a(List list, c cVar, float f11, int i11, float f12);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27070a = Collections.emptyList();
        this.f27071b = c.f27110g;
        this.f27072c = 0;
        this.f27073d = 0.0533f;
        this.f27074e = 0.08f;
        this.f27075f = true;
        this.f27076g = true;
        b bVar = new b(context);
        this.f27078i = bVar;
        this.f27079j = bVar;
        addView(bVar);
        this.f27077h = 1;
    }

    private List<ba.b> getCuesWithStylingPreferencesApplied() {
        if (this.f27075f && this.f27076g) {
            return this.f27070a;
        }
        ArrayList arrayList = new ArrayList(this.f27070a.size());
        for (int i11 = 0; i11 < this.f27070a.size(); i11++) {
            arrayList.add(l((ba.b) this.f27070a.get(i11)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (com.google.android.exoplayer2.util.p0.f27626a < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private c getUserCaptionStyle() {
        if (com.google.android.exoplayer2.util.p0.f27626a < 19 || isInEditMode()) {
            return c.f27110g;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        return (captioningManager == null || !captioningManager.isEnabled()) ? c.f27110g : c.a(captioningManager.getUserStyle());
    }

    private ba.b l(ba.b bVar) {
        ba.b.C0143b c0143bB = bVar.b();
        if (!this.f27075f) {
            m0.e(c0143bB);
        } else if (!this.f27076g) {
            m0.f(c0143bB);
        }
        return c0143bB.a();
    }

    private void p(int i11, float f11) {
        this.f27072c = i11;
        this.f27073d = f11;
        r();
    }

    private void r() {
        this.f27078i.a(getCuesWithStylingPreferencesApplied(), this.f27071b, this.f27073d, this.f27072c, this.f27074e);
    }

    private <T extends View & a> void setView(T t11) {
        removeView(this.f27079j);
        View view = this.f27079j;
        if (view instanceof q0) {
            ((q0) view).g();
        }
        this.f27079j = t11;
        this.f27078i = t11;
        addView(t11);
    }

    public /* bridge */ /* synthetic */ void onAudioAttributesChanged(com.google.android.exoplayer2.audio.e eVar) {
        q2.a(this, eVar);
    }

    public /* bridge */ /* synthetic */ void onAudioSessionIdChanged(int i11) {
        q2.b(this, i11);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onAvailableCommandsChanged(o2.b bVar) {
        q2.c(this, bVar);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onCues(ba.f fVar) {
        q2.d(this, fVar);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public void onCues(List<ba.b> list) {
        setCues(list);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onDeviceInfoChanged(com.google.android.exoplayer2.r rVar) {
        q2.f(this, rVar);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onDeviceVolumeChanged(int i11, boolean z10) {
        q2.g(this, i11, z10);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onEvents(o2 o2Var, o2.c cVar) {
        q2.h(this, o2Var, cVar);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onIsLoadingChanged(boolean z10) {
        q2.i(this, z10);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onIsPlayingChanged(boolean z10) {
        q2.j(this, z10);
    }

    @Override // com.google.android.exoplayer2.o2.d
    @Deprecated
    public /* bridge */ /* synthetic */ void onLoadingChanged(boolean z10) {
        q2.k(this, z10);
    }

    public /* bridge */ /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j11) {
        q2.l(this, j11);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onMediaItemTransition(@Nullable v1 v1Var, int i11) {
        q2.m(this, v1Var, i11);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onMediaMetadataChanged(a2 a2Var) {
        q2.n(this, a2Var);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onMetadata(Metadata metadata) {
        q2.o(this, metadata);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onPlayWhenReadyChanged(boolean z10, int i11) {
        q2.p(this, z10, i11);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onPlaybackParametersChanged(n2 n2Var) {
        q2.q(this, n2Var);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onPlaybackStateChanged(int i11) {
        q2.r(this, i11);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onPlaybackSuppressionReasonChanged(int i11) {
        q2.s(this, i11);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onPlayerError(PlaybackException playbackException) {
        q2.t(this, playbackException);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onPlayerErrorChanged(@Nullable PlaybackException playbackException) {
        q2.u(this, playbackException);
    }

    @Override // com.google.android.exoplayer2.o2.d
    @Deprecated
    public /* bridge */ /* synthetic */ void onPlayerStateChanged(boolean z10, int i11) {
        q2.v(this, z10, i11);
    }

    public /* bridge */ /* synthetic */ void onPlaylistMetadataChanged(a2 a2Var) {
        q2.w(this, a2Var);
    }

    @Override // com.google.android.exoplayer2.o2.d
    @Deprecated
    public /* bridge */ /* synthetic */ void onPositionDiscontinuity(int i11) {
        q2.x(this, i11);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onPositionDiscontinuity(o2.e eVar, o2.e eVar2, int i11) {
        q2.y(this, eVar, eVar2, i11);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onRenderedFirstFrame() {
        q2.z(this);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onRepeatModeChanged(int i11) {
        q2.A(this, i11);
    }

    public /* bridge */ /* synthetic */ void onSeekBackIncrementChanged(long j11) {
        q2.B(this, j11);
    }

    public /* bridge */ /* synthetic */ void onSeekForwardIncrementChanged(long j11) {
        q2.C(this, j11);
    }

    @Override // com.google.android.exoplayer2.o2.d
    @Deprecated
    public /* bridge */ /* synthetic */ void onSeekProcessed() {
        q2.D(this);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onShuffleModeEnabledChanged(boolean z10) {
        q2.E(this, z10);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onSkipSilenceEnabledChanged(boolean z10) {
        q2.F(this, z10);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onSurfaceSizeChanged(int i11, int i12) {
        q2.G(this, i11, i12);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onTimelineChanged(k3 k3Var, int i11) {
        q2.H(this, k3Var, i11);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
        q2.I(this, trackSelectionParameters);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onTracksChanged(p3 p3Var) {
        q2.J(this, p3Var);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onVideoSizeChanged(com.google.android.exoplayer2.video.y yVar) {
        q2.K(this, yVar);
    }

    @Override // com.google.android.exoplayer2.o2.d
    public /* bridge */ /* synthetic */ void onVolumeChanged(float f11) {
        q2.L(this, f11);
    }

    public void setApplyEmbeddedFontSizes(boolean z10) {
        this.f27076g = z10;
        r();
    }

    public void setApplyEmbeddedStyles(boolean z10) {
        this.f27075f = z10;
        r();
    }

    public void setBottomPaddingFraction(float f11) {
        this.f27074e = f11;
        r();
    }

    public void setCues(@Nullable List<ba.b> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f27070a = list;
        r();
    }

    public void setFixedTextSize(int i11, float f11) {
        Context context = getContext();
        p(2, TypedValue.applyDimension(i11, f11, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public void setFractionalTextSize(float f11) {
        setFractionalTextSize(f11, false);
    }

    public void setFractionalTextSize(float f11, boolean z10) {
        p(z10 ? 1 : 0, f11);
    }

    public void setStyle(c cVar) {
        this.f27071b = cVar;
        r();
    }

    public void setUserDefaultStyle() {
        setStyle(getUserCaptionStyle());
    }

    public void setUserDefaultTextSize() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public void setViewType(int i11) {
        if (this.f27077h == i11) {
            return;
        }
        if (i11 == 1) {
            setView(new b(getContext()));
        } else {
            if (i11 != 2) {
                throw new IllegalArgumentException();
            }
            setView(new q0(getContext()));
        }
        this.f27077h = i11;
    }
}
