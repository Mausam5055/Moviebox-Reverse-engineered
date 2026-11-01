package gr;

import android.app.Application;
import androidx.p009lifecycle.b0;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.search_pugc.bean.UGCEveryoneSearchData;
import com.transsion.search_pugc.bean.UGCRankSearchData;
import com.transsion.search_pugc.bean.UGCSearchSuggestData;
import com.transsion.search_pugc.widget.BoundaryLinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import lz.f;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BoundaryLinkedHashMap f63935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f63936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f63937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f63938e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f63939f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private io.reactivex.rxjava3.disposables.c f63940g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f63941h;

    public static final class a extends sg.a {
        a() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            c.this.k().n(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(UGCEveryoneSearchData uGCEveryoneSearchData) {
            c.this.k().n(uGCEveryoneSearchData);
        }
    }

    public static final class b extends sg.a {
        b() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            c.this.l().n(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(UGCRankSearchData uGCRankSearchData) {
            c.this.l().n(uGCRankSearchData);
        }
    }

    /* JADX INFO: renamed from: gr.c$c, reason: collision with other inner class name */
    static final class C0771c implements f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f63945b;

        C0771c(String str) {
            this.f63945b = str;
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(UGCSearchSuggestData data) {
            Intrinsics.h(data, "data");
            c.this.n(this.f63945b, data);
        }
    }

    static final class d implements f {
        d() {
        }

        @Override // lz.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(Throwable it) {
            Intrinsics.h(it, "it");
            c.this.m().n(null);
        }
    }

    public static final class e extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f63948e;

        e(String str) {
            this.f63948e = str;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            c.this.m().n(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(UGCSearchSuggestData uGCSearchSuggestData) {
            c.this.n(this.f63948e, uGCSearchSuggestData);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f63935b = new BoundaryLinkedHashMap();
        this.f63936c = new b0();
        this.f63937d = new b0();
        this.f63938e = new b0();
        this.f63939f = LazyKt.b(new Function0() { // from class: gr.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return c.s();
            }
        });
        this.f63941h = LazyKt.b(new Function0() { // from class: gr.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(c.p());
            }
        });
    }

    private final fr.c f() {
        return (fr.c) this.f63939f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(String str, UGCSearchSuggestData uGCSearchSuggestData) {
        if (uGCSearchSuggestData == null) {
            return;
        }
        String keyword = uGCSearchSuggestData.getKeyword();
        if (StringsKt.q0(keyword)) {
            keyword = str;
        }
        this.f63935b.put(str, uGCSearchSuggestData);
        if (!Intrinsics.c(keyword, str)) {
            this.f63935b.put(keyword, uGCSearchSuggestData);
        }
        this.f63938e.n(uGCSearchSuggestData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean p() {
        String value;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_search_suggest_use_google_for_showbox", true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null) {
            return false;
        }
        return Intrinsics.c(StringsKt.m1(value), Boolean.TRUE);
    }

    private final void q(String str) {
        f().b(str).E(qz.a.c()).B(new C0771c(str), new d());
    }

    private final void r(String str, int i11, String str2) {
        f().g(str, i11, str2).E(qz.a.c()).subscribe(new e(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final fr.c s() {
        return new fr.c();
    }

    private final boolean t() {
        return o();
    }

    public final String g() {
        return o() ? "gp_sug" : "mb_sug";
    }

    public final void h(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        f().e(pageFrom).E(qz.a.c()).subscribe(new a());
    }

    public final void i(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        f().f(pageFrom).E(qz.a.c()).subscribe(new b());
    }

    public final void j(String keyword, int i11, String pageFrom) {
        Intrinsics.h(keyword, "keyword");
        Intrinsics.h(pageFrom, "pageFrom");
        if (t()) {
            q(keyword);
        } else {
            r(keyword, i11, pageFrom);
        }
    }

    public final b0 k() {
        return this.f63936c;
    }

    public final b0 l() {
        return this.f63937d;
    }

    public final b0 m() {
        return this.f63938e;
    }

    public final boolean o() {
        return ((Boolean) this.f63941h.getValue()).booleanValue();
    }

    @Override // androidx.p009lifecycle.t0
    protected void onCleared() {
        io.reactivex.rxjava3.disposables.c cVar;
        super.onCleared();
        io.reactivex.rxjava3.disposables.c cVar2 = this.f63940g;
        if (cVar2 == null || cVar2.isDisposed() || (cVar = this.f63940g) == null) {
            return;
        }
        cVar.dispose();
    }
}
