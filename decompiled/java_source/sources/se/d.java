package se;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f75338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioManager f75339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f75340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f75341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f75342e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f75338a = context;
        this.f75339b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.f75340c = aVar;
        this.f75341d = cVar;
    }

    private float a() {
        return this.f75340c.a(this.f75339b.getStreamVolume(3), this.f75339b.getStreamMaxVolume(3));
    }

    private boolean b(float f11) {
        return f11 != this.f75342e;
    }

    private void c() {
        this.f75341d.a(this.f75342e);
    }

    public void d() {
        this.f75342e = a();
        c();
        this.f75338a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void e() {
        this.f75338a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        float fA = a();
        if (b(fA)) {
            this.f75342e = fA;
            c();
        }
    }
}
