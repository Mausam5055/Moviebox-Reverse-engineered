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
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.f4;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.q4;

/* JADX INFO: loaded from: classes3.dex */
public class InterstitialAdVideoView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdVideoView f22273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ImageView f22274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ProgressBar f22275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f22277f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private q4 f22278g;

    class a implements q4 {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void a(C0993p c0993p) {
            if (InterstitialAdVideoView.this.f22278g != null) {
                InterstitialAdVideoView.this.f22278g.a(c0993p);
            }
            InterstitialAdVideoView.this.f22274c.setVisibility(0);
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void b() {
            if (InterstitialAdVideoView.this.f22278g != null) {
                InterstitialAdVideoView.this.f22278g.b();
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void c(long j11, long j12, int i11) {
            InterstitialAdVideoView.this.f22275d.setProgress(i11);
            if (InterstitialAdVideoView.this.f22278g != null) {
                InterstitialAdVideoView.this.f22278g.c(j11, j12, i11);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void d(boolean z10) {
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void e() {
            if (InterstitialAdVideoView.this.f22278g != null) {
                InterstitialAdVideoView.this.f22278g.e();
            }
            if (InterstitialAdVideoView.this.f22275d.getVisibility() == 8 && InterstitialAdVideoView.this.f22277f) {
                InterstitialAdVideoView.this.f22275d.setVisibility(0);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void f(boolean z10) {
            if (InterstitialAdVideoView.this.f22278g != null) {
                InterstitialAdVideoView.this.f22278g.f(z10);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onComplete() {
            if (InterstitialAdVideoView.this.f22278g != null) {
                InterstitialAdVideoView.this.f22278g.onComplete();
            }
            if (InterstitialAdVideoView.this.f22273b != null && InterstitialAdVideoView.this.f22276e) {
                InterstitialAdVideoView.this.f22273b.repeat();
            }
            if (InterstitialAdVideoView.this.f22275d.getVisibility() == 0) {
                InterstitialAdVideoView.this.f22275d.setVisibility(8);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onIsPlayingChanged(boolean z10) {
            if (InterstitialAdVideoView.this.f22278g != null) {
                InterstitialAdVideoView.this.f22278g.onIsPlayingChanged(z10);
            }
            if (z10) {
                InterstitialAdVideoView.this.f22274c.setVisibility(8);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onVideoSizeChanged(int i11, int i12) {
            if (InterstitialAdVideoView.this.f22278g != null) {
                InterstitialAdVideoView.this.f22278g.onVideoSizeChanged(i11, i12);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onVolumeChanged(float f11) {
            if (InterstitialAdVideoView.this.f22278g != null) {
                InterstitialAdVideoView.this.f22278g.onVolumeChanged(f11);
            }
        }
    }

    public InterstitialAdVideoView(@NonNull Context context) {
        this(context, null);
    }

    public InterstitialAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InterstitialAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f22272a = "NativeAdVideoView";
        this.f22277f = true;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_interstitial_ad_video_view, (ViewGroup) this, false);
        this.f22274c = (ImageView) viewInflate.findViewById(R$id.repeat_btn);
        removeAllViews();
        addView(viewInflate);
        this.f22273b = (AdVideoView) viewInflate.findViewById(R$id.ad_video);
        this.f22275d = (ProgressBar) viewInflate.findViewById(R$id.ad_progress);
        i();
    }

    private void i() {
        if (this.f22273b == null) {
            return;
        }
        this.f22274c.setVisibility(8);
        this.f22274c.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.widget.video.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f22316a.j(view);
            }
        });
        this.f22273b.setAdMediaPlayerListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View view) {
        if (this.f22273b == null || !NetStateManager.checkNetworkState(false)) {
            return;
        }
        this.f22273b.repeat();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(View view) {
        AdVideoView adVideoView = this.f22273b;
        if (adVideoView != null) {
            adVideoView.openOrCloseVolume();
        }
    }

    public long getDuration() {
        AdVideoView adVideoView = this.f22273b;
        if (adVideoView != null) {
            return adVideoView.getDuration();
        }
        return 0L;
    }

    public void release() {
        AdVideoView adVideoView = this.f22273b;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(null);
            this.f22273b.release();
            this.f22273b.removeAllViews();
            removeView(this.f22273b);
            this.f22273b = null;
        }
        q4 q4Var = this.f22278g;
        if (q4Var instanceof f4) {
            ((f4) q4Var).j();
        }
        this.f22278g = null;
    }

    public void seekToPosition(long j11) {
        AdVideoView adVideoView = this.f22273b;
        if (adVideoView != null) {
            adVideoView.seekTo(j11);
        }
    }

    public void setAdMediaPlayerListener(q4 q4Var) {
        this.f22278g = q4Var;
    }

    public void setAutoReset(boolean z10) {
        this.f22276e = z10;
    }

    public void setCompanionSize(String str) {
        AdVideoView adVideoView = this.f22273b;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(str);
        }
    }

    public void setMediaData(String str, AdsDTO adsDTO, boolean z10, boolean z11) {
        e4.b().d("NativeAdVideoView", "setMediaData -------------> path = " + str);
        AdVideoView adVideoView = this.f22273b;
        if (adVideoView != null) {
            adVideoView.setMediaData(adsDTO, str, z10, z11);
        }
    }

    public void setProgressBarVisibility(int i11) {
        ProgressBar progressBar = this.f22275d;
        if (progressBar == null) {
            return;
        }
        this.f22277f = i11 == 0;
        progressBar.setVisibility(i11 != 0 ? 8 : 0);
    }

    public void setVideoSize(int i11, int i12) {
        AdVideoView adVideoView = this.f22273b;
        if (adVideoView != null) {
            adVideoView.setVideoSize(i11, i12);
        }
    }

    public void setVolumeView(View view) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.widget.video.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f22315a.k(view2);
                }
            });
        }
    }
}
