package com.transsnet.login.country;

import android.app.Application;
import android.text.TextUtils;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.gslb.Utils;
import com.transsnet.loginapi.bean.Country;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class SelectCountryViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f60287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f60288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f60289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f60290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HashMap f60291f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectCountryViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f60287b = new b0();
        this.f60288c = new b0();
        this.f60289d = new b0();
        this.f60290e = new b0();
        l();
    }

    private final Integer g(String str) {
        HashMap map = this.f60291f;
        if (map == null) {
            return null;
        }
        Intrinsics.e(map);
        return (Integer) map.get(str);
    }

    private final String h(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String strSubstring = str.substring(0, 1);
        Intrinsics.g(strSubstring, "substring(...)");
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        String upperCase = strSubstring.toUpperCase(locale);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    private final void l() {
        k.d(u0.a(this), y0.b(), null, new SelectCountryViewModel$initData$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() throws Throwable {
        ArrayList arrayListA = yy.b.b().a(b());
        Intrinsics.g(arrayListA, "getCountryList_toArrayList(...)");
        final Function2 function2 = new Function2() { // from class: com.transsnet.login.country.f
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(SelectCountryViewModel.n((Country) obj, (Country) obj2));
            }
        };
        CollectionsKt.A(arrayListA, new Comparator() { // from class: com.transsnet.login.country.g
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return SelectCountryViewModel.o(function2, obj, obj2);
            }
        });
        p(arrayListA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int n(Country obj, Country country) {
        Intrinsics.h(obj, "obj");
        return obj.compareTo(country);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int o(Function2 function2, Object obj, Object obj2) {
        return ((Number) function2.invoke(obj, obj2)).intValue();
    }

    private final void p(List list) {
        if (list == null || list.isEmpty()) {
            this.f60288c.n(null);
            return;
        }
        if (this.f60291f == null) {
            this.f60291f = new HashMap();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            Country country = (Country) it.next();
            String country2 = country.getCountry();
            Intrinsics.g(country2, "getCountry(...)");
            String strH = h(country2);
            if (!TextUtils.isEmpty(strH) && !CollectionsKt.b0(arrayList, strH)) {
                country.setIndex(strH);
                Intrinsics.e(strH);
                arrayList.add(strH);
                Integer numValueOf = Integer.valueOf(i11);
                HashMap map = this.f60291f;
                Intrinsics.e(map);
                map.put(strH, numValueOf);
            }
            i11++;
        }
        arrayList.add(Utils.SEPARATOR);
        HashMap map2 = this.f60291f;
        Intrinsics.e(map2);
        map2.put(Utils.SEPARATOR, Integer.valueOf(i11 - 1));
        this.f60287b.n(list);
        this.f60288c.n(arrayList);
    }

    public final LiveData f() {
        return this.f60287b;
    }

    public final LiveData i() {
        return this.f60289d;
    }

    public final LiveData j() {
        return this.f60290e;
    }

    public final LiveData k() {
        return this.f60288c;
    }

    public final void q(String index) {
        Intrinsics.h(index, "index");
        this.f60289d.q(g(index));
    }

    public final void r(Country country) {
        if (country != null) {
            this.f60290e.q(new xy.a(country));
        }
    }
}
