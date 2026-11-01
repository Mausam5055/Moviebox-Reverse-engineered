package f3;

import com.google.common.primitives.ImmutableIntArray;
import l2.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class x implements q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f62334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableIntArray f62335b;

    public x(int i11, int[] iArr) {
        this.f62334a = i11;
        this.f62335b = iArr != null ? ImmutableIntArray.copyOf(iArr) : ImmutableIntArray.of();
    }
}
