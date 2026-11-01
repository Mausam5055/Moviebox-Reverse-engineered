package me;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f69514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioManager f69515b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f69516c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f69517d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f69518e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f69514a = context;
        this.f69515b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.f69516c = aVar;
        this.f69517d = cVar;
    }

    private float a() {
        return this.f69516c.a(this.f69515b.getStreamVolume(3), this.f69515b.getStreamMaxVolume(3));
    }

    private boolean b(float f11) {
        return f11 != this.f69518e;
    }

    private void c() {
        this.f69517d.a(this.f69518e);
    }

    public void d() {
        this.f69518e = a();
        c();
        this.f69514a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void e() {
        this.f69514a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        float fA = a();
        if (b(fA)) {
            this.f69518e = fA;
            c();
        }
    }
}
