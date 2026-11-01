package com.pgl.ssdk.ces.out;

import android.content.Context;
import android.view.MotionEvent;
import com.pgl.ssdk.ces.b;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class PglSSManager {
    public static final int INIT_STATUS_FAIL_CONTEXT_NULL = 4;
    public static final int INIT_STATUS_FAIL_SO_LOADFAIL = 3;
    public static final int INIT_STATUS_FAIL_SO_MISSING = 2;
    public static final int INIT_STATUS_OK = 0;
    public static final int INIT_STATUS_UNINITIALIZE = 1;
    public static final String REPORT_SCENE_ADSHOW = "AdShow";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile PglSSManager f40125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f40126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f40127c = 0;

    private PglSSManager(Context context, PglSSConfig pglSSConfig) {
        this.f40126b = b.a(context, pglSSConfig.getAppId(), pglSSConfig.getOVRegionType(), pglSSConfig.getCollectMode(), pglSSConfig.getAdSdkVersion());
    }

    public static int getInitStatus() {
        return b.g();
    }

    public static PglSSManager getInstance() {
        return f40125a;
    }

    public static String getLoadError() {
        if (b.i() != null) {
            return b.i().f40210b;
        }
        return null;
    }

    @DungeonFlag
    public static PglSSManager init(Context context, PglSSConfig pglSSConfig, String str, String str2, String str3, String str4) {
        if (context == null && pglSSConfig == null) {
            return null;
        }
        if (f40125a == null) {
            synchronized (PglSSManager.class) {
                try {
                    if (f40125a == null) {
                        f40125a = new PglSSManager(context, pglSSConfig);
                        if (b.g() == 0) {
                            f40125a.f40126b.a(pglSSConfig.getCustomInfo());
                            f40125a.f40126b.a(str, str3, str2, str4);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f40125a;
    }

    public void checkEventVirtual(MotionEvent motionEvent) {
        if (b.g() == 0) {
            this.f40126b.a(motionEvent);
        }
    }

    public long getECForBidding() {
        if (b.g() == 0) {
            return this.f40126b.e();
        }
        return 0L;
    }

    public Map<String, String> getFeatureHash(String str, byte[] bArr) {
        if (b.g() == 0) {
            return this.f40126b.a(str, bArr);
        }
        return null;
    }

    public String getSofChara() {
        if (b.g() == 0) {
            return this.f40126b.j();
        }
        return null;
    }

    public String getToken() {
        if (b.g() == 0) {
            return this.f40126b.k();
        }
        return null;
    }

    public void reportNow(String str, Map<String, Object> map) {
        if (b.g() == 0) {
            if ("AdShow".equals(str)) {
                this.f40126b.b();
            }
            int i11 = this.f40127c;
            b bVar = this.f40126b;
            if (i11 % bVar.f40113p == 0) {
                bVar.a(str, map);
            }
            this.f40127c++;
        }
    }

    public void setCustomInfo(Map<String, Object> map) {
        if (b.g() == 0) {
            this.f40126b.a(map);
        }
    }

    public void setDeviceId(String str) {
        if (b.g() == 0) {
            this.f40126b.b(str);
        }
    }

    public void setGaid(String str) {
        if (b.g() == 0) {
            this.f40126b.c(str);
        }
    }
}
