package l6;

import android.util.SparseIntArray;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SparseIntArray f68731a;

    /* JADX WARN: Multi-variable type inference failed */
    public a() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public a(SparseIntArray layouts) {
        Intrinsics.h(layouts, "layouts");
        this.f68731a = layouts;
    }

    public /* synthetic */ a(SparseIntArray sparseIntArray, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new SparseIntArray() : sparseIntArray);
    }

    public abstract int a(List list, int i11);

    public final int b(int i11) {
        int i12 = this.f68731a.get(i11);
        if (i12 != 0) {
            return i12;
        }
        throw new IllegalArgumentException(("ViewType: " + i11 + " found layoutResId，please use registerItemType() first!").toString());
    }
}
