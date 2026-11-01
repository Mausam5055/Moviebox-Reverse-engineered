package kotlinx.coroutines.flow.internal;

/* JADX INFO: loaded from: classes7.dex */
public abstract class i {
    public static final void a(AbortFlowException abortFlowException, Object obj) {
        if (abortFlowException.owner != obj) {
            throw abortFlowException;
        }
    }
}
