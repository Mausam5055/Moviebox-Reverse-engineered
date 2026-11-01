package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes7.dex */
public abstract class h {

    public static final class a extends h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f68068a = new a();

        private a() {
            super(null);
        }
    }

    public static final class b extends h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f68069a = new b();

        private b() {
            super(null);
        }
    }

    private h() {
    }

    public /* synthetic */ h(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        String strG = Reflection.b(getClass()).g();
        Intrinsics.e(strG);
        return strG;
    }
}
