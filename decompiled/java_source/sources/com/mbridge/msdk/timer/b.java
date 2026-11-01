package com.mbridge.msdk.timer;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: com.mbridge.msdk.timer.b$b, reason: collision with other inner class name */
    static class C0554b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static b f38495a = new b();
    }

    private b() {
    }

    public static b getInstance() {
        return C0554b.f38495a;
    }

    public void addInterstitialList(String str, String str2) {
        try {
            com.mbridge.msdk.timer.a.a().a(str, str2);
        } catch (Exception e11) {
            o0.b("TimerController", "addInterstitialList error:" + e11.getMessage());
        }
    }

    public void addRewardList(String str, String str2) {
        try {
            com.mbridge.msdk.timer.a.a().b(str, str2);
        } catch (Exception e11) {
            o0.b("TimerController", "addRewardList error:" + e11.getMessage());
        }
    }

    public void start() {
        g gVarD = h.b().d(c.m().b());
        if (gVarD == null) {
            gVarD = h.b().a();
        }
        int iH = gVarD.h();
        if (iH > 0) {
            com.mbridge.msdk.timer.a.a().b(iH * 1000);
        }
    }
}
