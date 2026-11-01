package com.transsion.room.viewmodel;

import android.app.Application;
import android.content.Context;
import android.location.Address;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomTabBean;
import java.io.InputStream;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;
import okio.Okio;

/* JADX INFO: loaded from: classes6.dex */
public final class RoomViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f51834l = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f51835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f51836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f51837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f51838e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f51839f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f51840g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f51841h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b0 f51842i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b0 f51843j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f51844k;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends sg.a {
        b() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            RoomViewModel.this.y().q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(RoomBean roomBean) {
            RoomViewModel.this.y().q(roomBean);
        }
    }

    public static final class c extends sg.a {
        c() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            RoomViewModel.this.D().q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(RoomBean roomBean) {
            RoomViewModel.this.D().q(roomBean);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f51835b = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomViewModel.L();
            }
        });
        this.f51836c = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomViewModel.O();
            }
        });
        this.f51837d = new b0();
        this.f51838e = new b0();
        this.f51839f = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomViewModel.r();
            }
        });
        this.f51840g = new b0();
        this.f51841h = new b0();
        this.f51842i = new b0();
        this.f51843j = new b0();
        this.f51844k = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomViewModel.Q();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 D() {
        return (b0) this.f51836c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final eq.a K() {
        return (eq.a) this.f51844k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 L() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String M() {
        try {
            InputStream inputStreamOpen = Utils.a().getAssets().open("room_top_tab.json");
            Intrinsics.e(inputStreamOpen);
            return Okio.buffer(Okio.source(inputStreamOpen)).readUtf8();
        } catch (Exception unused) {
            return null;
        }
    }

    private final void N() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomViewModel$loadRoomTabCache$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 O() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(RoomTabBean roomTabBean) {
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
            bVar.b().putString("k_room_tab_cache_version", roomTabBean.getVersion());
            Result.m454constructorimpl(bVar.b().putString("k_room_tab_cache", com.blankj.utilcode.util.o.j(roomTabBean)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final eq.a Q() {
        return (eq.a) zg.c.f79414e.a().h(eq.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final mq.a r() {
        return new mq.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final mq.a s() {
        return (mq.a) this.f51839f.getValue();
    }

    public static /* synthetic */ void u(RoomViewModel roomViewModel, Context context, String str, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            str = "1";
        }
        if ((i12 & 4) != 0) {
            i11 = 16;
        }
        roomViewModel.t(context, str, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 y() {
        return (b0) this.f51835b.getValue();
    }

    public final b0 A() {
        return this.f51838e;
    }

    public final void B(String page, int i11, String str) {
        Intrinsics.h(page, "page");
        if (str != null) {
            K().o(vg.a.f77324a.a(), page, i11, str).f(sg.d.f75349a.c()).subscribe(new c());
        }
    }

    public final LiveData C() {
        return D();
    }

    public final void E() {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomViewModel$getRoomFilterTabList$1(this, null), 3, null);
    }

    public final void F(boolean z10, int i11, String page, int i12, Double d11, Double d12, Address address) {
        Intrinsics.h(page, "page");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomViewModel$getRoomList$1(d12, d11, address, page, i12, i11, this, z10, null), 3, null);
    }

    public final b0 G() {
        return this.f51837d;
    }

    public final void H() {
        N();
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomViewModel$getRoomTabs$1(this, null), 3, null);
    }

    public final b0 I() {
        return this.f51841h;
    }

    public final b0 J() {
        return this.f51842i;
    }

    public final void t(Context context, String page, int i11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(page, "page");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomViewModel$getCommunityRooms$1(this, context, page, i11, null), 3, null);
    }

    public final b0 v() {
        return this.f51843j;
    }

    public final void w(String page, int i11) {
        Intrinsics.h(page, "page");
        K().f(vg.a.f77324a.a(), page, i11).f(sg.d.f75349a.c()).subscribe(new b());
    }

    public final LiveData x() {
        return y();
    }

    public final void z(boolean z10, String str, int i11, String str2) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomViewModel$getMyRooms$1(this, str, i11, str2, z10, null), 3, null);
    }
}
