package com.mbridge.msdk.videocommon.download;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.z0;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f39916a;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static f f39917a = new f(null);
    }

    private f() {
        b();
    }

    /* synthetic */ f(e eVar) {
        this();
    }

    public static f a() {
        return a.f39917a;
    }

    public String a(String str) {
        try {
            File file = new File(this.f39916a + "/" + SameMD5.getMD5(z0.b(str)) + ".html");
            if (file.exists()) {
                return m0.e(file);
            }
            return null;
        } catch (Throwable th2) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            th2.printStackTrace();
            return null;
        }
    }

    public String b(String str) {
        try {
            String str2 = this.f39916a + "/" + SameMD5.getMD5(z0.b(str)) + ".html";
            File file = new File(str2);
            if (!file.exists()) {
                return null;
            }
            com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD != null && !TextUtils.isEmpty(gVarD.T())) {
                com.mbridge.msdk.foundation.same.d.a(str, file);
            }
            return "file:////" + str2;
        } catch (Throwable th2) {
            if (!MBridgeConstans.DEBUG) {
                return null;
            }
            th2.printStackTrace();
            return null;
        }
    }

    public void b() {
        this.f39916a = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
    }
}
