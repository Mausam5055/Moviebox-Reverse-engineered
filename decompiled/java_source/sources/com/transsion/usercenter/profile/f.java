package com.transsion.usercenter.profile;

import androidx.p009lifecycle.t0;
import com.transsion.usercenter.profile.bean.ProfileNewMessage;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends t0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f57132d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f57133e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57134a = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57135b = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f57136c = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.i();
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
            f.f57133e = false;
            f.this.g().n(null);
            f.this.h().q(0);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(ProfileNewMessage profileNewMessage) {
            f.f57133e = false;
            f.this.g().n(profileNewMessage);
            f.this.h().q(Integer.valueOf(profileNewMessage != null ? profileNewMessage.getSystemCnt() + profileNewMessage.getInteractiveCnt() : 0));
        }
    }

    private final com.transsion.usercenter.profile.b f() {
        return (com.transsion.usercenter.profile.b) this.f57136c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.usercenter.profile.b i() {
        return (com.transsion.usercenter.profile.b) zg.c.f79414e.a().h(com.transsion.usercenter.profile.b.class);
    }

    public final void d() {
        if (f57133e) {
            return;
        }
        f57133e = true;
        com.transsion.usercenter.profile.b.a.a(f(), null, 1, null).f(sg.d.f75349a.c()).subscribe(new b());
    }

    public final void e() {
        this.f57134a.q(0);
    }

    public final androidx.p009lifecycle.b0 g() {
        return this.f57135b;
    }

    public final androidx.p009lifecycle.b0 h() {
        return this.f57134a;
    }
}
