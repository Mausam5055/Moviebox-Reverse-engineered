package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.C0993p;
import com.cloud.hisavana.sdk.R$dimen;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.f4;
import com.cloud.hisavana.sdk.q4;

/* JADX INFO: loaded from: classes3.dex */
public class SplashAdVideoView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdVideoView f22303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ImageView f22304c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f22305d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private q4 f22306e;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SplashAdVideoView.this.f22303b != null) {
                SplashAdVideoView.this.f22303b.openOrCloseVolume();
            }
        }
    }

    class b implements q4 {
        b() {
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void a(C0993p c0993p) {
            if (SplashAdVideoView.this.f22306e != null) {
                SplashAdVideoView.this.f22306e.a(c0993p);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void b() {
            if (SplashAdVideoView.this.f22306e != null) {
                SplashAdVideoView.this.f22306e.b();
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void c(long j11, long j12, int i11) {
            if (SplashAdVideoView.this.f22306e != null) {
                SplashAdVideoView.this.f22306e.c(j11, j12, i11);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void d(boolean z10) {
            e4.b().d("SplashAdVideoView", "onVideoClickToPauseOrPlay isPlay " + z10);
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void e() {
            if (SplashAdVideoView.this.f22306e != null) {
                SplashAdVideoView.this.f22306e.e();
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void f(boolean z10) {
            if (SplashAdVideoView.this.f22306e != null) {
                SplashAdVideoView.this.f22306e.f(z10);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onComplete() {
            if (SplashAdVideoView.this.f22303b != null && SplashAdVideoView.this.f22305d) {
                SplashAdVideoView.this.f22303b.repeat();
            }
            if (SplashAdVideoView.this.f22306e != null) {
                SplashAdVideoView.this.f22306e.onComplete();
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onIsPlayingChanged(boolean z10) {
            if (SplashAdVideoView.this.f22306e != null) {
                SplashAdVideoView.this.f22306e.onIsPlayingChanged(z10);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onVideoSizeChanged(int i11, int i12) {
            if (SplashAdVideoView.this.f22306e != null) {
                SplashAdVideoView.this.f22306e.onVideoSizeChanged(i11, i12);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onVolumeChanged(float f11) {
            if (f11 == 0.0f) {
                SplashAdVideoView.this.f22304c.setImageResource(R$drawable.hisavana_volume_close);
            } else {
                SplashAdVideoView.this.f22304c.setImageResource(R$drawable.hisavana_volume_open);
            }
            if (SplashAdVideoView.this.f22306e != null) {
                SplashAdVideoView.this.f22306e.onVolumeChanged(f11);
            }
        }
    }

    public SplashAdVideoView(@NonNull Context context) {
        this(context, null);
    }

    public SplashAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SplashAdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f22302a = "SplashAdVideoView";
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_splash_ad_video_view, (ViewGroup) this, false);
        removeAllViews();
        addView(viewInflate);
        this.f22303b = (AdVideoView) viewInflate.findViewById(R$id.ad_video);
        ImageView imageView = (ImageView) viewInflate.findViewById(R$id.im_volume);
        this.f22304c = imageView;
        imageView.setOnClickListener(new a());
        e();
    }

    private void e() {
        AdVideoView adVideoView = this.f22303b;
        if (adVideoView == null) {
            return;
        }
        adVideoView.setAdMediaPlayerListener(new b());
    }

    public int getDuration() {
        AdVideoView adVideoView = this.f22303b;
        if (adVideoView == null) {
            return 0;
        }
        if (adVideoView.getDuration() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) this.f22303b.getDuration();
    }

    public int getRemainingDuration() {
        AdVideoView adVideoView = this.f22303b;
        if (adVideoView == null) {
            return 0;
        }
        long duration = adVideoView.getDuration();
        e4.b().d("SplashAdVideoView", "getRemainingDuration -------------> duration = " + duration);
        long currentPosition = this.f22303b.getCurrentPosition();
        e4.b().d("SplashAdVideoView", "getRemainingDuration -------------> currentDuration = " + currentPosition);
        long j11 = duration - currentPosition;
        e4.b().d("SplashAdVideoView", "getRemainingDuration -------------> remainingDuration = " + j11);
        if (j11 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j11;
    }

    public void pause() {
        AdVideoView adVideoView = this.f22303b;
        if (adVideoView != null) {
            adVideoView.pause();
        }
    }

    public void play() {
        AdVideoView adVideoView = this.f22303b;
        if (adVideoView != null) {
            adVideoView.play();
        }
    }

    public void release() {
        AdVideoView adVideoView = this.f22303b;
        if (adVideoView != null) {
            adVideoView.setAdMediaPlayerListener(null);
            this.f22303b.release();
            this.f22303b.removeAllViews();
            removeView(this.f22303b);
            this.f22303b = null;
        }
        q4 q4Var = this.f22306e;
        if (q4Var instanceof f4) {
            ((f4) q4Var).j();
        }
        this.f22306e = null;
    }

    public void resetVolumePosition(boolean z10) {
        ImageView imageView = this.f22304c;
        if (imageView != null && z10) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            marginLayoutParams.leftMargin = getResources().getDimensionPixelOffset(R$dimen.hisavana_ad_dimen_8);
            marginLayoutParams.topMargin = getResources().getDimensionPixelOffset(R$dimen.hisavana_ad_dimen_8);
            this.f22304c.setLayoutParams(marginLayoutParams);
        }
    }

    public void setAdMediaPlayerListener(q4 q4Var) {
        this.f22306e = q4Var;
    }

    public void setAutoReset(boolean z10) {
        this.f22305d = z10;
    }

    public void setCompanionSize(String str, int i11, int i12) {
        AdVideoView adVideoView = this.f22303b;
        if (adVideoView != null) {
            adVideoView.setCompanionSize(str);
        }
    }

    public void setMediaData(String str, AdsDTO adsDTO, boolean z10) {
        e4.b().d("SplashAdVideoView", "setMediaData -------------> path = " + str);
        AdVideoView adVideoView = this.f22303b;
        if (adVideoView != null) {
            adVideoView.setPlayWhenReady(true);
            this.f22303b.setMediaData(adsDTO, str, a7.c.r(), z10);
        }
    }
}
