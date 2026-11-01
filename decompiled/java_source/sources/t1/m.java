package t1;

import android.content.Context;
import android.media.AudioManager;
import android.os.Looper;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AudioManager f75987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f75988b;

    public static int b(AudioManager audioManager, g gVar) {
        return a1.f10350a >= 26 ? audioManager.abandonAudioFocusRequest(gVar.c()) : audioManager.abandonAudioFocus(gVar.f());
    }

    public static synchronized AudioManager c(Context context) {
        try {
            final Context applicationContext = context.getApplicationContext();
            if (f75988b != applicationContext) {
                f75987a = null;
            }
            AudioManager audioManager = f75987a;
            if (audioManager != null) {
                return audioManager;
            }
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null && looperMyLooper != Looper.getMainLooper()) {
                final androidx.media3.common.util.l lVar = new androidx.media3.common.util.l();
                androidx.media3.common.util.c.a().execute(new Runnable() { // from class: t1.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        m.h(applicationContext, lVar);
                    }
                });
                lVar.c();
                return (AudioManager) androidx.media3.common.util.a.e(f75987a);
            }
            AudioManager audioManager2 = (AudioManager) applicationContext.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            f75987a = audioManager2;
            return (AudioManager) androidx.media3.common.util.a.e(audioManager2);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static int d(AudioManager audioManager, int i11) {
        return audioManager.getStreamMaxVolume(i11);
    }

    public static int e(AudioManager audioManager, int i11) {
        if (a1.f10350a >= 28) {
            return audioManager.getStreamMinVolume(i11);
        }
        return 0;
    }

    public static int f(AudioManager audioManager, int i11) {
        try {
            return audioManager.getStreamVolume(i11);
        } catch (RuntimeException e11) {
            u.i("AudioManagerCompat", "Could not retrieve stream volume for stream type " + i11, e11);
            return audioManager.getStreamMaxVolume(i11);
        }
    }

    public static boolean g(AudioManager audioManager, int i11) {
        if (a1.f10350a >= 23) {
            return audioManager.isStreamMute(i11);
        }
        return f(audioManager, i11) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(Context context, androidx.media3.common.util.l lVar) {
        f75987a = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        lVar.f();
    }

    public static int i(AudioManager audioManager, g gVar) {
        return a1.f10350a >= 26 ? audioManager.requestAudioFocus(gVar.c()) : audioManager.requestAudioFocus(gVar.f(), gVar.b().b(), gVar.e());
    }
}
