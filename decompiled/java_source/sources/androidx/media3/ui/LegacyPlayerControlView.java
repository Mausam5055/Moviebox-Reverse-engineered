package androidx.media3.ui;

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
import androidx.media3.common.PlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class LegacyPlayerControlView extends FrameLayout {
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
    private androidx.media3.common.a0 G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private int M;
    private int N;
    private int O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private long U;
    private long[] V;
    private boolean[] W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f13461a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private long[] f13462a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CopyOnWriteArrayList f13463b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private boolean[] f13464b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f13465c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private long f13466c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View f13467d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private long f13468d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final View f13469e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private long f13470e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final View f13471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final View f13472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final View f13473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ImageView f13474i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ImageView f13475j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final View f13476k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final TextView f13477l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final TextView f13478m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final y0 f13479n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final StringBuilder f13480o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Formatter f13481p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.media3.common.e0.b f13482q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final androidx.media3.common.e0.c f13483r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Runnable f13484s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Runnable f13485t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Drawable f13486u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Drawable f13487v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Drawable f13488w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final String f13489x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final String f13490y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final String f13491z;

    private final class b implements androidx.media3.common.a0.d, y0.a, View.OnClickListener {
        private b() {
        }

        @Override // androidx.media3.ui.y0.a
        public void l(y0 y0Var, long j11) {
            LegacyPlayerControlView.this.L = true;
            if (LegacyPlayerControlView.this.f13478m != null) {
                LegacyPlayerControlView.this.f13478m.setText(androidx.media3.common.util.a1.o0(LegacyPlayerControlView.this.f13480o, LegacyPlayerControlView.this.f13481p, j11));
            }
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
            androidx.media3.common.a0 a0Var = LegacyPlayerControlView.this.G;
            if (a0Var == null) {
                return;
            }
            if (LegacyPlayerControlView.this.f13467d == view) {
                a0Var.m();
                return;
            }
            if (LegacyPlayerControlView.this.f13465c == view) {
                a0Var.f();
                return;
            }
            if (LegacyPlayerControlView.this.f13472g == view) {
                if (a0Var.getPlaybackState() != 4) {
                    a0Var.v();
                    return;
                }
                return;
            }
            if (LegacyPlayerControlView.this.f13473h == view) {
                a0Var.w();
                return;
            }
            if (LegacyPlayerControlView.this.f13469e == view) {
                androidx.media3.common.util.a1.w0(a0Var);
                return;
            }
            if (LegacyPlayerControlView.this.f13471f == view) {
                androidx.media3.common.util.a1.v0(a0Var);
            } else if (LegacyPlayerControlView.this.f13474i == view) {
                a0Var.setRepeatMode(androidx.media3.common.util.k0.a(a0Var.getRepeatMode(), LegacyPlayerControlView.this.O));
            } else if (LegacyPlayerControlView.this.f13475j == view) {
                a0Var.setShuffleModeEnabled(!a0Var.getShuffleModeEnabled());
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

        @Override // androidx.media3.common.a0.d
        public void onEvents(androidx.media3.common.a0 a0Var, androidx.media3.common.a0.c cVar) {
            if (cVar.b(4, 5)) {
                LegacyPlayerControlView.this.H();
            }
            if (cVar.b(4, 5, 7)) {
                LegacyPlayerControlView.this.I();
            }
            if (cVar.a(8)) {
                LegacyPlayerControlView.this.J();
            }
            if (cVar.a(9)) {
                LegacyPlayerControlView.this.K();
            }
            if (cVar.b(8, 9, 11, 0, 13)) {
                LegacyPlayerControlView.this.G();
            }
            if (cVar.b(11, 0)) {
                LegacyPlayerControlView.this.L();
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
            if (LegacyPlayerControlView.this.f13478m != null) {
                LegacyPlayerControlView.this.f13478m.setText(androidx.media3.common.util.a1.o0(LegacyPlayerControlView.this.f13480o, LegacyPlayerControlView.this.f13481p, j11));
            }
        }

        @Override // androidx.media3.ui.y0.a
        public void r(y0 y0Var, long j11, boolean z10) {
            LegacyPlayerControlView.this.L = false;
            if (z10 || LegacyPlayerControlView.this.G == null) {
                return;
            }
            LegacyPlayerControlView legacyPlayerControlView = LegacyPlayerControlView.this;
            legacyPlayerControlView.D(legacyPlayerControlView.G, j11);
        }
    }

    public interface c {
    }

    public interface d {
    }

    static {
        androidx.media3.common.u.a("media3.ui");
    }

    public LegacyPlayerControlView(Context context) {
        this(context, null);
    }

    public LegacyPlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LegacyPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, attributeSet);
    }

    public LegacyPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i11, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i11);
        int resourceId = R$layout.exo_legacy_player_control_view;
        this.J = true;
        this.M = 5000;
        this.O = 0;
        this.N = 200;
        this.U = C.TIME_UNSET;
        this.P = true;
        this.Q = true;
        this.R = true;
        this.S = true;
        this.T = false;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.LegacyPlayerControlView, i11, 0);
            try {
                this.M = typedArrayObtainStyledAttributes.getInt(R$styleable.LegacyPlayerControlView_show_timeout, this.M);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.LegacyPlayerControlView_controller_layout_id, resourceId);
                this.O = x(typedArrayObtainStyledAttributes, this.O);
                this.P = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LegacyPlayerControlView_show_rewind_button, this.P);
                this.Q = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LegacyPlayerControlView_show_fastforward_button, this.Q);
                this.R = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LegacyPlayerControlView_show_previous_button, this.R);
                this.S = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LegacyPlayerControlView_show_next_button, this.S);
                this.T = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LegacyPlayerControlView_show_shuffle_button, this.T);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R$styleable.LegacyPlayerControlView_time_bar_min_update_interval, this.N));
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        }
        this.f13463b = new CopyOnWriteArrayList();
        this.f13482q = new androidx.media3.common.e0.b();
        this.f13483r = new androidx.media3.common.e0.c();
        StringBuilder sb2 = new StringBuilder();
        this.f13480o = sb2;
        this.f13481p = new Formatter(sb2, Locale.getDefault());
        this.V = new long[0];
        this.W = new boolean[0];
        this.f13462a0 = new long[0];
        this.f13464b0 = new boolean[0];
        b bVar = new b();
        this.f13461a = bVar;
        this.f13484s = new Runnable() { // from class: androidx.media3.ui.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f13694a.I();
            }
        };
        this.f13485t = new Runnable() { // from class: androidx.media3.ui.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f13695a.hide();
            }
        };
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        y0 y0Var = (y0) findViewById(R$id.exo_progress);
        View viewFindViewById = findViewById(R$id.exo_progress_placeholder);
        if (y0Var != null) {
            this.f13479n = y0Var;
        } else if (viewFindViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(R$id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById);
            viewGroup.removeView(viewFindViewById);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.f13479n = defaultTimeBar;
        } else {
            this.f13479n = null;
        }
        this.f13477l = (TextView) findViewById(R$id.exo_duration);
        this.f13478m = (TextView) findViewById(R$id.exo_position);
        y0 y0Var2 = this.f13479n;
        if (y0Var2 != null) {
            y0Var2.addListener(bVar);
        }
        View viewFindViewById2 = findViewById(R$id.exo_play);
        this.f13469e = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(bVar);
        }
        View viewFindViewById3 = findViewById(R$id.exo_pause);
        this.f13471f = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(bVar);
        }
        View viewFindViewById4 = findViewById(R$id.exo_prev);
        this.f13465c = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(bVar);
        }
        View viewFindViewById5 = findViewById(R$id.exo_next);
        this.f13467d = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(bVar);
        }
        View viewFindViewById6 = findViewById(R$id.exo_rew);
        this.f13473h = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(bVar);
        }
        View viewFindViewById7 = findViewById(R$id.exo_ffwd);
        this.f13472g = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(bVar);
        }
        ImageView imageView = (ImageView) findViewById(R$id.exo_repeat_toggle);
        this.f13474i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(bVar);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_shuffle);
        this.f13475j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(bVar);
        }
        View viewFindViewById8 = findViewById(R$id.exo_vr);
        this.f13476k = viewFindViewById8;
        setShowVrButton(false);
        F(false, false, viewFindViewById8);
        Resources resources = context.getResources();
        this.C = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.D = resources.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f13486u = androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_legacy_controls_repeat_off);
        this.f13487v = androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_legacy_controls_repeat_one);
        this.f13488w = androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_legacy_controls_repeat_all);
        this.A = androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_legacy_controls_shuffle_on);
        this.B = androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_legacy_controls_shuffle_off);
        this.f13489x = resources.getString(R$string.exo_controls_repeat_off_description);
        this.f13490y = resources.getString(R$string.exo_controls_repeat_one_description);
        this.f13491z = resources.getString(R$string.exo_controls_repeat_all_description);
        this.E = resources.getString(R$string.exo_controls_shuffle_on_description);
        this.F = resources.getString(R$string.exo_controls_shuffle_off_description);
        this.f13468d0 = C.TIME_UNSET;
        this.f13470e0 = C.TIME_UNSET;
    }

    private void A() {
        View view;
        View view2;
        boolean zL1 = androidx.media3.common.util.a1.l1(this.G, this.J);
        if (zL1 && (view2 = this.f13469e) != null) {
            view2.sendAccessibilityEvent(8);
        } else {
            if (zL1 || (view = this.f13471f) == null) {
                return;
            }
            view.sendAccessibilityEvent(8);
        }
    }

    private void B() {
        View view;
        View view2;
        boolean zL1 = androidx.media3.common.util.a1.l1(this.G, this.J);
        if (zL1 && (view2 = this.f13469e) != null) {
            view2.requestFocus();
        } else {
            if (zL1 || (view = this.f13471f) == null) {
                return;
            }
            view.requestFocus();
        }
    }

    private void C(androidx.media3.common.a0 a0Var, int i11, long j11) {
        a0Var.seekTo(i11, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(androidx.media3.common.a0 a0Var, long j11) {
        int iT;
        androidx.media3.common.e0 currentTimeline = a0Var.getCurrentTimeline();
        if (this.K && !currentTimeline.q()) {
            int iP = currentTimeline.p();
            iT = 0;
            while (true) {
                long jD = currentTimeline.n(iT, this.f13483r).d();
                if (j11 < jD) {
                    break;
                }
                if (iT == iP - 1) {
                    j11 = jD;
                    break;
                } else {
                    j11 -= jD;
                    iT++;
                }
            }
        } else {
            iT = a0Var.t();
        }
        C(a0Var, iT, j11);
        I();
    }

    private void E() {
        H();
        G();
        J();
        K();
        L();
    }

    private void F(boolean z10, boolean z11, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z11);
        view.setAlpha(z11 ? this.C : this.D);
        view.setVisibility(z10 ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        boolean zH;
        boolean zH2;
        boolean zH3;
        boolean zH4;
        boolean zH5;
        if (isVisible() && this.H) {
            androidx.media3.common.a0 a0Var = this.G;
            if (a0Var != null) {
                zH = a0Var.h(5);
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
            F(this.R, zH3, this.f13465c);
            F(this.P, zH4, this.f13473h);
            F(this.Q, zH5, this.f13472g);
            F(this.S, zH2, this.f13467d);
            y0 y0Var = this.f13479n;
            if (y0Var != null) {
                y0Var.setEnabled(zH);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        boolean z10;
        boolean z11;
        if (isVisible() && this.H) {
            boolean zL1 = androidx.media3.common.util.a1.l1(this.G, this.J);
            View view = this.f13469e;
            if (view != null) {
                z10 = !zL1 && view.isFocused();
                z11 = !zL1 && this.f13469e.isAccessibilityFocused();
                this.f13469e.setVisibility(zL1 ? 0 : 8);
            } else {
                z10 = false;
                z11 = false;
            }
            View view2 = this.f13471f;
            if (view2 != null) {
                z10 |= zL1 && view2.isFocused();
                z11 |= zL1 && this.f13471f.isAccessibilityFocused();
                this.f13471f.setVisibility(zL1 ? 8 : 0);
            }
            if (z10) {
                B();
            }
            if (z11) {
                A();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        long contentPosition;
        long jU;
        if (isVisible() && this.H) {
            androidx.media3.common.a0 a0Var = this.G;
            if (a0Var != null) {
                contentPosition = this.f13466c0 + a0Var.getContentPosition();
                jU = this.f13466c0 + a0Var.u();
            } else {
                contentPosition = 0;
                jU = 0;
            }
            boolean z10 = contentPosition != this.f13468d0;
            this.f13468d0 = contentPosition;
            this.f13470e0 = jU;
            TextView textView = this.f13478m;
            if (textView != null && !this.L && z10) {
                textView.setText(androidx.media3.common.util.a1.o0(this.f13480o, this.f13481p, contentPosition));
            }
            y0 y0Var = this.f13479n;
            if (y0Var != null) {
                y0Var.setPosition(contentPosition);
                this.f13479n.setBufferedPosition(jU);
            }
            removeCallbacks(this.f13484s);
            int playbackState = a0Var == null ? 1 : a0Var.getPlaybackState();
            if (a0Var == null || !a0Var.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f13484s, 1000L);
                return;
            }
            y0 y0Var2 = this.f13479n;
            long jMin = Math.min(y0Var2 != null ? y0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (contentPosition % 1000));
            float f11 = a0Var.getPlaybackParameters().f10566a;
            postDelayed(this.f13484s, androidx.media3.common.util.a1.q(f11 > 0.0f ? (long) (jMin / f11) : 1000L, this.N, 1000L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        ImageView imageView;
        if (isVisible() && this.H && (imageView = this.f13474i) != null) {
            if (this.O == 0) {
                F(false, false, imageView);
                return;
            }
            androidx.media3.common.a0 a0Var = this.G;
            if (a0Var == null) {
                F(true, false, imageView);
                this.f13474i.setImageDrawable(this.f13486u);
                this.f13474i.setContentDescription(this.f13489x);
                return;
            }
            F(true, true, imageView);
            int repeatMode = a0Var.getRepeatMode();
            if (repeatMode == 0) {
                this.f13474i.setImageDrawable(this.f13486u);
                this.f13474i.setContentDescription(this.f13489x);
            } else if (repeatMode == 1) {
                this.f13474i.setImageDrawable(this.f13487v);
                this.f13474i.setContentDescription(this.f13490y);
            } else if (repeatMode == 2) {
                this.f13474i.setImageDrawable(this.f13488w);
                this.f13474i.setContentDescription(this.f13491z);
            }
            this.f13474i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        ImageView imageView;
        if (isVisible() && this.H && (imageView = this.f13475j) != null) {
            androidx.media3.common.a0 a0Var = this.G;
            if (!this.T) {
                F(false, false, imageView);
                return;
            }
            if (a0Var == null) {
                F(true, false, imageView);
                this.f13475j.setImageDrawable(this.B);
                this.f13475j.setContentDescription(this.F);
            } else {
                F(true, true, imageView);
                this.f13475j.setImageDrawable(a0Var.getShuffleModeEnabled() ? this.A : this.B);
                this.f13475j.setContentDescription(a0Var.getShuffleModeEnabled() ? this.E : this.F);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4 A[SYNTHETIC] */
    public void L() {
        int i11;
        androidx.media3.common.e0.c cVar;
        long jO;
        long[] jArr;
        int length;
        androidx.media3.common.a0 a0Var = this.G;
        if (a0Var == null) {
            return;
        }
        boolean z10 = true;
        this.K = this.I && w(a0Var.getCurrentTimeline(), this.f13483r);
        long j11 = 0;
        this.f13466c0 = 0L;
        androidx.media3.common.e0 currentTimeline = a0Var.getCurrentTimeline();
        if (currentTimeline.q()) {
            i11 = 0;
        } else {
            int iT = a0Var.t();
            boolean z11 = this.K;
            int i12 = z11 ? 0 : iT;
            int iP = z11 ? currentTimeline.p() - 1 : iT;
            long j12 = 0;
            i11 = 0;
            while (i12 <= iP) {
                if (i12 == iT) {
                    this.f13466c0 = androidx.media3.common.util.a1.y1(j12);
                }
                currentTimeline.n(i12, this.f13483r);
                androidx.media3.common.e0.c cVar2 = this.f13483r;
                if (cVar2.f9963m == C.TIME_UNSET) {
                    androidx.media3.common.util.a.g(this.K ^ z10);
                    break;
                }
                int i13 = cVar2.f9964n;
                while (true) {
                    cVar = this.f13483r;
                    if (i13 <= cVar.f9965o) {
                        currentTimeline.f(i13, this.f13482q);
                        int iC = this.f13482q.c();
                        for (int iP2 = this.f13482q.p(); iP2 < iC; iP2++) {
                            long jF = this.f13482q.f(iP2);
                            if (jF == Long.MIN_VALUE) {
                                long j13 = this.f13482q.f9937d;
                                if (j13 != C.TIME_UNSET) {
                                    jF = j13;
                                    jO = jF + this.f13482q.o();
                                    if (jO >= 0) {
                                        jArr = this.V;
                                        if (i11 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.V = Arrays.copyOf(jArr, length);
                                            this.W = Arrays.copyOf(this.W, length);
                                        }
                                        this.V[i11] = androidx.media3.common.util.a1.y1(j12 + jO);
                                        this.W[i11] = this.f13482q.q(iP2);
                                        i11++;
                                    }
                                }
                            } else {
                                jO = jF + this.f13482q.o();
                                if (jO >= 0) {
                                    jArr = this.V;
                                    if (i11 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.V = Arrays.copyOf(jArr, length);
                                        this.W = Arrays.copyOf(this.W, length);
                                    }
                                    this.V[i11] = androidx.media3.common.util.a1.y1(j12 + jO);
                                    this.W[i11] = this.f13482q.q(iP2);
                                    i11++;
                                }
                            }
                        }
                        i13++;
                    }
                }
                j12 += cVar.f9963m;
                i12++;
                z10 = true;
            }
            j11 = j12;
        }
        long jY1 = androidx.media3.common.util.a1.y1(j11);
        TextView textView = this.f13477l;
        if (textView != null) {
            textView.setText(androidx.media3.common.util.a1.o0(this.f13480o, this.f13481p, jY1));
        }
        y0 y0Var = this.f13479n;
        if (y0Var != null) {
            y0Var.setDuration(jY1);
            int length2 = this.f13462a0.length;
            int i14 = i11 + length2;
            long[] jArr2 = this.V;
            if (i14 > jArr2.length) {
                this.V = Arrays.copyOf(jArr2, i14);
                this.W = Arrays.copyOf(this.W, i14);
            }
            System.arraycopy(this.f13462a0, 0, this.V, i11, length2);
            System.arraycopy(this.f13464b0, 0, this.W, i11, length2);
            this.f13479n.setAdGroupTimesMs(this.V, this.W, i14);
        }
        I();
    }

    private static boolean w(androidx.media3.common.e0 e0Var, androidx.media3.common.e0.c cVar) {
        if (e0Var.p() > 100) {
            return false;
        }
        int iP = e0Var.p();
        for (int i11 = 0; i11 < iP; i11++) {
            if (e0Var.n(i11, cVar).f9963m == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    private static int x(TypedArray typedArray, int i11) {
        return typedArray.getInt(R$styleable.LegacyPlayerControlView_repeat_toggle_modes, i11);
    }

    private void y() {
        removeCallbacks(this.f13485t);
        if (this.M <= 0) {
            this.U = C.TIME_UNSET;
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        int i11 = this.M;
        this.U = jUptimeMillis + ((long) i11);
        if (this.H) {
            postDelayed(this.f13485t, i11);
        }
    }

    private static boolean z(int i11) {
        return i11 == 90 || i11 == 89 || i11 == 85 || i11 == 79 || i11 == 126 || i11 == 127 || i11 == 87 || i11 == 88;
    }

    public void addVisibilityListener(d dVar) {
        androidx.media3.common.util.a.e(dVar);
        this.f13463b.add(dVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        androidx.media3.common.a0 a0Var = this.G;
        if (a0Var == null || !z(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (a0Var.getPlaybackState() == 4) {
                return true;
            }
            a0Var.v();
            return true;
        }
        if (keyCode == 89) {
            a0Var.w();
            return true;
        }
        if (keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (keyCode == 79 || keyCode == 85) {
            androidx.media3.common.util.a1.x0(a0Var, this.J);
            return true;
        }
        if (keyCode == 87) {
            a0Var.m();
            return true;
        }
        if (keyCode == 88) {
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

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f13485t);
        } else if (motionEvent.getAction() == 1) {
            y();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public androidx.media3.common.a0 getPlayer() {
        return this.G;
    }

    public int getRepeatToggleModes() {
        return this.O;
    }

    public boolean getShowShuffleButton() {
        return this.T;
    }

    public int getShowTimeoutMs() {
        return this.M;
    }

    public boolean getShowVrButton() {
        View view = this.f13476k;
        return view != null && view.getVisibility() == 0;
    }

    public void hide() {
        if (isVisible()) {
            setVisibility(8);
            Iterator it = this.f13463b.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                getVisibility();
                throw null;
            }
            removeCallbacks(this.f13484s);
            removeCallbacks(this.f13485t);
            this.U = C.TIME_UNSET;
        }
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.H = true;
        long j11 = this.U;
        if (j11 != C.TIME_UNSET) {
            long jUptimeMillis = j11 - SystemClock.uptimeMillis();
            if (jUptimeMillis <= 0) {
                hide();
            } else {
                postDelayed(this.f13485t, jUptimeMillis);
            }
        } else if (isVisible()) {
            y();
        }
        E();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.H = false;
        removeCallbacks(this.f13484s);
        removeCallbacks(this.f13485t);
    }

    public void removeVisibilityListener(d dVar) {
        this.f13463b.remove(dVar);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.f13462a0 = new long[0];
            this.f13464b0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) androidx.media3.common.util.a.e(zArr);
            androidx.media3.common.util.a.a(jArr.length == zArr2.length);
            this.f13462a0 = jArr;
            this.f13464b0 = zArr2;
        }
        L();
    }

    public void setPlayer(@Nullable androidx.media3.common.a0 a0Var) {
        androidx.media3.common.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        androidx.media3.common.util.a.a(a0Var == null || a0Var.k() == Looper.getMainLooper());
        androidx.media3.common.a0 a0Var2 = this.G;
        if (a0Var2 == a0Var) {
            return;
        }
        if (a0Var2 != null) {
            a0Var2.L(this.f13461a);
        }
        this.G = a0Var;
        if (a0Var != null) {
            a0Var.M(this.f13461a);
        }
        E();
    }

    public void setProgressUpdateListener(@Nullable c cVar) {
    }

    public void setRepeatToggleModes(int i11) {
        this.O = i11;
        androidx.media3.common.a0 a0Var = this.G;
        if (a0Var != null) {
            int repeatMode = a0Var.getRepeatMode();
            if (i11 == 0 && repeatMode != 0) {
                this.G.setRepeatMode(0);
            } else if (i11 == 1 && repeatMode == 2) {
                this.G.setRepeatMode(1);
            } else if (i11 == 2 && repeatMode == 1) {
                this.G.setRepeatMode(2);
            }
        }
        J();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.Q = z10;
        G();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z10) {
        this.I = z10;
        L();
    }

    public void setShowNextButton(boolean z10) {
        this.S = z10;
        G();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z10) {
        this.J = z10;
        H();
    }

    public void setShowPreviousButton(boolean z10) {
        this.R = z10;
        G();
    }

    public void setShowRewindButton(boolean z10) {
        this.P = z10;
        G();
    }

    public void setShowShuffleButton(boolean z10) {
        this.T = z10;
        K();
    }

    public void setShowTimeoutMs(int i11) {
        this.M = i11;
        if (isVisible()) {
            y();
        }
    }

    public void setShowVrButton(boolean z10) {
        View view = this.f13476k;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i11) {
        this.N = androidx.media3.common.util.a1.p(i11, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f13476k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            F(getShowVrButton(), onClickListener != null, this.f13476k);
        }
    }

    public void show() {
        if (!isVisible()) {
            setVisibility(0);
            Iterator it = this.f13463b.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                getVisibility();
                throw null;
            }
            E();
            B();
            A();
        }
        y();
    }
}
