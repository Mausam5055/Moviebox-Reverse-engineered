package retrofit2;

import okhttp3.Request;

/* JADX INFO: loaded from: classes7.dex */
public interface d<T> extends Cloneable {
    void cancel();

    /* JADX INFO: renamed from: clone */
    d mo632clone();

    j0 execute();

    void h(f fVar);

    boolean isCanceled();

    Request request();
}
