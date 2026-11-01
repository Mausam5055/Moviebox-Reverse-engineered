package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.C0993p;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.f4;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.q4;

/* JADX INFO: loaded from: classes3.dex */
public class NativeAdVideoView extends FrameLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AdVideoView f22282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ImageView f22283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ImageView f22284c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ProgressBar f22285d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22286e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f22287f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private q4 f22288g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AdsDTO f22289h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f22290i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f22291j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f22292k;

    class a implements AdVideoView.d {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.common.widget.video.AdVideoView.d
        public void a() {
            if (NativeAdVideoView.this.f22282a != null) {
                NativeAdVideoView.this.f22282a.releasePlayer();
            }
        }

        @Override // com.cloud.hisavana.sdk.common.widget.video.AdVideoView.d
        public void b() {
            if (NativeAdVideoView.this.f22282a == null || NativeAdVideoView.this.f22289h == null || NativeAdVideoView.this.f22290i == null) {
                return;
            }
            e4.b().d("NativeAdVideoView", "onOnScreen rebuild videoPlayer path=" + NativeAdVideoView.this.f22290i);
            NativeAdVideoView.this.f22282a.setMediaData(NativeAdVideoView.this.f22289h, NativeAdVideoView.this.f22290i, NativeAdVideoView.this.f22291j, NativeAdVideoView.this.f22292k);
        }
    }

    class b implements q4 {
        b() {
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void a(C0993p c0993p) {
            if (NativeAdVideoView.this.f22288g != null) {
                NativeAdVideoView.this.f22288g.a(c0993p);
            }
            NativeAdVideoView.this.f22284c.setVisibility(0);
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void b() {
            if (NativeAdVideoView.this.f22288g != null) {
                NativeAdVideoView.this.f22288g.b();
            }
            if (NativeAdVideoView.this.f22283b.getVisibility() == 8) {
                NativeAdVideoView.this.f22283b.setVisibility(0);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void c(long j11, long j12, int i11) {
            NativeAdVideoView.this.f22285d.setProgress(i11);
            if (NativeAdVideoView.this.f22288g != null) {
                NativeAdVideoView.this.f22288g.c(j11, j12, i11);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void d(boolean z10) {
            if (NativeAdVideoView.this.f22288g != null) {
                NativeAdVideoView.this.f22288g.d(z10);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void e() {
            if (NativeAdVideoView.this.f22288g != null) {
                NativeAdVideoView.this.f22288g.e();
            }
            if (NativeAdVideoView.this.f22286e && NativeAdVideoView.this.f22285d.getVisibility() == 8) {
                NativeAdVideoView.this.f22285d.setVisibility(0);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void f(boolean z10) {
            if (NativeAdVideoView.this.f22288g != null) {
                NativeAdVideoView.this.f22288g.f(z10);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onComplete() {
            if (NativeAdVideoView.this.f22288g != null) {
                NativeAdVideoView.this.f22288g.onComplete();
            }
            if (NativeAdVideoView.this.f22287f) {
                if (NativeAdVideoView.this.f22282a != null) {
                    NativeAdVideoView.this.f22282a.repeat();
                }
            } else if (NativeAdVideoView.this.f22282a != null) {
                NativeAdVideoView.this.f22282a.setCompanionViewVisibility(0);
            }
            if (NativeAdVideoView.this.f22286e && !NativeAdVideoView.this.f22287f) {
                if (NativeAdVideoView.this.f22283b.getVisibility() == 0) {
                    NativeAdVideoView.this.f22283b.setVisibility(8);
                }
                NativeAdVideoView.this.f22284c.setVisibility(0);
                if (NativeAdVideoView.this.f22285d.getVisibility() == 0) {
                    NativeAdVideoView.this.f22285d.setVisibility(8);
                }
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onIsPlayingChanged(boolean z10) {
            if (NativeAdVideoView.this.f22288g != null) {
                NativeAdVideoView.this.f22288g.onIsPlayingChanged(z10);
            }
            if (NativeAdVideoView.this.f22286e && z10) {
                NativeAdVideoView.this.f22284c.setVisibility(8);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onVideoSizeChanged(int i11, int i12) {
            if (NativeAdVideoView.this.f22288g != null) {
                NativeAdVideoView.this.f22288g.onVideoSizeChanged(i11, i12);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onVolumeChanged(float f11) {
            if (NativeAdVideoView.this.f22288g != null) {
                NativeAdVideoView.this.f22288g.onVolumeChanged(f11);
            }
            if (NativeAdVideoView.this.f22286e) {
                if (f11 == 0.0f) {
                    NativeAdVideoView.this.f22283b.setImageResource(R$drawable.hisavana_volume_close);
                } else {
                    NativeAdVideoView.this.f22283b.setImageResource(R$drawable.hisavana_volume_open);
                }
            }
        }
    }

    public NativeAdVideoView(@NonNull Context context) {
        this(context, null);
    }

    public NativeAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f22286e = true;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_native_ad_video_view, (ViewGroup) this, false);
        removeAllViews();
        addView(viewInflate);
        this.f22282a = (AdVideoView) viewInflate.findViewById(R$id.ad_video);
        this.f22283b = (ImageView) viewInflate.findViewById(R$id.im_volume);
        this.f22284c = (ImageView) viewInflate.findViewById(R$id.im_repeat);
        this.f22285d = (ProgressBar) viewInflate.findViewById(R$id.ad_progress);
        m();
        l();
    }

    private void l() {
        AdVideoView adVideoView = this.f22282a;
        if (adVideoView == null) {
            return;
        }
        adVideoView.setListModeVisibilityCallback(new a());
        this.f22282a.setAdMediaPlayerListener(new b());
    }

    protected void m() {
        this.f22283b.setOnClickListener(this);
        this.f22284c.setOnClickListener(this);
        this.f22284c.setVisibility(8);
        this.f22283b.setVisibility(8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AdVideoView adVideoView;
        if (view.getId() == R$id.im_repeat) {
            if (this.f22282a == null || !NetStateManager.checkNetworkState(false)) {
                return;
            }
            this.f22282a.repeat();
            return;
        }
        if (view.getId() != R$id.im_volume || (adVideoView = this.f22282a) == null) {
            return;
        }
        adVideoView.openOrCloseVolume();
    }

    public void pause() {
        AdVideoView adVideoView = this.f22282a;
        if (adVideoView != null) {
            adVideoView.pause();
        }
    }

    public void play() {
        AdVideoView adVideoView = this.f22282a;
        if (adVideoView != null) {
            adVideoView.play();
        }
    }

    public void release() {
        AdVideoView adVideoView = this.f22282a;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(null);
            this.f22282a.setListModeVisibilityCallback(null);
            this.f22282a.release();
            this.f22282a.removeAllViews();
            removeView(this.f22282a);
            this.f22282a = null;
        }
        this.f22289h = null;
        this.f22290i = null;
        this.f22291j = false;
        this.f22292k = false;
        q4 q4Var = this.f22288g;
        if (q4Var instanceof f4) {
            ((f4) q4Var).j();
        }
        this.f22288g = null;
    }

    public void setAdMediaPlayerListener(q4 q4Var) {
        this.f22288g = q4Var;
    }

    public void setAutoReset(boolean z10) {
        this.f22287f = z10;
    }

    public void setCompanionSize(String str) {
        AdVideoView adVideoView = this.f22282a;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(str);
        }
    }

    public void setMediaData(String str, AdsDTO adsDTO, boolean z10) {
        e4.b().d("NativeAdVideoView", "setMediaData -------------> path = " + str);
        if (this.f22282a != null) {
            boolean zR = a7.c.r();
            this.f22289h = adsDTO;
            this.f22290i = str;
            this.f22291j = zR;
            this.f22292k = z10;
            this.f22282a.setMediaData(adsDTO, str, zR, z10);
        }
    }

    public void setPlayWhenReady(boolean z10) {
        AdVideoView adVideoView = this.f22282a;
        if (adVideoView != null) {
            adVideoView.setPlayWhenReady(z10);
        }
    }

    public void setShowComponents(boolean z10) {
        this.f22286e = z10;
    }

    public void setUseListMode(boolean z10) {
        AdVideoView adVideoView = this.f22282a;
        if (adVideoView != null) {
            adVideoView.setUseListMode(z10);
        }
    }
}
