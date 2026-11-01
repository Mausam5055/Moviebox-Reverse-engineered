package mh;

import com.tencent.mmkv.MMKV;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0839a f69565a = new C0839a(null);

    /* JADX INFO: renamed from: mh.a$a, reason: collision with other inner class name */
    public static final class C0839a {
        private C0839a() {
        }

        public /* synthetic */ C0839a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MMKV a() {
            MMKV mmkvJ = MMKV.J("vshow", 2);
            Intrinsics.g(mmkvJ, "mmkvWithID(...)");
            return mmkvJ;
        }
    }
}
