package zm;

import com.transsion.memberapi.MemberCheckResult;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface a {

    /* JADX INFO: renamed from: zm.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes6.dex */
    public static final class C0979a {
        public static void a(a aVar, MemberCheckResult memberCheckResult) {
        }

        public static void b(a aVar, String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
        }

        public static void c(a aVar) {
        }

        public static void d(a aVar, MemberCheckResult memberCheckResult) {
        }

        public static void e(a aVar, MemberCheckResult memberCheckResult) {
        }

        public static void f(a aVar, MemberCheckResult memberCheckResult) {
        }

        public static void g(a aVar, MemberCheckResult memberCheckResult) {
        }
    }

    void a(MemberCheckResult memberCheckResult);

    void b(MemberCheckResult memberCheckResult);

    void c(MemberCheckResult memberCheckResult);

    void d(MemberCheckResult memberCheckResult);

    void e();

    void f(MemberCheckResult memberCheckResult);

    void onFail(String str);
}
