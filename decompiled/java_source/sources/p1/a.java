package p1;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f72269a = new LinkedHashMap();

    /* JADX INFO: renamed from: p1.a$a, reason: collision with other inner class name */
    public static final class C0880a extends a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final C0880a f72270b = new C0880a();

        private C0880a() {
        }

        @Override // p1.a
        public Object a(b key) {
            Intrinsics.h(key, "key");
            return null;
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public interface b {
    }

    public abstract Object a(b bVar);

    public final Map b() {
        return this.f72269a;
    }
}
