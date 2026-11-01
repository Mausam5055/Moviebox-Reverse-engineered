package androidx.loader.app;

import android.os.Bundle;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.y0;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: androidx.loader.app.a$a, reason: collision with other inner class name */
    public interface InterfaceC0084a {
        androidx.loader.content.a onCreateLoader(int i11, Bundle bundle);

        void onLoadFinished(androidx.loader.content.a aVar, Object obj);

        void onLoaderReset(androidx.loader.content.a aVar);
    }

    public static a b(u uVar) {
        return new b(uVar, ((y0) uVar).getViewModelStore());
    }

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract androidx.loader.content.a c(int i11, Bundle bundle, InterfaceC0084a interfaceC0084a);

    public abstract void d();
}
