package com.transsion.search.viewmodel;

import android.app.Application;
import android.text.TextUtils;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.mbridge.msdk.MBridgeConstans;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.widget.toast.core.h;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.search.activity.SearchManagerActivity;
import com.transsion.search.bean.HotSubjectEntity;
import com.transsion.search.bean.JoinGroupEntity;
import com.transsion.search.bean.SearchSuggestEntity;
import com.transsion.search.bean.SuggestEntity;
import com.transsion.search.fragment.BaseSearchMainFragment;
import com.transsion.search.net.RequestJoinGroupEntity;
import com.transsion.search.net.RequestSearchEntity;
import com.transsion.search.widget.BoundaryLinkedHashMap;
import hj.i;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import yq.j;

/* JADX INFO: loaded from: classes6.dex */
public final class SearchViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f52229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f52230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f52231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f52232e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f52233f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f52234g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f52235h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private io.reactivex.rxjava3.disposables.c f52236i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final BoundaryLinkedHashMap f52237j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final BoundaryLinkedHashMap f52238k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b0 f52239l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Lazy f52240m;

    public static final class a extends sg.a {
        a() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            SearchViewModel.this.l().n(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(HotSubjectEntity hotSubjectEntity) {
            SearchViewModel.this.l().n(hotSubjectEntity);
        }
    }

    public static final class b extends sg.a {
        b() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            if (str2 != null) {
                h.f41479a.l(str2);
            }
            SearchViewModel.this.f52232e.n("");
        }

        @Override // sg.a
        public void d(BaseDto baseDto) {
            Intrinsics.h(baseDto, "baseDto");
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(JoinGroupEntity joinGroupEntity) {
            if (TextUtils.isEmpty(joinGroupEntity != null ? joinGroupEntity.getM() : null)) {
                SearchViewModel.this.f52232e.n("succeed");
            } else {
                SearchViewModel.this.f52232e.n(joinGroupEntity != null ? joinGroupEntity.getM() : null);
            }
        }
    }

    static final class c implements lz.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52244b;

        c(String str) {
            this.f52244b = str;
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(SearchSuggestEntity data) {
            Intrinsics.h(data, "data");
            SearchViewModel.this.v(this.f52244b, data);
        }
    }

    static final class d implements lz.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52246b;

        d(String str) {
            this.f52246b = str;
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(Throwable it) {
            Intrinsics.h(it, "it");
            SearchViewModel.this.t().n(this.f52246b);
        }
    }

    public static final class e extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f52248e;

        e(String str) {
            this.f52248e = str;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            SearchViewModel.this.t().n(this.f52248e);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(SearchSuggestEntity searchSuggestEntity) {
            SearchViewModel.this.v(this.f52248e, searchSuggestEntity);
        }
    }

    public static final class f extends sg.a {
        f() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            if (str2 != null) {
                h.f41479a.l(str2);
            }
            SearchViewModel.this.f52229b.n(null);
        }

        @Override // sg.a
        public void d(BaseDto baseDto) {
            Intrinsics.h(baseDto, "baseDto");
            SearchViewModel.this.f52229b.n(baseDto.getData());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f52229b = new b0();
        this.f52230c = new b0();
        this.f52231d = new b0();
        this.f52232e = new b0();
        this.f52233f = new b0();
        this.f52234g = new b0();
        this.f52235h = LazyKt.b(new Function0() { // from class: com.transsion.search.viewmodel.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SearchViewModel.B();
            }
        });
        this.f52237j = new BoundaryLinkedHashMap();
        this.f52238k = new BoundaryLinkedHashMap();
        this.f52239l = new b0();
        this.f52240m = LazyKt.b(new Function0() { // from class: com.transsion.search.viewmodel.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(SearchViewModel.x());
            }
        });
    }

    private final void A(String str) {
        n().e(str).E(qz.a.c()).subscribe(new e(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j B() {
        return new j();
    }

    private final boolean F() {
        return w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j n() {
        return (j) this.f52235h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:10:0x0012  */
    public final void v(String str, SearchSuggestEntity searchSuggestEntity) {
        if (searchSuggestEntity == null) {
            return;
        }
        String keyword = searchSuggestEntity.getKeyword();
        if (keyword == null) {
            keyword = str;
        } else {
            if (StringsKt.q0(keyword)) {
                keyword = str;
            }
            if (keyword == null) {
                keyword = str;
            }
        }
        this.f52237j.put(str, searchSuggestEntity);
        if (!Intrinsics.c(keyword, str)) {
            this.f52237j.put(keyword, searchSuggestEntity);
        }
        this.f52239l.n(str);
        List<SuggestEntity> items = searchSuggestEntity.getItems();
        if (items == null || !items.isEmpty() || keyword.length() < 2 || this.f52238k.containsKey(keyword)) {
            return;
        }
        this.f52238k.put(keyword, null);
        SearchManagerActivity.INSTANCE.a("no associative word results when the user enters query longer than 2 characters");
        HashMap map = new HashMap();
        map.put(MBridgeConstans.KEY_WORD, keyword);
        String ops = searchSuggestEntity.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        map.put("sug_source", s());
        map.put("search_id", BaseSearchMainFragment.INSTANCE.a());
        i.f64505a.D("search_suggest", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x() {
        String value;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_search_suggest_use_google", true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null) {
            return false;
        }
        return Intrinsics.c(StringsKt.m1(value), Boolean.TRUE);
    }

    private final void z(String str) {
        n().b(str).E(qz.a.c()).B(new c(str), new d(str));
    }

    public final void C(int i11, int i12, String keyword) {
        Intrinsics.h(keyword, "keyword");
        n().h(new RequestSearchEntity(i11, i12, keyword)).E(qz.a.c()).subscribe(new f());
    }

    public final void D(int i11, int i12, String keyword) {
        Intrinsics.h(keyword, "keyword");
        k.d(u0.a(this), null, null, new SearchViewModel$searchWork$1(this, new RequestSearchEntity(i11, i12, keyword), null), 3, null);
    }

    public final void E(int i11, int i12, String keyword, int i13) {
        Intrinsics.h(keyword, "keyword");
        k.d(u0.a(this), null, null, new SearchViewModel$searchWorkV2$1(this, new RequestSearchEntity(i11, i12, keyword, i13), null), 3, null);
    }

    public final void k() {
        n().d().E(qz.a.c()).subscribe(new a());
    }

    public final b0 l() {
        return this.f52234g;
    }

    public final b0 m() {
        return this.f52232e;
    }

    public final b0 o() {
        return this.f52229b;
    }

    @Override // androidx.p009lifecycle.t0
    protected void onCleared() {
        io.reactivex.rxjava3.disposables.c cVar;
        super.onCleared();
        io.reactivex.rxjava3.disposables.c cVar2 = this.f52236i;
        if (cVar2 == null || cVar2.isDisposed() || (cVar = this.f52236i) == null) {
            return;
        }
        cVar.dispose();
    }

    public final void p(String keyword) {
        Intrinsics.h(keyword, "keyword");
        if (F()) {
            z(keyword);
        } else {
            A(keyword);
        }
    }

    public final b0 q() {
        return this.f52230c;
    }

    public final b0 r() {
        return this.f52231d;
    }

    public final String s() {
        return w() ? "gp_sug" : "mb_sug";
    }

    public final b0 t() {
        return this.f52239l;
    }

    public final BoundaryLinkedHashMap u() {
        return this.f52237j;
    }

    public final boolean w() {
        return ((Boolean) this.f52240m.getValue()).booleanValue();
    }

    public final void y(String groupId) {
        Intrinsics.h(groupId, "groupId");
        n().g(new RequestJoinGroupEntity(groupId)).E(qz.a.c()).subscribe(new b());
    }
}
