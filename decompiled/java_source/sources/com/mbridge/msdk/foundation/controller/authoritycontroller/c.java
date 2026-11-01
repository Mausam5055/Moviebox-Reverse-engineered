package com.mbridge.msdk.foundation.controller.authoritycontroller;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;

/* JADX INFO: loaded from: classes5.dex */
public class c extends b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static volatile c f35032j;

    private c() {
        h();
    }

    public static void c(boolean z10) {
    }

    public static boolean l() {
        return true;
    }

    public static c m() {
        if (f35032j == null) {
            synchronized (c.class) {
                try {
                    if (f35032j == null) {
                        f35032j = new c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35032j;
    }

    @Override // com.mbridge.msdk.foundation.controller.authoritycontroller.b
    public int a(g gVar, String str) {
        if (gVar == null) {
            gVar = h.b().a();
        }
        if (str.equals(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return gVar.t0();
        }
        if (str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return gVar.s0();
        }
        if (str.equals(MBridgeConstans.AUTHORITY_SERIAL_ID)) {
            return gVar.u0();
        }
        return -1;
    }

    public boolean c(String str) {
        boolean z10;
        g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD == null) {
            gVarD = h.b().a();
            z10 = true;
        } else {
            z10 = false;
        }
        int iH0 = gVarD.h0();
        boolean z11 = iH0 != 0 ? iH0 == 1 && a(gVarD, str) == 1 : a(str) == 1 && a(gVarD, str) == 1;
        if (str.equals(MBridgeConstans.AUTHORITY_OTHER)) {
            z11 = a(str) == 1;
        }
        if (str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID) && m().e() == 2) {
            return (gVarD.E0() || z10 || a(str) != 1) ? false : true;
        }
        return z11;
    }
}
