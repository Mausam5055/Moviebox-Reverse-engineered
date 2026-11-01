package com.transsion.fission;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.tn.lib.net.bean.BaseDto;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f44142a = LazyKt.b(new Function0() { // from class: com.transsion.fission.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.f();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f44143b = new b0();

    public static final class a extends sg.a {
        a() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            b0 b0Var = f.this.f44143b;
            if (str2 == null) {
                str2 = "";
            }
            if (str == null) {
                str = "";
            }
            b0Var.q(new BaseDto(str2, str, null, ""));
        }

        @Override // sg.a
        public void d(BaseDto baseDto) {
            Intrinsics.h(baseDto, "baseDto");
            super.d(baseDto);
            f.this.f44143b.q(baseDto);
        }
    }

    private final xk.a d() {
        return (xk.a) this.f44142a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xk.a f() {
        return (xk.a) zg.c.f79414e.a().h(xk.a.class);
    }

    public final LiveData e() {
        return this.f44143b;
    }

    public final void g(String code) {
        io.reactivex.rxjava3.core.j jVarA;
        io.reactivex.rxjava3.core.j jVarF;
        Intrinsics.h(code, "code");
        String str = "{\"inviteCode\": \"" + code + "\"}";
        xk.a aVarD = d();
        if (aVarD == null || (jVarA = xk.a.C0961a.a(aVarD, null, RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json")), 1, null)) == null || (jVarF = jVarA.f(sg.d.f75349a.c())) == null) {
            return;
        }
        jVarF.subscribe(new a());
    }
}
