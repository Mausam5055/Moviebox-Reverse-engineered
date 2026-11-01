package com.transsion.moviedetail.staff;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.gson.JsonObject;
import com.transsion.moviedetail.staff.bean.MovieStaffList;
import com.transsion.moviedetail.staff.bean.MovieStaffSubjectList;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.postdetail.bean.Pager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
public final class y extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f47352a = new b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f47353b = new b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f47354c = new b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f47355d = new b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f47356e = new b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f47357f = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.staff.x
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return y.x();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f47358g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f47359h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private io.reactivex.rxjava3.disposables.c f47360i;

    public static final class a extends sg.a {
        a() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            y.this.f47356e.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MovieStaffList movieStaffList) {
            super.c(movieStaffList);
            y.this.f47356e.q(movieStaffList);
        }
    }

    public static final class b extends sg.a {
        b() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            y.this.f47352a.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(Staff staff) {
            super.c(staff);
            y.this.f47352a.q(staff);
        }
    }

    public static final class c extends sg.a {
        c() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            io.reactivex.rxjava3.disposables.c cVar;
            y.this.f47354c.q(null);
            io.reactivex.rxjava3.disposables.c cVar2 = y.this.f47360i;
            if (cVar2 == null || cVar2.isDisposed() || (cVar = y.this.f47360i) == null) {
                return;
            }
            cVar.dispose();
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MovieStaffSubjectList movieStaffSubjectList) {
            io.reactivex.rxjava3.disposables.c cVar;
            Pager pager;
            Boolean hasMore;
            super.c(movieStaffSubjectList);
            if (movieStaffSubjectList != null && (pager = movieStaffSubjectList.getPager()) != null && (hasMore = pager.getHasMore()) != null) {
                y.this.f47359h = hasMore.booleanValue();
            }
            y.this.f47354c.q(movieStaffSubjectList);
            if (movieStaffSubjectList != null) {
                y yVar = y.this;
                List arrayList = (List) yVar.f47353b.f();
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(movieStaffSubjectList);
                yVar.f47353b.q(arrayList);
            }
            y.this.f47358g++;
            io.reactivex.rxjava3.disposables.c cVar2 = y.this.f47360i;
            if (cVar2 == null || cVar2.isDisposed() || (cVar = y.this.f47360i) == null) {
                return;
            }
            cVar.dispose();
        }

        @Override // sg.a, io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d11) {
            Intrinsics.h(d11, "d");
            super.onSubscribe(d11);
            y.this.f47360i = d11;
        }
    }

    static final class d implements lz.h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JsonObject f47364a;

        d(JsonObject jsonObject) {
            this.f47364a = jsonObject;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RequestBody apply(JsonObject it) {
            Intrinsics.h(it, "it");
            RequestBody.Companion companion = RequestBody.INSTANCE;
            String string = this.f47364a.toString();
            Intrinsics.g(string, "toString(...)");
            return companion.create(string, MediaType.INSTANCE.parse("application/json"));
        }
    }

    static final class e implements lz.h {
        e() {
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.reactivex.rxjava3.core.m apply(RequestBody it) {
            Intrinsics.h(it, "it");
            return com.transsion.moviedetail.staff.a.C0639a.d(y.this.r(), it, null, 2, null);
        }
    }

    public static final class f extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f47367e;

        f(int i11) {
            this.f47367e = i11;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            y.this.f47355d.q(-1);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(String str) {
            super.c(str);
            y.this.f47355d.q(Integer.valueOf(this.f47367e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.moviedetail.staff.a r() {
        return (com.transsion.moviedetail.staff.a) this.f47357f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.moviedetail.staff.a x() {
        return (com.transsion.moviedetail.staff.a) zg.c.f79414e.a().h(com.transsion.moviedetail.staff.a.class);
    }

    public final void n() {
        this.f47354c.q(null);
    }

    public final void o(String str) {
        if (str == null) {
            return;
        }
        com.transsion.moviedetail.staff.a.C0639a.b(r(), str, null, 2, null).f(sg.d.f75349a.c()).subscribe(new a());
    }

    public final void p(String str) {
        if (str == null) {
            return;
        }
        com.transsion.moviedetail.staff.a.C0639a.a(r(), str, null, 2, null).f(sg.d.f75349a.c()).subscribe(new b());
    }

    public final void q(String str, int i11) {
        if (str == null || !this.f47359h) {
            return;
        }
        io.reactivex.rxjava3.disposables.c cVar = this.f47360i;
        if (cVar == null || cVar.isDisposed()) {
            int i12 = this.f47358g;
            int i13 = 1;
            if (i12 > 1) {
                i13 = i11 + 1 + ((i12 - 2) * 60);
                i11 = i13 + 59;
            }
            com.transsion.moviedetail.staff.a.C0639a.c(r(), str, i13, i11, 1, null, 16, null).f(sg.d.f75349a.c()).subscribe(new c());
        }
    }

    public final LiveData s() {
        return this.f47356e;
    }

    public final LiveData t() {
        return this.f47352a;
    }

    public final LiveData u() {
        return this.f47353b;
    }

    public final LiveData v() {
        return this.f47354c;
    }

    public final LiveData w() {
        return this.f47355d;
    }

    public final void y(String str, int i11) {
        if (str == null) {
            return;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("staffId", str);
        jsonObject.addProperty(EventConstants.KEY_ACTION, Integer.valueOf(i11));
        io.reactivex.rxjava3.core.j.t(jsonObject).u(new d(jsonObject)).n(new e()).f(sg.d.f75349a.c()).subscribe(new f(i11));
    }
}
