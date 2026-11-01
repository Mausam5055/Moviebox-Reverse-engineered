package com.transsion.room.viewmodel;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import com.transsion.moviedetailapi.bean.RoomNet;
import com.transsion.room.bean.CheckNameBean;
import com.transsion.room.bean.CreateRoomRequestEntity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f51856d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f51857a = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.m();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f51858b = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.f();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f51859c = LazyKt.b(new Function0() { // from class: com.transsion.room.viewmodel.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.n();
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
            d.this.h().q(null);
            lg.a.C0828a.f(lg.a.f68839a, "RoomModel", "onFailure message.." + str2, false, 4, null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(CheckNameBean checkNameBean) {
            d.this.h().q(checkNameBean);
            lg.a.C0828a.f(lg.a.f68839a, "RoomModel", "onSuccess groupId.." + (checkNameBean != null ? checkNameBean.getGroupId() : null), false, 4, null);
        }
    }

    public static final class c extends sg.a {
        c() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            d.this.k().q(null);
            lg.a.C0828a.f(lg.a.f68839a, "RoomModel", "onFailure message.." + str2, false, 4, null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(RoomNet roomNet) {
            d.this.k().q(roomNet);
            lg.a.C0828a.f(lg.a.f68839a, "RoomModel", "onSuccess groupId.." + (roomNet != null ? roomNet.getGroupId() : null), false, 4, null);
        }
    }

    /* JADX INFO: renamed from: com.transsion.room.viewmodel.d$d, reason: collision with other inner class name */
    public static final class C0655d extends sg.a {
        C0655d() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            d.this.k().q(null);
            lg.a.C0828a.f(lg.a.f68839a, "RoomModel", "onFailure message.." + str2, false, 4, null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(RoomNet roomNet) {
            d.this.k().q(new RoomNet("update"));
            lg.a.C0828a.f(lg.a.f68839a, "RoomModel", "onSuccess groupId.." + (roomNet != null ? roomNet.getGroupId() : null), false, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 f() {
        return new b0();
    }

    private final RequestBody i(String str) {
        return RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 k() {
        return (b0) this.f51857a.getValue();
    }

    private final eq.a l() {
        return (eq.a) this.f51859c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 m() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final eq.a n() {
        return (eq.a) zg.c.f79414e.a().h(eq.a.class);
    }

    public final void e(String name) {
        Intrinsics.h(name, "name");
        l().e(vg.a.f77324a.a(), name).f(sg.d.f75349a.c()).subscribe(new b());
    }

    public final void g(String name, String avator, String desc, String str) {
        Intrinsics.h(name, "name");
        Intrinsics.h(avator, "avator");
        Intrinsics.h(desc, "desc");
        CreateRoomRequestEntity createRoomRequestEntity = new CreateRoomRequestEntity("", name, avator, desc, str);
        eq.a aVarL = l();
        String strA = vg.a.f77324a.a();
        String strJ = com.blankj.utilcode.util.o.j(createRoomRequestEntity);
        Intrinsics.g(strJ, "toJson(...)");
        aVarL.g(strA, i(strJ)).f(sg.d.f75349a.c()).subscribe(new c());
    }

    public final b0 h() {
        return (b0) this.f51858b.getValue();
    }

    public final LiveData j() {
        return k();
    }

    public final void o(String groupId, String name, String avator, String desc, String str) {
        Intrinsics.h(groupId, "groupId");
        Intrinsics.h(name, "name");
        Intrinsics.h(avator, "avator");
        Intrinsics.h(desc, "desc");
        CreateRoomRequestEntity createRoomRequestEntity = new CreateRoomRequestEntity(groupId, name, avator, desc, str);
        eq.a aVarL = l();
        String strA = vg.a.f77324a.a();
        String strJ = com.blankj.utilcode.util.o.j(createRoomRequestEntity);
        Intrinsics.g(strJ, "toJson(...)");
        aVarL.b(strA, i(strJ)).f(sg.d.f75349a.c()).subscribe(new C0655d());
    }
}
