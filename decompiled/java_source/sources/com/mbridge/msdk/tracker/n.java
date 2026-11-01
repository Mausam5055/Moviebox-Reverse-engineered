package com.mbridge.msdk.tracker;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class n implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<String, a> f38550a = new ConcurrentHashMap<>();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f38551a;

        public a(boolean z10) {
            this.f38551a = z10;
        }

        public boolean a() {
            return this.f38551a;
        }
    }

    @Override // com.mbridge.msdk.tracker.f
    public boolean a(e eVar) throws Exception {
        a aVar;
        if (eVar != null && !TextUtils.isEmpty(eVar.b())) {
            try {
                String strB = eVar.b();
                if (this.f38550a.containsKey(strB)) {
                    aVar = this.f38550a.get(strB);
                } else {
                    a aVar2 = new a(com.mbridge.msdk.foundation.same.report.c.a(strB));
                    this.f38550a.put(strB, aVar2);
                    aVar = aVar2;
                }
                return aVar != null && aVar.a();
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("TrackManager", "apply", e11);
                }
            }
        }
        return false;
    }
}
