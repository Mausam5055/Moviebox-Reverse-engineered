package k1;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f66563a;

    a(a aVar) {
        this.f66563a = aVar;
    }

    public static a g(Context context, Uri uri) {
        return new c(null, context, uri);
    }

    public static a h(Context context, Uri uri) {
        return new d(null, context, DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri)));
    }

    public abstract boolean a();

    public abstract a b(String str);

    public abstract a c(String str, String str2);

    public abstract boolean d();

    public abstract boolean e();

    public a f(String str) {
        for (a aVar : l()) {
            if (str.equals(aVar.i())) {
                return aVar;
            }
        }
        return null;
    }

    public abstract String i();

    public abstract Uri j();

    public abstract long k();

    public abstract a[] l();
}
