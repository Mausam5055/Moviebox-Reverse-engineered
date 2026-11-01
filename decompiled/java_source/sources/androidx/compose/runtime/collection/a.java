package androidx.compose.runtime.collection;

import android.util.SparseArray;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseArray f3679a;

    public a(int i11) {
        this(new SparseArray(i11));
    }

    public /* synthetic */ a(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 10 : i11);
    }

    private a(SparseArray sparseArray) {
        this.f3679a = sparseArray;
    }

    public final Object a(int i11) {
        return this.f3679a.get(i11);
    }

    public final void b(int i11, Object obj) {
        this.f3679a.put(i11, obj);
    }
}
