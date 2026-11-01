package k1;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class d extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f66566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Uri f66567c;

    d(a aVar, Context context, Uri uri) {
        super(aVar);
        this.f66566b = context;
        this.f66567c = uri;
    }

    private static void m(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused) {
            }
        }
    }

    private static Uri n(Context context, Uri uri, String str, String str2) {
        try {
            return DocumentsContract.createDocument(context.getContentResolver(), uri, str, str2);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // k1.a
    public boolean a() {
        return b.a(this.f66566b, this.f66567c);
    }

    @Override // k1.a
    public a b(String str) {
        Uri uriN = n(this.f66566b, this.f66567c, "vnd.android.document/directory", str);
        if (uriN != null) {
            return new d(this, this.f66566b, uriN);
        }
        return null;
    }

    @Override // k1.a
    public a c(String str, String str2) {
        Uri uriN = n(this.f66566b, this.f66567c, str, str2);
        if (uriN != null) {
            return new d(this, this.f66566b, uriN);
        }
        return null;
    }

    @Override // k1.a
    public boolean d() {
        try {
            return DocumentsContract.deleteDocument(this.f66566b.getContentResolver(), this.f66567c);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // k1.a
    public boolean e() {
        return b.c(this.f66566b, this.f66567c);
    }

    @Override // k1.a
    public String i() {
        return b.d(this.f66566b, this.f66567c);
    }

    @Override // k1.a
    public Uri j() {
        return this.f66567c;
    }

    @Override // k1.a
    public long k() {
        return b.f(this.f66566b, this.f66567c);
    }

    @Override // k1.a
    public a[] l() {
        ContentResolver contentResolver = this.f66566b.getContentResolver();
        Uri uri = this.f66567c;
        Uri uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(uriBuildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                while (cursorQuery.moveToNext()) {
                    arrayList.add(DocumentsContract.buildDocumentUriUsingTree(this.f66567c, cursorQuery.getString(0)));
                }
            } catch (Exception e11) {
                Log.w("DocumentFile", "Failed query: " + e11);
            }
            m(cursorQuery);
            Uri[] uriArr = (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
            a[] aVarArr = new a[uriArr.length];
            for (int i11 = 0; i11 < uriArr.length; i11++) {
                aVarArr[i11] = new d(this, this.f66566b, uriArr[i11]);
            }
            return aVarArr;
        } catch (Throwable th2) {
            m(cursorQuery);
            throw th2;
        }
    }
}
