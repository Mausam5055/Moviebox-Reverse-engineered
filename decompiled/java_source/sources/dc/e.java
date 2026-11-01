package dc;

import android.util.Base64;
import android.util.JsonWriter;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class e implements bc.d, bc.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f61315a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f61316b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JsonWriter f61317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f61318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f61319e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final bc.c f61320f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f61321g;

    e(Writer writer, Map map, Map map2, bc.c cVar, boolean z10) {
        this.f61317c = new JsonWriter(writer);
        this.f61318d = map;
        this.f61319e = map2;
        this.f61320f = cVar;
        this.f61321g = z10;
    }

    private boolean t(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    private e w(String str, Object obj) throws IOException {
        y();
        this.f61317c.name(str);
        if (obj != null) {
            return k(obj, false);
        }
        this.f61317c.nullValue();
        return this;
    }

    private e x(String str, Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        y();
        this.f61317c.name(str);
        return k(obj, false);
    }

    private void y() throws IOException {
        if (!this.f61316b) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
        e eVar = this.f61315a;
        if (eVar != null) {
            eVar.y();
            this.f61315a.f61316b = false;
            this.f61315a = null;
            this.f61317c.endObject();
        }
    }

    @Override // bc.d
    public bc.d a(bc.b bVar, long j11) {
        return o(bVar.b(), j11);
    }

    @Override // bc.d
    public bc.d b(bc.b bVar, int i11) {
        return n(bVar.b(), i11);
    }

    @Override // bc.d
    public bc.d c(bc.b bVar, double d11) {
        return m(bVar.b(), d11);
    }

    @Override // bc.d
    public bc.d d(bc.b bVar, boolean z10) {
        return q(bVar.b(), z10);
    }

    @Override // bc.d
    public bc.d e(bc.b bVar, Object obj) {
        return p(bVar.b(), obj);
    }

    public e h(double d11) throws IOException {
        y();
        this.f61317c.value(d11);
        return this;
    }

    public e i(int i11) throws IOException {
        y();
        this.f61317c.value(i11);
        return this;
    }

    public e j(long j11) throws IOException {
        y();
        this.f61317c.value(j11);
        return this;
    }

    e k(Object obj, boolean z10) {
        int i11 = 0;
        if (z10 && t(obj)) {
            throw new EncodingException(String.format("%s cannot be encoded inline", obj == null ? null : obj.getClass()));
        }
        if (obj == null) {
            this.f61317c.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.f61317c.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                this.f61317c.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    k(it.next(), false);
                }
                this.f61317c.endArray();
                return this;
            }
            if (obj instanceof Map) {
                this.f61317c.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        p((String) key, entry.getValue());
                    } catch (ClassCastException e11) {
                        throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e11);
                    }
                }
                this.f61317c.endObject();
                return this;
            }
            bc.c cVar = (bc.c) this.f61318d.get(obj.getClass());
            if (cVar != null) {
                return v(cVar, obj, z10);
            }
            bc.e eVar = (bc.e) this.f61319e.get(obj.getClass());
            if (eVar != null) {
                eVar.a(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                return v(this.f61320f, obj, z10);
            }
            if (obj instanceof f) {
                i(((f) obj).getNumber());
            } else {
                f(((Enum) obj).name());
            }
            return this;
        }
        if (obj instanceof byte[]) {
            return s((byte[]) obj);
        }
        this.f61317c.beginArray();
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            while (i11 < length) {
                this.f61317c.value(iArr[i11]);
                i11++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i11 < length2) {
                j(jArr[i11]);
                i11++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i11 < length3) {
                this.f61317c.value(dArr[i11]);
                i11++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i11 < length4) {
                this.f61317c.value(zArr[i11]);
                i11++;
            }
        } else if (obj instanceof Number[]) {
            for (Number number : (Number[]) obj) {
                k(number, false);
            }
        } else {
            for (Object obj2 : (Object[]) obj) {
                k(obj2, false);
            }
        }
        this.f61317c.endArray();
        return this;
    }

    @Override // bc.f
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public e f(String str) throws IOException {
        y();
        this.f61317c.value(str);
        return this;
    }

    public e m(String str, double d11) throws IOException {
        y();
        this.f61317c.name(str);
        return h(d11);
    }

    public e n(String str, int i11) throws IOException {
        y();
        this.f61317c.name(str);
        return i(i11);
    }

    public e o(String str, long j11) throws IOException {
        y();
        this.f61317c.name(str);
        return j(j11);
    }

    public e p(String str, Object obj) {
        return this.f61321g ? x(str, obj) : w(str, obj);
    }

    public e q(String str, boolean z10) throws IOException {
        y();
        this.f61317c.name(str);
        return g(z10);
    }

    @Override // bc.f
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public e g(boolean z10) throws IOException {
        y();
        this.f61317c.value(z10);
        return this;
    }

    public e s(byte[] bArr) throws IOException {
        y();
        if (bArr == null) {
            this.f61317c.nullValue();
        } else {
            this.f61317c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    void u() {
        y();
        this.f61317c.flush();
    }

    e v(bc.c cVar, Object obj, boolean z10) throws IOException {
        if (!z10) {
            this.f61317c.beginObject();
        }
        cVar.a(obj, this);
        if (!z10) {
            this.f61317c.endObject();
        }
        return this;
    }
}
