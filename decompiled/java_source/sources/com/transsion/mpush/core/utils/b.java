package com.transsion.mpush.core.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.mpush.core.fcm.m;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f47609a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f47610b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a f47611c;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f47612a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f47613b;

        public a(String seed, int i11) {
            Intrinsics.h(seed, "seed");
            this.f47612a = seed;
            this.f47613b = i11;
        }

        public final int a() {
            return this.f47613b;
        }

        public final String b() {
            return this.f47612a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f47612a, aVar.f47612a) && this.f47613b == aVar.f47613b;
        }

        public int hashCode() {
            return (this.f47612a.hashCode() * 31) + this.f47613b;
        }

        public String toString() {
            return "CachedSeed(seed=" + this.f47612a + ", priority=" + this.f47613b + ")";
        }
    }

    /* JADX INFO: renamed from: com.transsion.mpush.core.utils.b$b, reason: collision with other inner class name */
    private static final class C0641b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f47614a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f47615b;

        public C0641b(String raw, int i11) {
            Intrinsics.h(raw, "raw");
            this.f47614a = raw;
            this.f47615b = i11;
        }

        public final int a() {
            return this.f47615b;
        }

        public final String b() {
            return this.f47614a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0641b)) {
                return false;
            }
            C0641b c0641b = (C0641b) obj;
            return Intrinsics.c(this.f47614a, c0641b.f47614a) && this.f47615b == c0641b.f47615b;
        }

        public int hashCode() {
            return (this.f47614a.hashCode() * 31) + this.f47615b;
        }

        public String toString() {
            return "DeviceCandidate(raw=" + this.f47614a + ", priority=" + this.f47615b + ")";
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f47616a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f47617b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f47618c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f47619d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f47620e;

        public c(int i11, int i12, int i13, int i14, int i15) {
            this.f47616a = i11;
            this.f47617b = i12;
            this.f47618c = i13;
            this.f47619d = i14;
            this.f47620e = i15;
        }

        public final int a() {
            return this.f47617b;
        }

        public final int b() {
            return this.f47619d;
        }

        public final int c() {
            return this.f47616a;
        }

        public final int d() {
            return this.f47618c;
        }

        public final boolean e() {
            return this.f47616a >= this.f47619d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f47616a == cVar.f47616a && this.f47617b == cVar.f47617b && this.f47618c == cVar.f47618c && this.f47619d == cVar.f47619d && this.f47620e == cVar.f47620e;
        }

        public final int f() {
            return this.f47620e;
        }

        public int hashCode() {
            return (((((((this.f47616a * 31) + this.f47617b) * 31) + this.f47618c) * 31) + this.f47619d) * 31) + this.f47620e;
        }

        public String toString() {
            return "RequestWindow(nowMinutes=" + this.f47616a + ", baseStartMinutes=" + this.f47617b + ", offsetMinutes=" + this.f47618c + ", hashedStartMinutes=" + this.f47619d + ", seedPriority=" + this.f47620e + ")";
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f47621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f47622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f47623c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f47624d;

        public d(int i11, int i12, int i13, int i14) {
            this.f47621a = i11;
            this.f47622b = i12;
            this.f47623c = i13;
            this.f47624d = i14;
        }

        public final int a() {
            return this.f47623c;
        }

        public final int b() {
            return this.f47621a;
        }

        public final int c() {
            return this.f47622b;
        }

        public final boolean d() {
            return this.f47621a >= this.f47623c;
        }

        public final int e() {
            return this.f47624d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f47621a == dVar.f47621a && this.f47622b == dVar.f47622b && this.f47623c == dVar.f47623c && this.f47624d == dVar.f47624d;
        }

        public int hashCode() {
            return (((((this.f47621a * 31) + this.f47622b) * 31) + this.f47623c) * 31) + this.f47624d;
        }

        public String toString() {
            return "SecondRequestWindow(nowSeconds=" + this.f47621a + ", offsetSeconds=" + this.f47622b + ", hashedStartSeconds=" + this.f47623c + ", seedPriority=" + this.f47624d + ")";
        }
    }

    private b() {
    }

    private final String a() {
        String str = Build.FINGERPRINT;
        if (str == null) {
            str = "";
        }
        String string = StringsKt.n1(str).toString();
        if (!StringsKt.q0(string) && !StringsKt.H(string, TmcConstants.ROUTE_UNKNOWN, true)) {
            return string;
        }
        List<String> listO = CollectionsKt.o(Build.BRAND, Build.MANUFACTURER, Build.MODEL, Build.DEVICE, Build.PRODUCT, Build.HARDWARE, Build.BOARD);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(listO, 10));
        for (String str2 : listO) {
            if (str2 == null) {
                str2 = "";
            }
            arrayList.add(StringsKt.n1(str2).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            String str3 = (String) obj;
            if (!StringsKt.q0(str3) && !StringsKt.H(str3, TmcConstants.ROUTE_UNKNOWN, true)) {
                arrayList2.add(obj);
            }
        }
        return CollectionsKt.s0(arrayList2, "|", null, null, 0, null, null, 62, null);
    }

    public static /* synthetic */ c c(b bVar, Context context, String str, int i11, int i12, int i13, Calendar calendar, int i14, Object obj) {
        if ((i14 & 4) != 0) {
            i11 = 480;
        }
        int i15 = i11;
        if ((i14 & 8) != 0) {
            i12 = 60;
        }
        int i16 = i12;
        if ((i14 & 16) != 0) {
            i13 = 30;
        }
        int i17 = i13;
        if ((i14 & 32) != 0) {
            calendar = Calendar.getInstance();
        }
        return bVar.b(context, str, i15, i16, i17, calendar);
    }

    private final int e(Calendar calendar) {
        return (calendar.get(11) * 3600) + (calendar.get(12) * 60) + calendar.get(13);
    }

    private final Pair h(Context context, int i11) {
        if (i11 <= 1) {
            return new Pair(0, 0);
        }
        Pair pairK = k(context);
        String str = (String) pairK.component1();
        int iIntValue = ((Number) pairK.component2()).intValue();
        double dL = l(str);
        int iV = v(dL, i11);
        lg.a.C0828a c0828a = lg.a.f68839a;
        String strU = u(iIntValue);
        String str2 = String.format("%.6f", Arrays.copyOf(new Object[]{Double.valueOf(dL)}, 1));
        Intrinsics.g(str2, "format(...)");
        lg.a.C0828a.r(c0828a, "PUSH_HASH", new String[]{"【时间散列】分钟偏移=" + iV + "/" + i11 + ", seed来源=" + strU + ", hash=" + str2}, false, 4, null);
        return new Pair(Integer.valueOf(iV), Integer.valueOf(iIntValue));
    }

    private final Pair i(Context context, int i11) {
        if (i11 <= 1) {
            return new Pair(0, 0);
        }
        Pair pairK = k(context);
        String str = (String) pairK.component1();
        int iIntValue = ((Number) pairK.component2()).intValue();
        double dL = l(str);
        int iV = v(dL, i11);
        lg.a.C0828a c0828a = lg.a.f68839a;
        String strU = u(iIntValue);
        String str2 = String.format("%.6f", Arrays.copyOf(new Object[]{Double.valueOf(dL)}, 1));
        Intrinsics.g(str2, "format(...)");
        lg.a.C0828a.r(c0828a, "PUSH_HASH", new String[]{"【时间散列】秒偏移=" + iV + "/" + i11 + ", seed来源=" + strU + ", hash=" + str2}, false, 4, null);
        return new Pair(Integer.valueOf(iV), Integer.valueOf(iIntValue));
    }

    private final String j(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mpush_hash_fallback_prefs", 0);
        String string = sharedPreferences.getString("key_install_fallback_id", null);
        if (string != null && !StringsKt.q0(string)) {
            return string;
        }
        synchronized (f47610b) {
            String string2 = sharedPreferences.getString("key_install_fallback_id", null);
            if (string2 != null && !StringsKt.q0(string2)) {
                return string2;
            }
            String str = "install-" + UUID.randomUUID();
            Intrinsics.e(sharedPreferences);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("key_install_fallback_id", str);
            editorEdit.apply();
            return str;
        }
    }

    private final Pair k(Context context) {
        a aVar = f47611c;
        if (aVar != null) {
            return TuplesKt.a(aVar.b(), Integer.valueOf(aVar.a()));
        }
        synchronized (f47610b) {
            a aVar2 = f47611c;
            if (aVar2 != null) {
                return TuplesKt.a(aVar2.b(), Integer.valueOf(aVar2.a()));
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences("mpush_hash_fallback_prefs", 0);
            String string = sharedPreferences.getString("key_stable_device_id", null);
            if (string == null) {
                string = "";
            }
            b bVar = f47609a;
            Intrinsics.e(sharedPreferences);
            int iQ = bVar.q(sharedPreferences);
            C0641b c0641bS = bVar.s(context);
            String strT = bVar.t(c0641bS.b());
            if (!StringsKt.q0(string)) {
                if (c0641bS.a() > iQ && !Intrinsics.c(string, strT)) {
                    bVar.o(sharedPreferences, strT, c0641bS.a());
                    iQ = c0641bS.a();
                }
                f47611c = new a(string, iQ);
                return TuplesKt.a(string, Integer.valueOf(iQ));
            }
            bVar.o(sharedPreferences, strT, c0641bS.a());
            iQ = c0641bS.a();
            string = strT;
            f47611c = new a(string, iQ);
            return TuplesKt.a(string, Integer.valueOf(iQ));
        }
    }

    private final double l(String str) {
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        UUID uuidNameUUIDFromBytes = UUID.nameUUIDFromBytes(bytes);
        return ((uuidNameUUIDFromBytes.getMostSignificantBits() ^ uuidNameUUIDFromBytes.getLeastSignificantBits()) >>> 1) / 9.223372036854776E18d;
    }

    private final boolean m(String str) {
        return (StringsKt.q0(str) || StringsKt.H(str, "9774d56d682e549c", true) || StringsKt.H(str, TmcConstants.ROUTE_UNKNOWN, true)) ? false : true;
    }

    private final int n(String str, int i11) {
        Integer numV;
        if (str != null && !StringsKt.q0(str)) {
            String string = StringsKt.n1(str).toString();
            if (StringsKt.c0(string, ":", false, 2, null)) {
                List listS0 = StringsKt.S0(string, new String[]{":"}, false, 2, 2, null);
                if (listS0.size() == 2 && (numV = StringsKt.v((String) listS0.get(0))) != null) {
                    int iM = RangesKt.m(numV.intValue(), 0, 23);
                    Integer numV2 = StringsKt.v((String) listS0.get(1));
                    if (numV2 != null) {
                        return (iM * 60) + RangesKt.m(numV2.intValue(), 0, 59);
                    }
                }
                return i11;
            }
            Integer numV3 = StringsKt.v(string);
            if (numV3 != null) {
                return RangesKt.m(numV3.intValue(), 0, 23) * 60;
            }
        }
        return i11;
    }

    private final void o(SharedPreferences sharedPreferences, String str, int i11) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("key_stable_device_id", str);
        editorEdit.putInt("key_stable_device_priority", i11);
        editorEdit.apply();
    }

    private final String p(Context context) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(Settings.Secure.getString(context.getContentResolver(), "android_id"));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        String str = (String) objM454constructorimpl;
        return str == null ? "" : str;
    }

    private final int q(SharedPreferences sharedPreferences) {
        return sharedPreferences.getInt("key_stable_device_priority", 0);
    }

    private final String r() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Function0 function0P = m.f47511a.p();
            String str = function0P != null ? (String) function0P.invoke() : null;
            if (str == null) {
                str = "";
            }
            objM454constructorimpl = Result.m454constructorimpl(str);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        String str2 = (String) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
        return str2 == null ? "" : str2;
    }

    private final C0641b s(Context context) {
        String strP = p(context);
        if (m(strP)) {
            return new C0641b(strP, 4);
        }
        String strR = r();
        if (!StringsKt.q0(strR)) {
            return new C0641b(strR, 3);
        }
        String strJ = j(context);
        if (!StringsKt.q0(strJ)) {
            return new C0641b(strJ, 2);
        }
        String strA = a();
        if (!StringsKt.q0(strA)) {
            return new C0641b(strA, 1);
        }
        return new C0641b("volatile-" + UUID.randomUUID(), 0);
    }

    private final String t(String str) {
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "getBytes(...)");
        return "stable-" + UUID.nameUUIDFromBytes(bytes);
    }

    private final int v(double d11, int i11) {
        return RangesKt.m((int) (RangesKt.k(d11, 0.0d, com.transsion.mpush.core.utils.a.a(1.0d)) * ((double) i11)), 0, i11 - 1);
    }

    public final c b(Context context, String str, int i11, int i12, int i13, Calendar calendar) {
        Intrinsics.h(context, "context");
        Intrinsics.h(calendar, "calendar");
        int i14 = (calendar.get(11) * 60) + calendar.get(12);
        int iN = n(str, i11);
        Pair pairH = h(context, RangesKt.f(i13 + i12 + 1, 1));
        int iIntValue = ((Number) pairH.component1()).intValue();
        int i15 = iIntValue - i12;
        return new c(i14, iN, i15, RangesKt.m(iN + i15, 0, 1439), ((Number) pairH.component2()).intValue());
    }

    public final d d(Context context, String str, int i11, int i12, int i13) {
        Intrinsics.h(context, "context");
        int iN = n(str, i11) * 60;
        int iF = RangesKt.f(i12, 0) * 60;
        Pair pairI = i(context, (RangesKt.f(i13, 0) * 60) + iF + 1);
        int iIntValue = ((Number) pairI.component1()).intValue();
        int iIntValue2 = ((Number) pairI.component2()).intValue();
        int i14 = iIntValue - iF;
        int iM = RangesKt.m(iN + i14, 0, 86399);
        Calendar calendar = Calendar.getInstance();
        Intrinsics.g(calendar, "getInstance(...)");
        return new d(e(calendar), i14, iM, iIntValue2);
    }

    public final String f(int i11) {
        int iM = RangesKt.m(i11, 0, 1439);
        String str = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(iM / 60), Integer.valueOf(iM % 60)}, 2));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public final String g(int i11) {
        int iM = RangesKt.m(i11, 0, 86399);
        String str = String.format("%02d:%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(iM / 3600), Integer.valueOf((iM % 3600) / 60), Integer.valueOf(iM % 60)}, 3));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public final String u(int i11) {
        if (i11 == 0) {
            return "VOLATILE_UUID";
        }
        if (i11 == 1) {
            return "BUILD_FINGERPRINT";
        }
        if (i11 == 2) {
            return "INSTALL_ID";
        }
        if (i11 == 3) {
            return "UID";
        }
        if (i11 == 4) {
            return "ANDROID_ID";
        }
        return "UNKNOWN(" + i11 + ")";
    }
}
