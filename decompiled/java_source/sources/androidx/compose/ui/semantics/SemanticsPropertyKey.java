package androidx.compose.ui.semantics;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class SemanticsPropertyKey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function2 f5950b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5951c;

    public SemanticsPropertyKey(String str, Function2 function2) {
        this.f5949a = str;
        this.f5950b = function2;
    }

    public /* synthetic */ SemanticsPropertyKey(String str, Function2 function2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? new Function2<Object, Object, Object>() { // from class: androidx.compose.ui.semantics.SemanticsPropertyKey.1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return obj == null ? obj2 : obj;
            }
        } : function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SemanticsPropertyKey(String str, boolean z10) {
        this(str, null, 2, 0 == true ? 1 : 0);
        this.f5951c = z10;
    }

    public SemanticsPropertyKey(String str, boolean z10, Function2 function2) {
        this(str, function2);
        this.f5951c = z10;
    }

    public final String a() {
        return this.f5949a;
    }

    public final boolean b() {
        return this.f5951c;
    }

    public final Object c(Object obj, Object obj2) {
        return this.f5950b.invoke(obj, obj2);
    }

    public final void d(n nVar, KProperty kProperty, Object obj) {
        nVar.a(this, obj);
    }

    public String toString() {
        return "AccessibilityKey: " + this.f5949a;
    }
}
