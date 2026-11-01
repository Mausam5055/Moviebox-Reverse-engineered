package com.google.firebase.encoders.proto;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class d implements bc.d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Charset f31822f = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final bc.b f31823g = bc.b.a("key").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final bc.b f31824h = bc.b.a(AppMeasurementSdk.ConditionalUserProperty.VALUE).b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final bc.c f31825i = new bc.c() { // from class: com.google.firebase.encoders.proto.c
        @Override // bc.c
        public final void a(Object obj, Object obj2) {
            d.w((Map.Entry) obj, (bc.d) obj2);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OutputStream f31826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f31827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f31828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bc.c f31829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f31830e = new f(this);

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f31831a;

        static {
            int[] iArr = new int[Protobuf.IntEncoding.values().length];
            f31831a = iArr;
            try {
                iArr[Protobuf.IntEncoding.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31831a[Protobuf.IntEncoding.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31831a[Protobuf.IntEncoding.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    d(OutputStream outputStream, Map map, Map map2, bc.c cVar) {
        this.f31826a = outputStream;
        this.f31827b = map;
        this.f31828c = map2;
        this.f31829d = cVar;
    }

    private static ByteBuffer p(int i11) {
        return ByteBuffer.allocate(i11).order(ByteOrder.LITTLE_ENDIAN);
    }

    private long q(bc.c cVar, Object obj) throws IOException {
        b bVar = new b();
        try {
            OutputStream outputStream = this.f31826a;
            this.f31826a = bVar;
            try {
                cVar.a(obj, this);
                this.f31826a = outputStream;
                long jD = bVar.d();
                bVar.close();
                return jD;
            } catch (Throwable th2) {
                this.f31826a = outputStream;
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                bVar.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    private d r(bc.c cVar, bc.b bVar, Object obj, boolean z10) throws IOException {
        long jQ = q(cVar, obj);
        if (z10 && jQ == 0) {
            return this;
        }
        x((v(bVar) << 3) | 2);
        y(jQ);
        cVar.a(obj, this);
        return this;
    }

    private d s(bc.e eVar, bc.b bVar, Object obj, boolean z10) {
        this.f31830e.b(bVar, z10);
        eVar.a(obj, this.f31830e);
        return this;
    }

    private static Protobuf u(bc.b bVar) {
        Protobuf protobuf = (Protobuf) bVar.c(Protobuf.class);
        if (protobuf != null) {
            return protobuf;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private static int v(bc.b bVar) {
        Protobuf protobuf = (Protobuf) bVar.c(Protobuf.class);
        if (protobuf != null) {
            return protobuf.tag();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w(Map.Entry entry, bc.d dVar) {
        dVar.e(f31823g, entry.getKey());
        dVar.e(f31824h, entry.getValue());
    }

    private void x(int i11) throws IOException {
        while ((i11 & (-128)) != 0) {
            this.f31826a.write((i11 & 127) | 128);
            i11 >>>= 7;
        }
        this.f31826a.write(i11 & 127);
    }

    private void y(long j11) throws IOException {
        while (((-128) & j11) != 0) {
            this.f31826a.write((((int) j11) & 127) | 128);
            j11 >>>= 7;
        }
        this.f31826a.write(((int) j11) & 127);
    }

    @Override // bc.d
    public bc.d c(bc.b bVar, double d11) {
        return g(bVar, d11, true);
    }

    @Override // bc.d
    public bc.d e(bc.b bVar, Object obj) {
        return i(bVar, obj, true);
    }

    bc.d g(bc.b bVar, double d11, boolean z10) throws IOException {
        if (z10 && d11 == 0.0d) {
            return this;
        }
        x((v(bVar) << 3) | 1);
        this.f31826a.write(p(8).putDouble(d11).array());
        return this;
    }

    bc.d h(bc.b bVar, float f11, boolean z10) throws IOException {
        if (z10 && f11 == 0.0f) {
            return this;
        }
        x((v(bVar) << 3) | 5);
        this.f31826a.write(p(4).putFloat(f11).array());
        return this;
    }

    bc.d i(bc.b bVar, Object obj, boolean z10) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return this;
            }
            x((v(bVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f31822f);
            x(bytes.length);
            this.f31826a.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                i(bVar, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                r(f31825i, bVar, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            return g(bVar, ((Double) obj).doubleValue(), z10);
        }
        if (obj instanceof Float) {
            return h(bVar, ((Float) obj).floatValue(), z10);
        }
        if (obj instanceof Number) {
            return m(bVar, ((Number) obj).longValue(), z10);
        }
        if (obj instanceof Boolean) {
            return o(bVar, ((Boolean) obj).booleanValue(), z10);
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z10 && bArr.length == 0) {
                return this;
            }
            x((v(bVar) << 3) | 2);
            x(bArr.length);
            this.f31826a.write(bArr);
            return this;
        }
        bc.c cVar = (bc.c) this.f31827b.get(obj.getClass());
        if (cVar != null) {
            return r(cVar, bVar, obj, z10);
        }
        bc.e eVar = (bc.e) this.f31828c.get(obj.getClass());
        if (eVar != null) {
            return s(eVar, bVar, obj, z10);
        }
        if (obj instanceof ec.a) {
            return b(bVar, ((ec.a) obj).getNumber());
        }
        return obj instanceof Enum ? b(bVar, ((Enum) obj).ordinal()) : r(this.f31829d, bVar, obj, z10);
    }

    @Override // bc.d
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public d b(bc.b bVar, int i11) {
        return k(bVar, i11, true);
    }

    d k(bc.b bVar, int i11, boolean z10) throws IOException {
        if (z10 && i11 == 0) {
            return this;
        }
        Protobuf protobufU = u(bVar);
        int i12 = a.f31831a[protobufU.intEncoding().ordinal()];
        if (i12 == 1) {
            x(protobufU.tag() << 3);
            x(i11);
        } else if (i12 == 2) {
            x(protobufU.tag() << 3);
            x((i11 << 1) ^ (i11 >> 31));
        } else if (i12 == 3) {
            x((protobufU.tag() << 3) | 5);
            this.f31826a.write(p(4).putInt(i11).array());
        }
        return this;
    }

    @Override // bc.d
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public d a(bc.b bVar, long j11) {
        return m(bVar, j11, true);
    }

    d m(bc.b bVar, long j11, boolean z10) throws IOException {
        if (z10 && j11 == 0) {
            return this;
        }
        Protobuf protobufU = u(bVar);
        int i11 = a.f31831a[protobufU.intEncoding().ordinal()];
        if (i11 == 1) {
            x(protobufU.tag() << 3);
            y(j11);
        } else if (i11 == 2) {
            x(protobufU.tag() << 3);
            y((j11 >> 63) ^ (j11 << 1));
        } else if (i11 == 3) {
            x((protobufU.tag() << 3) | 1);
            this.f31826a.write(p(8).putLong(j11).array());
        }
        return this;
    }

    @Override // bc.d
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public d d(bc.b bVar, boolean z10) {
        return o(bVar, z10, true);
    }

    d o(bc.b bVar, boolean z10, boolean z11) {
        return k(bVar, z10 ? 1 : 0, z11);
    }

    d t(Object obj) {
        if (obj == null) {
            return this;
        }
        bc.c cVar = (bc.c) this.f31827b.get(obj.getClass());
        if (cVar != null) {
            cVar.a(obj, this);
            return this;
        }
        throw new EncodingException("No encoder for " + obj.getClass());
    }
}
