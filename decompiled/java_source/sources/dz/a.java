package dz;

import com.transsnet.loginapi.bean.UserInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface a {

    /* JADX INFO: renamed from: dz.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes7.dex */
    public static final class C0737a {
        public static void a(a aVar, UserInfo user) {
            Intrinsics.h(user, "user");
        }

        public static void b(a aVar) {
        }

        public static void c(a aVar, UserInfo user) {
            Intrinsics.h(user, "user");
        }
    }

    void onLogin(UserInfo userInfo);

    void onLogout();

    void onUpdateUserInfo(UserInfo userInfo);
}
