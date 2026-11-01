package androidx.media3.datasource;

import android.net.Uri;
import androidx.media3.common.j;
import java.util.Map;
import w1.h;
import w1.n;

/* JADX INFO: loaded from: classes2.dex */
public interface a extends j {

    /* JADX INFO: renamed from: androidx.media3.datasource.a$a, reason: collision with other inner class name */
    public interface InterfaceC0091a {
        a createDataSource();
    }

    long a(h hVar);

    void c(n nVar);

    void close();

    Map getResponseHeaders();

    Uri getUri();
}
