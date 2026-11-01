package xe;

import android.graphics.Bitmap;
import com.google.zxing.BarcodeFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.google.zxing.j f78199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected r f78200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f78201c = 2;

    public c(com.google.zxing.j jVar, r rVar) {
        this.f78199a = jVar;
        this.f78200b = rVar;
    }

    public static List f(List list, r rVar) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(rVar.f((com.google.zxing.k) it.next()));
        }
        return arrayList;
    }

    public BarcodeFormat a() {
        return this.f78199a.b();
    }

    public Bitmap b() {
        return this.f78200b.b(null, 2);
    }

    public byte[] c() {
        return this.f78199a.c();
    }

    public Map d() {
        return this.f78199a.d();
    }

    public String e() {
        return this.f78199a.f();
    }

    public String toString() {
        return this.f78199a.f();
    }
}
