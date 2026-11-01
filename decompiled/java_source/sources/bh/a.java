package bh;

import com.tencent.mmkv.MMKV;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0148a f16469a = new C0148a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static MMKV f16470b = mh.a.f69565a.a();

    /* JADX INFO: renamed from: bh.a$a, reason: collision with other inner class name */
    public static final class C0148a {
        private C0148a() {
        }

        public /* synthetic */ C0148a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            String string;
            MMKV mmkvC = c();
            return (mmkvC == null || (string = mmkvC.getString("install_ch", "")) == null) ? "" : string;
        }

        public final String b() {
            String string;
            MMKV mmkvC = c();
            return (mmkvC == null || (string = mmkvC.getString("install_id", "")) == null) ? "" : string;
        }

        public final MMKV c() {
            return a.f16470b;
        }

        public final String d() {
            String string;
            MMKV mmkvC = c();
            return (mmkvC == null || (string = mmkvC.getString("install_share_uid", "")) == null) ? "" : string;
        }

        public final void e(String v11) {
            Intrinsics.h(v11, "v");
            MMKV mmkvC = c();
            if (mmkvC != null) {
                mmkvC.putString("install_ch", v11);
            }
        }

        public final void f(String v11) {
            Intrinsics.h(v11, "v");
            MMKV mmkvC = c();
            if (mmkvC != null) {
                mmkvC.putString("install_id", v11);
            }
        }

        public final void g(String uid) {
            Intrinsics.h(uid, "uid");
            MMKV mmkvC = c();
            if (mmkvC != null) {
                mmkvC.putString("install_share_uid", uid);
            }
        }

        public final void h(String userId) {
            Intrinsics.h(userId, "userId");
            MMKV mmkvC = c();
            if (mmkvC != null) {
                mmkvC.putString("myuserid", userId);
            }
        }
    }
}
