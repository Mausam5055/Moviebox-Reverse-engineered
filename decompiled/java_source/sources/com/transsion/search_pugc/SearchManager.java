package com.transsion.search_pugc;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class SearchManager {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f52271f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Lazy f52272g = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsion.search_pugc.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchManager.e();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f52276d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f52274b = "kv_search_group";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f52275c = "kv_search_work";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f52277e = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MMKV f52273a = MMKV.I("kv_search_list");

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchManager a() {
            return (SearchManager) SearchManager.f52272g.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchManager e() {
        return new SearchManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(SearchManager searchManager) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(searchManager.f52277e);
        lg.a.C0828a.f(lg.a.f68839a, "VS_SM", "add" + arrayList, false, 4, null);
        int i11 = searchManager.f52276d;
        if (i11 != 1) {
            if (i11 == 2) {
                MMKV mmkv = searchManager.f52273a;
                if (mmkv != null) {
                    mmkv.putString(searchManager.n(), o.j(arrayList));
                    return;
                }
                return;
            }
            if (i11 != 3) {
                return;
            }
        }
        MMKV mmkv2 = searchManager.f52273a;
        if (mmkv2 != null) {
            mmkv2.putString(searchManager.o(), o.j(arrayList));
        }
    }

    private final void i(Runnable runnable) {
        j.f52490b.a().d(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(SearchManager searchManager) {
        searchManager.f52277e.clear();
        int i11 = searchManager.f52276d;
        if (i11 != 1) {
            if (i11 == 2) {
                MMKV mmkv = searchManager.f52273a;
                if (mmkv != null) {
                    mmkv.putString(searchManager.n(), "");
                    return;
                }
                return;
            }
            if (i11 != 3) {
                return;
            }
        }
        MMKV mmkv2 = searchManager.f52273a;
        if (mmkv2 != null) {
            mmkv2.putString(searchManager.o(), "");
        }
    }

    private final String m() {
        String strD = ak.o.f646a.d();
        return strD == null ? "" : strD;
    }

    private final String n() {
        return m().length() == 0 ? this.f52274b : "kv_kids_search_group";
    }

    private final String o() {
        return m().length() == 0 ? this.f52275c : "kv_kids_search_work";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(SearchManager searchManager, com.transsion.search_pugc.a aVar) {
        aVar.a(searchManager.l());
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0035  */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    public final void g(String keyword) {
        Intrinsics.h(keyword, "keyword");
        if (this.f52277e.contains(keyword)) {
            this.f52277e.remove(keyword);
            this.f52277e.add(keyword);
        } else {
            int i11 = this.f52276d;
            if (i11 == 1) {
                if (this.f52277e.size() >= 30) {
                    this.f52277e.remove(0);
                }
            } else if (i11 != 2) {
                if (i11 == 3) {
                    if (this.f52277e.size() >= 30) {
                        this.f52277e.remove(0);
                    }
                }
            } else if (this.f52277e.size() >= 30) {
                this.f52277e.remove(0);
            }
            this.f52277e.add(keyword);
        }
        if (this.f52277e.isEmpty()) {
            return;
        }
        i(new Runnable() { // from class: com.transsion.search_pugc.c
            @Override // java.lang.Runnable
            public final void run() {
                SearchManager.h(this.f52306a);
            }
        });
    }

    public final void j() {
        i(new Runnable() { // from class: com.transsion.search_pugc.e
            @Override // java.lang.Runnable
            public final void run() {
                SearchManager.k(this.f52313a);
            }
        });
    }

    public final List l() {
        List arrayList;
        String string = null;
        if (this.f52276d == 2) {
            MMKV mmkv = this.f52273a;
            if (mmkv != null) {
                string = mmkv.getString(n(), "");
            }
        } else {
            MMKV mmkv2 = this.f52273a;
            if (mmkv2 != null) {
                string = mmkv2.getString(o(), "");
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, "VS_SM", "findSearch" + string, false, 4, null);
        if (TextUtils.isEmpty(string) || TextUtils.equals(string, "{}")) {
            arrayList = new ArrayList();
        } else {
            Object objE = o.e(string, new TypeToken<List<String>>() { // from class: com.transsion.search_pugc.SearchManager$findSearch$list$type$1
            }.getType());
            Intrinsics.e(objE);
            arrayList = (List) objE;
        }
        arrayList.isEmpty();
        this.f52277e = arrayList;
        return arrayList;
    }

    public final void p(int i11, final com.transsion.search_pugc.a callback) {
        Intrinsics.h(callback, "callback");
        this.f52276d = i11;
        i(new Runnable() { // from class: com.transsion.search_pugc.b
            @Override // java.lang.Runnable
            public final void run() {
                SearchManager.q(this.f52302a, callback);
            }
        });
    }
}
