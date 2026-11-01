package com.transsion.player.longvideo.member;

import com.transsion.mb.config.manager.ConfigBean;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q f48233a = new q();

    private q() {
    }

    public final go.b a(List resolutionList) {
        Object obj;
        Intrinsics.h(resolutionList, "resolutionList");
        Iterator it = resolutionList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                int iE = f48233a.e(((go.b) next).d());
                do {
                    Object next2 = it.next();
                    int iE2 = f48233a.e(((go.b) next2).d());
                    if (iE < iE2) {
                        next = next2;
                        iE = iE2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (go.b) obj;
    }

    public final go.b b(List resolutionList) {
        Object obj;
        Intrinsics.h(resolutionList, "resolutionList");
        Iterator it = resolutionList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                int iE = f48233a.e(((go.b) next).d());
                do {
                    Object next2 = it.next();
                    int iE2 = f48233a.e(((go.b) next2).d());
                    if (iE > iE2) {
                        next = next2;
                        iE = iE2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (go.b) obj;
    }

    public final int c() {
        Object objM454constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c("stream_resolution_ratio", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM454constructorimpl = Result.m454constructorimpl(Integer.valueOf(new JSONObject(value).optInt("vipResolutionRatio")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = 1080;
        }
        return ((Number) objM454constructorimpl).intValue();
    }

    public final String d() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(f(c()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = String.valueOf(f48233a.c());
        }
        return (String) objM454constructorimpl;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0072  */
    public final int e(String str) {
        Integer num;
        if (str == null || StringsKt.q0(str)) {
            return 0;
        }
        String upperCase = StringsKt.n1(str).toString().toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        int iHashCode = upperCase.hashCode();
        if (iHashCode != 1625) {
            if (iHashCode != 1687) {
                if (iHashCode != 1718) {
                    if (iHashCode == 1811 && upperCase.equals("8K")) {
                        num = 4320;
                    } else {
                        num = null;
                    }
                } else if (upperCase.equals("5K")) {
                    num = 2880;
                } else {
                    num = null;
                }
            } else if (upperCase.equals("4K")) {
                num = 2160;
            } else {
                num = null;
            }
        } else if (upperCase.equals("2K")) {
            num = 1440;
        } else {
            num = null;
        }
        if (num != null) {
            return num.intValue();
        }
        Integer numV = StringsKt.v(StringsKt.J0(upperCase, "P"));
        if (numV != null) {
            return numV.intValue();
        }
        return 0;
    }

    public final String f(int i11) {
        if (i11 >= 4320) {
            return "8K";
        }
        if (i11 >= 2880) {
            return "5K";
        }
        if (i11 >= 2160) {
            return "4K";
        }
        if (i11 >= 1440) {
            return "2K";
        }
        if (i11 >= 1080) {
            return "1080P";
        }
        if (i11 >= 720) {
            return "720P";
        }
        if (i11 >= 576) {
            return "576P";
        }
        if (i11 >= 480) {
            return "480P";
        }
        if (i11 >= 360) {
            return "360P";
        }
        if (i11 >= 240) {
            return "240P";
        }
        return i11 + "P";
    }
}
