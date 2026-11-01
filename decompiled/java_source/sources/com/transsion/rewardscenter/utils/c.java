package com.transsion.rewardscenter.utils;

import com.therouter.TheRouter;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.Country;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f51298a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Regex f51299b = new Regex("^\\d{7,15}$");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f51300c = 8;

    private c() {
    }

    public final Triple a() {
        b bVar = b.f51295a;
        String strC = bVar.c();
        String strD = bVar.d();
        String strE = bVar.e();
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "RewardsCenter", "getPhoneInfo mmkv: " + ((Object) strC) + ", " + ((Object) strD) + ", " + ((Object) strE), false, 4, null);
        ILoginApi iLoginApi = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
        if (iLoginApi != null) {
            if (StringsKt.q0(strE)) {
                UserInfo userInfoI = iLoginApi.i();
                String phone = userInfoI != null ? userInfoI.getPhone() : null;
                if (phone == null) {
                    phone = "";
                }
                if (StringsKt.q0(strC)) {
                    String cc2 = userInfoI != null ? userInfoI.getCc() : null;
                    strC = cc2 == null ? "" : cc2;
                }
                strE = phone;
            }
            lg.a.C0828a.f(c0828a, "RewardsCenter", "getPhoneInfo userInfo: " + ((Object) strC) + ", " + ((Object) strD) + ", " + ((Object) strE), false, 4, null);
            if (StringsKt.q0(strC) || StringsKt.q0(strD)) {
                Country countryE = iLoginApi.e();
                lg.a.C0828a.f(c0828a, "RewardsCenter", "getPhoneInfo --> country: " + countryE, false, 4, null);
                if (StringsKt.q0(strC)) {
                    strC = countryE != null ? countryE.getCode() : null;
                    if (strC == null) {
                        strC = "";
                    }
                }
                if (StringsKt.q0(strD)) {
                    String code = countryE != null ? countryE.getCode() : null;
                    if (code == null) {
                        code = "";
                    }
                    if (Intrinsics.c(strC, code)) {
                        String country_s = countryE != null ? countryE.getCountry_s() : null;
                        strD = country_s == null ? "" : country_s;
                    }
                }
            }
            lg.a.C0828a.f(c0828a, "RewardsCenter", "getPhoneInfo result: " + ((Object) strC) + ", " + ((Object) strD) + ", " + ((Object) strE), false, 4, null);
        }
        return new Triple(strC, strD, strE);
    }

    public final boolean b(String number) {
        Intrinsics.h(number, "number");
        return f51299b.matches(number);
    }
}
