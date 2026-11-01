package g9;

import android.net.Uri;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class i implements r {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int[] f63434n = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final a f63435o = new a(new a.InterfaceC0770a() { // from class: g9.g
        @Override // g9.i.a.InterfaceC0770a
        public final Constructor a() {
            return i.e();
        }
    });

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final a f63436p = new a(new a.InterfaceC0770a() { // from class: g9.h
        @Override // g9.i.a.InterfaceC0770a
        public final Constructor a() {
            return i.f();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f63437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f63438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f63439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f63440e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f63441f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f63442g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f63443h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f63444i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f63445j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f63447l;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f63446k = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f63448m = 112800;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InterfaceC0770a f63449a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicBoolean f63450b = new AtomicBoolean(false);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Constructor f63451c;

        /* JADX INFO: renamed from: g9.i$a$a, reason: collision with other inner class name */
        public interface InterfaceC0770a {
            Constructor a();
        }

        public a(InterfaceC0770a interfaceC0770a) {
            this.f63449a = interfaceC0770a;
        }

        private Constructor b() {
            synchronized (this.f63450b) {
                if (this.f63450b.get()) {
                    return this.f63451c;
                }
                try {
                    return this.f63449a.a();
                } catch (ClassNotFoundException unused) {
                    this.f63450b.set(true);
                    return this.f63451c;
                } catch (Exception e11) {
                    throw new RuntimeException("Error instantiating extension", e11);
                }
            }
        }

        public l a(Object... objArr) {
            Constructor constructorB = b();
            if (constructorB == null) {
                return null;
            }
            try {
                return (l) constructorB.newInstance(objArr);
            } catch (Exception e11) {
                throw new IllegalStateException("Unexpected error creating extractor", e11);
            }
        }
    }

    private void d(int i11, List list) {
        switch (i11) {
            case 0:
                list.add(new q9.b());
                break;
            case 1:
                list.add(new q9.e());
                break;
            case 2:
                list.add(new q9.h((this.f63438c ? 2 : 0) | ((this.f63439d | (this.f63437b ? 1 : 0)) == true ? 1 : 0)));
                break;
            case 3:
                list.add(new h9.b((this.f63438c ? 2 : 0) | this.f63440e | (this.f63437b ? 1 : 0)));
                break;
            case 4:
                l lVarA = f63435o.a(Integer.valueOf(this.f63441f));
                if (lVarA == null) {
                    list.add(new j9.d(this.f63441f));
                } else {
                    list.add(lVarA);
                }
                break;
            case 5:
                list.add(new com.google.android.exoplayer2.extractor.flv.b());
                break;
            case 6:
                list.add(new m9.e(this.f63442g));
                break;
            case 7:
                list.add(new n9.f((this.f63438c ? 2 : 0) | this.f63445j | (this.f63437b ? 1 : 0)));
                break;
            case 8:
                list.add(new o9.g(this.f63444i));
                list.add(new o9.k(this.f63443h));
                break;
            case 9:
                list.add(new p9.d());
                break;
            case 10:
                list.add(new q9.a0());
                break;
            case 11:
                list.add(new q9.h0(this.f63446k, this.f63447l, this.f63448m));
                break;
            case 12:
                list.add(new r9.b());
                break;
            case 14:
                list.add(new l9.a());
                break;
            case 15:
                l lVarA2 = f63436p.a(new Object[0]);
                if (lVarA2 != null) {
                    list.add(lVarA2);
                }
                break;
            case 16:
                list.add(new i9.b());
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor e() {
        if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
            return Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(l.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor f() {
        return Class.forName("com.google.android.exoplayer2.decoder.midi.MidiExtractor").asSubclass(l.class).getConstructor(null);
    }

    @Override // g9.r
    public synchronized l[] c(Uri uri, Map map) {
        ArrayList arrayList;
        try {
            int[] iArr = f63434n;
            arrayList = new ArrayList(iArr.length);
            int iB = com.google.android.exoplayer2.util.l.b(map);
            if (iB != -1) {
                d(iB, arrayList);
            }
            int iC = com.google.android.exoplayer2.util.l.c(uri);
            if (iC != -1 && iC != iB) {
                d(iC, arrayList);
            }
            for (int i11 : iArr) {
                if (i11 != iB && i11 != iC) {
                    d(i11, arrayList);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (l[]) arrayList.toArray(new l[arrayList.size()]);
    }

    @Override // g9.r
    public synchronized l[] createExtractors() {
        return c(Uri.EMPTY, new HashMap());
    }
}
