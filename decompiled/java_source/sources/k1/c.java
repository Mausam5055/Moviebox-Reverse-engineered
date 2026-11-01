package k1;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;

/* JADX INFO: loaded from: classes2.dex */
class c extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f66564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Uri f66565c;

    c(a aVar, Context context, Uri uri) {
        super(aVar);
        this.f66564b = context;
        this.f66565c = uri;
    }

    @Override // k1.a
    public boolean a() {
        return b.a(this.f66564b, this.f66565c);
    }

    @Override // k1.a
    public a b(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // k1.a
    public a c(String str, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // k1.a
    public boolean d() {
        try {
            return DocumentsContract.deleteDocument(this.f66564b.getContentResolver(), this.f66565c);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // k1.a
    public boolean e() {
        return b.c(this.f66564b, this.f66565c);
    }

    @Override // k1.a
    public String i() {
        return b.d(this.f66564b, this.f66565c);
    }

    @Override // k1.a
    public Uri j() {
        return this.f66565c;
    }

    @Override // k1.a
    public long k() {
        return b.f(this.f66564b, this.f66565c);
    }

    @Override // k1.a
    public a[] l() {
        throw new UnsupportedOperationException();
    }
}
