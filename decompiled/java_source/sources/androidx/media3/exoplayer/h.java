package androidx.media3.exoplayer;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import com.google.common.base.Suppliers;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.common.base.q f11642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f11643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f11644c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.media3.common.c f11645d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f11647f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private t1.g f11649h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f11650i;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f11648g = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11646e = 0;

    public interface a {
        void s(float f11);

        void u(int i11);
    }

    public h(final Context context, Looper looper, a aVar) {
        this.f11642a = Suppliers.a(new com.google.common.base.q() { // from class: androidx.media3.exoplayer.g
            @Override // com.google.common.base.q
            public final Object get() {
                return t1.m.c(context);
            }
        });
        this.f11644c = aVar;
        this.f11643b = new Handler(looper);
    }

    private void c() {
        int i11 = this.f11646e;
        if (i11 == 1 || i11 == 0 || this.f11649h == null) {
            return;
        }
        t1.m.b((AudioManager) this.f11642a.get(), this.f11649h);
    }

    private static int d(androidx.media3.common.c cVar) {
        if (cVar == null) {
            return 0;
        }
        switch (cVar.f9915c) {
            case 0:
                androidx.media3.common.util.u.h("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 11:
                if (cVar.f9913a == 1) {
                    return 2;
                }
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 15:
            default:
                androidx.media3.common.util.u.h("AudioFocusManager", "Unidentified audio usage: " + cVar.f9915c);
                return 0;
            case 16:
                return 4;
        }
    }

    private void e(int i11) {
        a aVar = this.f11644c;
        if (aVar != null) {
            aVar.u(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i11) {
        if (i11 == -3 || i11 == -2) {
            if (i11 != -2 && !p()) {
                m(4);
                return;
            } else {
                e(0);
                m(3);
                return;
            }
        }
        if (i11 == -1) {
            e(-1);
            c();
            m(1);
        } else if (i11 == 1) {
            m(2);
            e(1);
        } else {
            androidx.media3.common.util.u.h("AudioFocusManager", "Unknown focus change type: " + i11);
        }
    }

    private int j() {
        if (this.f11646e == 2) {
            return 1;
        }
        if (k() == 1) {
            m(2);
            return 1;
        }
        m(1);
        return -1;
    }

    private int k() {
        t1.g gVar = this.f11649h;
        if (gVar == null || this.f11650i) {
            this.f11649h = (gVar == null ? new t1.g.b(this.f11647f) : gVar.a()).b((androidx.media3.common.c) androidx.media3.common.util.a.e(this.f11645d)).d(p()).c(new AudioManager.OnAudioFocusChangeListener() { // from class: androidx.media3.exoplayer.f
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public final void onAudioFocusChange(int i11) {
                    this.f11628a.g(i11);
                }
            }, this.f11643b).a();
            this.f11650i = false;
        }
        return t1.m.i((AudioManager) this.f11642a.get(), this.f11649h);
    }

    private void m(int i11) {
        if (this.f11646e == i11) {
            return;
        }
        this.f11646e = i11;
        float f11 = i11 == 4 ? 0.2f : 1.0f;
        if (this.f11648g == f11) {
            return;
        }
        this.f11648g = f11;
        a aVar = this.f11644c;
        if (aVar != null) {
            aVar.s(f11);
        }
    }

    private boolean n(int i11) {
        return i11 != 1 && this.f11647f == 1;
    }

    private boolean p() {
        androidx.media3.common.c cVar = this.f11645d;
        return cVar != null && cVar.f9913a == 1;
    }

    public float f() {
        return this.f11648g;
    }

    public void i() {
        this.f11644c = null;
        c();
        m(0);
    }

    public void l(androidx.media3.common.c cVar) {
        if (Objects.equals(this.f11645d, cVar)) {
            return;
        }
        this.f11645d = cVar;
        int iD = d(cVar);
        this.f11647f = iD;
        boolean z10 = true;
        if (iD != 1 && iD != 0) {
            z10 = false;
        }
        androidx.media3.common.util.a.b(z10, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public int o(boolean z10, int i11) {
        if (!n(i11)) {
            c();
            m(0);
            return 1;
        }
        if (z10) {
            return j();
        }
        int i12 = this.f11646e;
        if (i12 != 1) {
            return i12 != 3 ? 1 : 0;
        }
        return -1;
    }
}
