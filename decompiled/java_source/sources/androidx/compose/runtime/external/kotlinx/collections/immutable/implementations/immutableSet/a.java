package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import kotlin.jvm.internal.DefaultConstructorMarker;
import w.e;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0041a f3725d = new C0041a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f3726e = 8;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final a f3727f = new a(0, new Object[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object[] f3729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f3730c;

    /* JADX INFO: renamed from: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.a$a, reason: collision with other inner class name */
    public static final class C0041a {
        private C0041a() {
        }

        public /* synthetic */ C0041a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            return a.f3727f;
        }
    }

    public a(int i11, Object[] objArr) {
        this(i11, objArr, null);
    }

    public a(int i11, Object[] objArr, e eVar) {
        this.f3728a = i11;
        this.f3729b = objArr;
        this.f3730c = eVar;
    }
}
