package zt;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f79457a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final C0980a f79458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final wu.g f79459c;

    /* JADX INFO: renamed from: zt.a$a, reason: collision with other inner class name */
    public static final class C0980a implements ou.b {
        C0980a() {
        }

        @Override // ou.b
        public void a(String eventName, Map fields) {
            Intrinsics.h(eventName, "eventName");
            Intrinsics.h(fields, "fields");
            hj.i.f64505a.x(eventName, fields, 2337);
        }
    }

    static {
        C0980a c0980a = new C0980a();
        f79458b = c0980a;
        f79459c = new wu.g(c0980a);
    }

    private a() {
    }

    public final wu.g a() {
        return f79459c;
    }
}
