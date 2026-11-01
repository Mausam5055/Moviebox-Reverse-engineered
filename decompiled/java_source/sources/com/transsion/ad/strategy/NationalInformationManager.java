package com.transsion.ad.strategy;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.mmkv.MMKV;
import java.util.Locale;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class NationalInformationManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NationalInformationManager f42224a = new NationalInformationManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Map f42225b;

    private NationalInformationManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String d() {
        String simpleName = NationalInformationManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final Object f(Continuation continuation) {
        Map map = f42225b;
        return map != null ? map : kotlinx.coroutines.i.g(y0.b(), new NationalInformationManager$getMccCache$3(null), continuation);
    }

    public final Object c(Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new NationalInformationManager$getAllNationalInformationList$2(null), continuation);
    }

    public final String e() {
        String string;
        MMKV mmkvC = bh.a.f16469a.c();
        String strO = "";
        if (mmkvC != null && (string = mmkvC.getString("sp_code", "")) != null) {
            strO = string;
        }
        if (TextUtils.isEmpty(strO)) {
            strO = ih.b.f65241a.o();
        }
        if (strO.length() <= 0 || strO.length() < 3) {
            return strO;
        }
        String strSubstring = strO.substring(0, 3);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(String str, Continuation continuation) throws Throwable {
        NationalInformationManager$getNationalInformation$1 nationalInformationManager$getNationalInformation$1;
        if (continuation instanceof NationalInformationManager$getNationalInformation$1) {
            nationalInformationManager$getNationalInformation$1 = (NationalInformationManager$getNationalInformation$1) continuation;
            int i11 = nationalInformationManager$getNationalInformation$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                nationalInformationManager$getNationalInformation$1.label = i11 - Integer.MIN_VALUE;
            } else {
                nationalInformationManager$getNationalInformation$1 = new NationalInformationManager$getNationalInformation$1(this, continuation);
            }
        } else {
            nationalInformationManager$getNationalInformation$1 = new NationalInformationManager$getNationalInformation$1(this, continuation);
        }
        Object objF = nationalInformationManager$getNationalInformation$1.result;
        Object objF2 = IntrinsicsKt.f();
        int i12 = nationalInformationManager$getNationalInformation$1.label;
        if (i12 == 0) {
            ResultKt.b(objF);
            nationalInformationManager$getNationalInformation$1.L$0 = str;
            nationalInformationManager$getNationalInformation$1.label = 1;
            objF = f(nationalInformationManager$getNationalInformation$1);
            if (objF == objF2) {
                return objF2;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) nationalInformationManager$getNationalInformation$1.L$0;
            ResultKt.b(objF);
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return ((Map) objF).get(lowerCase);
    }

    public final Object h(Context context, Continuation continuation) {
        Object objG = kotlinx.coroutines.i.g(y0.b(), new NationalInformationManager$initLocalMcc$2(context, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }
}
