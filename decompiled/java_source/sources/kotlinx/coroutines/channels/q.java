package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes7.dex */
public interface q {
    void cancel(CancellationException cancellationException);

    Object e();

    Object f(Continuation continuation);

    Object g(Continuation continuation);

    f iterator();
}
