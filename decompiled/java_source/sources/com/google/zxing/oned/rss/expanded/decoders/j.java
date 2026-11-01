package com.google.zxing.oned.rss.expanded.decoders;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final id.a f32928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f32929b;

    j(id.a aVar) {
        this.f32928a = aVar;
        this.f32929b = new r(aVar);
    }

    public static j a(id.a aVar) {
        if (aVar.i(1)) {
            return new g(aVar);
        }
        if (!aVar.i(2)) {
            return new k(aVar);
        }
        int iG = r.g(aVar, 1, 4);
        if (iG == 4) {
            return new a(aVar);
        }
        if (iG == 5) {
            return new b(aVar);
        }
        int iG2 = r.g(aVar, 1, 5);
        if (iG2 == 12) {
            return new c(aVar);
        }
        if (iG2 == 13) {
            return new d(aVar);
        }
        switch (r.g(aVar, 1, 7)) {
            case AD_VISIBILITY_VALUE:
                return new e(aVar, "310", PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY);
            case 57:
                return new e(aVar, "320", PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY);
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                return new e(aVar, "310", PrepareException.ERROR_WARMUP_DOWNLOAD_EXCEPTION);
            case 59:
                return new e(aVar, "320", PrepareException.ERROR_WARMUP_DOWNLOAD_EXCEPTION);
            case 60:
                return new e(aVar, "310", PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION);
            case 61:
                return new e(aVar, "320", PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION);
            case 62:
                return new e(aVar, "310", "17");
            case 63:
                return new e(aVar, "320", "17");
            default:
                throw new IllegalStateException("unknown decoder: " + aVar);
        }
    }

    protected final r b() {
        return this.f32929b;
    }

    protected final id.a c() {
        return this.f32928a;
    }

    public abstract String d();
}
