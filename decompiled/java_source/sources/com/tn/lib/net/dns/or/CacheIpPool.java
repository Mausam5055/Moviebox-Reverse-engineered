package com.tn.lib.net.dns.or;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class CacheIpPool {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ArrayList f40826b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CacheIpPool f40825a = new CacheIpPool();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ConcurrentHashMap f40827c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile String f40828d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile String f40829e = "api6.aoneroom.com";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile String f40830f = "test-mse-api.aoneroom.com";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile String f40831g = "https";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Lazy f40832h = LazyKt.b(new Function0() { // from class: com.tn.lib.net.dns.or.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CacheIpPool.e();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Lazy f40833i = LazyKt.b(new Function0() { // from class: com.tn.lib.net.dns.or.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CacheIpPool.f();
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Lazy f40834j = LazyKt.b(new Function0() { // from class: com.tn.lib.net.dns.or.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CacheIpPool.d();
        }
    });

    private CacheIpPool() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String d() {
        if (pg.a.f72446a.d()) {
            return "https://" + f40830f;
        }
        return "https://" + f40829e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String e() {
        return "[\n{\n\"host\": \"" + f40829e + "\",\n\"ip\": \"\",\n\"scheme\": \"https\"\n}\n]";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String f() {
        return "[{\n    \"host\": \"" + f40830f + "\",\n    \"ip\": \"8.219.92.106\",\n    \"scheme\": \"https\"\n}]";
    }

    private final String i() {
        return (String) f40834j.getValue();
    }

    private final String j() {
        return (String) f40832h.getValue();
    }

    private final String k() {
        return (String) f40833i.getValue();
    }

    public final String g() {
        if (TextUtils.isEmpty(f40828d)) {
            f40828d = i();
        }
        return f40828d;
    }

    public final void h() {
        String str;
        AddressItem addressItem;
        AddressItem addressItem2;
        try {
            ArrayList<AddressItem> arrayList = (ArrayList) o.e(pg.c.f72455a.a("key_ip_list", pg.a.f72446a.d() ? k() : j()), new TypeToken<ArrayList<AddressItem>>() { // from class: com.tn.lib.net.dns.or.CacheIpPool$getCacheUrlList$type$1
            }.getType());
            f40826b = arrayList;
            if (arrayList != null) {
                for (AddressItem addressItem3 : arrayList) {
                    String host = addressItem3.getHost();
                    if (host != null && host.length() > 0) {
                        addressItem3.setIpEnable(true);
                        f40827c.put(addressItem3.getHost(), addressItem3);
                    }
                }
            }
            ArrayList arrayList2 = f40826b;
            if (arrayList2 == null || !(!arrayList2.isEmpty())) {
                str = f40828d;
            } else {
                ArrayList arrayList3 = f40826b;
                String host2 = null;
                f40831g = String.valueOf((arrayList3 == null || (addressItem2 = (AddressItem) arrayList3.get(0)) == null) ? null : addressItem2.getScheme());
                ArrayList arrayList4 = f40826b;
                if (arrayList4 != null && (addressItem = (AddressItem) arrayList4.get(0)) != null) {
                    host2 = addressItem.getHost();
                }
                f40829e = String.valueOf(host2);
                str = f40831g + "://" + f40829e;
            }
            f40828d = str;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final String l() {
        MMKV mmkvC = bh.a.f16469a.c();
        String string = mmkvC != null ? mmkvC.getString("mock_host_key", "") : null;
        if (!TextUtils.isEmpty(string)) {
            f40829e = String.valueOf(string);
        }
        return f40829e;
    }

    public final String m() {
        return f40831g;
    }

    public final void n(String str) {
        if (!TextUtils.isEmpty(str)) {
            pg.c.f72455a.b("key_ip_list", String.valueOf(str));
        }
        h();
    }

    public final void o(String host) {
        Intrinsics.h(host, "host");
        f40829e = host;
    }
}
