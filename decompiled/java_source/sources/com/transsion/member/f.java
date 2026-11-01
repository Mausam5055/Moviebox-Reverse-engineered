package com.transsion.member;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f46554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f46555c;

    public static final class a extends sg.a {
        a() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            f.this.f46555c.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberTaskSubmitCheckInRes memberTaskSubmitCheckInRes) {
            super.c(memberTaskSubmitCheckInRes);
            f.this.f46555c.q(memberTaskSubmitCheckInRes);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f46554b = LazyKt.b(new Function0() { // from class: com.transsion.member.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.h();
            }
        });
        this.f46555c = new androidx.p009lifecycle.b0();
    }

    private final vm.a g() {
        return (vm.a) this.f46554b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final vm.a h() {
        return (vm.a) zg.c.f79414e.a().h(vm.a.class);
    }

    public final void e() {
        vm.a.C0951a.m(g(), null, null, 3, null).f(sg.d.f75349a.c()).subscribe(new a());
    }

    public final LiveData f() {
        return this.f46555c;
    }
}
