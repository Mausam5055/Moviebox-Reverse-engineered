package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.BeyondBoundsLayoutKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class f implements androidx.compose.ui.modifier.j, androidx.compose.ui.layout.d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b f3041g = new b(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a f3042h = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f3043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f3044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f3045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LayoutDirection f3046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Orientation f3047f;

    public static final class a implements androidx.compose.ui.layout.d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f3048a;

        a() {
        }

        @Override // androidx.compose.ui.layout.d.a
        public boolean a() {
            return this.f3048a;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3049a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f3049a = iArr;
        }
    }

    public static final class d implements androidx.compose.ui.layout.d.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f3051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f3052c;

        d(Ref.ObjectRef objectRef, int i11) {
            this.f3051b = objectRef;
            this.f3052c = i11;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.compose.ui.layout.d.a
        public boolean a() {
            return f.this.l((e.a) this.f3051b.element, this.f3052c);
        }
    }

    public f(h hVar, e eVar, boolean z10, LayoutDirection layoutDirection, Orientation orientation) {
        this.f3043b = hVar;
        this.f3044c = eVar;
        this.f3045d = z10;
        this.f3046e = layoutDirection;
        this.f3047f = orientation;
    }

    private final e.a j(e.a aVar, int i11) {
        int iB = aVar.b();
        int iA = aVar.a();
        if (m(i11)) {
            iA++;
        } else {
            iB--;
        }
        return this.f3044c.a(iB, iA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean l(e.a aVar, int i11) {
        if (o(i11)) {
            return false;
        }
        if (m(i11)) {
            if (aVar.a() >= this.f3043b.getItemCount() - 1) {
                return false;
            }
        } else if (aVar.b() <= 0) {
            return false;
        }
        return true;
    }

    private final boolean m(int i11) {
        androidx.compose.ui.layout.d.b.a aVar = androidx.compose.ui.layout.d.b.f5168a;
        if (androidx.compose.ui.layout.d.b.h(i11, aVar.c())) {
            return false;
        }
        if (!androidx.compose.ui.layout.d.b.h(i11, aVar.b())) {
            if (androidx.compose.ui.layout.d.b.h(i11, aVar.a())) {
                return this.f3045d;
            }
            if (androidx.compose.ui.layout.d.b.h(i11, aVar.d())) {
                if (this.f3045d) {
                    return false;
                }
            } else if (androidx.compose.ui.layout.d.b.h(i11, aVar.e())) {
                int i12 = c.f3049a[this.f3046e.ordinal()];
                if (i12 == 1) {
                    return this.f3045d;
                }
                if (i12 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                if (this.f3045d) {
                    return false;
                }
            } else {
                if (!androidx.compose.ui.layout.d.b.h(i11, aVar.f())) {
                    g.c();
                    throw new KotlinNothingValueException();
                }
                int i13 = c.f3049a[this.f3046e.ordinal()];
                if (i13 != 1) {
                    if (i13 == 2) {
                        return this.f3045d;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                if (this.f3045d) {
                    return false;
                }
            }
        }
        return true;
    }

    private final boolean o(int i11) {
        androidx.compose.ui.layout.d.b.a aVar = androidx.compose.ui.layout.d.b.f5168a;
        if (!(androidx.compose.ui.layout.d.b.h(i11, aVar.a()) ? true : androidx.compose.ui.layout.d.b.h(i11, aVar.d()))) {
            if (!(androidx.compose.ui.layout.d.b.h(i11, aVar.e()) ? true : androidx.compose.ui.layout.d.b.h(i11, aVar.f()))) {
                if (!(androidx.compose.ui.layout.d.b.h(i11, aVar.c()) ? true : androidx.compose.ui.layout.d.b.h(i11, aVar.b()))) {
                    g.c();
                    throw new KotlinNothingValueException();
                }
            } else if (this.f3047f == Orientation.Vertical) {
                return true;
            }
        } else if (this.f3047f == Orientation.Horizontal) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [T, androidx.compose.foundation.lazy.layout.e$a] */
    /* JADX WARN: Type inference failed for: r0v8, types: [T, androidx.compose.foundation.lazy.layout.e$a] */
    @Override // androidx.compose.ui.layout.d
    public Object a(int i11, Function1 function1) {
        if (this.f3043b.getItemCount() <= 0 || !this.f3043b.b()) {
            return function1.invoke(f3042h);
        }
        int iD = m(i11) ? this.f3043b.d() : this.f3043b.c();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = this.f3044c.a(iD, iD);
        Object objInvoke = null;
        while (objInvoke == null && l((e.a) objectRef.element, i11)) {
            ?? J = j((e.a) objectRef.element, i11);
            this.f3044c.e((e.a) objectRef.element);
            objectRef.element = J;
            this.f3043b.a();
            objInvoke = function1.invoke(new d(objectRef, i11));
        }
        this.f3044c.e((e.a) objectRef.element);
        this.f3043b.a();
        return objInvoke;
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    @Override // androidx.compose.ui.modifier.j
    public androidx.compose.ui.modifier.l getKey() {
        return BeyondBoundsLayoutKt.a();
    }

    @Override // androidx.compose.ui.modifier.j
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public androidx.compose.ui.layout.d getValue() {
        return this;
    }
}
