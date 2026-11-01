package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.TracksInfo;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.q2;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.trackselection.TrackSelectionOverrides;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.v1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class StyledPlayerControlView extends FrameLayout {
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private static final float[] f26972v0;
    private final Drawable A;
    private final Drawable B;
    private final float C;
    private final float D;
    private final String E;
    private final String F;
    private final Drawable G;
    private final Drawable H;
    private final String I;
    private final String J;
    private final Drawable K;
    private final Drawable L;
    private final String M;
    private final String N;
    private o2 O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private int T;
    private int U;
    private int V;
    private long[] W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f26973a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean[] f26974a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList f26975b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private long[] f26976b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f26977c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private boolean[] f26978c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View f26979d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private long f26980d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View f26981e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private i0 f26982e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final View f26983f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private Resources f26984f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final View f26985g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private RecyclerView f26986g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TextView f26987h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private h f26988h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final TextView f26989i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private e f26990i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ImageView f26991j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private PopupWindow f26992j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ImageView f26993k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private boolean f26994k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final View f26995l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private int f26996l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final TextView f26997m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private j f26998m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final TextView f26999n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private b f27000n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final n0 f27001o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private o0 f27002o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final StringBuilder f27003p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private ImageView f27004p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Formatter f27005q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private ImageView f27006q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final k3.b f27007r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private ImageView f27008r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final k3.d f27009s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private View f27010s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Runnable f27011t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private View f27012t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Drawable f27013u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private View f27014u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Drawable f27015v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Drawable f27016w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final String f27017x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final String f27018y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final String f27019z;

    /* JADX INFO: Access modifiers changed from: private */
    final class b extends l {
        private b() {
            super();
        }

        private boolean o(TrackSelectionOverrides trackSelectionOverrides) {
            for (int i11 = 0; i11 < this.f27040a.size(); i11++) {
                if (trackSelectionOverrides.getOverride(((k) this.f27040a.get(i11)).f27037a.getTrackGroup()) != null) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(View view) {
            if (StyledPlayerControlView.this.O == null) {
                return;
            }
            TrackSelectionParameters trackSelectionParametersL = StyledPlayerControlView.this.O.l();
            TrackSelectionOverrides trackSelectionOverridesBuild = trackSelectionParametersL.trackSelectionOverrides.buildUpon().clearOverridesOfType(1).build();
            HashSet hashSet = new HashSet(trackSelectionParametersL.f26753z);
            hashSet.remove(1);
            ((o2) com.google.android.exoplayer2.util.p0.j(StyledPlayerControlView.this.O)).D(trackSelectionParametersL.a().setTrackSelectionOverrides(trackSelectionOverridesBuild).E(hashSet).A());
            StyledPlayerControlView.this.f26988h0.i(1, StyledPlayerControlView.this.getResources().getString(R$string.exo_track_selection_auto));
            StyledPlayerControlView.this.f26992j0.dismiss();
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void k(i iVar) {
            iVar.f27034a.setText(R$string.exo_track_selection_auto);
            iVar.f27035b.setVisibility(o(((o2) com.google.android.exoplayer2.util.a.e(StyledPlayerControlView.this.O)).l().trackSelectionOverrides) ? 4 : 0);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f27207a.q(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void m(String str) {
            StyledPlayerControlView.this.f26988h0.i(1, str);
        }

        public void p(List list) {
            this.f27040a = list;
            TrackSelectionParameters trackSelectionParametersL = ((o2) com.google.android.exoplayer2.util.a.e(StyledPlayerControlView.this.O)).l();
            if (list.isEmpty()) {
                StyledPlayerControlView.this.f26988h0.i(1, StyledPlayerControlView.this.getResources().getString(R$string.exo_track_selection_none));
                return;
            }
            if (!o(trackSelectionParametersL.trackSelectionOverrides)) {
                StyledPlayerControlView.this.f26988h0.i(1, StyledPlayerControlView.this.getResources().getString(R$string.exo_track_selection_auto));
                return;
            }
            for (int i11 = 0; i11 < list.size(); i11++) {
                k kVar = (k) list.get(i11);
                if (kVar.a()) {
                    StyledPlayerControlView.this.f26988h0.i(1, kVar.f27039c);
                    return;
                }
            }
        }
    }

    private final class c implements o2.d, n0.a, View.OnClickListener, PopupWindow.OnDismissListener {
        private c() {
        }

        @Override // com.google.android.exoplayer2.ui.n0.a
        public void l(n0 n0Var, long j11) {
            if (StyledPlayerControlView.this.f26999n != null) {
                StyledPlayerControlView.this.f26999n.setText(com.google.android.exoplayer2.util.p0.h0(StyledPlayerControlView.this.f27003p, StyledPlayerControlView.this.f27005q, j11));
            }
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onAvailableCommandsChanged(o2.b bVar) {
            q2.c(this, bVar);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2 o2Var = StyledPlayerControlView.this.O;
            if (o2Var == null) {
                return;
            }
            StyledPlayerControlView.this.f26982e0.X();
            if (StyledPlayerControlView.this.f26979d == view) {
                o2Var.m();
                return;
            }
            if (StyledPlayerControlView.this.f26977c == view) {
                o2Var.f();
                return;
            }
            if (StyledPlayerControlView.this.f26983f == view) {
                if (o2Var.getPlaybackState() != 4) {
                    o2Var.v();
                    return;
                }
                return;
            }
            if (StyledPlayerControlView.this.f26985g == view) {
                o2Var.w();
                return;
            }
            if (StyledPlayerControlView.this.f26981e == view) {
                StyledPlayerControlView.this.V(o2Var);
                return;
            }
            if (StyledPlayerControlView.this.f26991j == view) {
                o2Var.setRepeatMode(com.google.android.exoplayer2.util.f0.a(o2Var.getRepeatMode(), StyledPlayerControlView.this.V));
                return;
            }
            if (StyledPlayerControlView.this.f26993k == view) {
                o2Var.setShuffleModeEnabled(!o2Var.getShuffleModeEnabled());
                return;
            }
            if (StyledPlayerControlView.this.f27010s0 == view) {
                StyledPlayerControlView.this.f26982e0.W();
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.W(styledPlayerControlView.f26988h0);
                return;
            }
            if (StyledPlayerControlView.this.f27012t0 == view) {
                StyledPlayerControlView.this.f26982e0.W();
                StyledPlayerControlView styledPlayerControlView2 = StyledPlayerControlView.this;
                styledPlayerControlView2.W(styledPlayerControlView2.f26990i0);
            } else if (StyledPlayerControlView.this.f27014u0 == view) {
                StyledPlayerControlView.this.f26982e0.W();
                StyledPlayerControlView styledPlayerControlView3 = StyledPlayerControlView.this;
                styledPlayerControlView3.W(styledPlayerControlView3.f27000n0);
            } else if (StyledPlayerControlView.this.f27004p0 == view) {
                StyledPlayerControlView.this.f26982e0.W();
                StyledPlayerControlView styledPlayerControlView4 = StyledPlayerControlView.this;
                styledPlayerControlView4.W(styledPlayerControlView4.f26998m0);
            }
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onCues(ba.f fVar) {
            q2.d(this, fVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onCues(List list) {
            q2.e(this, list);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onDeviceInfoChanged(com.google.android.exoplayer2.r rVar) {
            q2.f(this, rVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onDeviceVolumeChanged(int i11, boolean z10) {
            q2.g(this, i11, z10);
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (StyledPlayerControlView.this.f26994k0) {
                StyledPlayerControlView.this.f26982e0.X();
            }
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onEvents(o2 o2Var, o2.c cVar) {
            if (cVar.b(4, 5)) {
                StyledPlayerControlView.this.p0();
            }
            if (cVar.b(4, 5, 7)) {
                StyledPlayerControlView.this.r0();
            }
            if (cVar.a(8)) {
                StyledPlayerControlView.this.s0();
            }
            if (cVar.a(9)) {
                StyledPlayerControlView.this.v0();
            }
            if (cVar.b(8, 9, 11, 0, 16, 17, 13)) {
                StyledPlayerControlView.this.o0();
            }
            if (cVar.b(11, 0)) {
                StyledPlayerControlView.this.w0();
            }
            if (cVar.a(12)) {
                StyledPlayerControlView.this.q0();
            }
            if (cVar.a(2)) {
                StyledPlayerControlView.this.x0();
            }
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onIsLoadingChanged(boolean z10) {
            q2.i(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onIsPlayingChanged(boolean z10) {
            q2.j(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onLoadingChanged(boolean z10) {
            q2.k(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onMediaItemTransition(v1 v1Var, int i11) {
            q2.m(this, v1Var, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onMediaMetadataChanged(a2 a2Var) {
            q2.n(this, a2Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onMetadata(Metadata metadata) {
            q2.o(this, metadata);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlayWhenReadyChanged(boolean z10, int i11) {
            q2.p(this, z10, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlaybackParametersChanged(n2 n2Var) {
            q2.q(this, n2Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlaybackStateChanged(int i11) {
            q2.r(this, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i11) {
            q2.s(this, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            q2.t(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            q2.u(this, playbackException);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlayerStateChanged(boolean z10, int i11) {
            q2.v(this, z10, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPositionDiscontinuity(int i11) {
            q2.x(this, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPositionDiscontinuity(o2.e eVar, o2.e eVar2, int i11) {
            q2.y(this, eVar, eVar2, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onRenderedFirstFrame() {
            q2.z(this);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onRepeatModeChanged(int i11) {
            q2.A(this, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onSeekProcessed() {
            q2.D(this);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z10) {
            q2.E(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z10) {
            q2.F(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onSurfaceSizeChanged(int i11, int i12) {
            q2.G(this, i11, i12);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onTimelineChanged(k3 k3Var, int i11) {
            q2.H(this, k3Var, i11);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
            q2.I(this, trackSelectionParameters);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onTracksChanged(p3 p3Var) {
            q2.J(this, p3Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onVideoSizeChanged(com.google.android.exoplayer2.video.y yVar) {
            q2.K(this, yVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onVolumeChanged(float f11) {
            q2.L(this, f11);
        }

        @Override // com.google.android.exoplayer2.ui.n0.a
        public void p(n0 n0Var, long j11, boolean z10) {
            StyledPlayerControlView.this.S = false;
            if (!z10 && StyledPlayerControlView.this.O != null) {
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.i0(styledPlayerControlView.O, j11);
            }
            StyledPlayerControlView.this.f26982e0.X();
        }

        @Override // com.google.android.exoplayer2.ui.n0.a
        public void r(n0 n0Var, long j11) {
            StyledPlayerControlView.this.S = true;
            if (StyledPlayerControlView.this.f26999n != null) {
                StyledPlayerControlView.this.f26999n.setText(com.google.android.exoplayer2.util.p0.h0(StyledPlayerControlView.this.f27003p, StyledPlayerControlView.this.f27005q, j11));
            }
            StyledPlayerControlView.this.f26982e0.W();
        }
    }

    public interface d {
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class e extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f27022a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float[] f27023b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f27024c;

        public e(String[] strArr, float[] fArr) {
            this.f27022a = strArr;
            this.f27023b = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(int i11, View view) {
            if (i11 != this.f27024c) {
                StyledPlayerControlView.this.setPlaybackSpeed(this.f27023b[i11]);
            }
            StyledPlayerControlView.this.f26992j0.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f27022a.length;
        }

        public String h() {
            return this.f27022a[this.f27024c];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(i iVar, final int i11) {
            String[] strArr = this.f27022a;
            if (i11 < strArr.length) {
                iVar.f27034a.setText(strArr[i11]);
            }
            iVar.f27035b.setVisibility(i11 == this.f27024c ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f27216a.i(i11, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public i onCreateViewHolder(ViewGroup viewGroup, int i11) {
            return new i(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        public void l(float f11) {
            int i11 = 0;
            float f12 = Float.MAX_VALUE;
            int i12 = 0;
            while (true) {
                float[] fArr = this.f27023b;
                if (i11 >= fArr.length) {
                    this.f27024c = i12;
                    return;
                }
                float fAbs = Math.abs(f11 - fArr[i11]);
                if (fAbs < f12) {
                    i12 = i11;
                    f12 = fAbs;
                }
                i11++;
            }
        }
    }

    public interface f {
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class g extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f27026a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextView f27027b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ImageView f27028c;

        public g(View view) {
            super(view);
            if (com.google.android.exoplayer2.util.p0.f27626a < 26) {
                view.setFocusable(true);
            }
            this.f27026a = (TextView) view.findViewById(R$id.exo_main_text);
            this.f27027b = (TextView) view.findViewById(R$id.exo_sub_text);
            this.f27028c = (ImageView) view.findViewById(R$id.exo_icon);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f27218a.j(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(View view) {
            StyledPlayerControlView.this.f0(getAdapterPosition());
        }
    }

    private class h extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f27030a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String[] f27031b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Drawable[] f27032c;

        public h(String[] strArr, Drawable[] drawableArr) {
            this.f27030a = strArr;
            this.f27031b = new String[strArr.length];
            this.f27032c = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(g gVar, int i11) {
            gVar.f27026a.setText(this.f27030a[i11]);
            if (this.f27031b[i11] == null) {
                gVar.f27027b.setVisibility(8);
            } else {
                gVar.f27027b.setText(this.f27031b[i11]);
            }
            if (this.f27032c[i11] == null) {
                gVar.f27028c.setVisibility(8);
            } else {
                gVar.f27028c.setImageDrawable(this.f27032c[i11]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f27030a.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i11) {
            return i11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public g onCreateViewHolder(ViewGroup viewGroup, int i11) {
            return StyledPlayerControlView.this.new g(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_settings_list_item, viewGroup, false));
        }

        public void i(int i11, String str) {
            this.f27031b[i11] = str;
        }
    }

    private static class i extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f27034a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final View f27035b;

        public i(View view) {
            super(view);
            if (com.google.android.exoplayer2.util.p0.f27626a < 26) {
                view.setFocusable(true);
            }
            this.f27034a = (TextView) view.findViewById(R$id.exo_text);
            this.f27035b = view.findViewById(R$id.exo_check);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class j extends l {
        private j() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(View view) {
            if (StyledPlayerControlView.this.O != null) {
                TrackSelectionParameters trackSelectionParametersL = StyledPlayerControlView.this.O.l();
                StyledPlayerControlView.this.O.D(trackSelectionParametersL.a().E(new ImmutableSet.a().l(trackSelectionParametersL.f26753z).a(3).e()).A());
                StyledPlayerControlView.this.f26992j0.dismiss();
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l, androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(i iVar, int i11) {
            super.onBindViewHolder(iVar, i11);
            if (i11 > 0) {
                iVar.f27035b.setVisibility(((k) this.f27040a.get(i11 + (-1))).a() ? 0 : 4);
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void k(i iVar) {
            boolean z10;
            iVar.f27034a.setText(R$string.exo_track_selection_none);
            int i11 = 0;
            while (true) {
                if (i11 >= this.f27040a.size()) {
                    z10 = true;
                    break;
                } else {
                    if (((k) this.f27040a.get(i11)).a()) {
                        z10 = false;
                        break;
                    }
                    i11++;
                }
            }
            iVar.f27035b.setVisibility(z10 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f27219a.p(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void m(String str) {
        }

        public void o(List list) {
            boolean z10 = false;
            for (int i11 = 0; i11 < list.size(); i11++) {
                if (((k) list.get(i11)).a()) {
                    z10 = true;
                    break;
                }
            }
            if (StyledPlayerControlView.this.f27004p0 != null) {
                ImageView imageView = StyledPlayerControlView.this.f27004p0;
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                imageView.setImageDrawable(z10 ? styledPlayerControlView.G : styledPlayerControlView.H);
                StyledPlayerControlView.this.f27004p0.setContentDescription(z10 ? StyledPlayerControlView.this.I : StyledPlayerControlView.this.J);
            }
            this.f27040a = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TracksInfo.TrackGroupInfo f27037a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f27038b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f27039c;

        public k(TracksInfo tracksInfo, int i11, int i12, String str) {
            this.f27037a = (TracksInfo.TrackGroupInfo) tracksInfo.getTrackGroupInfos().get(i11);
            this.f27038b = i12;
            this.f27039c = str;
        }

        public boolean a() {
            return this.f27037a.isTrackSelected(this.f27038b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    abstract class l extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected List f27040a = new ArrayList();

        protected l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(TrackGroup trackGroup, k kVar, View view) {
            if (StyledPlayerControlView.this.O == null) {
                return;
            }
            TrackSelectionParameters trackSelectionParametersL = StyledPlayerControlView.this.O.l();
            TrackSelectionOverrides trackSelectionOverridesBuild = trackSelectionParametersL.trackSelectionOverrides.buildUpon().setOverrideForType(new TrackSelectionOverrides.TrackSelectionOverride(trackGroup, ImmutableList.of(Integer.valueOf(kVar.f27038b)))).build();
            HashSet hashSet = new HashSet(trackSelectionParametersL.f26753z);
            hashSet.remove(Integer.valueOf(kVar.f27037a.getTrackType()));
            ((o2) com.google.android.exoplayer2.util.a.e(StyledPlayerControlView.this.O)).D(trackSelectionParametersL.a().setTrackSelectionOverrides(trackSelectionOverridesBuild).E(hashSet).A());
            m(kVar.f27039c);
            StyledPlayerControlView.this.f26992j0.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.f27040a.isEmpty()) {
                return 0;
            }
            return this.f27040a.size() + 1;
        }

        protected void h() {
            this.f27040a = Collections.emptyList();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: j */
        public void onBindViewHolder(i iVar, int i11) {
            if (StyledPlayerControlView.this.O == null) {
                return;
            }
            if (i11 == 0) {
                k(iVar);
                return;
            }
            final k kVar = (k) this.f27040a.get(i11 - 1);
            final TrackGroup trackGroup = kVar.f27037a.getTrackGroup();
            boolean z10 = ((o2) com.google.android.exoplayer2.util.a.e(StyledPlayerControlView.this.O)).l().trackSelectionOverrides.getOverride(trackGroup) != null && kVar.a();
            iVar.f27034a.setText(kVar.f27039c);
            iVar.f27035b.setVisibility(z10 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f27220a.i(trackGroup, kVar, view);
                }
            });
        }

        protected abstract void k(i iVar);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public i onCreateViewHolder(ViewGroup viewGroup, int i11) {
            return new i(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        protected abstract void m(String str);
    }

    public interface m {
        void l(int i11);
    }

    static {
        m1.a("goog.exo.ui");
        f26972v0 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public StyledPlayerControlView(Context context) {
        this(context, null);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, attributeSet);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i11, @Nullable AttributeSet attributeSet2) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        TextView textView;
        boolean z18;
        super(context, attributeSet, i11);
        int resourceId = R$layout.exo_styled_player_control_view;
        this.T = 5000;
        this.V = 0;
        this.U = 200;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.StyledPlayerControlView, i11, 0);
            try {
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.StyledPlayerControlView_controller_layout_id, resourceId);
                this.T = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_show_timeout, this.T);
                this.V = Y(typedArrayObtainStyledAttributes, this.V);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_rewind_button, true);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_fastforward_button, true);
                boolean z21 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_previous_button, true);
                boolean z22 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_next_button, true);
                boolean z23 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_shuffle_button, false);
                boolean z24 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_subtitle_button, false);
                boolean z25 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_vr_button, false);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_time_bar_min_update_interval, this.U));
                boolean z26 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_animation_enabled, true);
                typedArrayObtainStyledAttributes.recycle();
                z11 = z23;
                z12 = z24;
                z14 = z19;
                z15 = z20;
                z16 = z21;
                z13 = z26;
                z17 = z22;
                z10 = z25;
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            z10 = false;
            z11 = false;
            z12 = false;
            z13 = true;
            z14 = true;
            z15 = true;
            z16 = true;
            z17 = true;
        }
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        c cVar = new c();
        this.f26973a = cVar;
        this.f26975b = new CopyOnWriteArrayList();
        this.f27007r = new k3.b();
        this.f27009s = new k3.d();
        StringBuilder sb2 = new StringBuilder();
        this.f27003p = sb2;
        this.f27005q = new Formatter(sb2, Locale.getDefault());
        this.W = new long[0];
        this.f26974a0 = new boolean[0];
        this.f26976b0 = new long[0];
        this.f26978c0 = new boolean[0];
        this.f27011t = new Runnable() { // from class: com.google.android.exoplayer2.ui.n
            @Override // java.lang.Runnable
            public final void run() {
                this.f27203a.r0();
            }
        };
        this.f26997m = (TextView) findViewById(R$id.exo_duration);
        this.f26999n = (TextView) findViewById(R$id.exo_position);
        ImageView imageView = (ImageView) findViewById(R$id.exo_subtitle);
        this.f27004p0 = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(cVar);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_fullscreen);
        this.f27006q0 = imageView2;
        a0(imageView2, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f27204a.d0(view);
            }
        });
        ImageView imageView3 = (ImageView) findViewById(R$id.exo_minimal_fullscreen);
        this.f27008r0 = imageView3;
        a0(imageView3, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f27204a.d0(view);
            }
        });
        View viewFindViewById = findViewById(R$id.exo_settings);
        this.f27010s0 = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(cVar);
        }
        View viewFindViewById2 = findViewById(R$id.exo_playback_speed);
        this.f27012t0 = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(cVar);
        }
        View viewFindViewById3 = findViewById(R$id.exo_audio_track);
        this.f27014u0 = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(cVar);
        }
        n0 n0Var = (n0) findViewById(R$id.exo_progress);
        View viewFindViewById4 = findViewById(R$id.exo_progress_placeholder);
        if (n0Var != null) {
            this.f27001o = n0Var;
            textView = null;
        } else if (viewFindViewById4 != null) {
            textView = null;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, R$style.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(R$id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById4.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById4);
            viewGroup.removeView(viewFindViewById4);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.f27001o = defaultTimeBar;
        } else {
            textView = null;
            this.f27001o = null;
        }
        n0 n0Var2 = this.f27001o;
        if (n0Var2 != null) {
            n0Var2.addListener(cVar);
        }
        View viewFindViewById5 = findViewById(R$id.exo_play_pause);
        this.f26981e = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(cVar);
        }
        View viewFindViewById6 = findViewById(R$id.exo_prev);
        this.f26977c = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(cVar);
        }
        View viewFindViewById7 = findViewById(R$id.exo_next);
        this.f26979d = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(cVar);
        }
        Typeface typefaceG = y0.h.g(context, R$font.roboto_medium_numbers);
        View viewFindViewById8 = findViewById(R$id.exo_rew);
        TextView textView2 = viewFindViewById8 == null ? (TextView) findViewById(R$id.exo_rew_with_amount) : textView;
        this.f26989i = textView2;
        if (textView2 != null) {
            textView2.setTypeface(typefaceG);
        }
        viewFindViewById8 = viewFindViewById8 == null ? textView2 : viewFindViewById8;
        this.f26985g = viewFindViewById8;
        if (viewFindViewById8 != null) {
            viewFindViewById8.setOnClickListener(cVar);
        }
        View viewFindViewById9 = findViewById(R$id.exo_ffwd);
        TextView textView3 = viewFindViewById9 == null ? (TextView) findViewById(R$id.exo_ffwd_with_amount) : null;
        this.f26987h = textView3;
        if (textView3 != null) {
            textView3.setTypeface(typefaceG);
        }
        viewFindViewById9 = viewFindViewById9 == null ? textView3 : viewFindViewById9;
        this.f26983f = viewFindViewById9;
        if (viewFindViewById9 != null) {
            viewFindViewById9.setOnClickListener(cVar);
        }
        ImageView imageView4 = (ImageView) findViewById(R$id.exo_repeat_toggle);
        this.f26991j = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(cVar);
        }
        ImageView imageView5 = (ImageView) findViewById(R$id.exo_shuffle);
        this.f26993k = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(cVar);
        }
        Resources resources = context.getResources();
        this.f26984f0 = resources;
        this.C = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.D = this.f26984f0.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        View viewFindViewById10 = findViewById(R$id.exo_vr);
        this.f26995l = viewFindViewById10;
        if (viewFindViewById10 != null) {
            l0(false, viewFindViewById10);
        }
        i0 i0Var = new i0(this);
        this.f26982e0 = i0Var;
        boolean z27 = z10;
        i0Var.Y(z13);
        boolean z28 = z12;
        this.f26988h0 = new h(new String[]{this.f26984f0.getString(R$string.exo_controls_playback_speed), this.f26984f0.getString(R$string.exo_track_selection_title_audio)}, new Drawable[]{this.f26984f0.getDrawable(R$drawable.exo_styled_controls_speed), this.f26984f0.getDrawable(R$drawable.exo_styled_controls_audiotrack)});
        this.f26996l0 = this.f26984f0.getDimensionPixelSize(R$dimen.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R$layout.exo_styled_settings_list, (ViewGroup) null);
        this.f26986g0 = recyclerView;
        recyclerView.setAdapter(this.f26988h0);
        this.f26986g0.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) this.f26986g0, -2, -2, true);
        this.f26992j0 = popupWindow;
        if (com.google.android.exoplayer2.util.p0.f27626a < 23) {
            z18 = false;
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            z18 = false;
        }
        this.f26992j0.setOnDismissListener(cVar);
        this.f26994k0 = true;
        this.f27002o0 = new com.google.android.exoplayer2.ui.g(getResources());
        this.G = this.f26984f0.getDrawable(R$drawable.exo_styled_controls_subtitle_on);
        this.H = this.f26984f0.getDrawable(R$drawable.exo_styled_controls_subtitle_off);
        this.I = this.f26984f0.getString(R$string.exo_controls_cc_enabled_description);
        this.J = this.f26984f0.getString(R$string.exo_controls_cc_disabled_description);
        this.f26998m0 = new j();
        this.f27000n0 = new b();
        this.f26990i0 = new e(this.f26984f0.getStringArray(R$array.exo_controls_playback_speeds), f26972v0);
        this.K = this.f26984f0.getDrawable(R$drawable.exo_styled_controls_fullscreen_exit);
        this.L = this.f26984f0.getDrawable(R$drawable.exo_styled_controls_fullscreen_enter);
        this.f27013u = this.f26984f0.getDrawable(R$drawable.exo_styled_controls_repeat_off);
        this.f27015v = this.f26984f0.getDrawable(R$drawable.exo_styled_controls_repeat_one);
        this.f27016w = this.f26984f0.getDrawable(R$drawable.exo_styled_controls_repeat_all);
        this.A = this.f26984f0.getDrawable(R$drawable.exo_styled_controls_shuffle_on);
        this.B = this.f26984f0.getDrawable(R$drawable.exo_styled_controls_shuffle_off);
        this.M = this.f26984f0.getString(R$string.exo_controls_fullscreen_exit_description);
        this.N = this.f26984f0.getString(R$string.exo_controls_fullscreen_enter_description);
        this.f27017x = this.f26984f0.getString(R$string.exo_controls_repeat_off_description);
        this.f27018y = this.f26984f0.getString(R$string.exo_controls_repeat_one_description);
        this.f27019z = this.f26984f0.getString(R$string.exo_controls_repeat_all_description);
        this.E = this.f26984f0.getString(R$string.exo_controls_shuffle_on_description);
        this.F = this.f26984f0.getString(R$string.exo_controls_shuffle_off_description);
        this.f26982e0.Z((ViewGroup) findViewById(R$id.exo_bottom_bar), true);
        this.f26982e0.Z(viewFindViewById9, z15);
        this.f26982e0.Z(viewFindViewById8, z14);
        this.f26982e0.Z(viewFindViewById6, z16);
        this.f26982e0.Z(viewFindViewById7, z17);
        this.f26982e0.Z(imageView5, z11);
        this.f26982e0.Z(this.f27004p0, z28);
        this.f26982e0.Z(viewFindViewById10, z27);
        this.f26982e0.Z(imageView4, this.V != 0 ? true : z18);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui.p
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                this.f27205a.e0(view, i12, i13, i14, i15, i16, i17, i18, i19);
            }
        });
    }

    private static boolean S(k3 k3Var, k3.d dVar) {
        if (k3Var.t() > 100) {
            return false;
        }
        int iT = k3Var.t();
        for (int i11 = 0; i11 < iT; i11++) {
            if (k3Var.r(i11, dVar).f25182n == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    private void T(o2 o2Var) {
        o2Var.pause();
    }

    private void U(o2 o2Var) {
        int playbackState = o2Var.getPlaybackState();
        if (playbackState == 1) {
            o2Var.prepare();
        } else if (playbackState == 4) {
            h0(o2Var, o2Var.t(), C.TIME_UNSET);
        }
        o2Var.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(o2 o2Var) {
        int playbackState = o2Var.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !o2Var.getPlayWhenReady()) {
            U(o2Var);
        } else {
            T(o2Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(RecyclerView.Adapter adapter) {
        this.f26986g0.setAdapter(adapter);
        u0();
        this.f26994k0 = false;
        this.f26992j0.dismiss();
        this.f26994k0 = true;
        this.f26992j0.showAsDropDown(this, (getWidth() - this.f26992j0.getWidth()) - this.f26996l0, (-this.f26992j0.getHeight()) - this.f26996l0);
    }

    private ImmutableList X(TracksInfo tracksInfo, int i11) {
        ImmutableList.a aVar = new ImmutableList.a();
        ImmutableList trackGroupInfos = tracksInfo.getTrackGroupInfos();
        for (int i12 = 0; i12 < trackGroupInfos.size(); i12++) {
            TracksInfo.TrackGroupInfo trackGroupInfo = (TracksInfo.TrackGroupInfo) trackGroupInfos.get(i12);
            if (trackGroupInfo.getTrackType() == i11) {
                TrackGroup trackGroup = trackGroupInfo.getTrackGroup();
                for (int i13 = 0; i13 < trackGroup.f25673a; i13++) {
                    if (trackGroupInfo.isTrackSupported(i13)) {
                        aVar.a(new k(tracksInfo, i12, i13, this.f27002o0.a(trackGroup.c(i13))));
                    }
                }
            }
        }
        return aVar.e();
    }

    private static int Y(TypedArray typedArray, int i11) {
        return typedArray.getInt(R$styleable.StyledPlayerControlView_repeat_toggle_modes, i11);
    }

    private void Z() {
        this.f26998m0.h();
        this.f27000n0.h();
        o2 o2Var = this.O;
        if (o2Var != null && o2Var.h(30) && this.O.h(29)) {
            TracksInfo currentTracksInfo = this.O.getCurrentTracksInfo();
            this.f27000n0.p(X(currentTracksInfo, 1));
            if (this.f26982e0.A(this.f27004p0)) {
                this.f26998m0.o(X(currentTracksInfo, 3));
            } else {
                this.f26998m0.o(ImmutableList.of());
            }
        }
    }

    private static void a0(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    private static boolean b0(int i11) {
        return i11 == 90 || i11 == 89 || i11 == 85 || i11 == 79 || i11 == 126 || i11 == 127 || i11 == 87 || i11 == 88;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        int i19 = i14 - i12;
        int i20 = i18 - i16;
        if (!(i13 - i11 == i17 - i15 && i19 == i20) && this.f26992j0.isShowing()) {
            u0();
            this.f26992j0.update(view, (getWidth() - this.f26992j0.getWidth()) - this.f26996l0, (-this.f26992j0.getHeight()) - this.f26996l0, -1, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0(int i11) {
        if (i11 == 0) {
            W(this.f26990i0);
        } else if (i11 == 1) {
            W(this.f27000n0);
        } else {
            this.f26992j0.dismiss();
        }
    }

    private void h0(o2 o2Var, int i11, long j11) {
        o2Var.seekTo(i11, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(o2 o2Var, long j11) {
        int iT;
        k3 currentTimeline = o2Var.getCurrentTimeline();
        if (this.R && !currentTimeline.u()) {
            int iT2 = currentTimeline.t();
            iT = 0;
            while (true) {
                long jG = currentTimeline.r(iT, this.f27009s).g();
                if (j11 < jG) {
                    break;
                }
                if (iT == iT2 - 1) {
                    j11 = jG;
                    break;
                } else {
                    j11 -= jG;
                    iT++;
                }
            }
        } else {
            iT = o2Var.t();
        }
        h0(o2Var, iT, j11);
        r0();
    }

    private boolean j0() {
        o2 o2Var = this.O;
        return (o2Var == null || o2Var.getPlaybackState() == 4 || this.O.getPlaybackState() == 1 || !this.O.getPlayWhenReady()) ? false : true;
    }

    private void l0(boolean z10, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z10);
        view.setAlpha(z10 ? this.C : this.D);
    }

    private void m0() {
        o2 o2Var = this.O;
        int iR = (int) ((o2Var != null ? o2Var.r() : MBInterstitialActivity.WEB_LOAD_TIME) / 1000);
        TextView textView = this.f26987h;
        if (textView != null) {
            textView.setText(String.valueOf(iR));
        }
        View view = this.f26983f;
        if (view != null) {
            view.setContentDescription(this.f26984f0.getQuantityString(R$plurals.exo_controls_fastforward_by_amount_description, iR, Integer.valueOf(iR)));
        }
    }

    private static void n0(View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (z10) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        boolean zH;
        boolean zH2;
        boolean zH3;
        boolean zH4;
        boolean zH5;
        if (isVisible() && this.P) {
            o2 o2Var = this.O;
            if (o2Var != null) {
                zH = o2Var.h(5);
                zH3 = o2Var.h(7);
                zH4 = o2Var.h(11);
                zH5 = o2Var.h(12);
                zH2 = o2Var.h(9);
            } else {
                zH = false;
                zH2 = false;
                zH3 = false;
                zH4 = false;
                zH5 = false;
            }
            if (zH4) {
                t0();
            }
            if (zH5) {
                m0();
            }
            l0(zH3, this.f26977c);
            l0(zH4, this.f26985g);
            l0(zH5, this.f26983f);
            l0(zH2, this.f26979d);
            n0 n0Var = this.f27001o;
            if (n0Var != null) {
                n0Var.setEnabled(zH);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0() {
        if (isVisible() && this.P && this.f26981e != null) {
            if (j0()) {
                ((ImageView) this.f26981e).setImageDrawable(this.f26984f0.getDrawable(R$drawable.exo_styled_controls_pause));
                this.f26981e.setContentDescription(this.f26984f0.getString(R$string.exo_controls_pause_description));
            } else {
                ((ImageView) this.f26981e).setImageDrawable(this.f26984f0.getDrawable(R$drawable.exo_styled_controls_play));
                this.f26981e.setContentDescription(this.f26984f0.getString(R$string.exo_controls_play_description));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0() {
        o2 o2Var = this.O;
        if (o2Var == null) {
            return;
        }
        this.f26990i0.l(o2Var.getPlaybackParameters().f25475a);
        this.f26988h0.i(0, this.f26990i0.h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r0() {
        long contentPosition;
        long jU;
        if (isVisible() && this.P) {
            o2 o2Var = this.O;
            if (o2Var != null) {
                contentPosition = this.f26980d0 + o2Var.getContentPosition();
                jU = this.f26980d0 + o2Var.u();
            } else {
                contentPosition = 0;
                jU = 0;
            }
            TextView textView = this.f26999n;
            if (textView != null && !this.S) {
                textView.setText(com.google.android.exoplayer2.util.p0.h0(this.f27003p, this.f27005q, contentPosition));
            }
            n0 n0Var = this.f27001o;
            if (n0Var != null) {
                n0Var.setPosition(contentPosition);
                this.f27001o.setBufferedPosition(jU);
            }
            removeCallbacks(this.f27011t);
            int playbackState = o2Var == null ? 1 : o2Var.getPlaybackState();
            if (o2Var == null || !o2Var.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f27011t, 1000L);
                return;
            }
            n0 n0Var2 = this.f27001o;
            long jMin = Math.min(n0Var2 != null ? n0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (contentPosition % 1000));
            float f11 = o2Var.getPlaybackParameters().f25475a;
            postDelayed(this.f27011t, com.google.android.exoplayer2.util.p0.r(f11 > 0.0f ? (long) (jMin / f11) : 1000L, this.U, 1000L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        ImageView imageView;
        if (isVisible() && this.P && (imageView = this.f26991j) != null) {
            if (this.V == 0) {
                l0(false, imageView);
                return;
            }
            o2 o2Var = this.O;
            if (o2Var == null) {
                l0(false, imageView);
                this.f26991j.setImageDrawable(this.f27013u);
                this.f26991j.setContentDescription(this.f27017x);
                return;
            }
            l0(true, imageView);
            int repeatMode = o2Var.getRepeatMode();
            if (repeatMode == 0) {
                this.f26991j.setImageDrawable(this.f27013u);
                this.f26991j.setContentDescription(this.f27017x);
            } else if (repeatMode == 1) {
                this.f26991j.setImageDrawable(this.f27015v);
                this.f26991j.setContentDescription(this.f27018y);
            } else {
                if (repeatMode != 2) {
                    return;
                }
                this.f26991j.setImageDrawable(this.f27016w);
                this.f26991j.setContentDescription(this.f27019z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f11) {
        o2 o2Var = this.O;
        if (o2Var == null) {
            return;
        }
        o2Var.b(o2Var.getPlaybackParameters().e(f11));
    }

    private void t0() {
        o2 o2Var = this.O;
        int iY = (int) ((o2Var != null ? o2Var.y() : 5000L) / 1000);
        TextView textView = this.f26989i;
        if (textView != null) {
            textView.setText(String.valueOf(iY));
        }
        View view = this.f26985g;
        if (view != null) {
            view.setContentDescription(this.f26984f0.getQuantityString(R$plurals.exo_controls_rewind_by_amount_description, iY, Integer.valueOf(iY)));
        }
    }

    private void u0() {
        this.f26986g0.measure(0, 0);
        this.f26992j0.setWidth(Math.min(this.f26986g0.getMeasuredWidth(), getWidth() - (this.f26996l0 * 2)));
        this.f26992j0.setHeight(Math.min(getHeight() - (this.f26996l0 * 2), this.f26986g0.getMeasuredHeight()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0() {
        ImageView imageView;
        if (isVisible() && this.P && (imageView = this.f26993k) != null) {
            o2 o2Var = this.O;
            if (!this.f26982e0.A(imageView)) {
                l0(false, this.f26993k);
                return;
            }
            if (o2Var == null) {
                l0(false, this.f26993k);
                this.f26993k.setImageDrawable(this.B);
                this.f26993k.setContentDescription(this.F);
            } else {
                l0(true, this.f26993k);
                this.f26993k.setImageDrawable(o2Var.getShuffleModeEnabled() ? this.A : this.B);
                this.f26993k.setContentDescription(o2Var.getShuffleModeEnabled() ? this.E : this.F);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4 A[SYNTHETIC] */
    public void w0() {
        int i11;
        k3.d dVar;
        long jQ;
        long[] jArr;
        int length;
        o2 o2Var = this.O;
        if (o2Var == null) {
            return;
        }
        boolean z10 = true;
        this.R = this.Q && S(o2Var.getCurrentTimeline(), this.f27009s);
        long j11 = 0;
        this.f26980d0 = 0L;
        k3 currentTimeline = o2Var.getCurrentTimeline();
        if (currentTimeline.u()) {
            i11 = 0;
        } else {
            int iT = o2Var.t();
            boolean z11 = this.R;
            int i12 = z11 ? 0 : iT;
            int iT2 = z11 ? currentTimeline.t() - 1 : iT;
            long j12 = 0;
            i11 = 0;
            while (i12 <= iT2) {
                if (i12 == iT) {
                    this.f26980d0 = com.google.android.exoplayer2.util.p0.e1(j12);
                }
                currentTimeline.r(i12, this.f27009s);
                k3.d dVar2 = this.f27009s;
                if (dVar2.f25182n == C.TIME_UNSET) {
                    com.google.android.exoplayer2.util.a.g(this.R ^ z10);
                    break;
                }
                int i13 = dVar2.f25183o;
                while (true) {
                    dVar = this.f27009s;
                    if (i13 <= dVar.f25184p) {
                        currentTimeline.j(i13, this.f27007r);
                        int iF = this.f27007r.f();
                        for (int iR = this.f27007r.r(); iR < iF; iR++) {
                            long jI = this.f27007r.i(iR);
                            if (jI == Long.MIN_VALUE) {
                                long j13 = this.f27007r.f25157d;
                                if (j13 != C.TIME_UNSET) {
                                    jI = j13;
                                    jQ = jI + this.f27007r.q();
                                    if (jQ >= 0) {
                                        jArr = this.W;
                                        if (i11 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.W = Arrays.copyOf(jArr, length);
                                            this.f26974a0 = Arrays.copyOf(this.f26974a0, length);
                                        }
                                        this.W[i11] = com.google.android.exoplayer2.util.p0.e1(j12 + jQ);
                                        this.f26974a0[i11] = this.f27007r.s(iR);
                                        i11++;
                                    }
                                }
                            } else {
                                jQ = jI + this.f27007r.q();
                                if (jQ >= 0) {
                                    jArr = this.W;
                                    if (i11 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.W = Arrays.copyOf(jArr, length);
                                        this.f26974a0 = Arrays.copyOf(this.f26974a0, length);
                                    }
                                    this.W[i11] = com.google.android.exoplayer2.util.p0.e1(j12 + jQ);
                                    this.f26974a0[i11] = this.f27007r.s(iR);
                                    i11++;
                                }
                            }
                        }
                        i13++;
                    }
                }
                j12 += dVar.f25182n;
                i12++;
                z10 = true;
            }
            j11 = j12;
        }
        long jE1 = com.google.android.exoplayer2.util.p0.e1(j11);
        TextView textView = this.f26997m;
        if (textView != null) {
            textView.setText(com.google.android.exoplayer2.util.p0.h0(this.f27003p, this.f27005q, jE1));
        }
        n0 n0Var = this.f27001o;
        if (n0Var != null) {
            n0Var.setDuration(jE1);
            int length2 = this.f26976b0.length;
            int i14 = i11 + length2;
            long[] jArr2 = this.W;
            if (i14 > jArr2.length) {
                this.W = Arrays.copyOf(jArr2, i14);
                this.f26974a0 = Arrays.copyOf(this.f26974a0, i14);
            }
            System.arraycopy(this.f26976b0, 0, this.W, i11, length2);
            System.arraycopy(this.f26978c0, 0, this.f26974a0, i11, length2);
            this.f27001o.setAdGroupTimesMs(this.W, this.f26974a0, i14);
        }
        r0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0() {
        Z();
        l0(this.f26998m0.getItemCount() > 0, this.f27004p0);
    }

    public void addVisibilityListener(m mVar) {
        com.google.android.exoplayer2.util.a.e(mVar);
        this.f26975b.add(mVar);
    }

    void c0() {
        Iterator it = this.f26975b.iterator();
        while (it.hasNext()) {
            ((m) it.next()).l(getVisibility());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        o2 o2Var = this.O;
        if (o2Var == null || !b0(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (o2Var.getPlaybackState() == 4) {
                return true;
            }
            o2Var.v();
            return true;
        }
        if (keyCode == 89) {
            o2Var.w();
            return true;
        }
        if (keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (keyCode == 79 || keyCode == 85) {
            V(o2Var);
            return true;
        }
        if (keyCode == 87) {
            o2Var.m();
            return true;
        }
        if (keyCode == 88) {
            o2Var.f();
            return true;
        }
        if (keyCode == 126) {
            U(o2Var);
            return true;
        }
        if (keyCode != 127) {
            return true;
        }
        T(o2Var);
        return true;
    }

    void g0() {
        View view = this.f26981e;
        if (view != null) {
            view.requestFocus();
        }
    }

    @Nullable
    public o2 getPlayer() {
        return this.O;
    }

    public int getRepeatToggleModes() {
        return this.V;
    }

    public boolean getShowShuffleButton() {
        return this.f26982e0.A(this.f26993k);
    }

    public boolean getShowSubtitleButton() {
        return this.f26982e0.A(this.f27004p0);
    }

    public int getShowTimeoutMs() {
        return this.T;
    }

    public boolean getShowVrButton() {
        return this.f26982e0.A(this.f26995l);
    }

    public void hide() {
        this.f26982e0.C();
    }

    public void hideImmediately() {
        this.f26982e0.F();
    }

    public boolean isAnimationEnabled() {
        return this.f26982e0.I();
    }

    public boolean isFullyVisible() {
        return this.f26982e0.J();
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    void k0() {
        p0();
        o0();
        s0();
        v0();
        x0();
        q0();
        w0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f26982e0.P();
        this.P = true;
        if (isFullyVisible()) {
            this.f26982e0.X();
        }
        k0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f26982e0.Q();
        this.P = false;
        removeCallbacks(this.f27011t);
        this.f26982e0.W();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        this.f26982e0.R(z10, i11, i12, i13, i14);
    }

    public void removeVisibilityListener(m mVar) {
        this.f26975b.remove(mVar);
    }

    public void setAnimationEnabled(boolean z10) {
        this.f26982e0.Y(z10);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.f26976b0 = new long[0];
            this.f26978c0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) com.google.android.exoplayer2.util.a.e(zArr);
            com.google.android.exoplayer2.util.a.a(jArr.length == zArr2.length);
            this.f26976b0 = jArr;
            this.f26978c0 = zArr2;
        }
        w0();
    }

    public void setOnFullScreenModeChangedListener(@Nullable d dVar) {
        n0(this.f27006q0, dVar != null);
        n0(this.f27008r0, dVar != null);
    }

    public void setPlayer(@Nullable o2 o2Var) {
        com.google.android.exoplayer2.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(o2Var == null || o2Var.k() == Looper.getMainLooper());
        o2 o2Var2 = this.O;
        if (o2Var2 == o2Var) {
            return;
        }
        if (o2Var2 != null) {
            o2Var2.A(this.f26973a);
        }
        this.O = o2Var;
        if (o2Var != null) {
            o2Var.C(this.f26973a);
        }
        k0();
    }

    public void setProgressUpdateListener(@Nullable f fVar) {
    }

    public void setRepeatToggleModes(int i11) {
        this.V = i11;
        o2 o2Var = this.O;
        if (o2Var != null) {
            int repeatMode = o2Var.getRepeatMode();
            if (i11 == 0 && repeatMode != 0) {
                this.O.setRepeatMode(0);
            } else if (i11 == 1 && repeatMode == 2) {
                this.O.setRepeatMode(1);
            } else if (i11 == 2 && repeatMode == 1) {
                this.O.setRepeatMode(2);
            }
        }
        this.f26982e0.Z(this.f26991j, i11 != 0);
        s0();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.f26982e0.Z(this.f26983f, z10);
        o0();
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        this.Q = z10;
        w0();
    }

    public void setShowNextButton(boolean z10) {
        this.f26982e0.Z(this.f26979d, z10);
        o0();
    }

    public void setShowPreviousButton(boolean z10) {
        this.f26982e0.Z(this.f26977c, z10);
        o0();
    }

    public void setShowRewindButton(boolean z10) {
        this.f26982e0.Z(this.f26985g, z10);
        o0();
    }

    public void setShowShuffleButton(boolean z10) {
        this.f26982e0.Z(this.f26993k, z10);
        v0();
    }

    public void setShowSubtitleButton(boolean z10) {
        this.f26982e0.Z(this.f27004p0, z10);
    }

    public void setShowTimeoutMs(int i11) {
        this.T = i11;
        if (isFullyVisible()) {
            this.f26982e0.X();
        }
    }

    public void setShowVrButton(boolean z10) {
        this.f26982e0.Z(this.f26995l, z10);
    }

    public void setTimeBarMinUpdateInterval(int i11) {
        this.U = com.google.android.exoplayer2.util.p0.q(i11, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f26995l;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            l0(onClickListener != null, this.f26995l);
        }
    }

    public void show() {
        this.f26982e0.c0();
    }
}
