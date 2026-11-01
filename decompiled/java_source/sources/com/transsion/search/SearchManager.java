package com.transsion.search;

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

/* JADX INFO: loaded from: classes4.dex */
public final class SearchManager {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f51941f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Lazy f51942g = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsion.search.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchManager.e();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f51946d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f51944b = "kv_search_group";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f51945c = "kv_search_work";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f51947e = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MMKV f51943a = MMKV.I("kv_search_list");

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchManager a() {
            return (SearchManager) SearchManager.f51942g.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchManager e() {
        return new SearchManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(SearchManager searchManager) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(searchManager.f51947e);
        lg.a.C0828a.f(lg.a.f68839a, "VS_SM", "add" + arrayList, false, 4, null);
        int i11 = searchManager.f51946d;
        if (i11 != 1) {
            if (i11 == 2) {
                MMKV mmkv = searchManager.f51943a;
                if (mmkv != null) {
                    mmkv.putString(searchManager.f51944b, o.j(arrayList));
                    return;
                }
                return;
            }
            if (i11 != 3) {
                return;
            }
        }
        MMKV mmkv2 = searchManager.f51943a;
        if (mmkv2 != null) {
            mmkv2.putString(searchManager.f51945c, o.j(arrayList));
        }
    }

    private final void i(Runnable runnable) {
        h.f52181b.a().d(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(SearchManager searchManager) {
        searchManager.f51947e.clear();
        int i11 = searchManager.f51946d;
        if (i11 != 1) {
            if (i11 == 2) {
                MMKV mmkv = searchManager.f51943a;
                if (mmkv != null) {
                    mmkv.putString(searchManager.f51944b, "");
                    return;
                }
                return;
            }
            if (i11 != 3) {
                return;
            }
        }
        MMKV mmkv2 = searchManager.f51943a;
        if (mmkv2 != null) {
            mmkv2.putString(searchManager.f51945c, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(SearchManager searchManager, com.transsion.search.a aVar) {
        aVar.a(searchManager.l());
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0035  */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    public final void g(String keyword) {
        Intrinsics.h(keyword, "keyword");
        if (this.f51947e.contains(keyword)) {
            this.f51947e.remove(keyword);
            this.f51947e.add(keyword);
        } else {
            int i11 = this.f51946d;
            if (i11 == 1) {
                if (this.f51947e.size() >= 30) {
                    this.f51947e.remove(0);
                }
            } else if (i11 != 2) {
                if (i11 == 3) {
                    if (this.f51947e.size() >= 30) {
                        this.f51947e.remove(0);
                    }
                }
            } else if (this.f51947e.size() >= 30) {
                this.f51947e.remove(0);
            }
            this.f51947e.add(keyword);
        }
        if (this.f51947e.isEmpty()) {
            return;
        }
        i(new Runnable() { // from class: com.transsion.search.b
            @Override // java.lang.Runnable
            public final void run() {
                SearchManager.h(this.f51972a);
            }
        });
    }

    public final void j() {
        i(new Runnable() { // from class: com.transsion.search.e
            @Override // java.lang.Runnable
            public final void run() {
                SearchManager.k(this.f51982a);
            }
        });
    }

    public final List l() {
        List arrayList;
        String string = null;
        if (this.f51946d == 2) {
            MMKV mmkv = this.f51943a;
            if (mmkv != null) {
                string = mmkv.getString(this.f51944b, "");
            }
        } else {
            MMKV mmkv2 = this.f51943a;
            if (mmkv2 != null) {
                string = mmkv2.getString(this.f51945c, "");
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, "VS_SM", "findSearch" + string, false, 4, null);
        if (TextUtils.isEmpty(string) || TextUtils.equals(string, "{}")) {
            arrayList = new ArrayList();
        } else {
            Object objE = o.e(string, new TypeToken<List<String>>() { // from class: com.transsion.search.SearchManager$findSearch$list$type$1
            }.getType());
            Intrinsics.e(objE);
            arrayList = (List) objE;
        }
        arrayList.isEmpty();
        this.f51947e = arrayList;
        return arrayList;
    }

    public final void m(int i11, final com.transsion.search.a callback) {
        Intrinsics.h(callback, "callback");
        this.f51946d = i11;
        i(new Runnable() { // from class: com.transsion.search.c
            @Override // java.lang.Runnable
            public final void run() {
                SearchManager.n(this.f51975a, callback);
            }
        });
    }
}
