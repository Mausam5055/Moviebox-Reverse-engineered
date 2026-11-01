package com.transsion.member;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import com.transsion.member.bean.request.MemberPromoCodeReq;
import com.transsion.member.bean.request.MemberPromoCodeRes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class n0 extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f46592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46593c;

    public static final class a extends sg.a {
        a() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            n0.this.f46593c.q(new y0(false, str, str2, null));
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberPromoCodeRes memberPromoCodeRes) {
            super.c(memberPromoCodeRes);
            n0.this.f46593c.q(new y0(true, null, null, memberPromoCodeRes));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f46592b = LazyKt.b(new Function0() { // from class: com.transsion.member.m0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return n0.g();
            }
        });
        this.f46593c = new androidx.p009lifecycle.b0();
    }

    private final vm.a f() {
        return (vm.a) this.f46592b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vm.a g() {
        return (vm.a) zg.c.f79414e.a().h(vm.a.class);
    }

    public final LiveData e() {
        return this.f46593c;
    }

    public final void h(String code) {
        Intrinsics.h(code, "code");
        vm.a.C0951a.l(f(), null, new MemberPromoCodeReq(code), 1, null).f(sg.d.f75349a.c()).subscribe(new a());
    }
}
