package l2;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class m implements x {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int[] f68621s = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final a f68622t = new a(new a.InterfaceC0826a() { // from class: l2.k
        @Override // l2.m.a.InterfaceC0826a
        public final Constructor a() {
            return m.j();
        }
    });

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final a f68623u = new a(new a.InterfaceC0826a() { // from class: l2.l
        @Override // l2.m.a.InterfaceC0826a
        public final Constructor a() {
            return m.k();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f68624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f68625c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f68626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f68627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f68628f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f68629g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f68630h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f68631i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f68632j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f68634l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ImmutableList f68635m;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f68639q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f68640r;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f68633k = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f68636n = 112800;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private i3.s.a f68638p = new i3.h();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f68637o = true;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InterfaceC0826a f68641a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicBoolean f68642b = new AtomicBoolean(false);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Constructor f68643c;

        /* JADX INFO: renamed from: l2.m$a$a, reason: collision with other inner class name */
        public interface InterfaceC0826a {
            Constructor a();
        }

        public a(InterfaceC0826a interfaceC0826a) {
            this.f68641a = interfaceC0826a;
        }

        private Constructor b() {
            synchronized (this.f68642b) {
                if (this.f68642b.get()) {
                    return this.f68643c;
                }
                try {
                    return this.f68641a.a();
                } catch (ClassNotFoundException unused) {
                    this.f68642b.set(true);
                    return this.f68643c;
                } catch (Exception e11) {
                    throw new RuntimeException("Error instantiating extension", e11);
                }
            }
        }

        public r a(Object... objArr) {
            Constructor constructorB = b();
            if (constructorB == null) {
                return null;
            }
            try {
                return (r) constructorB.newInstance(objArr);
            } catch (Exception e11) {
                throw new IllegalStateException("Unexpected error creating extractor", e11);
            }
        }
    }

    private void g(int i11, List list) {
        switch (i11) {
            case 0:
                list.add(new s3.b());
                break;
            case 1:
                list.add(new s3.e());
                break;
            case 2:
                list.add(new s3.h(((this.f68626d | (this.f68624b ? 1 : 0)) == true ? 1 : 0) | (this.f68625c ? 2 : 0)));
                break;
            case 3:
                list.add(new m2.b(this.f68627e | (this.f68624b ? 1 : 0) | (this.f68625c ? 2 : 0)));
                break;
            case 4:
                r rVarA = f68622t.a(Integer.valueOf(this.f68628f));
                if (rVarA == null) {
                    list.add(new q2.d(this.f68628f));
                } else {
                    list.add(rVarA);
                }
                break;
            case 5:
                list.add(new androidx.media3.extractor.flv.b());
                break;
            case 6:
                list.add(new d3.e(this.f68638p, (this.f68637o ? 0 : 2) | this.f68629g));
                break;
            case 7:
                list.add(new e3.f(this.f68632j | (this.f68624b ? 1 : 0) | (this.f68625c ? 2 : 0)));
                break;
            case 8:
                list.add(new f3.h(this.f68638p, this.f68631i | f3.h.j(this.f68639q) | (this.f68637o ? 0 : 32)));
                list.add(new f3.n(this.f68638p, this.f68630h | f3.n.m(this.f68639q) | (this.f68637o ? 0 : 16)));
                break;
            case 9:
                list.add(new g3.d());
                break;
            case 10:
                list.add(new s3.c0());
                break;
            case 11:
                if (this.f68635m == null) {
                    this.f68635m = ImmutableList.of();
                }
                list.add(new s3.k0(this.f68633k, !this.f68637o ? 1 : 0, this.f68638p, new androidx.media3.common.util.p0(0L), new s3.j(this.f68634l, this.f68635m), this.f68636n));
                break;
            case 12:
                list.add(new t3.b());
                break;
            case 14:
                list.add(new t2.a(this.f68640r));
                break;
            case 15:
                r rVarA2 = f68623u.a(new Object[0]);
                if (rVarA2 != null) {
                    list.add(rVarA2);
                }
                break;
            case 16:
                list.add(new n2.b(1 ^ (this.f68637o ? 1 : 0), this.f68638p));
                break;
            case 17:
                list.add(new h3.a());
                break;
            case 18:
                list.add(new u3.a());
                break;
            case 19:
                list.add(new p2.a());
                break;
            case 20:
                int i12 = this.f68630h;
                if ((i12 & 2) == 0 && (i12 & 4) == 0) {
                    list.add(new s2.a());
                    break;
                }
                break;
            case 21:
                list.add(new o2.a());
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor j() {
        if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
            return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(r.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor k() {
        return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(r.class).getConstructor(null);
    }

    @Override // l2.x
    public synchronized r[] c(Uri uri, Map map) {
        ArrayList arrayList;
        try {
            int[] iArr = f68621s;
            arrayList = new ArrayList(iArr.length);
            int iB = androidx.media3.common.o.b(map);
            if (iB != -1) {
                g(iB, arrayList);
            }
            int iC = androidx.media3.common.o.c(uri);
            if (iC != -1 && iC != iB) {
                g(iC, arrayList);
            }
            for (int i11 : iArr) {
                if (i11 != iB && i11 != iC) {
                    g(i11, arrayList);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (r[]) arrayList.toArray(new r[arrayList.size()]);
    }

    @Override // l2.x
    public synchronized r[] createExtractors() {
        return c(Uri.EMPTY, new HashMap());
    }

    @Override // l2.x
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public synchronized m b(int i11) {
        this.f68639q = i11;
        return this;
    }

    @Override // l2.x
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public synchronized m d(boolean z10) {
        this.f68637o = z10;
        return this;
    }

    public synchronized m l(int i11) {
        this.f68640r = i11;
        return this;
    }

    @Override // l2.x
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public synchronized m a(i3.s.a aVar) {
        this.f68638p = aVar;
        return this;
    }
}
