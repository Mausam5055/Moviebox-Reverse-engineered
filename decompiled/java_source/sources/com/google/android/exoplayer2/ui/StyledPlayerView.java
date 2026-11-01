package com.google.android.exoplayer2.ui;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.opengl.GLSurfaceView;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
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
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class StyledPlayerView extends FrameLayout {
    public static final int SHOW_BUFFERING_ALWAYS = 2;
    public static final int SHOW_BUFFERING_NEVER = 0;
    public static final int SHOW_BUFFERING_WHEN_PLAYING = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f27042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AspectRatioFrameLayout f27043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f27044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View f27045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f27046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ImageView f27047f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final SubtitleView f27048g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final View f27049h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final TextView f27050i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final StyledPlayerControlView f27051j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final FrameLayout f27052k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final FrameLayout f27053l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private o2 f27054m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f27055n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private StyledPlayerControlView.m f27056o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f27057p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Drawable f27058q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f27059r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f27060s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private CharSequence f27061t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f27062u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f27063v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f27064w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f27065x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f27066y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f27067z;

    private final class a implements o2.d, View.OnLayoutChangeListener, View.OnClickListener, StyledPlayerControlView.m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k3.b f27068a = new k3.b();

        public a() {
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.m
        public void l(int i11) {
            StyledPlayerView.this.D();
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onAvailableCommandsChanged(o2.b bVar) {
            q2.c(this, bVar);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StyledPlayerView.this.A();
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onCues(ba.f fVar) {
            q2.d(this, fVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onCues(List list) {
            if (StyledPlayerView.this.f27048g != null) {
                StyledPlayerView.this.f27048g.setCues(list);
            }
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
        public /* synthetic */ void onEvents(o2 o2Var, o2.c cVar) {
            q2.h(this, o2Var, cVar);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onIsLoadingChanged(boolean z10) {
            q2.i(this, z10);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onIsPlayingChanged(boolean z10) {
            q2.j(this, z10);
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            StyledPlayerView.m((TextureView) view, StyledPlayerView.this.f27066y);
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
        public void onPlayWhenReadyChanged(boolean z10, int i11) {
            StyledPlayerView.this.C();
            StyledPlayerView.this.E();
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onPlaybackParametersChanged(n2 n2Var) {
            q2.q(this, n2Var);
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onPlaybackStateChanged(int i11) {
            StyledPlayerView.this.C();
            StyledPlayerView.this.F();
            StyledPlayerView.this.E();
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
        public void onPositionDiscontinuity(o2.e eVar, o2.e eVar2, int i11) {
            if (StyledPlayerView.this.s() && StyledPlayerView.this.f27064w) {
                StyledPlayerView.this.hideController();
            }
        }

        @Override // com.google.android.exoplayer2.o2.d
        public void onRenderedFirstFrame() {
            if (StyledPlayerView.this.f27044c != null) {
                StyledPlayerView.this.f27044c.setVisibility(4);
            }
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
        public void onVideoSizeChanged(com.google.android.exoplayer2.video.y yVar) {
            StyledPlayerView.this.B();
        }

        @Override // com.google.android.exoplayer2.o2.d
        public /* synthetic */ void onVolumeChanged(float f11) {
            q2.L(this, f11);
        }
    }

    public StyledPlayerView(Context context) {
        this(context, null);
    }

    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12;
        int i13;
        boolean z10;
        boolean z11;
        int i14;
        boolean z12;
        int i15;
        boolean z13;
        int i16;
        boolean z14;
        int i17;
        boolean z15;
        boolean z16;
        boolean z17;
        int i18;
        boolean z18;
        super(context, attributeSet, i11);
        a aVar = new a();
        this.f27042a = aVar;
        if (isInEditMode()) {
            this.f27043b = null;
            this.f27044c = null;
            this.f27045d = null;
            this.f27046e = false;
            this.f27047f = null;
            this.f27048g = null;
            this.f27049h = null;
            this.f27050i = null;
            this.f27051j = null;
            this.f27052k = null;
            this.f27053l = null;
            ImageView imageView = new ImageView(context);
            if (com.google.android.exoplayer2.util.p0.f27626a >= 23) {
                p(getResources(), imageView);
            } else {
                o(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i19 = R$layout.exo_styled_player_view;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.StyledPlayerView, i11, 0);
            try {
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.StyledPlayerView_shutter_background_color);
                int color = typedArrayObtainStyledAttributes.getColor(R$styleable.StyledPlayerView_shutter_background_color, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.StyledPlayerView_player_layout_id, i19);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_use_artwork, true);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.StyledPlayerView_default_artwork, 0);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_use_controller, true);
                int i20 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerView_surface_type, 1);
                int i21 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerView_resize_mode, 0);
                int i22 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerView_show_timeout, 5000);
                boolean z21 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_hide_on_touch, true);
                boolean z22 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_auto_show, true);
                int integer = typedArrayObtainStyledAttributes.getInteger(R$styleable.StyledPlayerView_show_buffering, 0);
                this.f27060s = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_keep_content_on_player_reset, this.f27060s);
                boolean z23 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_hide_during_ads, true);
                typedArrayObtainStyledAttributes.recycle();
                i19 = resourceId;
                z12 = z21;
                i12 = i22;
                z11 = z23;
                i14 = i21;
                z10 = z22;
                i13 = integer;
                z15 = z20;
                i17 = resourceId2;
                z14 = z19;
                i16 = color;
                z13 = zHasValue;
                i15 = i20;
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            i12 = 5000;
            i13 = 0;
            z10 = true;
            z11 = true;
            i14 = 0;
            z12 = true;
            i15 = 1;
            z13 = false;
            i16 = 0;
            z14 = true;
            i17 = 0;
            z15 = true;
        }
        LayoutInflater.from(context).inflate(i19, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R$id.exo_content_frame);
        this.f27043b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            x(aspectRatioFrameLayout, i14);
        }
        View viewFindViewById = findViewById(R$id.exo_shutter);
        this.f27044c = viewFindViewById;
        if (viewFindViewById != null && z13) {
            viewFindViewById.setBackgroundColor(i16);
        }
        if (aspectRatioFrameLayout == null || i15 == 0) {
            z16 = true;
            this.f27045d = null;
            z17 = false;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i15 != 2) {
                if (i15 != 3) {
                    if (i15 != 4) {
                        this.f27045d = new SurfaceView(context);
                    } else {
                        try {
                            int i23 = VideoDecoderGLSurfaceView.f27803b;
                            this.f27045d = (View) VideoDecoderGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                        } catch (Exception e11) {
                            throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e11);
                        }
                    }
                    z16 = true;
                } else {
                    try {
                        int i24 = SphericalGLSurfaceView.f27915m;
                        z16 = true;
                        this.f27045d = (View) SphericalGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                        z18 = true;
                    } catch (Exception e12) {
                        throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e12);
                    }
                }
                this.f27045d.setLayoutParams(layoutParams);
                this.f27045d.setOnClickListener(aVar);
                this.f27045d.setClickable(false);
                aspectRatioFrameLayout.addView(this.f27045d, 0);
                z17 = z18;
            } else {
                z16 = true;
                this.f27045d = new TextureView(context);
            }
            z18 = false;
            this.f27045d.setLayoutParams(layoutParams);
            this.f27045d.setOnClickListener(aVar);
            this.f27045d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f27045d, 0);
            z17 = z18;
        }
        this.f27046e = z17;
        this.f27052k = (FrameLayout) findViewById(R$id.exo_ad_overlay);
        this.f27053l = (FrameLayout) findViewById(R$id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_artwork);
        this.f27047f = imageView2;
        this.f27057p = (!z14 || imageView2 == null) ? false : z16;
        if (i17 != 0) {
            this.f27058q = androidx.core.content.b.getDrawable(getContext(), i17);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R$id.exo_subtitles);
        this.f27048g = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View viewFindViewById2 = findViewById(R$id.exo_buffering);
        this.f27049h = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.f27059r = i13;
        TextView textView = (TextView) findViewById(R$id.exo_error_message);
        this.f27050i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        StyledPlayerControlView styledPlayerControlView = (StyledPlayerControlView) findViewById(R$id.exo_controller);
        View viewFindViewById3 = findViewById(R$id.exo_controller_placeholder);
        if (styledPlayerControlView != null) {
            this.f27051j = styledPlayerControlView;
            i18 = 0;
        } else if (viewFindViewById3 != null) {
            i18 = 0;
            StyledPlayerControlView styledPlayerControlView2 = new StyledPlayerControlView(context, null, 0, attributeSet);
            this.f27051j = styledPlayerControlView2;
            styledPlayerControlView2.setId(R$id.exo_controller);
            styledPlayerControlView2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(styledPlayerControlView2, iIndexOfChild);
        } else {
            i18 = 0;
            this.f27051j = null;
        }
        StyledPlayerControlView styledPlayerControlView3 = this.f27051j;
        this.f27062u = styledPlayerControlView3 != null ? i12 : i18;
        this.f27065x = z12;
        this.f27063v = z10;
        this.f27064w = z11;
        this.f27055n = (!z15 || styledPlayerControlView3 == null) ? i18 : z16;
        if (styledPlayerControlView3 != null) {
            styledPlayerControlView3.hideImmediately();
            this.f27051j.addVisibilityListener(aVar);
        }
        D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A() {
        if (I() && this.f27054m != null) {
            if (!this.f27051j.isFullyVisible()) {
                t(true);
                return true;
            }
            if (this.f27065x) {
                this.f27051j.hide();
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        o2 o2Var = this.f27054m;
        com.google.android.exoplayer2.video.y yVarP = o2Var != null ? o2Var.p() : com.google.android.exoplayer2.video.y.f28007e;
        int i11 = yVarP.f28009a;
        int i12 = yVarP.f28010b;
        int i13 = yVarP.f28011c;
        float f11 = (i12 == 0 || i11 == 0) ? 0.0f : (i11 * yVarP.f28012d) / i12;
        View view = this.f27045d;
        if (view instanceof TextureView) {
            if (f11 > 0.0f && (i13 == 90 || i13 == 270)) {
                f11 = 1.0f / f11;
            }
            if (this.f27066y != 0) {
                view.removeOnLayoutChangeListener(this.f27042a);
            }
            this.f27066y = i13;
            if (i13 != 0) {
                this.f27045d.addOnLayoutChangeListener(this.f27042a);
            }
            m((TextureView) this.f27045d, this.f27066y);
        }
        u(this.f27043b, this.f27046e ? 0.0f : f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:14:0x0020  */
    public void C() {
        boolean z10;
        if (this.f27049h != null) {
            o2 o2Var = this.f27054m;
            if (o2Var == null || o2Var.getPlaybackState() != 2) {
                z10 = false;
            } else {
                int i11 = this.f27059r;
                z10 = true;
                if (i11 != 2 && (i11 != 1 || !this.f27054m.getPlayWhenReady())) {
                    z10 = false;
                }
            }
            this.f27049h.setVisibility(z10 ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        StyledPlayerControlView styledPlayerControlView = this.f27051j;
        if (styledPlayerControlView == null || !this.f27055n) {
            setContentDescription(null);
        } else if (styledPlayerControlView.isFullyVisible()) {
            setContentDescription(this.f27065x ? getResources().getString(R$string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R$string.exo_controls_show));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        if (s() && this.f27064w) {
            hideController();
        } else {
            t(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        TextView textView = this.f27050i;
        if (textView != null) {
            CharSequence charSequence = this.f27061t;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f27050i.setVisibility(0);
            } else {
                o2 o2Var = this.f27054m;
                if (o2Var != null) {
                    o2Var.c();
                }
                this.f27050i.setVisibility(8);
            }
        }
    }

    private void G(boolean z10) {
        o2 o2Var = this.f27054m;
        if (o2Var == null || o2Var.getCurrentTracksInfo().getTrackGroupInfos().isEmpty()) {
            if (this.f27060s) {
                return;
            }
            q();
            n();
            return;
        }
        if (z10 && !this.f27060s) {
            n();
        }
        if (o2Var.getCurrentTracksInfo().isTypeSelected(2)) {
            q();
            return;
        }
        n();
        if (H() && (v(o2Var.x()) || w(this.f27058q))) {
            return;
        }
        q();
    }

    private boolean H() {
        if (!this.f27057p) {
            return false;
        }
        com.google.android.exoplayer2.util.a.i(this.f27047f);
        return true;
    }

    private boolean I() {
        if (!this.f27055n) {
            return false;
        }
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m(TextureView textureView, int i11) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i11 != 0) {
            float f11 = width / 2.0f;
            float f12 = height / 2.0f;
            matrix.postRotate(i11, f11, f12);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f11, f12);
        }
        textureView.setTransform(matrix);
    }

    private void n() {
        View view = this.f27044c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void o(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color));
    }

    private static void p(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color, null));
    }

    private void q() {
        ImageView imageView = this.f27047f;
        if (imageView != null) {
            imageView.setImageResource(R.color.transparent);
            this.f27047f.setVisibility(4);
        }
    }

    private boolean r(int i11) {
        return i11 == 19 || i11 == 270 || i11 == 22 || i11 == 271 || i11 == 20 || i11 == 269 || i11 == 21 || i11 == 268 || i11 == 23;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s() {
        o2 o2Var = this.f27054m;
        return o2Var != null && o2Var.isPlayingAd() && this.f27054m.getPlayWhenReady();
    }

    public static void switchTargetView(o2 o2Var, @Nullable StyledPlayerView styledPlayerView, @Nullable StyledPlayerView styledPlayerView2) {
        if (styledPlayerView == styledPlayerView2) {
            return;
        }
        if (styledPlayerView2 != null) {
            styledPlayerView2.setPlayer(o2Var);
        }
        if (styledPlayerView != null) {
            styledPlayerView.setPlayer(null);
        }
    }

    private void t(boolean z10) {
        if (!(s() && this.f27064w) && I()) {
            boolean z11 = this.f27051j.isFullyVisible() && this.f27051j.getShowTimeoutMs() <= 0;
            boolean zY = y();
            if (z10 || z11 || zY) {
                z(zY);
            }
        }
    }

    private boolean v(a2 a2Var) {
        byte[] bArr = a2Var.f24484j;
        if (bArr == null) {
            return false;
        }
        return w(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    private boolean w(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                u(this.f27043b, intrinsicWidth / intrinsicHeight);
                this.f27047f.setImageDrawable(drawable);
                this.f27047f.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void x(AspectRatioFrameLayout aspectRatioFrameLayout, int i11) {
        aspectRatioFrameLayout.setResizeMode(i11);
    }

    private boolean y() {
        o2 o2Var = this.f27054m;
        if (o2Var == null) {
            return true;
        }
        int playbackState = o2Var.getPlaybackState();
        return this.f27063v && !this.f27054m.getCurrentTimeline().u() && (playbackState == 1 || playbackState == 4 || !((o2) com.google.android.exoplayer2.util.a.e(this.f27054m)).getPlayWhenReady());
    }

    private void z(boolean z10) {
        if (I()) {
            this.f27051j.setShowTimeoutMs(z10 ? 0 : this.f27062u);
            this.f27051j.show();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        o2 o2Var = this.f27054m;
        if (o2Var != null && o2Var.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean zR = r(keyEvent.getKeyCode());
        if (zR && I() && !this.f27051j.isFullyVisible()) {
            t(true);
            return true;
        }
        if (dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            t(true);
            return true;
        }
        if (zR && I()) {
            t(true);
        }
        return false;
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        return I() && this.f27051j.dispatchMediaKeyEvent(keyEvent);
    }

    public List<com.google.android.exoplayer2.ui.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f27053l;
        if (frameLayout != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        StyledPlayerControlView styledPlayerControlView = this.f27051j;
        if (styledPlayerControlView != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(styledPlayerControlView, 1));
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) com.google.android.exoplayer2.util.a.j(this.f27052k, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f27063v;
    }

    public boolean getControllerHideOnTouch() {
        return this.f27065x;
    }

    public int getControllerShowTimeoutMs() {
        return this.f27062u;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f27058q;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f27053l;
    }

    @Nullable
    public o2 getPlayer() {
        return this.f27054m;
    }

    public int getResizeMode() {
        com.google.android.exoplayer2.util.a.i(this.f27043b);
        return this.f27043b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f27048g;
    }

    public boolean getUseArtwork() {
        return this.f27057p;
    }

    public boolean getUseController() {
        return this.f27055n;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f27045d;
    }

    public void hideController() {
        StyledPlayerControlView styledPlayerControlView = this.f27051j;
        if (styledPlayerControlView != null) {
            styledPlayerControlView.hide();
        }
    }

    public boolean isControllerFullyVisible() {
        StyledPlayerControlView styledPlayerControlView = this.f27051j;
        return styledPlayerControlView != null && styledPlayerControlView.isFullyVisible();
    }

    public void onPause() {
        View view = this.f27045d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
    }

    public void onResume() {
        View view = this.f27045d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!I() || this.f27054m == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f27067z = true;
            return true;
        }
        if (action != 1 || !this.f27067z) {
            return false;
        }
        this.f27067z = false;
        return performClick();
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!I() || this.f27054m == null) {
            return false;
        }
        t(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return A();
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        com.google.android.exoplayer2.util.a.i(this.f27043b);
        this.f27043b.setAspectRatioListener(bVar);
    }

    public void setControllerAutoShow(boolean z10) {
        this.f27063v = z10;
    }

    public void setControllerHideDuringAds(boolean z10) {
        this.f27064w = z10;
    }

    public void setControllerHideOnTouch(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27065x = z10;
        D();
    }

    public void setControllerOnFullScreenModeChangedListener(@Nullable StyledPlayerControlView.d dVar) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setOnFullScreenModeChangedListener(dVar);
    }

    public void setControllerShowTimeoutMs(int i11) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27062u = i11;
        if (this.f27051j.isFullyVisible()) {
            showController();
        }
    }

    public void setControllerVisibilityListener(@Nullable StyledPlayerControlView.m mVar) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        StyledPlayerControlView.m mVar2 = this.f27056o;
        if (mVar2 == mVar) {
            return;
        }
        if (mVar2 != null) {
            this.f27051j.removeVisibilityListener(mVar2);
        }
        this.f27056o = mVar;
        if (mVar != null) {
            this.f27051j.addVisibilityListener(mVar);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        com.google.android.exoplayer2.util.a.g(this.f27050i != null);
        this.f27061t = charSequence;
        F();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f27058q != drawable) {
            this.f27058q = drawable;
            G(false);
        }
    }

    public void setErrorMessageProvider(@Nullable com.google.android.exoplayer2.util.k kVar) {
        if (kVar != null) {
            F();
        }
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setKeepContentOnPlayerReset(boolean z10) {
        if (this.f27060s != z10) {
            this.f27060s = z10;
            G(false);
        }
    }

    public void setPlayer(@Nullable o2 o2Var) {
        com.google.android.exoplayer2.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(o2Var == null || o2Var.k() == Looper.getMainLooper());
        o2 o2Var2 = this.f27054m;
        if (o2Var2 == o2Var) {
            return;
        }
        if (o2Var2 != null) {
            o2Var2.A(this.f27042a);
            View view = this.f27045d;
            if (view instanceof TextureView) {
                o2Var2.clearVideoTextureView((TextureView) view);
            } else if (view instanceof SurfaceView) {
                o2Var2.clearVideoSurfaceView((SurfaceView) view);
            }
        }
        SubtitleView subtitleView = this.f27048g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f27054m = o2Var;
        if (I()) {
            this.f27051j.setPlayer(o2Var);
        }
        C();
        F();
        G(true);
        if (o2Var == null) {
            hideController();
            return;
        }
        if (o2Var.h(27)) {
            View view2 = this.f27045d;
            if (view2 instanceof TextureView) {
                o2Var.setVideoTextureView((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                o2Var.setVideoSurfaceView((SurfaceView) view2);
            }
            B();
        }
        if (this.f27048g != null && o2Var.h(28)) {
            this.f27048g.setCues(o2Var.getCurrentCues());
        }
        o2Var.C(this.f27042a);
        t(false);
    }

    public void setRepeatToggleModes(int i11) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setRepeatToggleModes(i11);
    }

    public void setResizeMode(int i11) {
        com.google.android.exoplayer2.util.a.i(this.f27043b);
        this.f27043b.setResizeMode(i11);
    }

    public void setShowBuffering(int i11) {
        if (this.f27059r != i11) {
            this.f27059r = i11;
            C();
        }
    }

    public void setShowFastForwardButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setShowFastForwardButton(z10);
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setShowMultiWindowTimeBar(z10);
    }

    public void setShowNextButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setShowNextButton(z10);
    }

    public void setShowPreviousButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setShowPreviousButton(z10);
    }

    public void setShowRewindButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setShowRewindButton(z10);
    }

    public void setShowShuffleButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setShowShuffleButton(z10);
    }

    public void setShowSubtitleButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setShowSubtitleButton(z10);
    }

    public void setShowVrButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f27051j);
        this.f27051j.setShowVrButton(z10);
    }

    public void setShutterBackgroundColor(int i11) {
        View view = this.f27044c;
        if (view != null) {
            view.setBackgroundColor(i11);
        }
    }

    public void setUseArtwork(boolean z10) {
        com.google.android.exoplayer2.util.a.g((z10 && this.f27047f == null) ? false : true);
        if (this.f27057p != z10) {
            this.f27057p = z10;
            G(false);
        }
    }

    public void setUseController(boolean z10) {
        com.google.android.exoplayer2.util.a.g((z10 && this.f27051j == null) ? false : true);
        if (this.f27055n == z10) {
            return;
        }
        this.f27055n = z10;
        if (I()) {
            this.f27051j.setPlayer(this.f27054m);
        } else {
            StyledPlayerControlView styledPlayerControlView = this.f27051j;
            if (styledPlayerControlView != null) {
                styledPlayerControlView.hide();
                this.f27051j.setPlayer(null);
            }
        }
        D();
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
        View view = this.f27045d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i11);
        }
    }

    public void showController() {
        z(y());
    }

    protected void u(AspectRatioFrameLayout aspectRatioFrameLayout, float f11) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f11);
        }
    }
}
