package com.iab.omid.library.bytedance2.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f33430a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AudioManager f33431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f33432c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f33433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f33434e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f33430a = context;
        this.f33431b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.f33432c = aVar;
        this.f33433d = cVar;
    }

    private float a() {
        return this.f33432c.a(this.f33431b.getStreamVolume(3), this.f33431b.getStreamMaxVolume(3));
    }

    private boolean a(float f11) {
        return f11 != this.f33434e;
    }

    private void b() {
        this.f33433d.a(this.f33434e);
    }

    public void c() {
        this.f33434e = a();
        b();
        this.f33430a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void d() {
        this.f33430a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        float fA = a();
        if (a(fA)) {
            this.f33434e = fA;
            b();
        }
    }
}
