package androidx.media3.ui;

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
import androidx.media3.common.PlaybackException;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class PlayerControlView extends FrameLayout {
    private static final float[] A0;
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private final View A;
    private final View B;
    private final TextView C;
    private final TextView D;
    private final y0 E;
    private final StringBuilder F;
    private final Formatter G;
    private final androidx.media3.common.e0.b H;
    private final androidx.media3.common.e0.c I;
    private final Runnable J;
    private final Drawable K;
    private final Drawable L;
    private final Drawable M;
    private final Drawable N;
    private final Drawable O;
    private final String P;
    private final String Q;
    private final String R;
    private final Drawable S;
    private final Drawable T;
    private final float U;
    private final float V;
    private final String W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f13493a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final String f13494a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f13495b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private final Drawable f13496b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f13497c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private final Drawable f13498c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CopyOnWriteArrayList f13499d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private final String f13500d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RecyclerView f13501e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private final String f13502e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f13503f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private final Drawable f13504f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e f13505g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private final Drawable f13506g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j f13507h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private final String f13508h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b f13509i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private final String f13510i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final z0 f13511j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private androidx.media3.common.a0 f13512j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final PopupWindow f13513k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private d f13514k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f13515l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private boolean f13516l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final ImageView f13517m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private boolean f13518m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final ImageView f13519n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private boolean f13520n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ImageView f13521o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private boolean f13522o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final View f13523p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private boolean f13524p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final View f13525q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private boolean f13526q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final TextView f13527r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private int f13528r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final TextView f13529s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int f13530s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final ImageView f13531t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private int f13532t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final ImageView f13533u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private long[] f13534u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final ImageView f13535v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private boolean[] f13536v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final ImageView f13537w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private long[] f13538w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final ImageView f13539x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private boolean[] f13540x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final ImageView f13541y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private long f13542y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final View f13543z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private boolean f13544z0;

    /* JADX INFO: Access modifiers changed from: private */
    final class b extends l {
        private b() {
            super();
        }

        private boolean o(androidx.media3.common.h0 h0Var) {
            for (int i11 = 0; i11 < this.f13565a.size(); i11++) {
                if (h0Var.D.containsKey(((k) this.f13565a.get(i11)).f13562a.a())) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(View view) {
            if (PlayerControlView.this.f13512j0 == null || !PlayerControlView.this.f13512j0.h(29)) {
                return;
            }
            ((androidx.media3.common.a0) androidx.media3.common.util.a1.i(PlayerControlView.this.f13512j0)).V(PlayerControlView.this.f13512j0.l().a().G(1).P(1, false).F());
            PlayerControlView.this.f13503f.j(1, PlayerControlView.this.getResources().getString(R$string.exo_track_selection_auto));
            PlayerControlView.this.f13513k.dismiss();
        }

        @Override // androidx.media3.ui.PlayerControlView.l
        public void k(i iVar) {
            iVar.f13559a.setText(R$string.exo_track_selection_auto);
            iVar.f13560b.setVisibility(o(((androidx.media3.common.a0) androidx.media3.common.util.a.e(PlayerControlView.this.f13512j0)).l()) ? 4 : 0);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f13700a.q(view);
                }
            });
        }

        @Override // androidx.media3.ui.PlayerControlView.l
        public void m(String str) {
            PlayerControlView.this.f13503f.j(1, str);
        }

        public void p(List list) {
            this.f13565a = list;
            androidx.media3.common.h0 h0VarL = ((androidx.media3.common.a0) androidx.media3.common.util.a.e(PlayerControlView.this.f13512j0)).l();
            if (list.isEmpty()) {
                PlayerControlView.this.f13503f.j(1, PlayerControlView.this.getResources().getString(R$string.exo_track_selection_none));
                return;
            }
            if (!o(h0VarL)) {
                PlayerControlView.this.f13503f.j(1, PlayerControlView.this.getResources().getString(R$string.exo_track_selection_auto));
                return;
            }
            for (int i11 = 0; i11 < list.size(); i11++) {
                k kVar = (k) list.get(i11);
                if (kVar.a()) {
                    PlayerControlView.this.f13503f.j(1, kVar.f13564c);
                    return;
                }
            }
        }
    }

    private final class c implements androidx.media3.common.a0.d, y0.a, View.OnClickListener, PopupWindow.OnDismissListener {
        private c() {
        }

        @Override // androidx.media3.ui.y0.a
        public void l(y0 y0Var, long j11) {
            PlayerControlView.this.f13526q0 = true;
            if (PlayerControlView.this.D != null) {
                PlayerControlView.this.D.setText(androidx.media3.common.util.a1.o0(PlayerControlView.this.F, PlayerControlView.this.G, j11));
            }
            PlayerControlView.this.f13493a.W();
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onAudioSessionIdChanged(int i11) {
            androidx.media3.common.b0.b(this, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onAvailableCommandsChanged(androidx.media3.common.a0.b bVar) {
            androidx.media3.common.b0.c(this, bVar);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            androidx.media3.common.a0 a0Var = PlayerControlView.this.f13512j0;
            if (a0Var == null) {
                return;
            }
            PlayerControlView.this.f13493a.X();
            if (PlayerControlView.this.f13519n == view) {
                if (a0Var.h(9)) {
                    a0Var.m();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f13517m == view) {
                if (a0Var.h(7)) {
                    a0Var.f();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f13523p == view) {
                if (a0Var.getPlaybackState() == 4 || !a0Var.h(12)) {
                    return;
                }
                a0Var.v();
                return;
            }
            if (PlayerControlView.this.f13525q == view) {
                if (a0Var.h(11)) {
                    a0Var.w();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f13521o == view) {
                androidx.media3.common.util.a1.x0(a0Var, PlayerControlView.this.f13522o0);
                return;
            }
            if (PlayerControlView.this.f13531t == view) {
                if (a0Var.h(15)) {
                    a0Var.setRepeatMode(androidx.media3.common.util.k0.a(a0Var.getRepeatMode(), PlayerControlView.this.f13532t0));
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f13533u == view) {
                if (a0Var.h(14)) {
                    a0Var.setShuffleModeEnabled(!a0Var.getShuffleModeEnabled());
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f13543z == view) {
                PlayerControlView.this.f13493a.W();
                PlayerControlView playerControlView = PlayerControlView.this;
                playerControlView.T(playerControlView.f13503f, PlayerControlView.this.f13543z);
                return;
            }
            if (PlayerControlView.this.A == view) {
                PlayerControlView.this.f13493a.W();
                PlayerControlView playerControlView2 = PlayerControlView.this;
                playerControlView2.T(playerControlView2.f13505g, PlayerControlView.this.A);
            } else if (PlayerControlView.this.B == view) {
                PlayerControlView.this.f13493a.W();
                PlayerControlView playerControlView3 = PlayerControlView.this;
                playerControlView3.T(playerControlView3.f13509i, PlayerControlView.this.B);
            } else if (PlayerControlView.this.f13537w == view) {
                PlayerControlView.this.f13493a.W();
                PlayerControlView playerControlView4 = PlayerControlView.this;
                playerControlView4.T(playerControlView4.f13507h, PlayerControlView.this.f13537w);
            }
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onCues(List list) {
            androidx.media3.common.b0.d(this, list);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onCues(u1.b bVar) {
            androidx.media3.common.b0.e(this, bVar);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onDeviceInfoChanged(androidx.media3.common.m mVar) {
            androidx.media3.common.b0.f(this, mVar);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onDeviceVolumeChanged(int i11, boolean z10) {
            androidx.media3.common.b0.g(this, i11, z10);
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (PlayerControlView.this.f13544z0) {
                PlayerControlView.this.f13493a.X();
            }
        }

        @Override // androidx.media3.common.a0.d
        public void onEvents(androidx.media3.common.a0 a0Var, androidx.media3.common.a0.c cVar) {
            if (cVar.b(4, 5, 13)) {
                PlayerControlView.this.l0();
            }
            if (cVar.b(4, 5, 7, 13)) {
                PlayerControlView.this.n0();
            }
            if (cVar.b(8, 13)) {
                PlayerControlView.this.o0();
            }
            if (cVar.b(9, 13)) {
                PlayerControlView.this.s0();
            }
            if (cVar.b(8, 9, 11, 0, 16, 17, 13)) {
                PlayerControlView.this.k0();
            }
            if (cVar.b(11, 0, 13)) {
                PlayerControlView.this.t0();
            }
            if (cVar.b(12, 13)) {
                PlayerControlView.this.m0();
            }
            if (cVar.b(2, 13)) {
                PlayerControlView.this.u0();
            }
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onIsLoadingChanged(boolean z10) {
            androidx.media3.common.b0.i(this, z10);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onIsPlayingChanged(boolean z10) {
            androidx.media3.common.b0.j(this, z10);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onLoadingChanged(boolean z10) {
            androidx.media3.common.b0.k(this, z10);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onMediaItemTransition(androidx.media3.common.t tVar, int i11) {
            androidx.media3.common.b0.m(this, tVar, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onMediaMetadataChanged(androidx.media3.common.v vVar) {
            androidx.media3.common.b0.n(this, vVar);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onMetadata(androidx.media3.common.x xVar) {
            androidx.media3.common.b0.o(this, xVar);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onPlayWhenReadyChanged(boolean z10, int i11) {
            androidx.media3.common.b0.p(this, z10, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onPlaybackParametersChanged(androidx.media3.common.z zVar) {
            androidx.media3.common.b0.q(this, zVar);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onPlaybackStateChanged(int i11) {
            androidx.media3.common.b0.r(this, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i11) {
            androidx.media3.common.b0.s(this, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onPlayerError(PlaybackException playbackException) {
            androidx.media3.common.b0.t(this, playbackException);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
            androidx.media3.common.b0.u(this, playbackException);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onPlayerStateChanged(boolean z10, int i11) {
            androidx.media3.common.b0.v(this, z10, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onPositionDiscontinuity(int i11) {
            androidx.media3.common.b0.x(this, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onPositionDiscontinuity(androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, int i11) {
            androidx.media3.common.b0.y(this, eVar, eVar2, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onRenderedFirstFrame() {
            androidx.media3.common.b0.z(this);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onRepeatModeChanged(int i11) {
            androidx.media3.common.b0.A(this, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z10) {
            androidx.media3.common.b0.D(this, z10);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z10) {
            androidx.media3.common.b0.E(this, z10);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onSurfaceSizeChanged(int i11, int i12) {
            androidx.media3.common.b0.F(this, i11, i12);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onTimelineChanged(androidx.media3.common.e0 e0Var, int i11) {
            androidx.media3.common.b0.G(this, e0Var, i11);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onTrackSelectionParametersChanged(androidx.media3.common.h0 h0Var) {
            androidx.media3.common.b0.H(this, h0Var);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onTracksChanged(androidx.media3.common.i0 i0Var) {
            androidx.media3.common.b0.I(this, i0Var);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onVideoSizeChanged(androidx.media3.common.m0 m0Var) {
            androidx.media3.common.b0.J(this, m0Var);
        }

        @Override // androidx.media3.common.a0.d
        public /* synthetic */ void onVolumeChanged(float f11) {
            androidx.media3.common.b0.K(this, f11);
        }

        @Override // androidx.media3.ui.y0.a
        public void q(y0 y0Var, long j11) {
            if (PlayerControlView.this.D != null) {
                PlayerControlView.this.D.setText(androidx.media3.common.util.a1.o0(PlayerControlView.this.F, PlayerControlView.this.G, j11));
            }
        }

        @Override // androidx.media3.ui.y0.a
        public void r(y0 y0Var, long j11, boolean z10) {
            PlayerControlView.this.f13526q0 = false;
            if (!z10 && PlayerControlView.this.f13512j0 != null) {
                PlayerControlView playerControlView = PlayerControlView.this;
                playerControlView.e0(playerControlView.f13512j0, j11);
            }
            PlayerControlView.this.f13493a.X();
        }
    }

    public interface d {
        void q(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class e extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f13547a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float[] f13548b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f13549c;

        public e(String[] strArr, float[] fArr) {
            this.f13547a = strArr;
            this.f13548b = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(int i11, View view) {
            if (i11 != this.f13549c) {
                PlayerControlView.this.setPlaybackSpeed(this.f13548b[i11]);
            }
            PlayerControlView.this.f13513k.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f13547a.length;
        }

        public String h() {
            return this.f13547a[this.f13549c];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(i iVar, final int i11) {
            String[] strArr = this.f13547a;
            if (i11 < strArr.length) {
                iVar.f13559a.setText(strArr[i11]);
            }
            if (i11 == this.f13549c) {
                iVar.itemView.setSelected(true);
                iVar.f13560b.setVisibility(0);
            } else {
                iVar.itemView.setSelected(false);
                iVar.f13560b.setVisibility(4);
            }
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f13701a.i(i11, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public i onCreateViewHolder(ViewGroup viewGroup, int i11) {
            return new i(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        public void l(float f11) {
            int i11 = 0;
            float f12 = Float.MAX_VALUE;
            int i12 = 0;
            while (true) {
                float[] fArr = this.f13548b;
                if (i11 >= fArr.length) {
                    this.f13549c = i12;
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
        private final TextView f13551a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextView f13552b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ImageView f13553c;

        public g(View view) {
            super(view);
            if (androidx.media3.common.util.a1.f10350a < 26) {
                view.setFocusable(true);
            }
            this.f13551a = (TextView) view.findViewById(R$id.exo_main_text);
            this.f13552b = (TextView) view.findViewById(R$id.exo_sub_text);
            this.f13553c = (ImageView) view.findViewById(R$id.exo_icon);
            view.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f13703a.j(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(View view) {
            PlayerControlView.this.c0(getBindingAdapterPosition());
        }
    }

    private class h extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f13555a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String[] f13556b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Drawable[] f13557c;

        public h(String[] strArr, Drawable[] drawableArr) {
            this.f13555a = strArr;
            this.f13556b = new String[strArr.length];
            this.f13557c = drawableArr;
        }

        private boolean k(int i11) {
            if (PlayerControlView.this.f13512j0 == null) {
                return false;
            }
            if (i11 == 0) {
                return PlayerControlView.this.f13512j0.h(13);
            }
            if (i11 != 1) {
                return true;
            }
            return PlayerControlView.this.f13512j0.h(30) && PlayerControlView.this.f13512j0.h(29);
        }

        public boolean g() {
            return k(1) || k(0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f13555a.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i11) {
            return i11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(g gVar, int i11) {
            if (k(i11)) {
                gVar.itemView.setLayoutParams(new RecyclerView.n(-1, -2));
            } else {
                gVar.itemView.setLayoutParams(new RecyclerView.n(0, 0));
            }
            gVar.f13551a.setText(this.f13555a[i11]);
            if (this.f13556b[i11] == null) {
                gVar.f13552b.setVisibility(8);
            } else {
                gVar.f13552b.setText(this.f13556b[i11]);
            }
            if (this.f13557c[i11] == null) {
                gVar.f13553c.setVisibility(8);
            } else {
                gVar.f13553c.setImageDrawable(this.f13557c[i11]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public g onCreateViewHolder(ViewGroup viewGroup, int i11) {
            return PlayerControlView.this.new g(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R$layout.exo_styled_settings_list_item, viewGroup, false));
        }

        public void j(int i11, String str) {
            this.f13556b[i11] = str;
        }
    }

    private static class i extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f13559a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final View f13560b;

        public i(View view) {
            super(view);
            if (androidx.media3.common.util.a1.f10350a < 26) {
                view.setFocusable(true);
            }
            this.f13559a = (TextView) view.findViewById(R$id.exo_text);
            this.f13560b = view.findViewById(R$id.exo_check);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class j extends l {
        private j() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(View view) {
            if (PlayerControlView.this.f13512j0 == null || !PlayerControlView.this.f13512j0.h(29)) {
                return;
            }
            PlayerControlView.this.f13512j0.V(PlayerControlView.this.f13512j0.l().a().G(3).K(-3).M(null).O(0).F());
            PlayerControlView.this.f13513k.dismiss();
        }

        @Override // androidx.media3.ui.PlayerControlView.l, androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(i iVar, int i11) {
            super.onBindViewHolder(iVar, i11);
            if (i11 > 0) {
                iVar.f13560b.setVisibility(((k) this.f13565a.get(i11 + (-1))).a() ? 0 : 4);
            }
        }

        @Override // androidx.media3.ui.PlayerControlView.l
        public void k(i iVar) {
            boolean z10;
            iVar.f13559a.setText(R$string.exo_track_selection_none);
            int i11 = 0;
            while (true) {
                if (i11 >= this.f13565a.size()) {
                    z10 = true;
                    break;
                } else {
                    if (((k) this.f13565a.get(i11)).a()) {
                        z10 = false;
                        break;
                    }
                    i11++;
                }
            }
            iVar.f13560b.setVisibility(z10 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f13704a.p(view);
                }
            });
        }

        @Override // androidx.media3.ui.PlayerControlView.l
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
            if (PlayerControlView.this.f13537w != null) {
                ImageView imageView = PlayerControlView.this.f13537w;
                PlayerControlView playerControlView = PlayerControlView.this;
                imageView.setImageDrawable(z10 ? playerControlView.f13496b0 : playerControlView.f13498c0);
                PlayerControlView.this.f13537w.setContentDescription(z10 ? PlayerControlView.this.f13500d0 : PlayerControlView.this.f13502e0);
            }
            this.f13565a = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.media3.common.i0.a f13562a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13563b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f13564c;

        /* JADX WARN: Multi-variable type inference failed */
        public k(androidx.media3.common.i0 i0Var, int i11, int i12, String str) {
            this.f13562a = (androidx.media3.common.i0.a) i0Var.a().get(i11);
            this.f13563b = i12;
            this.f13564c = str;
        }

        public boolean a() {
            return this.f13562a.h(this.f13563b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    abstract class l extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected List f13565a = new ArrayList();

        protected l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(androidx.media3.common.a0 a0Var, androidx.media3.common.f0 f0Var, k kVar, View view) {
            if (a0Var.h(29)) {
                a0Var.V(a0Var.l().a().L(new androidx.media3.common.g0(f0Var, ImmutableList.of(Integer.valueOf(kVar.f13563b)))).P(kVar.f13562a.d(), false).F());
                m(kVar.f13564c);
                PlayerControlView.this.f13513k.dismiss();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.f13565a.isEmpty()) {
                return 0;
            }
            return this.f13565a.size() + 1;
        }

        protected void h() {
            this.f13565a = Collections.emptyList();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: j */
        public void onBindViewHolder(i iVar, int i11) {
            final androidx.media3.common.a0 a0Var = PlayerControlView.this.f13512j0;
            if (a0Var == null) {
                return;
            }
            if (i11 == 0) {
                k(iVar);
                return;
            }
            final k kVar = (k) this.f13565a.get(i11 - 1);
            final androidx.media3.common.f0 f0VarA = kVar.f13562a.a();
            boolean z10 = a0Var.l().D.get(f0VarA) != null && kVar.a();
            iVar.f13559a.setText(kVar.f13564c);
            iVar.f13560b.setVisibility(z10 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: androidx.media3.ui.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f13708a.i(a0Var, f0VarA, kVar, view);
                }
            });
        }

        protected abstract void k(i iVar);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public i onCreateViewHolder(ViewGroup viewGroup, int i11) {
            return new i(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        protected abstract void m(String str);
    }

    public interface m {
        void l(int i11);
    }

    static {
        androidx.media3.common.u.a("media3.ui");
        A0 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, attributeSet);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i11, @Nullable AttributeSet attributeSet2) throws Throwable {
        int i12;
        int i13;
        final PlayerControlView playerControlView;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        final PlayerControlView playerControlView2;
        ImageView imageView;
        boolean z18;
        super(context, attributeSet, i11);
        int i28 = R$layout.exo_player_control_view;
        int i29 = R$drawable.exo_styled_controls_play;
        int i30 = R$drawable.exo_styled_controls_pause;
        int i31 = R$drawable.exo_styled_controls_next;
        int resourceId = R$drawable.exo_styled_controls_simple_fastforward;
        int i32 = R$drawable.exo_styled_controls_previous;
        int i33 = R$drawable.exo_styled_controls_simple_rewind;
        int i34 = R$drawable.exo_styled_controls_fullscreen_exit;
        int i35 = R$drawable.exo_styled_controls_fullscreen_enter;
        int i36 = R$drawable.exo_styled_controls_repeat_off;
        int i37 = R$drawable.exo_styled_controls_repeat_one;
        int i38 = R$drawable.exo_styled_controls_repeat_all;
        int i39 = R$drawable.exo_styled_controls_shuffle_on;
        int i40 = R$drawable.exo_styled_controls_shuffle_off;
        int i41 = R$drawable.exo_styled_controls_subtitle_on;
        int i42 = R$drawable.exo_styled_controls_subtitle_off;
        int i43 = R$drawable.exo_styled_controls_vr;
        this.f13522o0 = true;
        this.f13528r0 = 5000;
        this.f13532t0 = 0;
        this.f13530s0 = 200;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.PlayerControlView, i11, 0);
            try {
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_controller_layout_id, i28);
                int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_play_icon, i29);
                int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_pause_icon, i30);
                int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_next_icon, i31);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_fastforward_icon, resourceId);
                int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_previous_icon, i32);
                int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_rewind_icon, i33);
                int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_fullscreen_exit_icon, i34);
                int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_fullscreen_enter_icon, i35);
                int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_repeat_off_icon, i36);
                int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_repeat_one_icon, i37);
                int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_repeat_all_icon, i38);
                int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_shuffle_on_icon, i39);
                int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_shuffle_off_icon, i40);
                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_subtitle_on_icon, i41);
                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_subtitle_off_icon, i42);
                int resourceId17 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_vr_icon, i43);
                playerControlView = this;
                try {
                    playerControlView.f13528r0 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_show_timeout, playerControlView.f13528r0);
                    playerControlView.f13532t0 = V(typedArrayObtainStyledAttributes, playerControlView.f13532t0);
                    boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_rewind_button, true);
                    boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_fastforward_button, true);
                    boolean z21 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_previous_button, true);
                    boolean z22 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_next_button, true);
                    boolean z23 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_shuffle_button, false);
                    boolean z24 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_subtitle_button, false);
                    boolean z25 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_vr_button, false);
                    playerControlView.setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_time_bar_min_update_interval, playerControlView.f13530s0));
                    boolean z26 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_animation_enabled, true);
                    typedArrayObtainStyledAttributes.recycle();
                    i27 = resourceId14;
                    i26 = resourceId2;
                    z17 = z26;
                    i14 = resourceId7;
                    i15 = resourceId8;
                    i16 = resourceId9;
                    i17 = resourceId10;
                    i18 = resourceId11;
                    i19 = resourceId12;
                    i20 = resourceId13;
                    i21 = resourceId16;
                    i12 = resourceId17;
                    z10 = z19;
                    z11 = z20;
                    z12 = z21;
                    z13 = z22;
                    z14 = z23;
                    z15 = z24;
                    z16 = z25;
                    i22 = resourceId3;
                    i23 = resourceId4;
                    i24 = resourceId6;
                    i25 = resourceId15;
                    i13 = resourceId5;
                } catch (Throwable th2) {
                    th = th2;
                    typedArrayObtainStyledAttributes.recycle();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            i12 = i43;
            i13 = i31;
            playerControlView = this;
            i14 = i33;
            i15 = i34;
            i16 = i35;
            i17 = i36;
            i18 = i37;
            i19 = i38;
            i20 = i39;
            i21 = i42;
            z10 = true;
            z11 = true;
            z12 = true;
            z13 = true;
            z14 = false;
            z15 = false;
            z16 = false;
            z17 = true;
            i22 = i29;
            i23 = i30;
            i24 = i32;
            i25 = i41;
            i26 = i28;
            i27 = i40;
        }
        LayoutInflater.from(context).inflate(i26, playerControlView);
        playerControlView.setDescendantFocusability(262144);
        c cVar = new c();
        playerControlView.f13497c = cVar;
        playerControlView.f13499d = new CopyOnWriteArrayList();
        playerControlView.H = new androidx.media3.common.e0.b();
        playerControlView.I = new androidx.media3.common.e0.c();
        StringBuilder sb2 = new StringBuilder();
        playerControlView.F = sb2;
        int i44 = i24;
        playerControlView.G = new Formatter(sb2, Locale.getDefault());
        playerControlView.f13534u0 = new long[0];
        playerControlView.f13536v0 = new boolean[0];
        playerControlView.f13538w0 = new long[0];
        playerControlView.f13540x0 = new boolean[0];
        playerControlView.J = new Runnable() { // from class: androidx.media3.ui.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f13697a.n0();
            }
        };
        playerControlView.C = (TextView) playerControlView.findViewById(R$id.exo_duration);
        playerControlView.D = (TextView) playerControlView.findViewById(R$id.exo_position);
        ImageView imageView2 = (ImageView) playerControlView.findViewById(R$id.exo_subtitle);
        playerControlView.f13537w = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(cVar);
        }
        ImageView imageView3 = (ImageView) playerControlView.findViewById(R$id.exo_fullscreen);
        playerControlView.f13539x = imageView3;
        X(imageView3, new View.OnClickListener() { // from class: androidx.media3.ui.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f13698a.a0(view);
            }
        });
        ImageView imageView4 = (ImageView) playerControlView.findViewById(R$id.exo_minimal_fullscreen);
        playerControlView.f13541y = imageView4;
        X(imageView4, new View.OnClickListener() { // from class: androidx.media3.ui.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f13698a.a0(view);
            }
        });
        View viewFindViewById = playerControlView.findViewById(R$id.exo_settings);
        playerControlView.f13543z = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(cVar);
        }
        View viewFindViewById2 = playerControlView.findViewById(R$id.exo_playback_speed);
        playerControlView.A = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(cVar);
        }
        View viewFindViewById3 = playerControlView.findViewById(R$id.exo_audio_track);
        playerControlView.B = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(cVar);
        }
        y0 y0Var = (y0) playerControlView.findViewById(R$id.exo_progress);
        View viewFindViewById4 = playerControlView.findViewById(R$id.exo_progress_placeholder);
        if (y0Var != null) {
            playerControlView.E = y0Var;
            playerControlView2 = playerControlView;
        } else if (viewFindViewById4 != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, R$style.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(R$id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById4.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById4);
            viewGroup.removeView(viewFindViewById4);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            playerControlView2 = this;
            playerControlView2.E = defaultTimeBar;
        } else {
            playerControlView2 = playerControlView;
            playerControlView2.E = null;
        }
        y0 y0Var2 = playerControlView2.E;
        if (y0Var2 != null) {
            y0Var2.addListener(cVar);
        }
        Resources resources = context.getResources();
        playerControlView2.f13495b = resources;
        ImageView imageView5 = (ImageView) playerControlView2.findViewById(R$id.exo_play_pause);
        playerControlView2.f13521o = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(cVar);
        }
        ImageView imageView6 = (ImageView) playerControlView2.findViewById(R$id.exo_prev);
        playerControlView2.f13517m = imageView6;
        if (imageView6 != null) {
            imageView6.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, i44));
            imageView6.setOnClickListener(cVar);
        }
        ImageView imageView7 = (ImageView) playerControlView2.findViewById(R$id.exo_next);
        playerControlView2.f13519n = imageView7;
        if (imageView7 != null) {
            imageView7.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, i13));
            imageView7.setOnClickListener(cVar);
        }
        Typeface typefaceG = y0.h.g(context, R$font.roboto_medium_numbers);
        ImageView imageView8 = (ImageView) playerControlView2.findViewById(R$id.exo_rew);
        TextView textView = (TextView) playerControlView2.findViewById(R$id.exo_rew_with_amount);
        if (imageView8 != null) {
            imageView = imageView6;
            imageView8.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, i14));
            playerControlView2.f13525q = imageView8;
            playerControlView2.f13529s = null;
        } else {
            imageView = imageView6;
            if (textView != null) {
                textView.setTypeface(typefaceG);
                playerControlView2.f13529s = textView;
                playerControlView2.f13525q = textView;
            } else {
                playerControlView2.f13529s = null;
                playerControlView2.f13525q = null;
            }
        }
        View view = playerControlView2.f13525q;
        if (view != null) {
            view.setOnClickListener(cVar);
        }
        ImageView imageView9 = (ImageView) playerControlView2.findViewById(R$id.exo_ffwd);
        TextView textView2 = (TextView) playerControlView2.findViewById(R$id.exo_ffwd_with_amount);
        if (imageView9 != null) {
            imageView9.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, resourceId));
            playerControlView2.f13523p = imageView9;
            playerControlView2.f13527r = null;
        } else if (textView2 != null) {
            textView2.setTypeface(typefaceG);
            playerControlView2.f13527r = textView2;
            playerControlView2.f13523p = textView2;
        } else {
            playerControlView2.f13527r = null;
            playerControlView2.f13523p = null;
        }
        View view2 = playerControlView2.f13523p;
        if (view2 != null) {
            view2.setOnClickListener(cVar);
        }
        ImageView imageView10 = (ImageView) playerControlView2.findViewById(R$id.exo_repeat_toggle);
        playerControlView2.f13531t = imageView10;
        if (imageView10 != null) {
            imageView10.setOnClickListener(cVar);
        }
        ImageView imageView11 = (ImageView) playerControlView2.findViewById(R$id.exo_shuffle);
        playerControlView2.f13533u = imageView11;
        if (imageView11 != null) {
            imageView11.setOnClickListener(cVar);
        }
        playerControlView2.U = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        playerControlView2.V = resources.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        ImageView imageView12 = (ImageView) playerControlView2.findViewById(R$id.exo_vr);
        playerControlView2.f13535v = imageView12;
        if (imageView12 != null) {
            imageView12.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, i12));
            playerControlView2.g0(false, imageView12);
        }
        e0 e0Var = new e0(playerControlView2);
        playerControlView2.f13493a = e0Var;
        e0Var.Y(z17);
        h hVar = playerControlView2.new h(new String[]{resources.getString(R$string.exo_controls_playback_speed), resources.getString(R$string.exo_track_selection_title_audio)}, new Drawable[]{androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_styled_controls_speed), androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_styled_controls_audiotrack)});
        playerControlView2.f13503f = hVar;
        playerControlView2.f13515l = resources.getDimensionPixelSize(R$dimen.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R$layout.exo_styled_settings_list, (ViewGroup) null);
        playerControlView2.f13501e = recyclerView;
        recyclerView.setAdapter(hVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) recyclerView, -2, -2, true);
        playerControlView2.f13513k = popupWindow;
        if (androidx.media3.common.util.a1.f10350a < 23) {
            z18 = false;
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            z18 = false;
        }
        popupWindow.setOnDismissListener(cVar);
        playerControlView2.f13544z0 = true;
        playerControlView2.f13511j = new androidx.media3.ui.f(getResources());
        playerControlView2.f13496b0 = androidx.media3.common.util.a1.a0(context, resources, i25);
        playerControlView2.f13498c0 = androidx.media3.common.util.a1.a0(context, resources, i21);
        playerControlView2.f13500d0 = resources.getString(R$string.exo_controls_cc_enabled_description);
        playerControlView2.f13502e0 = resources.getString(R$string.exo_controls_cc_disabled_description);
        playerControlView2.f13507h = new j();
        playerControlView2.f13509i = new b();
        playerControlView2.f13505g = playerControlView2.new e(resources.getStringArray(R$array.exo_controls_playback_speeds), A0);
        playerControlView2.K = androidx.media3.common.util.a1.a0(context, resources, i22);
        playerControlView2.L = androidx.media3.common.util.a1.a0(context, resources, i23);
        playerControlView2.f13504f0 = androidx.media3.common.util.a1.a0(context, resources, i15);
        playerControlView2.f13506g0 = androidx.media3.common.util.a1.a0(context, resources, i16);
        playerControlView2.M = androidx.media3.common.util.a1.a0(context, resources, i17);
        playerControlView2.N = androidx.media3.common.util.a1.a0(context, resources, i18);
        playerControlView2.O = androidx.media3.common.util.a1.a0(context, resources, i19);
        playerControlView2.S = androidx.media3.common.util.a1.a0(context, resources, i20);
        playerControlView2.T = androidx.media3.common.util.a1.a0(context, resources, i27);
        playerControlView2.f13508h0 = resources.getString(R$string.exo_controls_fullscreen_exit_description);
        playerControlView2.f13510i0 = resources.getString(R$string.exo_controls_fullscreen_enter_description);
        playerControlView2.P = resources.getString(R$string.exo_controls_repeat_off_description);
        playerControlView2.Q = resources.getString(R$string.exo_controls_repeat_one_description);
        playerControlView2.R = resources.getString(R$string.exo_controls_repeat_all_description);
        playerControlView2.W = resources.getString(R$string.exo_controls_shuffle_on_description);
        playerControlView2.f13494a0 = resources.getString(R$string.exo_controls_shuffle_off_description);
        e0Var.Z((ViewGroup) playerControlView2.findViewById(R$id.exo_bottom_bar), true);
        e0Var.Z(playerControlView2.f13523p, z11);
        e0Var.Z(playerControlView2.f13525q, z10);
        e0Var.Z(imageView, z12);
        e0Var.Z(imageView7, z13);
        e0Var.Z(imageView11, z14);
        e0Var.Z(imageView2, z15);
        e0Var.Z(imageView12, z16);
        e0Var.Z(imageView10, playerControlView2.f13532t0 != 0 ? true : z18);
        playerControlView2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.media3.ui.l
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view3, int i45, int i46, int i47, int i48, int i49, int i50, int i51, int i52) {
                this.f13699a.b0(view3, i45, i46, i47, i48, i49, i50, i51, i52);
            }
        });
    }

    private static boolean S(androidx.media3.common.a0 a0Var, androidx.media3.common.e0.c cVar) {
        androidx.media3.common.e0 currentTimeline;
        int iP;
        if (!a0Var.h(17) || (iP = (currentTimeline = a0Var.getCurrentTimeline()).p()) <= 1 || iP > 100) {
            return false;
        }
        for (int i11 = 0; i11 < iP; i11++) {
            if (currentTimeline.n(i11, cVar).f9963m == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(RecyclerView.Adapter adapter, View view) {
        this.f13501e.setAdapter(adapter);
        r0();
        this.f13544z0 = false;
        this.f13513k.dismiss();
        this.f13544z0 = true;
        this.f13513k.showAsDropDown(view, (getWidth() - this.f13513k.getWidth()) - this.f13515l, (-this.f13513k.getHeight()) - this.f13515l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableList U(androidx.media3.common.i0 i0Var, int i11) {
        ImmutableList.a aVar = new ImmutableList.a();
        ImmutableList immutableListA = i0Var.a();
        for (int i12 = 0; i12 < immutableListA.size(); i12++) {
            androidx.media3.common.i0.a aVar2 = (androidx.media3.common.i0.a) immutableListA.get(i12);
            if (aVar2.d() == i11) {
                for (int i13 = 0; i13 < aVar2.f10091a; i13++) {
                    if (aVar2.i(i13)) {
                        androidx.media3.common.r rVarB = aVar2.b(i13);
                        if ((rVarB.f10151e & 2) == 0) {
                            aVar.a(new k(i0Var, i12, i13, this.f13511j.a(rVarB)));
                        }
                    }
                }
            }
        }
        return aVar.e();
    }

    private static int V(TypedArray typedArray, int i11) {
        return typedArray.getInt(R$styleable.PlayerControlView_repeat_toggle_modes, i11);
    }

    private void W() {
        this.f13507h.h();
        this.f13509i.h();
        androidx.media3.common.a0 a0Var = this.f13512j0;
        if (a0Var != null && a0Var.h(30) && this.f13512j0.h(29)) {
            androidx.media3.common.i0 currentTracks = this.f13512j0.getCurrentTracks();
            this.f13509i.p(U(currentTracks, 1));
            if (this.f13493a.A(this.f13537w)) {
                this.f13507h.o(U(currentTracks, 3));
            } else {
                this.f13507h.o(ImmutableList.of());
            }
        }
    }

    private static void X(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    private static boolean Y(int i11) {
        return i11 == 90 || i11 == 89 || i11 == 85 || i11 == 79 || i11 == 126 || i11 == 127 || i11 == 87 || i11 == 88;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(View view) {
        updateIsFullscreen(!this.f13516l0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        int i19 = i14 - i12;
        int i20 = i18 - i16;
        if (!(i13 - i11 == i17 - i15 && i19 == i20) && this.f13513k.isShowing()) {
            r0();
            this.f13513k.update(view, (getWidth() - this.f13513k.getWidth()) - this.f13515l, (-this.f13513k.getHeight()) - this.f13515l, -1, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0(int i11) {
        if (i11 == 0) {
            T(this.f13505g, (View) androidx.media3.common.util.a.e(this.f13543z));
        } else if (i11 == 1) {
            T(this.f13509i, (View) androidx.media3.common.util.a.e(this.f13543z));
        } else {
            this.f13513k.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(androidx.media3.common.a0 a0Var, long j11) {
        if (this.f13524p0) {
            if (a0Var.h(17) && a0Var.h(10)) {
                androidx.media3.common.e0 currentTimeline = a0Var.getCurrentTimeline();
                int iP = currentTimeline.p();
                int i11 = 0;
                while (true) {
                    long jD = currentTimeline.n(i11, this.I).d();
                    if (j11 < jD) {
                        break;
                    }
                    if (i11 == iP - 1) {
                        j11 = jD;
                        break;
                    } else {
                        j11 -= jD;
                        i11++;
                    }
                }
                a0Var.seekTo(i11, j11);
            }
        } else if (a0Var.h(5)) {
            a0Var.seekTo(j11);
        }
        n0();
    }

    private void g0(boolean z10, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z10);
        view.setAlpha(z10 ? this.U : this.V);
    }

    private void h0() {
        androidx.media3.common.a0 a0Var = this.f13512j0;
        int iR = (int) ((a0Var != null ? a0Var.r() : MBInterstitialActivity.WEB_LOAD_TIME) / 1000);
        TextView textView = this.f13527r;
        if (textView != null) {
            textView.setText(String.valueOf(iR));
        }
        View view = this.f13523p;
        if (view != null) {
            view.setContentDescription(this.f13495b.getQuantityString(R$plurals.exo_controls_fastforward_by_amount_description, iR, Integer.valueOf(iR)));
        }
    }

    private void i0(ImageView imageView, boolean z10) {
        if (imageView == null) {
            return;
        }
        if (z10) {
            imageView.setImageDrawable(this.f13504f0);
            imageView.setContentDescription(this.f13508h0);
        } else {
            imageView.setImageDrawable(this.f13506g0);
            imageView.setContentDescription(this.f13510i0);
        }
    }

    private static void j0(View view, boolean z10) {
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
    public void k0() {
        boolean zH;
        boolean zH2;
        boolean zH3;
        boolean zH4;
        boolean zH5;
        if (isVisible() && this.f13518m0) {
            androidx.media3.common.a0 a0Var = this.f13512j0;
            if (a0Var != null) {
                zH = (this.f13520n0 && S(a0Var, this.I)) ? a0Var.h(10) : a0Var.h(5);
                zH3 = a0Var.h(7);
                zH4 = a0Var.h(11);
                zH5 = a0Var.h(12);
                zH2 = a0Var.h(9);
            } else {
                zH = false;
                zH2 = false;
                zH3 = false;
                zH4 = false;
                zH5 = false;
            }
            if (zH4) {
                p0();
            }
            if (zH5) {
                h0();
            }
            g0(zH3, this.f13517m);
            g0(zH4, this.f13525q);
            g0(zH5, this.f13523p);
            g0(zH2, this.f13519n);
            y0 y0Var = this.E;
            if (y0Var != null) {
                y0Var.setEnabled(zH);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0() {
        if (isVisible() && this.f13518m0 && this.f13521o != null) {
            boolean zL1 = androidx.media3.common.util.a1.l1(this.f13512j0, this.f13522o0);
            Drawable drawable = zL1 ? this.K : this.L;
            int i11 = zL1 ? R$string.exo_controls_play_description : R$string.exo_controls_pause_description;
            this.f13521o.setImageDrawable(drawable);
            this.f13521o.setContentDescription(this.f13495b.getString(i11));
            g0(androidx.media3.common.util.a1.k1(this.f13512j0), this.f13521o);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        androidx.media3.common.a0 a0Var = this.f13512j0;
        if (a0Var == null) {
            return;
        }
        this.f13505g.l(a0Var.getPlaybackParameters().f10566a);
        this.f13503f.j(0, this.f13505g.h());
        q0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0() {
        long contentPosition;
        long jU;
        if (isVisible() && this.f13518m0) {
            androidx.media3.common.a0 a0Var = this.f13512j0;
            if (a0Var == null || !a0Var.h(16)) {
                contentPosition = 0;
                jU = 0;
            } else {
                contentPosition = this.f13542y0 + a0Var.getContentPosition();
                jU = this.f13542y0 + a0Var.u();
            }
            TextView textView = this.D;
            if (textView != null && !this.f13526q0) {
                textView.setText(androidx.media3.common.util.a1.o0(this.F, this.G, contentPosition));
            }
            y0 y0Var = this.E;
            if (y0Var != null) {
                y0Var.setPosition(contentPosition);
                this.E.setBufferedPosition(jU);
            }
            removeCallbacks(this.J);
            int playbackState = a0Var == null ? 1 : a0Var.getPlaybackState();
            if (a0Var == null || !a0Var.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.J, 1000L);
                return;
            }
            y0 y0Var2 = this.E;
            long jMin = Math.min(y0Var2 != null ? y0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (contentPosition % 1000));
            float f11 = a0Var.getPlaybackParameters().f10566a;
            postDelayed(this.J, androidx.media3.common.util.a1.q(f11 > 0.0f ? (long) (jMin / f11) : 1000L, this.f13530s0, 1000L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        ImageView imageView;
        if (isVisible() && this.f13518m0 && (imageView = this.f13531t) != null) {
            if (this.f13532t0 == 0) {
                g0(false, imageView);
                return;
            }
            androidx.media3.common.a0 a0Var = this.f13512j0;
            if (a0Var == null || !a0Var.h(15)) {
                g0(false, this.f13531t);
                this.f13531t.setImageDrawable(this.M);
                this.f13531t.setContentDescription(this.P);
                return;
            }
            g0(true, this.f13531t);
            int repeatMode = a0Var.getRepeatMode();
            if (repeatMode == 0) {
                this.f13531t.setImageDrawable(this.M);
                this.f13531t.setContentDescription(this.P);
            } else if (repeatMode == 1) {
                this.f13531t.setImageDrawable(this.N);
                this.f13531t.setContentDescription(this.Q);
            } else {
                if (repeatMode != 2) {
                    return;
                }
                this.f13531t.setImageDrawable(this.O);
                this.f13531t.setContentDescription(this.R);
            }
        }
    }

    private void p0() {
        androidx.media3.common.a0 a0Var = this.f13512j0;
        int iY = (int) ((a0Var != null ? a0Var.y() : 5000L) / 1000);
        TextView textView = this.f13529s;
        if (textView != null) {
            textView.setText(String.valueOf(iY));
        }
        View view = this.f13525q;
        if (view != null) {
            view.setContentDescription(this.f13495b.getQuantityString(R$plurals.exo_controls_rewind_by_amount_description, iY, Integer.valueOf(iY)));
        }
    }

    private void q0() {
        g0(this.f13503f.g(), this.f13543z);
    }

    private void r0() {
        this.f13501e.measure(0, 0);
        this.f13513k.setWidth(Math.min(this.f13501e.getMeasuredWidth(), getWidth() - (this.f13515l * 2)));
        this.f13513k.setHeight(Math.min(getHeight() - (this.f13515l * 2), this.f13501e.getMeasuredHeight()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        ImageView imageView;
        if (isVisible() && this.f13518m0 && (imageView = this.f13533u) != null) {
            androidx.media3.common.a0 a0Var = this.f13512j0;
            if (!this.f13493a.A(imageView)) {
                g0(false, this.f13533u);
                return;
            }
            if (a0Var == null || !a0Var.h(14)) {
                g0(false, this.f13533u);
                this.f13533u.setImageDrawable(this.T);
                this.f13533u.setContentDescription(this.f13494a0);
            } else {
                g0(true, this.f13533u);
                this.f13533u.setImageDrawable(a0Var.getShuffleModeEnabled() ? this.S : this.T);
                this.f13533u.setContentDescription(a0Var.getShuffleModeEnabled() ? this.W : this.f13494a0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f11) {
        androidx.media3.common.a0 a0Var = this.f13512j0;
        if (a0Var == null || !a0Var.h(13)) {
            return;
        }
        androidx.media3.common.a0 a0Var2 = this.f13512j0;
        a0Var2.b(a0Var2.getPlaybackParameters().b(f11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:44:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:62:0x0107  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dd A[SYNTHETIC] */
    public void t0() {
        long jR0;
        int i11;
        androidx.media3.common.e0.c cVar;
        long jO;
        long[] jArr;
        int length;
        androidx.media3.common.a0 a0Var = this.f13512j0;
        if (a0Var == null) {
            return;
        }
        boolean z10 = true;
        this.f13524p0 = this.f13520n0 && S(a0Var, this.I);
        this.f13542y0 = 0L;
        androidx.media3.common.e0 currentTimeline = a0Var.h(17) ? a0Var.getCurrentTimeline() : androidx.media3.common.e0.f9925a;
        if (currentTimeline.q()) {
            if (a0Var.h(16)) {
                long jQ = a0Var.Q();
                if (jQ != C.TIME_UNSET) {
                    jR0 = androidx.media3.common.util.a1.R0(jQ);
                } else {
                    jR0 = 0;
                }
            } else {
                jR0 = 0;
            }
            i11 = 0;
        } else {
            int iT = a0Var.t();
            boolean z11 = this.f13524p0;
            int i12 = z11 ? 0 : iT;
            int iP = z11 ? currentTimeline.p() - 1 : iT;
            long j11 = 0;
            i11 = 0;
            while (i12 <= iP) {
                if (i12 == iT) {
                    this.f13542y0 = androidx.media3.common.util.a1.y1(j11);
                }
                currentTimeline.n(i12, this.I);
                androidx.media3.common.e0.c cVar2 = this.I;
                if (cVar2.f9963m == C.TIME_UNSET) {
                    androidx.media3.common.util.a.g(this.f13524p0 ^ z10);
                    break;
                }
                int i13 = cVar2.f9964n;
                while (true) {
                    cVar = this.I;
                    if (i13 <= cVar.f9965o) {
                        currentTimeline.f(i13, this.H);
                        int iC = this.H.c();
                        for (int iP2 = this.H.p(); iP2 < iC; iP2++) {
                            long jF = this.H.f(iP2);
                            if (jF == Long.MIN_VALUE) {
                                long j12 = this.H.f9937d;
                                if (j12 != C.TIME_UNSET) {
                                    jF = j12;
                                    jO = jF + this.H.o();
                                    if (jO >= 0) {
                                        jArr = this.f13534u0;
                                        if (i11 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.f13534u0 = Arrays.copyOf(jArr, length);
                                            this.f13536v0 = Arrays.copyOf(this.f13536v0, length);
                                        }
                                        this.f13534u0[i11] = androidx.media3.common.util.a1.y1(j11 + jO);
                                        this.f13536v0[i11] = this.H.q(iP2);
                                        i11++;
                                    }
                                }
                            } else {
                                jO = jF + this.H.o();
                                if (jO >= 0) {
                                    jArr = this.f13534u0;
                                    if (i11 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.f13534u0 = Arrays.copyOf(jArr, length);
                                        this.f13536v0 = Arrays.copyOf(this.f13536v0, length);
                                    }
                                    this.f13534u0[i11] = androidx.media3.common.util.a1.y1(j11 + jO);
                                    this.f13536v0[i11] = this.H.q(iP2);
                                    i11++;
                                }
                            }
                        }
                        i13++;
                    }
                }
                j11 += cVar.f9963m;
                i12++;
                z10 = true;
            }
            jR0 = j11;
        }
        long jY1 = androidx.media3.common.util.a1.y1(jR0);
        TextView textView = this.C;
        if (textView != null) {
            textView.setText(androidx.media3.common.util.a1.o0(this.F, this.G, jY1));
        }
        y0 y0Var = this.E;
        if (y0Var != null) {
            y0Var.setDuration(jY1);
            int length2 = this.f13538w0.length;
            int i14 = i11 + length2;
            long[] jArr2 = this.f13534u0;
            if (i14 > jArr2.length) {
                this.f13534u0 = Arrays.copyOf(jArr2, i14);
                this.f13536v0 = Arrays.copyOf(this.f13536v0, i14);
            }
            System.arraycopy(this.f13538w0, 0, this.f13534u0, i11, length2);
            System.arraycopy(this.f13540x0, 0, this.f13536v0, i11, length2);
            this.E.setAdGroupTimesMs(this.f13534u0, this.f13536v0, i14);
        }
        n0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0() {
        W();
        g0(this.f13507h.getItemCount() > 0, this.f13537w);
        q0();
    }

    void Z() {
        Iterator it = this.f13499d.iterator();
        while (it.hasNext()) {
            ((m) it.next()).l(getVisibility());
        }
    }

    @Deprecated
    public void addVisibilityListener(m mVar) {
        androidx.media3.common.util.a.e(mVar);
        this.f13499d.add(mVar);
    }

    void d0() {
        ImageView imageView = this.f13521o;
        if (imageView != null) {
            imageView.requestFocus();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        androidx.media3.common.a0 a0Var = this.f13512j0;
        if (a0Var == null || !Y(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (a0Var.getPlaybackState() == 4 || !a0Var.h(12)) {
                return true;
            }
            a0Var.v();
            return true;
        }
        if (keyCode == 89 && a0Var.h(11)) {
            a0Var.w();
            return true;
        }
        if (keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (keyCode == 79 || keyCode == 85) {
            androidx.media3.common.util.a1.x0(a0Var, this.f13522o0);
            return true;
        }
        if (keyCode == 87) {
            if (!a0Var.h(9)) {
                return true;
            }
            a0Var.m();
            return true;
        }
        if (keyCode == 88) {
            if (!a0Var.h(7)) {
                return true;
            }
            a0Var.f();
            return true;
        }
        if (keyCode == 126) {
            androidx.media3.common.util.a1.w0(a0Var);
            return true;
        }
        if (keyCode != 127) {
            return true;
        }
        androidx.media3.common.util.a1.v0(a0Var);
        return true;
    }

    void f0() {
        l0();
        k0();
        o0();
        s0();
        u0();
        m0();
        t0();
    }

    @Nullable
    public androidx.media3.common.a0 getPlayer() {
        return this.f13512j0;
    }

    public int getRepeatToggleModes() {
        return this.f13532t0;
    }

    public boolean getShowShuffleButton() {
        return this.f13493a.A(this.f13533u);
    }

    public boolean getShowSubtitleButton() {
        return this.f13493a.A(this.f13537w);
    }

    public int getShowTimeoutMs() {
        return this.f13528r0;
    }

    public boolean getShowVrButton() {
        return this.f13493a.A(this.f13535v);
    }

    public void hide() {
        this.f13493a.C();
    }

    public void hideImmediately() {
        this.f13493a.F();
    }

    public boolean isAnimationEnabled() {
        return this.f13493a.I();
    }

    public boolean isFullyVisible() {
        return this.f13493a.J();
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f13493a.P();
        this.f13518m0 = true;
        if (isFullyVisible()) {
            this.f13493a.X();
        }
        f0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f13493a.Q();
        this.f13518m0 = false;
        removeCallbacks(this.J);
        this.f13493a.W();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        this.f13493a.R(z10, i11, i12, i13, i14);
    }

    @Deprecated
    public void removeVisibilityListener(m mVar) {
        this.f13499d.remove(mVar);
    }

    public void setAnimationEnabled(boolean z10) {
        this.f13493a.Y(z10);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.f13538w0 = new long[0];
            this.f13540x0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) androidx.media3.common.util.a.e(zArr);
            androidx.media3.common.util.a.a(jArr.length == zArr2.length);
            this.f13538w0 = jArr;
            this.f13540x0 = zArr2;
        }
        t0();
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(@Nullable d dVar) {
        this.f13514k0 = dVar;
        j0(this.f13539x, dVar != null);
        j0(this.f13541y, dVar != null);
    }

    public void setPlayer(@Nullable androidx.media3.common.a0 a0Var) {
        androidx.media3.common.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        androidx.media3.common.util.a.a(a0Var == null || a0Var.k() == Looper.getMainLooper());
        androidx.media3.common.a0 a0Var2 = this.f13512j0;
        if (a0Var2 == a0Var) {
            return;
        }
        if (a0Var2 != null) {
            a0Var2.L(this.f13497c);
        }
        this.f13512j0 = a0Var;
        if (a0Var != null) {
            a0Var.M(this.f13497c);
        }
        f0();
    }

    public void setProgressUpdateListener(@Nullable f fVar) {
    }

    public void setRepeatToggleModes(int i11) {
        this.f13532t0 = i11;
        androidx.media3.common.a0 a0Var = this.f13512j0;
        if (a0Var != null && a0Var.h(15)) {
            int repeatMode = this.f13512j0.getRepeatMode();
            if (i11 == 0 && repeatMode != 0) {
                this.f13512j0.setRepeatMode(0);
            } else if (i11 == 1 && repeatMode == 2) {
                this.f13512j0.setRepeatMode(1);
            } else if (i11 == 2 && repeatMode == 1) {
                this.f13512j0.setRepeatMode(2);
            }
        }
        this.f13493a.Z(this.f13531t, i11 != 0);
        o0();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.f13493a.Z(this.f13523p, z10);
        k0();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z10) {
        this.f13520n0 = z10;
        t0();
    }

    public void setShowNextButton(boolean z10) {
        this.f13493a.Z(this.f13519n, z10);
        k0();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z10) {
        this.f13522o0 = z10;
        l0();
    }

    public void setShowPreviousButton(boolean z10) {
        this.f13493a.Z(this.f13517m, z10);
        k0();
    }

    public void setShowRewindButton(boolean z10) {
        this.f13493a.Z(this.f13525q, z10);
        k0();
    }

    public void setShowShuffleButton(boolean z10) {
        this.f13493a.Z(this.f13533u, z10);
        s0();
    }

    public void setShowSubtitleButton(boolean z10) {
        this.f13493a.Z(this.f13537w, z10);
    }

    public void setShowTimeoutMs(int i11) {
        this.f13528r0 = i11;
        if (isFullyVisible()) {
            this.f13493a.X();
        }
    }

    public void setShowVrButton(boolean z10) {
        this.f13493a.Z(this.f13535v, z10);
    }

    public void setTimeBarMinUpdateInterval(int i11) {
        this.f13530s0 = androidx.media3.common.util.a1.p(i11, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        ImageView imageView = this.f13535v;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
            g0(onClickListener != null, this.f13535v);
        }
    }

    public void show() {
        this.f13493a.c0();
    }

    public void updateIsFullscreen(boolean z10) {
        if (this.f13516l0 == z10) {
            return;
        }
        this.f13516l0 = z10;
        i0(this.f13539x, z10);
        i0(this.f13541y, z10);
        d dVar = this.f13514k0;
        if (dVar != null) {
            dVar.q(z10);
        }
    }
}
