package tg;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0924a f76211a = new C0924a(null);

    /* JADX INFO: renamed from: tg.a$a, reason: collision with other inner class name */
    public static final class C0924a {
        private C0924a() {
        }

        public /* synthetic */ C0924a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(String token) {
            Intrinsics.h(token, "token");
            return "Bearer " + token;
        }
    }
}
