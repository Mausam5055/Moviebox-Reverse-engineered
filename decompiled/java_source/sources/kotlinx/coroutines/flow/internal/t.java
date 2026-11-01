package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.i1;

/* JADX INFO: loaded from: classes7.dex */
final class t extends SharedFlowImpl implements i1 {
    public t(int i11) {
        super(1, Integer.MAX_VALUE, BufferOverflow.DROP_OLDEST);
        b(Integer.valueOf(i11));
    }

    @Override // kotlinx.coroutines.flow.i1
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] */
    public Integer getValue() {
        Integer numValueOf;
        synchronized (this) {
            numValueOf = Integer.valueOf(((Number) M()).intValue());
        }
        return numValueOf;
    }

    public final boolean a0(int i11) {
        boolean zB;
        synchronized (this) {
            zB = b(Integer.valueOf(((Number) M()).intValue() + i11));
        }
        return zB;
    }
}
