package iw;

import com.blankj.utilcode.util.o;
import com.tencent.mmkv.MMKV;
import com.transsion.usercenter.devicemanagement.model.UpgradeRightsDto;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f65660a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f65661b = LazyKt.b(new Function0() { // from class: iw.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.e();
        }
    });

    private b() {
    }

    private final String b(String str) {
        if (str == null || StringsKt.q0(str)) {
            return null;
        }
        return "upgrade_rights_" + str + "_" + Locale.getDefault().toLanguageTag();
    }

    private final MMKV d() {
        return (MMKV) f65661b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV e() {
        MMKV mmkvI = MMKV.I("device_management_upgrade_rights");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final UpgradeRightsDto c(String str) {
        String string;
        Object objM454constructorimpl;
        String strB = b(str);
        if (strB == null || (string = d().getString(strB, null)) == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl((UpgradeRightsDto) o.d(string, UpgradeRightsDto.class));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (UpgradeRightsDto) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
    }

    public final void f(String str, UpgradeRightsDto rights) {
        Intrinsics.h(rights, "rights");
        String strB = b(str);
        if (strB == null) {
            return;
        }
        d().putString(strB, o.j(rights));
    }
}
