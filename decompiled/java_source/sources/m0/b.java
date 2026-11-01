package m0;

import androidx.compose.ui.text.platform.o;
import androidx.compose.ui.text.platform.p;
import java.util.HashMap;
import java.util.LinkedHashSet;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f69081a = o.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f69082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinkedHashSet f69083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f69084d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f69085e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f69086f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f69087g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f69088h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f69089i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f69090j;

    public b(int i11) {
        if (i11 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f69085e = i11;
        this.f69082b = new HashMap(0, 0.75f);
        this.f69083c = new LinkedHashSet();
    }

    private final int g(Object obj, Object obj2) {
        int i11 = i(obj, obj2);
        if (i11 >= 0) {
            return i11;
        }
        throw new IllegalStateException(("Negative size: " + obj + '=' + obj2).toString());
    }

    protected Object b(Object obj) {
        return null;
    }

    protected void c(boolean z10, Object obj, Object obj2, Object obj3) {
    }

    public final Object d(Object obj) {
        synchronized (this.f69081a) {
            Object obj2 = this.f69082b.get(obj);
            if (obj2 != null) {
                this.f69083c.remove(obj);
                this.f69083c.add(obj);
                this.f69089i++;
                return obj2;
            }
            this.f69090j++;
            Object objB = b(obj);
            if (objB == null) {
                return null;
            }
            synchronized (this.f69081a) {
                try {
                    this.f69087g++;
                    Object objPut = this.f69082b.put(obj, objB);
                    this.f69083c.remove(obj);
                    this.f69083c.add(obj);
                    if (objPut != null) {
                        this.f69082b.put(obj, objPut);
                        obj2 = objPut;
                    } else {
                        this.f69084d = h() + g(obj, objB);
                    }
                    Unit unit = Unit.f67061a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (obj2 != null) {
                c(false, obj, objB, obj2);
                return obj2;
            }
            j(this.f69085e);
            return objB;
        }
    }

    public final Object e(Object obj, Object obj2) {
        Object objPut;
        if (obj == null || obj2 == null) {
            throw null;
        }
        synchronized (this.f69081a) {
            try {
                this.f69086f++;
                this.f69084d = h() + g(obj, obj2);
                objPut = this.f69082b.put(obj, obj2);
                if (objPut != null) {
                    this.f69084d = h() - g(obj, objPut);
                }
                if (this.f69083c.contains(obj)) {
                    this.f69083c.remove(obj);
                }
                this.f69083c.add(obj);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (objPut != null) {
            c(false, obj, objPut, obj2);
        }
        j(this.f69085e);
        return objPut;
    }

    public final Object f(Object obj) {
        Object objRemove;
        obj.getClass();
        synchronized (this.f69081a) {
            try {
                objRemove = this.f69082b.remove(obj);
                this.f69083c.remove(obj);
                if (objRemove != null) {
                    this.f69084d = h() - g(obj, objRemove);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (objRemove != null) {
            c(false, obj, objRemove, null);
        }
        return objRemove;
    }

    public final int h() {
        int i11;
        synchronized (this.f69081a) {
            i11 = this.f69084d;
        }
        return i11;
    }

    protected int i(Object obj, Object obj2) {
        return 1;
    }

    public void j(int i11) {
        Object objH0;
        Object obj;
        while (true) {
            synchronized (this.f69081a) {
                try {
                    if (h() >= 0 && (!this.f69082b.isEmpty() || h() == 0)) {
                        if (this.f69082b.isEmpty() != this.f69083c.isEmpty()) {
                            break;
                        }
                        if (h() <= i11 || this.f69082b.isEmpty()) {
                            objH0 = null;
                            obj = null;
                        } else {
                            objH0 = CollectionsKt.h0(this.f69083c);
                            obj = this.f69082b.get(objH0);
                            if (obj == null) {
                                throw new IllegalStateException("inconsistent state");
                            }
                            TypeIntrinsics.d(this.f69082b).remove(objH0);
                            TypeIntrinsics.a(this.f69083c).remove(objH0);
                            int iH = h();
                            Intrinsics.e(objH0);
                            Intrinsics.e(obj);
                            this.f69084d = iH - g(objH0, obj);
                            this.f69088h++;
                        }
                        Unit unit = Unit.f67061a;
                    } else {
                        break;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (objH0 == null && obj == null) {
                return;
            }
            Intrinsics.e(objH0);
            Intrinsics.e(obj);
            c(true, objH0, obj, null);
        }
        throw new IllegalStateException("map/keySet size inconsistency");
    }

    public String toString() {
        String str;
        synchronized (this.f69081a) {
            try {
                int i11 = this.f69089i;
                int i12 = this.f69090j + i11;
                str = "LruCache[maxSize=" + this.f69085e + ",hits=" + this.f69089i + ",misses=" + this.f69090j + ",hitRate=" + (i12 != 0 ? (i11 * 100) / i12 : 0) + "%]";
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }
}
