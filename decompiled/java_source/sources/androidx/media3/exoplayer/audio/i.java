package androidx.media3.exoplayer.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Handler;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f11182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f11183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f11184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BroadcastReceiver f11185e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d f11186f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private androidx.media3.exoplayer.audio.e f11187g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private j f11188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.media3.common.c f11189i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f11190j;

    private static final class b {
        public static void a(Context context, AudioDeviceCallback audioDeviceCallback, Handler handler) {
            t1.m.c(context).registerAudioDeviceCallback(audioDeviceCallback, handler);
        }

        public static void b(Context context, AudioDeviceCallback audioDeviceCallback) {
            t1.m.c(context).unregisterAudioDeviceCallback(audioDeviceCallback);
        }
    }

    private final class c extends AudioDeviceCallback {
        private c() {
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
            i iVar = i.this;
            iVar.f(androidx.media3.exoplayer.audio.e.f(iVar.f11181a, i.this.f11189i, i.this.f11188h));
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
            if (androidx.media3.common.util.a1.s(audioDeviceInfoArr, i.this.f11188h)) {
                i.this.f11188h = null;
            }
            i iVar = i.this;
            iVar.f(androidx.media3.exoplayer.audio.e.f(iVar.f11181a, i.this.f11189i, i.this.f11188h));
        }
    }

    private final class d extends ContentObserver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentResolver f11192a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Uri f11193b;

        public d(Handler handler, ContentResolver contentResolver, Uri uri) {
            super(handler);
            this.f11192a = contentResolver;
            this.f11193b = uri;
        }

        public void a() {
            this.f11192a.registerContentObserver(this.f11193b, false, this);
        }

        public void b() {
            this.f11192a.unregisterContentObserver(this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            i iVar = i.this;
            iVar.f(androidx.media3.exoplayer.audio.e.f(iVar.f11181a, i.this.f11189i, i.this.f11188h));
        }
    }

    private final class e extends BroadcastReceiver {
        private e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            i iVar = i.this;
            iVar.f(androidx.media3.exoplayer.audio.e.e(context, intent, iVar.f11189i, i.this.f11188h));
        }
    }

    public interface f {
        void a(androidx.media3.exoplayer.audio.e eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    i(Context context, f fVar, androidx.media3.common.c cVar, j jVar) {
        Context applicationContext = context.getApplicationContext();
        this.f11181a = applicationContext;
        this.f11182b = (f) androidx.media3.common.util.a.e(fVar);
        this.f11189i = cVar;
        this.f11188h = jVar;
        Handler handlerC = androidx.media3.common.util.a1.C();
        this.f11183c = handlerC;
        Object[] objArr = 0;
        this.f11184d = androidx.media3.common.util.a1.f10350a >= 23 ? new c() : null;
        this.f11185e = new e();
        Uri uriI = androidx.media3.exoplayer.audio.e.i();
        this.f11186f = uriI != null ? new d(handlerC, applicationContext.getContentResolver(), uriI) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(androidx.media3.exoplayer.audio.e eVar) {
        if (!this.f11190j || eVar.equals(this.f11187g)) {
            return;
        }
        this.f11187g = eVar;
        this.f11182b.a(eVar);
    }

    public androidx.media3.exoplayer.audio.e g() {
        c cVar;
        if (this.f11190j) {
            return (androidx.media3.exoplayer.audio.e) androidx.media3.common.util.a.e(this.f11187g);
        }
        this.f11190j = true;
        d dVar = this.f11186f;
        if (dVar != null) {
            dVar.a();
        }
        if (androidx.media3.common.util.a1.f10350a >= 23 && (cVar = this.f11184d) != null) {
            b.a(this.f11181a, cVar, this.f11183c);
        }
        androidx.media3.exoplayer.audio.e eVarE = androidx.media3.exoplayer.audio.e.e(this.f11181a, this.f11181a.registerReceiver(this.f11185e, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.f11183c), this.f11189i, this.f11188h);
        this.f11187g = eVarE;
        return eVarE;
    }

    public void h(androidx.media3.common.c cVar) {
        this.f11189i = cVar;
        f(androidx.media3.exoplayer.audio.e.f(this.f11181a, cVar, this.f11188h));
    }

    public void i(AudioDeviceInfo audioDeviceInfo) {
        j jVar = this.f11188h;
        if (Objects.equals(audioDeviceInfo, jVar == null ? null : jVar.f11196a)) {
            return;
        }
        j jVar2 = audioDeviceInfo != null ? new j(audioDeviceInfo) : null;
        this.f11188h = jVar2;
        f(androidx.media3.exoplayer.audio.e.f(this.f11181a, this.f11189i, jVar2));
    }

    public void j() {
        c cVar;
        if (this.f11190j) {
            this.f11187g = null;
            if (androidx.media3.common.util.a1.f10350a >= 23 && (cVar = this.f11184d) != null) {
                b.b(this.f11181a, cVar);
            }
            this.f11181a.unregisterReceiver(this.f11185e);
            d dVar = this.f11186f;
            if (dVar != null) {
                dVar.b();
            }
            this.f11190j = false;
        }
    }
}
