package androidx.datastore.core.okio;

import kotlin.coroutines.Continuation;
import okio.BufferedSink;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes.dex */
public interface b {
    Object a(BufferedSource bufferedSource, Continuation continuation);

    Object b(Object obj, BufferedSink bufferedSink, Continuation continuation);

    Object c();
}
