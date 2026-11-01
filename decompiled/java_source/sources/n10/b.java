package n10;

import java.util.LinkedList;
import org.mvel2.util.k;

/* JADX INFO: loaded from: classes7.dex */
public class b extends ClassLoader implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f70087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinkedList f70089c;

    public b(ClassLoader classLoader, int i11) {
        super(classLoader);
        this.f70089c = new LinkedList();
        this.f70088b = i11;
    }

    @Override // org.mvel2.util.k
    public Class a(String str, byte[] bArr, int i11, int i12) {
        this.f70087a++;
        return super.defineClass(str, bArr, i11, i12);
    }

    public void b() {
        synchronized (this.f70089c) {
            try {
                for (a aVar : this.f70089c) {
                    if (aVar != null) {
                        aVar.a();
                    }
                }
                this.f70089c.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int c() {
        return this.f70087a;
    }

    public boolean d() {
        return this.f70088b < this.f70087a;
    }

    public a e(a aVar) {
        synchronized (this.f70089c) {
            try {
                this.f70089c.add(aVar);
                while (this.f70089c.size() > this.f70088b) {
                    a aVar2 = (a) this.f70089c.removeFirst();
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }
}
