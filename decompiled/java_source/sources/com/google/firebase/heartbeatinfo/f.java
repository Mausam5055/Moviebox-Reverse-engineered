package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.os.Build;
import androidx.datastore.preferences.core.MutablePreferences;
import com.google.firebase.datastorage.JavaDataStorage;
import gc.o;
import gc.p;
import java.text.SimpleDateFormat;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final androidx.datastore.preferences.core.c.a f31872b = androidx.datastore.preferences.core.e.f("fire-global");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final androidx.datastore.preferences.core.c.a f31873c = androidx.datastore.preferences.core.e.f("fire-count");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final androidx.datastore.preferences.core.c.a f31874d = androidx.datastore.preferences.core.e.g("last-used-date");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final JavaDataStorage f31875a;

    public f(Context context, String str) {
        this.f31875a = new JavaDataStorage(context, "FirebaseHeartBeat" + str);
    }

    private synchronized long e(MutablePreferences mutablePreferences) {
        long j11;
        try {
            long jLongValue = ((Long) com.google.firebase.datastorage.c.a(mutablePreferences, f31873c, 0L)).longValue();
            String strA = "";
            Set hashSet = new HashSet();
            String str = null;
            for (Map.Entry entry : mutablePreferences.a().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    Set<String> set = (Set) entry.getValue();
                    for (String str2 : set) {
                        if (str == null || str.compareTo(str2) > 0) {
                            strA = ((androidx.datastore.preferences.core.c.a) entry.getKey()).a();
                            hashSet = set;
                            str = str2;
                        }
                    }
                }
            }
            HashSet hashSet2 = new HashSet(hashSet);
            hashSet2.remove(str);
            mutablePreferences.i(androidx.datastore.preferences.core.e.h(strA), hashSet2);
            j11 = jLongValue - 1;
            mutablePreferences.i(f31873c, Long.valueOf(j11));
        } catch (Throwable th2) {
            throw th2;
        }
        return j11;
    }

    private synchronized String h(long j11) {
        if (Build.VERSION.SDK_INT >= 26) {
            return new Date(j11).toInstant().atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j11));
    }

    private synchronized androidx.datastore.preferences.core.c.a i(MutablePreferences mutablePreferences, String str) {
        for (Map.Entry entry : mutablePreferences.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        return androidx.datastore.preferences.core.e.h(((androidx.datastore.preferences.core.c.a) entry.getKey()).a());
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit k(MutablePreferences mutablePreferences) {
        long j11 = 0;
        for (Map.Entry entry : mutablePreferences.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                androidx.datastore.preferences.core.c.a aVar = (androidx.datastore.preferences.core.c.a) entry.getKey();
                Set set = (Set) entry.getValue();
                String strH = h(System.currentTimeMillis());
                if (set.contains(strH)) {
                    mutablePreferences.i(aVar, o.a(new Object[]{strH}));
                    j11++;
                } else {
                    mutablePreferences.h(aVar);
                }
            }
        }
        if (j11 == 0) {
            mutablePreferences.h(f31873c);
            return null;
        }
        mutablePreferences.i(f31873c, Long.valueOf(j11));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit l(String str, MutablePreferences mutablePreferences) {
        mutablePreferences.i(f31874d, str);
        p(mutablePreferences, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit m(String str, String str2, androidx.datastore.preferences.core.c.a aVar, MutablePreferences mutablePreferences) {
        androidx.datastore.preferences.core.c.a aVar2 = f31874d;
        if (((String) com.google.firebase.datastorage.c.a(mutablePreferences, aVar2, "")).equals(str)) {
            androidx.datastore.preferences.core.c.a aVarI = i(mutablePreferences, str);
            if (aVarI == null || aVarI.a().equals(str2)) {
                return null;
            }
            u(mutablePreferences, aVar, str);
            return null;
        }
        androidx.datastore.preferences.core.c.a aVar3 = f31873c;
        long jLongValue = ((Long) com.google.firebase.datastorage.c.a(mutablePreferences, aVar3, 0L)).longValue();
        if (jLongValue + 1 == 30) {
            jLongValue = e(mutablePreferences);
        }
        HashSet hashSet = new HashSet((Collection) com.google.firebase.datastorage.c.a(mutablePreferences, aVar, new HashSet()));
        hashSet.add(str);
        mutablePreferences.i(aVar, hashSet);
        mutablePreferences.i(aVar3, Long.valueOf(jLongValue + 1));
        mutablePreferences.i(aVar2, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit n(long j11, MutablePreferences mutablePreferences) {
        mutablePreferences.i(f31872b, Long.valueOf(j11));
        return null;
    }

    private synchronized void p(MutablePreferences mutablePreferences, String str) {
        try {
            androidx.datastore.preferences.core.c.a aVarI = i(mutablePreferences, str);
            if (aVarI == null) {
                return;
            }
            HashSet hashSet = new HashSet((Collection) com.google.firebase.datastorage.c.a(mutablePreferences, aVarI, new HashSet()));
            hashSet.remove(str);
            if (hashSet.isEmpty()) {
                mutablePreferences.h(aVarI);
            } else {
                mutablePreferences.i(aVarI, hashSet);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized void u(MutablePreferences mutablePreferences, androidx.datastore.preferences.core.c.a aVar, String str) {
        p(mutablePreferences, str);
        HashSet hashSet = new HashSet((Collection) com.google.firebase.datastorage.c.a(mutablePreferences, aVar, new HashSet()));
        hashSet.add(str);
        mutablePreferences.i(aVar, hashSet);
    }

    synchronized void f() {
        this.f31875a.g(new Function1() { // from class: com.google.firebase.heartbeatinfo.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f31869a.k((MutablePreferences) obj);
            }
        });
    }

    synchronized List g() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            String strH = h(System.currentTimeMillis());
            for (Map.Entry entry : this.f31875a.h().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(strH);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(p.a(((androidx.datastore.preferences.core.c.a) entry.getKey()).a(), new ArrayList(hashSet)));
                    }
                }
            }
            t(System.currentTimeMillis());
        } catch (Throwable th2) {
            throw th2;
        }
        return arrayList;
    }

    synchronized boolean j(long j11, long j12) {
        return h(j11).equals(h(j12));
    }

    synchronized void o() {
        final String strH = h(System.currentTimeMillis());
        this.f31875a.g(new Function1() { // from class: com.google.firebase.heartbeatinfo.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f31870a.l(strH, (MutablePreferences) obj);
            }
        });
    }

    synchronized boolean q(long j11) {
        return r(f31872b, j11);
    }

    synchronized boolean r(androidx.datastore.preferences.core.c.a aVar, long j11) {
        if (j(((Long) this.f31875a.j(aVar, -1L)).longValue(), j11)) {
            return false;
        }
        this.f31875a.k(aVar, Long.valueOf(j11));
        return true;
    }

    synchronized void s(long j11, final String str) {
        final String strH = h(j11);
        final androidx.datastore.preferences.core.c.a aVarH = androidx.datastore.preferences.core.e.h(str);
        this.f31875a.g(new Function1() { // from class: com.google.firebase.heartbeatinfo.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f31865a.m(strH, str, aVarH, (MutablePreferences) obj);
            }
        });
    }

    synchronized void t(final long j11) {
        this.f31875a.g(new Function1() { // from class: com.google.firebase.heartbeatinfo.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return f.n(j11, (MutablePreferences) obj);
            }
        });
    }
}
