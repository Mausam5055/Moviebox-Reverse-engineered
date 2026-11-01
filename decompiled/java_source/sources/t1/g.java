package t1;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import androidx.media3.common.util.a1;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f75970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioManager.OnAudioFocusChangeListener f75971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f75972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.common.c f75973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f75974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f75975f;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f75976a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private AudioManager.OnAudioFocusChangeListener f75977b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Handler f75978c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.common.c f75979d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f75980e;

        public b(int i11) {
            this.f75979d = androidx.media3.common.c.f9907g;
            this.f75976a = i11;
        }

        private b(g gVar) {
            this.f75976a = gVar.e();
            this.f75977b = gVar.f();
            this.f75978c = gVar.d();
            this.f75979d = gVar.b();
            this.f75980e = gVar.g();
        }

        public g a() {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.f75977b;
            if (onAudioFocusChangeListener != null) {
                return new g(this.f75976a, onAudioFocusChangeListener, (Handler) androidx.media3.common.util.a.e(this.f75978c), this.f75979d, this.f75980e);
            }
            throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
        }

        public b b(androidx.media3.common.c cVar) {
            androidx.media3.common.util.a.e(cVar);
            this.f75979d = cVar;
            return this;
        }

        public b c(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            androidx.media3.common.util.a.e(onAudioFocusChangeListener);
            androidx.media3.common.util.a.e(handler);
            this.f75977b = onAudioFocusChangeListener;
            this.f75978c = handler;
            return this;
        }

        public b d(boolean z10) {
            this.f75980e = z10;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c implements AudioManager.OnAudioFocusChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f75981a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AudioManager.OnAudioFocusChangeListener f75982b;

        c(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            this.f75982b = onAudioFocusChangeListener;
            this.f75981a = a1.z(handler.getLooper(), null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i11) {
            this.f75982b.onAudioFocusChange(i11);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i11) {
            a1.b1(this.f75981a, new Runnable() { // from class: t1.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f75983a.b(i11);
                }
            });
        }
    }

    g(int i11, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, androidx.media3.common.c cVar, boolean z10) {
        this.f75970a = i11;
        this.f75972c = handler;
        this.f75973d = cVar;
        this.f75974e = z10;
        int i12 = a1.f10350a;
        if (i12 < 26) {
            this.f75971b = new c(onAudioFocusChangeListener, handler);
        } else {
            this.f75971b = onAudioFocusChangeListener;
        }
        if (i12 >= 26) {
            this.f75975f = t1.a.a(i11).setAudioAttributes(cVar.a().f9919a).setWillPauseWhenDucked(z10).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();
        } else {
            this.f75975f = null;
        }
    }

    public b a() {
        return new b();
    }

    public androidx.media3.common.c b() {
        return this.f75973d;
    }

    AudioFocusRequest c() {
        return f.a(androidx.media3.common.util.a.e(this.f75975f));
    }

    public Handler d() {
        return this.f75972c;
    }

    public int e() {
        return this.f75970a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f75970a == gVar.f75970a && this.f75974e == gVar.f75974e && Objects.equals(this.f75971b, gVar.f75971b) && Objects.equals(this.f75972c, gVar.f75972c) && Objects.equals(this.f75973d, gVar.f75973d);
    }

    public AudioManager.OnAudioFocusChangeListener f() {
        return this.f75971b;
    }

    public boolean g() {
        return this.f75974e;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f75970a), this.f75971b, this.f75972c, this.f75973d, Boolean.valueOf(this.f75974e));
    }
}
