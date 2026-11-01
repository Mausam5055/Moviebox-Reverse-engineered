package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class r1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f3880a;

    /* JADX WARN: Multi-variable type inference failed */
    public r1() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public r1(List list) {
        this.f3880a = list;
    }

    public /* synthetic */ r1(List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new ArrayList() : list);
    }

    public final void a(int i11) {
        if (!this.f3880a.isEmpty()) {
            if (((Number) this.f3880a.get(0)).intValue() == i11) {
                return;
            }
            List list = this.f3880a;
            if (((Number) list.get(list.size() - 1)).intValue() == i11) {
                return;
            }
        }
        int size = this.f3880a.size();
        this.f3880a.add(Integer.valueOf(i11));
        while (size > 0) {
            int i12 = ((size + 1) >>> 1) - 1;
            int iIntValue = ((Number) this.f3880a.get(i12)).intValue();
            if (i11 <= iIntValue) {
                break;
            }
            this.f3880a.set(size, Integer.valueOf(iIntValue));
            size = i12;
        }
        this.f3880a.set(size, Integer.valueOf(i11));
    }

    public final boolean b() {
        return !this.f3880a.isEmpty();
    }

    public final int c() {
        return ((Number) CollectionsKt.i0(this.f3880a)).intValue();
    }

    public final int d() {
        int iIntValue;
        if (!(this.f3880a.size() > 0)) {
            k.r("Set is empty");
        }
        int iIntValue2 = ((Number) this.f3880a.get(0)).intValue();
        while (!this.f3880a.isEmpty() && ((Number) this.f3880a.get(0)).intValue() == iIntValue2) {
            List list = this.f3880a;
            list.set(0, CollectionsKt.u0(list));
            List list2 = this.f3880a;
            list2.remove(list2.size() - 1);
            int size = this.f3880a.size();
            int size2 = this.f3880a.size() >>> 1;
            int i11 = 0;
            while (i11 < size2) {
                int iIntValue3 = ((Number) this.f3880a.get(i11)).intValue();
                int i12 = (i11 + 1) * 2;
                int i13 = i12 - 1;
                int iIntValue4 = ((Number) this.f3880a.get(i13)).intValue();
                if (i12 < size && (iIntValue = ((Number) this.f3880a.get(i12)).intValue()) > iIntValue4) {
                    if (iIntValue <= iIntValue3) {
                        break;
                    }
                    this.f3880a.set(i11, Integer.valueOf(iIntValue));
                    this.f3880a.set(i12, Integer.valueOf(iIntValue3));
                    i11 = i12;
                } else {
                    if (iIntValue4 <= iIntValue3) {
                        break;
                    }
                    this.f3880a.set(i11, Integer.valueOf(iIntValue4));
                    this.f3880a.set(i13, Integer.valueOf(iIntValue3));
                    i11 = i13;
                }
            }
        }
        return iIntValue2;
    }
}
