package com.transsion.search_pugc.fragment.result;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.search_pugc.bean.SecondTab;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class SearchResultViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f52402i = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f52403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f52404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f52405d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f52406e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f52407f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f52408g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f52409h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f52403b = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.result.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SearchResultViewModel.o();
            }
        });
        this.f52404c = new b0();
        this.f52405d = new b0();
        this.f52406e = new b0();
        this.f52408g = new b0(Boolean.FALSE);
        this.f52409h = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final fr.a j() {
        return (fr.a) this.f52403b.getValue();
    }

    public static /* synthetic */ void n(SearchResultViewModel searchResultViewModel, String str, String str2, String str3, boolean z10, SecondTab secondTab, int i11, Object obj) {
        String str4 = (i11 & 2) != 0 ? null : str2;
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        searchResultViewModel.m(str, str4, str3, z10, (i11 & 16) != 0 ? null : secondTab);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final fr.a o() {
        return (fr.a) zg.c.f79414e.a().h(fr.a.class);
    }

    public final String g() {
        return this.f52407f;
    }

    public final b0 h() {
        return this.f52406e;
    }

    public final b0 i() {
        return this.f52408g;
    }

    public final b0 k() {
        return this.f52405d;
    }

    public final b0 l() {
        return this.f52404c;
    }

    public final void m(String keyword, String str, String pageFrom, boolean z10, SecondTab secondTab) {
        Intrinsics.h(keyword, "keyword");
        Intrinsics.h(pageFrom, "pageFrom");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new SearchResultViewModel$requestUGCSearchResult$1(this, keyword, pageFrom, str, secondTab, z10, null), 3, null);
    }

    public final void p(String str) {
        this.f52407f = str;
    }

    public final void q(int i11) {
        this.f52409h = i11;
    }
}
