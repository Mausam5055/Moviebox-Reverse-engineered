package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.C0993p;
import com.cloud.hisavana.sdk.a5;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.d4;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.e5;
import com.cloud.hisavana.sdk.m4;
import com.cloud.hisavana.sdk.manager.VideoMeasureManager;
import com.cloud.hisavana.sdk.q4;
import com.cloud.sdk.commonutil.util.h;

/* JADX INFO: loaded from: classes3.dex */
public class AdVideoView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m4 f22257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MediaTextureView f22258b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScaleImageView f22259c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q4 f22260d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AdsDTO f22261e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f22262f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f22263g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f22264h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f22265i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d f22266j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Runnable f22267k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private e5 f22268l;

    class a implements q4 {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void a(C0993p c0993p) {
            e4.b().w("AdVideoView", "onPlayerError code=" + c0993p.a() + " msg=" + c0993p.b());
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.a(c0993p);
            }
            try {
                Bitmap bitmap = AdVideoView.this.f22258b.getBitmap();
                if (bitmap != null) {
                    AdVideoView.this.f22259c.setImageBitmap(bitmap);
                    AdVideoView.this.f22259c.setVisibility(0);
                }
            } catch (Throwable th2) {
                e4.b().w("AdVideoView", "getBitmap failed: " + th2.getMessage());
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void b() {
            AdVideoView.this.f22265i = true;
            AdVideoView.this.m();
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.b();
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void c(long j11, long j12, int i11) {
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.c(j11, j12, i11);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void d(boolean z10) {
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.d(z10);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void e() {
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.e();
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void f(boolean z10) {
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.f(z10);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onComplete() {
            AdVideoView adVideoView = AdVideoView.this;
            adVideoView.removeCallbacks(adVideoView.f22267k);
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.onComplete();
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onIsPlayingChanged(boolean z10) {
            if (z10) {
                AdVideoView.this.f22259c.setVisibility(8);
                AdVideoView.this.n();
            } else {
                AdVideoView adVideoView = AdVideoView.this;
                adVideoView.removeCallbacks(adVideoView.f22267k);
            }
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.onIsPlayingChanged(z10);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onVideoSizeChanged(int i11, int i12) {
            AdVideoView.this.f22258b.adaptVideoSize(i11 > 0 ? i11 : h.g(), i12 > 0 ? i12 : h.f());
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.onVideoSizeChanged(i11, i12);
            }
        }

        @Override // com.cloud.hisavana.sdk.q4
        public void onVolumeChanged(float f11) {
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.onVolumeChanged(f11);
            }
        }
    }

    class b extends DrawableResponseListener {
        b() {
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.f(false);
            }
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            e4.b().d("AdVideoView", "setCompanionSize onRequestSuccess");
            if (AdVideoView.this.isPlaying()) {
                return;
            }
            AdVideoView.this.f22259c.setVisibility(0);
            if (AdVideoView.this.f22260d != null) {
                AdVideoView.this.f22260d.f(true);
            }
        }
    }

    class c implements e5 {
        c() {
        }

        @Override // com.cloud.hisavana.sdk.e5
        public void a(double d11) {
            if (AdVideoView.this.f22265i) {
                if (d11 <= 0.0d) {
                    if (AdVideoView.this.isPlaying()) {
                        AdVideoView.this.pause();
                    }
                    if (!AdVideoView.this.f22263g || AdVideoView.this.f22266j == null || AdVideoView.this.f22257a == null) {
                        return;
                    }
                    AdVideoView.this.f22266j.a();
                    return;
                }
                if (AdVideoView.this.f22257a != null) {
                    if (AdVideoView.this.isPlaying()) {
                        return;
                    }
                    AdVideoView.this.play();
                } else {
                    if (!AdVideoView.this.f22263g || AdVideoView.this.f22266j == null) {
                        return;
                    }
                    AdVideoView.this.f22266j.b();
                }
            }
        }
    }

    public interface d {
        void a();

        void b();
    }

    public AdVideoView(@NonNull Context context) {
        this(context, null);
    }

    public AdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f22262f = true;
        this.f22264h = true;
        this.f22267k = new Runnable() { // from class: com.cloud.hisavana.sdk.common.widget.video.AdVideoView.1
            @Override // java.lang.Runnable
            public void run() {
                if (AdVideoView.this.f22257a == null || !AdVideoView.this.f22257a.isPlaying()) {
                    return;
                }
                long duration = AdVideoView.this.f22257a.getDuration();
                long currentPosition = AdVideoView.this.f22257a.getCurrentPosition();
                int i12 = duration == 0 ? 0 : (int) ((100 * currentPosition) / duration);
                if (AdVideoView.this.f22260d != null) {
                    AdVideoView.this.f22260d.c(duration, currentPosition, i12);
                }
                if (AdVideoView.this.f22257a.isPlaying()) {
                    AdVideoView adVideoView = AdVideoView.this;
                    adVideoView.postDelayed(adVideoView.f22267k, 1000 - (currentPosition % 1000));
                }
            }
        };
        this.f22268l = new c();
        this.f22258b = new MediaTextureView(context);
        this.f22259c = new ScaleImageView(context);
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        AdsDTO adsDTO;
        if (!this.f22262f || (adsDTO = this.f22261e) == null) {
            return;
        }
        VideoMeasureManager.INSTANCE.g(new a5(adsDTO, this, this.f22268l));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        post(this.f22267k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(m4 m4Var, AdsDTO adsDTO, String str, boolean z10, boolean z11) {
        if (m4Var == null || m4Var != this.f22257a) {
            return;
        }
        m4Var.b(adsDTO, str, z10, z11);
    }

    public void dispatchPause() {
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.b();
            removeCallbacks(this.f22267k);
        }
    }

    public void dispatchPlay() {
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.e();
            n();
        }
    }

    public void dispatchPlayPause() {
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.d();
        }
    }

    public long getCurrentPosition() {
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            return m4Var.getCurrentPosition();
        }
        return 0L;
    }

    public long getDuration() {
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            return m4Var.getDuration();
        }
        return 0L;
    }

    public boolean isPlayWhenReady() {
        m4 m4Var = this.f22257a;
        return m4Var != null && m4Var.getPlayWhenReady();
    }

    public boolean isPlaying() {
        m4 m4Var = this.f22257a;
        return m4Var != null && m4Var.isPlaying();
    }

    protected void o() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.f22258b, layoutParams);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        addView(this.f22259c, layoutParams2);
    }

    public void openOrCloseVolume() {
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.a();
        }
    }

    public void pause() {
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.pause();
        }
    }

    public void play() {
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.play();
        }
    }

    public void release() {
        e4.b().d("AdVideoView", "release videoPlayer=" + System.identityHashCode(this.f22257a));
        VideoMeasureManager.INSTANCE.f(this.f22261e);
        this.f22258b.destroyDrawingCache();
        removeCallbacks(this.f22267k);
        this.f22266j = null;
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.release();
            this.f22257a = null;
        }
    }

    public void releasePlayer() {
        e4.b().d("AdVideoView", "releasePlayer videoPlayer=" + System.identityHashCode(this.f22257a));
        removeCallbacks(this.f22267k);
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.release();
            this.f22257a = null;
        }
    }

    public void repeat() {
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.c();
        }
    }

    public final void seekTo(long j11) {
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.seekTo(j11);
        }
    }

    public void setAdMediaPlayerListener(q4 q4Var) {
        this.f22260d = q4Var;
    }

    public void setCompanionSize(String str) {
        DownLoadRequest.o(str, null, 12, new b(), this.f22259c);
    }

    public void setCompanionViewVisibility(int i11) {
        ScaleImageView scaleImageView = this.f22259c;
        if (scaleImageView != null) {
            scaleImageView.setVisibility(i11);
        }
    }

    public void setListModeVisibilityCallback(@Nullable d dVar) {
        this.f22266j = dVar;
    }

    public void setMeasureAble(boolean z10) {
        this.f22262f = z10;
    }

    public void setMediaData(final AdsDTO adsDTO, final String str, final boolean z10, final boolean z11) {
        e4.b().d("AdVideoView", "setMediaData path=" + str + " shouldCache=" + z11);
        this.f22261e = adsDTO;
        this.f22265i = false;
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.release();
        }
        m4 m4VarA = d4.f22372a.a(getContext());
        this.f22257a = m4VarA;
        m4VarA.a(this.f22258b);
        this.f22257a.setPlayWhenReady(this.f22264h);
        this.f22257a.a(this.f22263g);
        this.f22257a.c(new a());
        if (adsDTO != null && adsDTO.getMaterialWith() > 0 && adsDTO.getMaterialHeight() > 0) {
            setVideoSize(adsDTO.getMaterialWith(), adsDTO.getMaterialHeight());
        }
        final m4 m4Var2 = this.f22257a;
        this.f22258b.post(new Runnable() { // from class: com.cloud.hisavana.sdk.common.widget.video.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f22309a.p(m4Var2, adsDTO, str, z10, z11);
            }
        });
    }

    public void setPlayWhenReady(boolean z10) {
        this.f22264h = z10;
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.setPlayWhenReady(z10);
        }
    }

    public void setUseListMode(boolean z10) {
        this.f22263g = z10;
        m4 m4Var = this.f22257a;
        if (m4Var != null) {
            m4Var.a(z10);
        }
    }

    public void setVideoSize(int i11, int i12) {
        e4.b().d("AdVideoView", "setVideoSize width=" + i11 + " height=" + i12);
        this.f22258b.adaptVideoSize(i11 > 0 ? i11 : h.g(), i12 > 0 ? i12 : h.f());
        q4 q4Var = this.f22260d;
        if (q4Var != null) {
            q4Var.onVideoSizeChanged(i11, i12);
        }
    }
}
