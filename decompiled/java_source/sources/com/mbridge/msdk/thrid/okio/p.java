package com.mbridge.msdk.thrid.okio;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    static o f38471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static long f38472b;

    private p() {
    }

    static o a() {
        synchronized (p.class) {
            try {
                o oVar = f38471a;
                if (oVar == null) {
                    return new o();
                }
                f38471a = oVar.f38469f;
                oVar.f38469f = null;
                f38472b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                return oVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static void a(o oVar) {
        if (oVar.f38469f != null || oVar.f38470g != null) {
            throw new IllegalArgumentException();
        }
        if (oVar.f38467d) {
            return;
        }
        synchronized (p.class) {
            try {
                long j11 = f38472b + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                if (j11 > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    return;
                }
                f38472b = j11;
                oVar.f38469f = f38471a;
                oVar.f38466c = 0;
                oVar.f38465b = 0;
                f38471a = oVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
