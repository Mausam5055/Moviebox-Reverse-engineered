package com.transsion.room.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.RoomNet;
import com.transsion.room.R$string;
import com.transsion.room.bean.CheckInEntity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
public final class RoomDetailViewModel extends t0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f51816f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f51817a = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.transsion.room.viewmodel.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomDetailViewModel.D();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f51818b = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomDetailViewModel.A();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f51819c = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomDetailViewModel.B();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f51820d = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomDetailViewModel.y();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f51821e = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomDetailViewModel.z();
        }
    });

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
            RoomDetailViewModel.this.r().q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(RoomItem roomItem) {
            RoomDetailViewModel.this.r().q(roomItem);
        }
    }

    public static final class c extends sg.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f51823d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ RoomDetailViewModel f51824e;

        c(String str, RoomDetailViewModel roomDetailViewModel) {
            this.f51823d = str;
            this.f51824e = roomDetailViewModel;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            this.f51824e.m().q(null);
            uh.b.f76753a.d(R$string.join_room_fail);
            lg.a.C0828a.f(lg.a.f68839a, "RoomModel", "onFailure message.." + str2, false, 4, null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(RoomNet roomNet) {
            uh.b.f76753a.d(R$string.join_room_success);
            ty.b.f76417a.a().f(1, this.f51823d);
            this.f51824e.m().q(new RoomNet(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS));
            lg.a.C0828a.f(lg.a.f68839a, "RoomModel", "onSuccess groupId.." + (roomNet != null ? roomNet.getGroupId() : null), false, 4, null);
        }
    }

    public static final class d extends sg.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f51825d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ RoomDetailViewModel f51826e;

        d(String str, RoomDetailViewModel roomDetailViewModel) {
            this.f51825d = str;
            this.f51826e = roomDetailViewModel;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            this.f51826e.n().q(null);
            lg.a.C0828a.f(lg.a.f68839a, "RoomModel", "checkOutRoom onFailure message.." + str2, false, 4, null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(RoomNet roomNet) {
            ty.b.f76417a.a().f(0, this.f51825d);
            this.f51826e.n().q(new RoomNet(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS));
            lg.a.C0828a.f(lg.a.f68839a, "RoomModel", "checkOutRoom onSuccess groupId.." + (roomNet != null ? roomNet.getGroupId() : null), false, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final rj.a A() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).w1();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 B() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final eq.a D() {
        return (eq.a) zg.c.f79414e.a().h(eq.a.class);
    }

    private final RequestBody l(String str) {
        return RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 m() {
        return (b0) this.f51820d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 n() {
        return (b0) this.f51821e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final rj.a o() {
        return (rj.a) this.f51818b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 r() {
        return (b0) this.f51819c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final eq.a u() {
        return (eq.a) this.f51817a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 y() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 z() {
        return new b0();
    }

    public final void C(String groupId) {
        Intrinsics.h(groupId, "groupId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomDetailViewModel$roomVisit$1(groupId, this, null), 3, null);
    }

    public final void p(String groupId) {
        Intrinsics.h(groupId, "groupId");
        eq.a.C0745a.b(u(), vg.a.f77324a.a(), groupId, 0, 4, null).f(sg.d.f75349a.c()).subscribe(new b());
    }

    public final LiveData q() {
        return r();
    }

    public final LiveData s() {
        return m();
    }

    public final LiveData t() {
        return n();
    }

    public final void v(RoomItem roomItem) {
        Intrinsics.h(roomItem, "roomItem");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomDetailViewModel$insertRecentlyRoom$1(roomItem, this, null), 3, null);
    }

    public final void w(String groupId) {
        Intrinsics.h(groupId, "groupId");
        eq.a aVarU = u();
        String strA = vg.a.f77324a.a();
        String strJ = com.blankj.utilcode.util.o.j(new CheckInEntity(groupId));
        Intrinsics.g(strJ, "toJson(...)");
        aVarU.i(strA, l(strJ)).f(sg.d.f75349a.c()).subscribe(new c(groupId, this));
    }

    public final void x(String groupId) {
        Intrinsics.h(groupId, "groupId");
        eq.a aVarU = u();
        String strA = vg.a.f77324a.a();
        String strJ = com.blankj.utilcode.util.o.j(new CheckInEntity(groupId));
        Intrinsics.g(strJ, "toJson(...)");
        aVarU.k(strA, l(strJ)).f(sg.d.f75349a.c()).subscribe(new d(groupId, this));
    }
}
