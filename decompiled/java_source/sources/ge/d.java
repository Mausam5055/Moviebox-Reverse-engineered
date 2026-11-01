package ge;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f63560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioManager f63561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f63562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f63563d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f63564e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f63560a = context;
        this.f63561b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.f63562c = aVar;
        this.f63563d = cVar;
    }

    private float a() {
        return this.f63562c.a(this.f63561b.getStreamVolume(3), this.f63561b.getStreamMaxVolume(3));
    }

    private boolean b(float f11) {
        return f11 != this.f63564e;
    }

    private void c() {
        this.f63563d.a(this.f63564e);
    }

    public void d() {
        this.f63564e = a();
        c();
        this.f63560a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void e() {
        this.f63560a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        float fA = a();
        if (b(fA)) {
            this.f63564e = fA;
            c();
        }
    }
}
