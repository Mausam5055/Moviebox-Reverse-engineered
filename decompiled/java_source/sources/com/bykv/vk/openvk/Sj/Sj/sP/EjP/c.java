package com.bykv.vk.openvk.Sj.Sj.sP.EjP;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class c extends com.bykv.vk.openvk.Sj.Sj.sP.EjP.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final MediaPlayer f20170i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final a f20171j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private d6.a f20172k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Surface f20173l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Object f20174m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private volatile boolean f20175n;

    private static class a implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f20176a;

        public a(c cVar) {
            this.f20176a = new WeakReference(cVar);
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i11) {
            try {
                c cVar = (c) this.f20176a.get();
                if (cVar != null) {
                    cVar.m(i11);
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            try {
                c cVar = (c) this.f20176a.get();
                if (cVar != null) {
                    cVar.p();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i11, int i12) {
            try {
                c cVar = (c) this.f20176a.get();
                return cVar != null && cVar.o(i11, i12);
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i11, int i12) {
            try {
                c cVar = (c) this.f20176a.get();
                return cVar != null && cVar.r(i11, i12);
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                c cVar = (c) this.f20176a.get();
                if (cVar != null) {
                    cVar.q();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            try {
                c cVar = (c) this.f20176a.get();
                if (cVar != null) {
                    cVar.k();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i11, int i12) {
            try {
                c cVar = (c) this.f20176a.get();
                if (cVar != null) {
                    cVar.n(i11, i12, 1, 1);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public c() {
        MediaPlayer mediaPlayer;
        Object obj = new Object();
        this.f20174m = obj;
        synchronized (obj) {
            mediaPlayer = new MediaPlayer();
            this.f20170i = mediaPlayer;
        }
        s(mediaPlayer);
        try {
            mediaPlayer.setAudioStreamType(3);
        } catch (Throwable unused) {
        }
        this.f20171j = new a(this);
        v();
    }

    private void s(MediaPlayer mediaPlayer) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.media.MediaTimeProvider");
            Class<?> cls2 = Class.forName("android.media.SubtitleController");
            Class<?> cls3 = Class.forName("android.media.SubtitleController$Anchor");
            Object objNewInstance = cls2.getConstructor(Context.class, cls, Class.forName("android.media.SubtitleController$Listener")).newInstance(t5.b.c(), null, null);
            Field declaredField = cls2.getDeclaredField("mHandler");
            declaredField.setAccessible(true);
            try {
                declaredField.set(objNewInstance, new Handler());
                declaredField.setAccessible(false);
                mediaPlayer.getClass().getMethod("setSubtitleAnchor", cls2, cls3).invoke(mediaPlayer, objNewInstance, null);
            } catch (Throwable unused) {
                declaredField.setAccessible(false);
            }
        } catch (Throwable unused2) {
        }
    }

    private void t() {
        d6.a aVar = this.f20172k;
        if (aVar != null) {
            try {
                aVar.close();
            } catch (Throwable unused) {
            }
            this.f20172k = null;
        }
    }

    private void u() {
        try {
            Surface surface = this.f20173l;
            if (surface != null) {
                surface.release();
                this.f20173l = null;
            }
        } catch (Throwable unused) {
        }
    }

    private void v() {
        this.f20170i.setOnPreparedListener(this.f20171j);
        this.f20170i.setOnBufferingUpdateListener(this.f20171j);
        this.f20170i.setOnCompletionListener(this.f20171j);
        this.f20170i.setOnSeekCompleteListener(this.f20171j);
        this.f20170i.setOnVideoSizeChangedListener(this.f20171j);
        this.f20170i.setOnErrorListener(this.f20171j);
        this.f20170i.setOnInfoListener(this.f20171j);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void Dq() {
        MediaPlayer mediaPlayer = this.f20170i;
        if (mediaPlayer != null) {
            mediaPlayer.prepareAsync();
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void EjP(boolean z10) {
        MediaPlayer mediaPlayer = this.f20170i;
        if (mediaPlayer == null) {
            return;
        }
        if (z10) {
            mediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            mediaPlayer.setVolume(1.0f, 1.0f);
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public int Fmk() {
        MediaPlayer mediaPlayer = this.f20170i;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void HiB() {
        this.f20170i.start();
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void Jcg() {
        this.f20170i.pause();
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void Sj(long j11, int i11) {
        if (Build.VERSION.SDK_INT < 26) {
            this.f20170i.seekTo((int) j11);
            return;
        }
        if (i11 == 0) {
            this.f20170i.seekTo((int) j11, 0);
            return;
        }
        if (i11 == 1) {
            this.f20170i.seekTo((int) j11, 1);
            return;
        }
        if (i11 == 2) {
            this.f20170i.seekTo((int) j11, 2);
        } else if (i11 != 3) {
            this.f20170i.seekTo((int) j11);
        } else {
            this.f20170i.seekTo((int) j11, 3);
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void Sj(SurfaceHolder surfaceHolder) {
        synchronized (this.f20174m) {
            try {
                if (!this.f20175n && surfaceHolder != null && surfaceHolder.getSurface() != null && this.f20169h) {
                    this.f20170i.setDisplay(surfaceHolder);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public synchronized void Sj(TKC tkc) {
        this.f20172k = d6.a.h(t5.b.c(), tkc);
        e6.b.b(tkc);
        this.f20170i.setDataSource(this.f20172k);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void Sj(String str) throws IOException {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (TextUtils.isEmpty(scheme) || !scheme.equalsIgnoreCase(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE)) {
            this.f20170i.setDataSource(str);
        } else {
            this.f20170i.setDataSource(uri.getPath());
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public long TEQ() {
        try {
            return this.f20170i.getDuration();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void TKC(boolean z10) {
        this.f20170i.setLooping(z10);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void Ym() {
        synchronized (this.f20174m) {
            try {
                if (!this.f20175n) {
                    this.f20170i.release();
                    this.f20175n = true;
                    u();
                    t();
                    l();
                    v();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void aa() {
        try {
            this.f20170i.reset();
        } catch (Throwable unused) {
        }
        t();
        l();
        v();
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void d(t5.c cVar) {
        this.f20170i.setPlaybackParams(this.f20170i.getPlaybackParams().setSpeed(cVar.a()));
    }

    protected void finalize() throws Throwable {
        super.finalize();
        u();
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void g(FileDescriptor fileDescriptor) throws IOException {
        this.f20170i.setDataSource(fileDescriptor);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void h(Surface surface) {
        u();
        this.f20173l = surface;
        this.f20170i.setSurface(surface);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void sP(boolean z10) {
        this.f20170i.setScreenOnWhilePlaying(z10);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public int sef() {
        MediaPlayer mediaPlayer = this.f20170i;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public long uA() {
        try {
            return this.f20170i.getCurrentPosition();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b
    public void vS() {
        this.f20170i.stop();
    }
}
