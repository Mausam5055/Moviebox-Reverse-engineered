package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AudioManager f25072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f25073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f25074c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.exoplayer2.audio.e f25075d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f25077f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AudioFocusRequest f25079h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f25080i;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f25078g = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25076e = 0;

    /* JADX INFO: Access modifiers changed from: private */
    class a implements AudioManager.OnAudioFocusChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f25081a;

        public a(Handler handler) {
            this.f25081a = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i11) {
            f.this.h(i11);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i11) {
            this.f25081a.post(new Runnable() { // from class: com.google.android.exoplayer2.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f25020a.b(i11);
                }
            });
        }
    }

    public interface b {
        void s(float f11);

        void u(int i11);
    }

    public f(Context context, Handler handler, b bVar) {
        this.f25072a = (AudioManager) com.google.android.exoplayer2.util.a.e((AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        this.f25074c = bVar;
        this.f25073b = new a(handler);
    }

    private void a() {
        this.f25072a.abandonAudioFocus(this.f25073b);
    }

    private void b() {
        if (this.f25076e == 0) {
            return;
        }
        if (com.google.android.exoplayer2.util.p0.f27626a >= 26) {
            c();
        } else {
            a();
        }
        n(0);
    }

    private void c() {
        AudioFocusRequest audioFocusRequest = this.f25079h;
        if (audioFocusRequest != null) {
            this.f25072a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    private static int e(com.google.android.exoplayer2.audio.e eVar) {
        if (eVar == null) {
            return 0;
        }
        switch (eVar.f24638c) {
            case 0:
                com.google.android.exoplayer2.util.s.i("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
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
                if (eVar.f24636a == 1) {
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
                com.google.android.exoplayer2.util.s.i("AudioFocusManager", "Unidentified audio usage: " + eVar.f24638c);
                return 0;
            case 16:
                return com.google.android.exoplayer2.util.p0.f27626a >= 19 ? 4 : 2;
        }
    }

    private void f(int i11) {
        b bVar = this.f25074c;
        if (bVar != null) {
            bVar.u(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i11) {
        if (i11 == -3 || i11 == -2) {
            if (i11 != -2 && !q()) {
                n(3);
                return;
            } else {
                f(0);
                n(2);
                return;
            }
        }
        if (i11 == -1) {
            f(-1);
            b();
        } else if (i11 == 1) {
            n(1);
            f(1);
        } else {
            com.google.android.exoplayer2.util.s.i("AudioFocusManager", "Unknown focus change type: " + i11);
        }
    }

    private int j() {
        if (this.f25076e == 1) {
            return 1;
        }
        if ((com.google.android.exoplayer2.util.p0.f27626a >= 26 ? l() : k()) == 1) {
            n(1);
            return 1;
        }
        n(0);
        return -1;
    }

    private int k() {
        return this.f25072a.requestAudioFocus(this.f25073b, com.google.android.exoplayer2.util.p0.g0(((com.google.android.exoplayer2.audio.e) com.google.android.exoplayer2.util.a.e(this.f25075d)).f24638c), this.f25077f);
    }

    private int l() {
        AudioFocusRequest.Builder builderA;
        AudioFocusRequest audioFocusRequest = this.f25079h;
        if (audioFocusRequest == null || this.f25080i) {
            if (audioFocusRequest == null) {
                c.a();
                builderA = t1.a.a(this.f25077f);
            } else {
                c.a();
                builderA = com.google.android.exoplayer2.b.a(this.f25079h);
            }
            this.f25079h = builderA.setAudioAttributes(((com.google.android.exoplayer2.audio.e) com.google.android.exoplayer2.util.a.e(this.f25075d)).b().f24642a).setWillPauseWhenDucked(q()).setOnAudioFocusChangeListener(this.f25073b).build();
            this.f25080i = false;
        }
        return this.f25072a.requestAudioFocus(this.f25079h);
    }

    private void n(int i11) {
        if (this.f25076e == i11) {
            return;
        }
        this.f25076e = i11;
        float f11 = i11 == 3 ? 0.2f : 1.0f;
        if (this.f25078g == f11) {
            return;
        }
        this.f25078g = f11;
        b bVar = this.f25074c;
        if (bVar != null) {
            bVar.s(f11);
        }
    }

    private boolean o(int i11) {
        return i11 == 1 || this.f25077f != 1;
    }

    private boolean q() {
        com.google.android.exoplayer2.audio.e eVar = this.f25075d;
        return eVar != null && eVar.f24636a == 1;
    }

    public float g() {
        return this.f25078g;
    }

    public void i() {
        this.f25074c = null;
        b();
    }

    public void m(com.google.android.exoplayer2.audio.e eVar) {
        if (com.google.android.exoplayer2.util.p0.c(this.f25075d, eVar)) {
            return;
        }
        this.f25075d = eVar;
        int iE = e(eVar);
        this.f25077f = iE;
        boolean z10 = true;
        if (iE != 1 && iE != 0) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.b(z10, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public int p(boolean z10, int i11) {
        if (o(i11)) {
            b();
            return z10 ? 1 : -1;
        }
        if (z10) {
            return j();
        }
        return -1;
    }
}
