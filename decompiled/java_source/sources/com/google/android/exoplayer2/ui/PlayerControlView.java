package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.q2;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.v1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class PlayerControlView extends FrameLayout {
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private final Drawable A;
    private final Drawable B;
    private final float C;
    private final float D;
    private final String E;
    private final String F;
    private o2 G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private int L;
    private int M;
    private int N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private long T;
    private long[] U;
    private boolean[] V;
    private long[] W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f26913a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean[] f26914a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList f26915b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private long f26916b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f26917c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private long f26918c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View f26919d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private long f26920d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View f26921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final View f26922f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final View f26923g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final View f26924h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ImageView f26925i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ImageView f26926j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View f26927k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final TextView f26928l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final TextView f26929m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final n0 f26930n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final StringBuilder f26931o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Formatter f26932p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final k3.b f26933q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final k3.d f26934r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Runnable f26935s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Runnable f26936t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Drawable f26937u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Drawable f26938v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Drawable f26939w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final String f26940x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final String f26941y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final String f26942z;

    private static final class b {
        public static boolean a(View view) {
            return view.isAccessibilityFocused();
        }
    }

    private final class c implements o2.d, n0.a, View.OnClickListener {
        private c() {
        }

        @Override // com.google.android.exoplayer2.ui.n0.a
        public void l(n0 n0Var, long j11) {
            if (PlayerControlView.this.f26929m != null) {
                PlayerControlView.this.f26929m.setText(com.google.android.exoplayer2.util.p0.h0(PlayerControlView.this.f26931o, PlayerControlView.this.f26932p, j11));
            }
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onAvailableCommandsChanged(o2.b bVar) {
            q2.c(this, bVar);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2 o2Var = PlayerControlView.this.G;
            if (o2Var == null) {
                return;
            }
            if (PlayerControlView.this.f26919d == view) {
                o2Var.m();
                return;
            }
            if (PlayerControlView.this.f26917c == view) {
                o2Var.f();
                return;
            }
            if (PlayerControlView.this.f26923g == view) {
                if (o2Var.getPlaybackState() != 4) {
                    o2Var.v();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f26924h == view) {
                o2Var.w();
                return;
            }
            if (PlayerControlView.this.f26921e == view) {
                PlayerControlView.this.A(o2Var);
                return;
            }
            if (PlayerControlView.this.f26922f == view) {
                PlayerControlView.this.z(o2Var);
            } else if (PlayerControlView.this.f26925i == view) {
                o2Var.setRepeatMode(com.google.android.exoplayer2.util.f0.a(o2Var.getRepeatMode(), PlayerControlView.this.N));
            } else if (PlayerControlView.this.f26926j == view) {
                o2Var.setShuffleModeEnabled(!o2Var.getShuffleModeEnabled());
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

        @Override // com.google.android.exoplayer2.o2.d
        public void onEvents(o2 o2Var, o2.c cVar) {
            if (cVar.b(4, 5)) {
                PlayerControlView.this.N();
            }
            if (cVar.b(4, 5, 7)) {
                PlayerControlView.this.O();
            }
            if (cVar.a(8)) {
                PlayerControlView.this.P();
            }
            if (cVar.a(9)) {
                PlayerControlView.this.Q();
            }
            if (cVar.b(8, 9, 11, 0, 13)) {
                PlayerControlView.this.M();
            }
            if (cVar.b(11, 0)) {
                PlayerControlView.this.R();
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
            PlayerControlView.this.K = false;
            if (z10 || PlayerControlView.this.G == null) {
                return;
            }
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.I(playerControlView.G, j11);
        }

        @Override // com.google.android.exoplayer2.ui.n0.a
        public void r(n0 n0Var, long j11) {
            PlayerControlView.this.K = true;
            if (PlayerControlView.this.f26929m != null) {
                PlayerControlView.this.f26929m.setText(com.google.android.exoplayer2.util.p0.h0(PlayerControlView.this.f26931o, PlayerControlView.this.f26932p, j11));
            }
        }
    }

    public interface d {
    }

    public interface e {
        void l(int i11);
    }

    static {
        m1.a("goog.exo.ui");
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

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i11, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i11);
        int resourceId = R$layout.exo_player_control_view;
        this.L = 5000;
        this.N = 0;
        this.M = 200;
        this.T = C.TIME_UNSET;
        this.O = true;
        this.P = true;
        this.Q = true;
        this.R = true;
        this.S = false;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.PlayerControlView, i11, 0);
            try {
                this.L = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_show_timeout, this.L);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_controller_layout_id, resourceId);
                this.N = C(typedArrayObtainStyledAttributes, this.N);
                this.O = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_rewind_button, this.O);
                this.P = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_fastforward_button, this.P);
                this.Q = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_previous_button, this.Q);
                this.R = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_next_button, this.R);
                this.S = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_shuffle_button, this.S);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_time_bar_min_update_interval, this.M));
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        }
        this.f26915b = new CopyOnWriteArrayList();
        this.f26933q = new k3.b();
        this.f26934r = new k3.d();
        StringBuilder sb2 = new StringBuilder();
        this.f26931o = sb2;
        this.f26932p = new Formatter(sb2, Locale.getDefault());
        this.U = new long[0];
        this.V = new boolean[0];
        this.W = new long[0];
        this.f26914a0 = new boolean[0];
        c cVar = new c();
        this.f26913a = cVar;
        this.f26935s = new Runnable() { // from class: com.google.android.exoplayer2.ui.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f27126a.O();
            }
        };
        this.f26936t = new Runnable() { // from class: com.google.android.exoplayer2.ui.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f27165a.hide();
            }
        };
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        n0 n0Var = (n0) findViewById(R$id.exo_progress);
        View viewFindViewById = findViewById(R$id.exo_progress_placeholder);
        if (n0Var != null) {
            this.f26930n = n0Var;
        } else if (viewFindViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(R$id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById);
            viewGroup.removeView(viewFindViewById);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.f26930n = defaultTimeBar;
        } else {
            this.f26930n = null;
        }
        this.f26928l = (TextView) findViewById(R$id.exo_duration);
        this.f26929m = (TextView) findViewById(R$id.exo_position);
        n0 n0Var2 = this.f26930n;
        if (n0Var2 != null) {
            n0Var2.addListener(cVar);
        }
        View viewFindViewById2 = findViewById(R$id.exo_play);
        this.f26921e = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(cVar);
        }
        View viewFindViewById3 = findViewById(R$id.exo_pause);
        this.f26922f = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(cVar);
        }
        View viewFindViewById4 = findViewById(R$id.exo_prev);
        this.f26917c = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(cVar);
        }
        View viewFindViewById5 = findViewById(R$id.exo_next);
        this.f26919d = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(cVar);
        }
        View viewFindViewById6 = findViewById(R$id.exo_rew);
        this.f26924h = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(cVar);
        }
        View viewFindViewById7 = findViewById(R$id.exo_ffwd);
        this.f26923g = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(cVar);
        }
        ImageView imageView = (ImageView) findViewById(R$id.exo_repeat_toggle);
        this.f26925i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(cVar);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_shuffle);
        this.f26926j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(cVar);
        }
        View viewFindViewById8 = findViewById(R$id.exo_vr);
        this.f26927k = viewFindViewById8;
        setShowVrButton(false);
        L(false, false, viewFindViewById8);
        Resources resources = context.getResources();
        this.C = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.D = resources.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f26937u = resources.getDrawable(R$drawable.exo_controls_repeat_off);
        this.f26938v = resources.getDrawable(R$drawable.exo_controls_repeat_one);
        this.f26939w = resources.getDrawable(R$drawable.exo_controls_repeat_all);
        this.A = resources.getDrawable(R$drawable.exo_controls_shuffle_on);
        this.B = resources.getDrawable(R$drawable.exo_controls_shuffle_off);
        this.f26940x = resources.getString(R$string.exo_controls_repeat_off_description);
        this.f26941y = resources.getString(R$string.exo_controls_repeat_one_description);
        this.f26942z = resources.getString(R$string.exo_controls_repeat_all_description);
        this.E = resources.getString(R$string.exo_controls_shuffle_on_description);
        this.F = resources.getString(R$string.exo_controls_shuffle_off_description);
        this.f26918c0 = C.TIME_UNSET;
        this.f26920d0 = C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(o2 o2Var) {
        int playbackState = o2Var.getPlaybackState();
        if (playbackState == 1) {
            o2Var.prepare();
        } else if (playbackState == 4) {
            H(o2Var, o2Var.t(), C.TIME_UNSET);
        }
        o2Var.play();
    }

    private void B(o2 o2Var) {
        int playbackState = o2Var.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !o2Var.getPlayWhenReady()) {
            A(o2Var);
        } else {
            z(o2Var);
        }
    }

    private static int C(TypedArray typedArray, int i11) {
        return typedArray.getInt(R$styleable.PlayerControlView_repeat_toggle_modes, i11);
    }

    private void D() {
        removeCallbacks(this.f26936t);
        if (this.L <= 0) {
            this.T = C.TIME_UNSET;
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        int i11 = this.L;
        this.T = jUptimeMillis + ((long) i11);
        if (this.H) {
            postDelayed(this.f26936t, i11);
        }
    }

    private static boolean E(int i11) {
        return i11 == 90 || i11 == 89 || i11 == 85 || i11 == 79 || i11 == 126 || i11 == 127 || i11 == 87 || i11 == 88;
    }

    private void F() {
        View view;
        View view2;
        boolean zJ = J();
        if (!zJ && (view2 = this.f26921e) != null) {
            view2.sendAccessibilityEvent(8);
        } else {
            if (!zJ || (view = this.f26922f) == null) {
                return;
            }
            view.sendAccessibilityEvent(8);
        }
    }

    private void G() {
        View view;
        View view2;
        boolean zJ = J();
        if (!zJ && (view2 = this.f26921e) != null) {
            view2.requestFocus();
        } else {
            if (!zJ || (view = this.f26922f) == null) {
                return;
            }
            view.requestFocus();
        }
    }

    private void H(o2 o2Var, int i11, long j11) {
        o2Var.seekTo(i11, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(o2 o2Var, long j11) {
        int iT;
        k3 currentTimeline = o2Var.getCurrentTimeline();
        if (this.J && !currentTimeline.u()) {
            int iT2 = currentTimeline.t();
            iT = 0;
            while (true) {
                long jG = currentTimeline.r(iT, this.f26934r).g();
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
        H(o2Var, iT, j11);
        O();
    }

    private boolean J() {
        o2 o2Var = this.G;
        return (o2Var == null || o2Var.getPlaybackState() == 4 || this.G.getPlaybackState() == 1 || !this.G.getPlayWhenReady()) ? false : true;
    }

    private void K() {
        N();
        M();
        P();
        Q();
        R();
    }

    private void L(boolean z10, boolean z11, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z11);
        view.setAlpha(z11 ? this.C : this.D);
        view.setVisibility(z10 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        boolean zH;
        boolean zH2;
        boolean zH3;
        boolean zH4;
        boolean zH5;
        if (isVisible() && this.H) {
            o2 o2Var = this.G;
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
            L(this.Q, zH3, this.f26917c);
            L(this.O, zH4, this.f26924h);
            L(this.P, zH5, this.f26923g);
            L(this.R, zH2, this.f26919d);
            n0 n0Var = this.f26930n;
            if (n0Var != null) {
                n0Var.setEnabled(zH);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        boolean z10;
        boolean z11;
        if (isVisible() && this.H) {
            boolean zJ = J();
            View view = this.f26921e;
            boolean z12 = true;
            if (view != null) {
                z10 = zJ && view.isFocused();
                if (com.google.android.exoplayer2.util.p0.f27626a < 21) {
                    z11 = z10;
                } else {
                    z11 = zJ && b.a(this.f26921e);
                }
                this.f26921e.setVisibility(zJ ? 8 : 0);
            } else {
                z10 = false;
                z11 = false;
            }
            View view2 = this.f26922f;
            if (view2 != null) {
                z10 |= !zJ && view2.isFocused();
                if (com.google.android.exoplayer2.util.p0.f27626a < 21) {
                    z12 = z10;
                } else if (zJ || !b.a(this.f26922f)) {
                    z12 = false;
                }
                z11 |= z12;
                this.f26922f.setVisibility(zJ ? 0 : 8);
            }
            if (z10) {
                G();
            }
            if (z11) {
                F();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        long contentPosition;
        long jU;
        if (isVisible() && this.H) {
            o2 o2Var = this.G;
            if (o2Var != null) {
                contentPosition = this.f26916b0 + o2Var.getContentPosition();
                jU = this.f26916b0 + o2Var.u();
            } else {
                contentPosition = 0;
                jU = 0;
            }
            boolean z10 = contentPosition != this.f26918c0;
            this.f26918c0 = contentPosition;
            this.f26920d0 = jU;
            TextView textView = this.f26929m;
            if (textView != null && !this.K && z10) {
                textView.setText(com.google.android.exoplayer2.util.p0.h0(this.f26931o, this.f26932p, contentPosition));
            }
            n0 n0Var = this.f26930n;
            if (n0Var != null) {
                n0Var.setPosition(contentPosition);
                this.f26930n.setBufferedPosition(jU);
            }
            removeCallbacks(this.f26935s);
            int playbackState = o2Var == null ? 1 : o2Var.getPlaybackState();
            if (o2Var == null || !o2Var.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f26935s, 1000L);
                return;
            }
            n0 n0Var2 = this.f26930n;
            long jMin = Math.min(n0Var2 != null ? n0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (contentPosition % 1000));
            float f11 = o2Var.getPlaybackParameters().f25475a;
            postDelayed(this.f26935s, com.google.android.exoplayer2.util.p0.r(f11 > 0.0f ? (long) (jMin / f11) : 1000L, this.M, 1000L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        ImageView imageView;
        if (isVisible() && this.H && (imageView = this.f26925i) != null) {
            if (this.N == 0) {
                L(false, false, imageView);
                return;
            }
            o2 o2Var = this.G;
            if (o2Var == null) {
                L(true, false, imageView);
                this.f26925i.setImageDrawable(this.f26937u);
                this.f26925i.setContentDescription(this.f26940x);
                return;
            }
            L(true, true, imageView);
            int repeatMode = o2Var.getRepeatMode();
            if (repeatMode == 0) {
                this.f26925i.setImageDrawable(this.f26937u);
                this.f26925i.setContentDescription(this.f26940x);
            } else if (repeatMode == 1) {
                this.f26925i.setImageDrawable(this.f26938v);
                this.f26925i.setContentDescription(this.f26941y);
            } else if (repeatMode == 2) {
                this.f26925i.setImageDrawable(this.f26939w);
                this.f26925i.setContentDescription(this.f26942z);
            }
            this.f26925i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        ImageView imageView;
        if (isVisible() && this.H && (imageView = this.f26926j) != null) {
            o2 o2Var = this.G;
            if (!this.S) {
                L(false, false, imageView);
                return;
            }
            if (o2Var == null) {
                L(true, false, imageView);
                this.f26926j.setImageDrawable(this.B);
                this.f26926j.setContentDescription(this.F);
            } else {
                L(true, true, imageView);
                this.f26926j.setImageDrawable(o2Var.getShuffleModeEnabled() ? this.A : this.B);
                this.f26926j.setContentDescription(o2Var.getShuffleModeEnabled() ? this.E : this.F);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4 A[SYNTHETIC] */
    public void R() {
        int i11;
        k3.d dVar;
        long jQ;
        long[] jArr;
        int length;
        o2 o2Var = this.G;
        if (o2Var == null) {
            return;
        }
        boolean z10 = true;
        this.J = this.I && y(o2Var.getCurrentTimeline(), this.f26934r);
        long j11 = 0;
        this.f26916b0 = 0L;
        k3 currentTimeline = o2Var.getCurrentTimeline();
        if (currentTimeline.u()) {
            i11 = 0;
        } else {
            int iT = o2Var.t();
            boolean z11 = this.J;
            int i12 = z11 ? 0 : iT;
            int iT2 = z11 ? currentTimeline.t() - 1 : iT;
            long j12 = 0;
            i11 = 0;
            while (i12 <= iT2) {
                if (i12 == iT) {
                    this.f26916b0 = com.google.android.exoplayer2.util.p0.e1(j12);
                }
                currentTimeline.r(i12, this.f26934r);
                k3.d dVar2 = this.f26934r;
                if (dVar2.f25182n == C.TIME_UNSET) {
                    com.google.android.exoplayer2.util.a.g(this.J ^ z10);
                    break;
                }
                int i13 = dVar2.f25183o;
                while (true) {
                    dVar = this.f26934r;
                    if (i13 <= dVar.f25184p) {
                        currentTimeline.j(i13, this.f26933q);
                        int iF = this.f26933q.f();
                        for (int iR = this.f26933q.r(); iR < iF; iR++) {
                            long jI = this.f26933q.i(iR);
                            if (jI == Long.MIN_VALUE) {
                                long j13 = this.f26933q.f25157d;
                                if (j13 != C.TIME_UNSET) {
                                    jI = j13;
                                    jQ = jI + this.f26933q.q();
                                    if (jQ >= 0) {
                                        jArr = this.U;
                                        if (i11 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.U = Arrays.copyOf(jArr, length);
                                            this.V = Arrays.copyOf(this.V, length);
                                        }
                                        this.U[i11] = com.google.android.exoplayer2.util.p0.e1(j12 + jQ);
                                        this.V[i11] = this.f26933q.s(iR);
                                        i11++;
                                    }
                                }
                            } else {
                                jQ = jI + this.f26933q.q();
                                if (jQ >= 0) {
                                    jArr = this.U;
                                    if (i11 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.U = Arrays.copyOf(jArr, length);
                                        this.V = Arrays.copyOf(this.V, length);
                                    }
                                    this.U[i11] = com.google.android.exoplayer2.util.p0.e1(j12 + jQ);
                                    this.V[i11] = this.f26933q.s(iR);
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
        TextView textView = this.f26928l;
        if (textView != null) {
            textView.setText(com.google.android.exoplayer2.util.p0.h0(this.f26931o, this.f26932p, jE1));
        }
        n0 n0Var = this.f26930n;
        if (n0Var != null) {
            n0Var.setDuration(jE1);
            int length2 = this.W.length;
            int i14 = i11 + length2;
            long[] jArr2 = this.U;
            if (i14 > jArr2.length) {
                this.U = Arrays.copyOf(jArr2, i14);
                this.V = Arrays.copyOf(this.V, i14);
            }
            System.arraycopy(this.W, 0, this.U, i11, length2);
            System.arraycopy(this.f26914a0, 0, this.V, i11, length2);
            this.f26930n.setAdGroupTimesMs(this.U, this.V, i14);
        }
        O();
    }

    private static boolean y(k3 k3Var, k3.d dVar) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void z(o2 o2Var) {
        o2Var.pause();
    }

    public void addVisibilityListener(e eVar) {
        com.google.android.exoplayer2.util.a.e(eVar);
        this.f26915b.add(eVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        o2 o2Var = this.G;
        if (o2Var == null || !E(keyCode)) {
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
            B(o2Var);
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
            A(o2Var);
            return true;
        }
        if (keyCode != 127) {
            return true;
        }
        z(o2Var);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f26936t);
        } else if (motionEvent.getAction() == 1) {
            D();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public o2 getPlayer() {
        return this.G;
    }

    public int getRepeatToggleModes() {
        return this.N;
    }

    public boolean getShowShuffleButton() {
        return this.S;
    }

    public int getShowTimeoutMs() {
        return this.L;
    }

    public boolean getShowVrButton() {
        View view = this.f26927k;
        return view != null && view.getVisibility() == 0;
    }

    public void hide() {
        if (isVisible()) {
            setVisibility(8);
            Iterator it = this.f26915b.iterator();
            while (it.hasNext()) {
                ((e) it.next()).l(getVisibility());
            }
            removeCallbacks(this.f26935s);
            removeCallbacks(this.f26936t);
            this.T = C.TIME_UNSET;
        }
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.H = true;
        long j11 = this.T;
        if (j11 != C.TIME_UNSET) {
            long jUptimeMillis = j11 - SystemClock.uptimeMillis();
            if (jUptimeMillis <= 0) {
                hide();
            } else {
                postDelayed(this.f26936t, jUptimeMillis);
            }
        } else if (isVisible()) {
            D();
        }
        K();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.H = false;
        removeCallbacks(this.f26935s);
        removeCallbacks(this.f26936t);
    }

    public void removeVisibilityListener(e eVar) {
        this.f26915b.remove(eVar);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.W = new long[0];
            this.f26914a0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) com.google.android.exoplayer2.util.a.e(zArr);
            com.google.android.exoplayer2.util.a.a(jArr.length == zArr2.length);
            this.W = jArr;
            this.f26914a0 = zArr2;
        }
        R();
    }

    public void setPlayer(@Nullable o2 o2Var) {
        com.google.android.exoplayer2.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(o2Var == null || o2Var.k() == Looper.getMainLooper());
        o2 o2Var2 = this.G;
        if (o2Var2 == o2Var) {
            return;
        }
        if (o2Var2 != null) {
            o2Var2.A(this.f26913a);
        }
        this.G = o2Var;
        if (o2Var != null) {
            o2Var.C(this.f26913a);
        }
        K();
    }

    public void setProgressUpdateListener(@Nullable d dVar) {
    }

    public void setRepeatToggleModes(int i11) {
        this.N = i11;
        o2 o2Var = this.G;
        if (o2Var != null) {
            int repeatMode = o2Var.getRepeatMode();
            if (i11 == 0 && repeatMode != 0) {
                this.G.setRepeatMode(0);
            } else if (i11 == 1 && repeatMode == 2) {
                this.G.setRepeatMode(1);
            } else if (i11 == 2 && repeatMode == 1) {
                this.G.setRepeatMode(2);
            }
        }
        P();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.P = z10;
        M();
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        this.I = z10;
        R();
    }

    public void setShowNextButton(boolean z10) {
        this.R = z10;
        M();
    }

    public void setShowPreviousButton(boolean z10) {
        this.Q = z10;
        M();
    }

    public void setShowRewindButton(boolean z10) {
        this.O = z10;
        M();
    }

    public void setShowShuffleButton(boolean z10) {
        this.S = z10;
        Q();
    }

    public void setShowTimeoutMs(int i11) {
        this.L = i11;
        if (isVisible()) {
            D();
        }
    }

    public void setShowVrButton(boolean z10) {
        View view = this.f26927k;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i11) {
        this.M = com.google.android.exoplayer2.util.p0.q(i11, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f26927k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            L(getShowVrButton(), onClickListener != null, this.f26927k);
        }
    }

    public void show() {
        if (!isVisible()) {
            setVisibility(0);
            Iterator it = this.f26915b.iterator();
            while (it.hasNext()) {
                ((e) it.next()).l(getVisibility());
            }
            K();
            G();
            F();
        }
        D();
    }
}
