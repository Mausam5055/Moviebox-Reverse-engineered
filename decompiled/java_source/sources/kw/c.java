package kw;

import com.transsion.usercenter.edit.api.RequstUserEntity;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import sg.d;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f68397a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f68398b = LazyKt.b(new Function0() { // from class: kw.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c.c();
        }
    });

    public static final class a {

        /* JADX INFO: renamed from: kw.c$a$a, reason: collision with other inner class name */
        public static final class C0817a extends sg.a {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ com.transsion.usercenter.edit.a f68399d;

            C0817a(com.transsion.usercenter.edit.a aVar) {
                this.f68399d = aVar;
            }

            @Override // sg.a
            public void a(String str, String str2) {
                c.f68397a.g(str, str2);
                com.transsion.usercenter.edit.a aVar = this.f68399d;
                if (aVar != null) {
                    aVar.a(str, str2);
                }
            }

            @Override // sg.a
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public void c(String str) {
                this.f68399d.b(str, false, "");
            }
        }

        public static final class b extends sg.a {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ com.transsion.usercenter.edit.a f68400d;

            b(com.transsion.usercenter.edit.a aVar) {
                this.f68400d = aVar;
            }

            @Override // sg.a
            public void a(String str, String str2) {
                c.f68397a.g(str, str2);
                com.transsion.usercenter.edit.a aVar = this.f68400d;
                if (aVar != null) {
                    aVar.a(str, str2);
                }
            }

            @Override // sg.a
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public void c(UserInfo userInfo) {
                this.f68400d.b(userInfo, false, "");
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final RequestBody c(String str) {
            return RequestBody.INSTANCE.create(str, MediaType.INSTANCE.parse("application/json"));
        }

        private final kw.a d() {
            return (kw.a) c.f68398b.getValue();
        }

        private final String f(Object obj) {
            return String.valueOf(ow.a.f72189a.a(obj));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void g(String str, String str2) {
            lg.a.C0828a.f(lg.a.f68839a, "ApiServer", "onFailure code=" + str + " message=" + str2, false, 4, null);
        }

        public final void b(RequstUserEntity entity, com.transsion.usercenter.edit.a callback) {
            Intrinsics.h(entity, "entity");
            Intrinsics.h(callback, "callback");
            d().b(vg.a.f77324a.a(), c(f(entity))).f(d.f75349a.c()).subscribe(new C0817a(callback));
        }

        public final void e(com.transsion.usercenter.edit.a callback) {
            Intrinsics.h(callback, "callback");
            d().a(vg.a.f77324a.a()).f(d.f75349a.c()).subscribe(new b(callback));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kw.a c() {
        return (kw.a) zg.c.f79414e.a().h(kw.a.class);
    }
}
