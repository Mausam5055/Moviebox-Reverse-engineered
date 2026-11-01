package dh;

import javax.security.auth.callback.Callback;

/* JADX INFO: loaded from: classes4.dex */
public interface b extends Callback {
    void a(String str);

    void b(String str, Throwable th2);

    void onCompleted(String str);
}
