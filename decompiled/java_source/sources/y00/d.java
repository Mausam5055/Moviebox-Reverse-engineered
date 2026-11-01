package y00;

import java.io.File;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes7.dex */
public class d implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private File f78562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String[] f78563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f78564c;

    public d() {
        this.f78564c = 0;
    }

    public d(File file) {
        this.f78564c = 0;
        this.f78562a = file;
    }

    public d(File file, String[] strArr) {
        this(file);
        a(strArr);
    }

    public void a(String[] strArr) {
        String[] strArr2 = this.f78563b;
        int length = strArr2 == null ? 0 : strArr2.length;
        String[] strArr3 = new String[strArr.length + length];
        if (length > 0) {
            System.arraycopy(strArr2, 0, strArr3, 0, length);
        }
        this.f78563b = strArr3;
        System.arraycopy(strArr, 0, strArr3, length, strArr.length);
    }

    public c b() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        File file = this.f78562a;
        String[] strArr = this.f78563b;
        int i11 = this.f78564c;
        this.f78564c = i11 + 1;
        return new c(file, strArr[i11]);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f78564c < this.f78563b.length;
    }

    @Override // java.util.Iterator
    public Object next() {
        return b();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
