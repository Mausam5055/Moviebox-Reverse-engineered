package yy;

import android.app.Application;
import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.transsnet.loginapi.bean.Country;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f79094a = new a();

    private a() {
    }

    public final Country a(Context context, String phone) throws Throwable {
        Intrinsics.h(context, "context");
        Intrinsics.h(phone, "phone");
        ArrayList arrayListA = b.b().a(context);
        if (arrayListA != null && !arrayListA.isEmpty()) {
            Iterator it = arrayListA.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                Object next = it.next();
                Intrinsics.g(next, "next(...)");
                Country country = (Country) next;
                String code = country.getCode();
                String strSubstring = phone.substring(1, (code != null ? code.length() : 0) + 1);
                Intrinsics.g(strSubstring, "substring(...)");
                if (TextUtils.equals(strSubstring, country.getCode())) {
                    return country;
                }
            }
        }
        return null;
    }

    public final Country b() throws Throwable {
        Application applicationA = Utils.a();
        ArrayList arrayListA = b.b().a(applicationA);
        Object systemService = applicationA.getSystemService("phone");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        String simCountryIso = ((TelephonyManager) systemService).getSimCountryIso();
        Intrinsics.g(simCountryIso, "getSimCountryIso(...)");
        String upperCase = simCountryIso.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        Object obj = null;
        if (arrayListA == null) {
            return null;
        }
        for (Object obj2 : arrayListA) {
            if (Intrinsics.c(((Country) obj2).getCountry_s(), upperCase)) {
                obj = obj2;
                break;
            }
        }
        return (Country) obj;
    }
}
