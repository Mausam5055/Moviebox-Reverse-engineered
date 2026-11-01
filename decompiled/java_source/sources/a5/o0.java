package a5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class o0 extends i1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected final g1 f295j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final j1 f296k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f297l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f298m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f299n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private DateFormat f300o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f301p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected IdentityHashMap f302q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected e1 f303r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected TimeZone f304s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected Locale f305t;

    public o0() {
        this(new j1(), g1.g());
    }

    public o0(j1 j1Var) {
        this(j1Var, g1.g());
    }

    public o0(j1 j1Var, g1 g1Var) {
        this.f297l = 0;
        this.f298m = "\t";
        this.f302q = null;
        this.f304s = com.alibaba.fastjson.a.defaultTimeZone;
        this.f305t = com.alibaba.fastjson.a.defaultLocale;
        this.f296k = j1Var;
        this.f295j = g1Var;
    }

    private DateFormat m(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, this.f305t);
        simpleDateFormat.setTimeZone(this.f304s);
        return simpleDateFormat;
    }

    public final void A(Object obj) {
        if (obj == null) {
            this.f296k.m0();
            return;
        }
        try {
            q(obj.getClass()).d(this, obj, null, null, 0);
        } catch (IOException e11) {
            throw new JSONException(e11.getMessage(), e11);
        }
    }

    public final void B(String str) {
        k1.f287a.f(this, str);
    }

    public void C() {
        this.f296k.m0();
    }

    public void D(Object obj) {
        e1 e1Var = this.f303r;
        if (obj == e1Var.f195b) {
            this.f296k.write("{\"$ref\":\"@\"}");
            return;
        }
        e1 e1Var2 = e1Var.f194a;
        if (e1Var2 != null && obj == e1Var2.f195b) {
            this.f296k.write("{\"$ref\":\"..\"}");
            return;
        }
        while (true) {
            e1 e1Var3 = e1Var.f194a;
            if (e1Var3 == null) {
                break;
            } else {
                e1Var = e1Var3;
            }
        }
        if (obj == e1Var.f195b) {
            this.f296k.write("{\"$ref\":\"$\"}");
            return;
        }
        this.f296k.write("{\"$ref\":\"");
        this.f296k.write(((e1) this.f302q.get(obj)).toString());
        this.f296k.write("\"}");
    }

    public final void E(Object obj, Object obj2) {
        F(obj, obj2, null, 0);
    }

    public final void F(Object obj, Object obj2, Type type, int i11) {
        try {
            if (obj == null) {
                this.f296k.m0();
            } else {
                q(obj.getClass()).d(this, obj, obj2, type, i11);
            }
        } catch (IOException e11) {
            throw new JSONException(e11.getMessage(), e11);
        }
    }

    public final void G(Object obj, String str) {
        if (obj instanceof Date) {
            if ("unixtime".equals(str)) {
                this.f296k.h0((int) (((Date) obj).getTime() / 1000));
                return;
            }
            if ("millis".equals(str)) {
                this.f296k.l0(((Date) obj).getTime());
                return;
            }
            DateFormat dateFormatN = n();
            if (dateFormatN == null) {
                if (str != null) {
                    try {
                        dateFormatN = m(str);
                    } catch (IllegalArgumentException unused) {
                        dateFormatN = m(str.replaceAll("T", "'T'"));
                    }
                } else {
                    String str2 = this.f301p;
                    dateFormatN = str2 != null ? m(str2) : m(com.alibaba.fastjson.a.DEFFAULT_DATE_FORMAT);
                }
            }
            this.f296k.q0(dateFormatN.format((Date) obj));
            return;
        }
        if (!(obj instanceof byte[])) {
            if (!(obj instanceof Collection)) {
                A(obj);
                return;
            }
            Collection collection = (Collection) obj;
            Iterator it = collection.iterator();
            this.f296k.write(91);
            for (int i11 = 0; i11 < collection.size(); i11++) {
                Object next = it.next();
                if (i11 != 0) {
                    this.f296k.write(44);
                }
                G(next, str);
            }
            this.f296k.write(93);
            return;
        }
        byte[] bArr = (byte[]) obj;
        if (!"gzip".equals(str) && !"gzip,base64".equals(str)) {
            if ("hex".equals(str)) {
                this.f296k.g0(bArr);
                return;
            } else {
                this.f296k.t(bArr);
                return;
            }
        }
        GZIPOutputStream gZIPOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                gZIPOutputStream = bArr.length < 512 ? new GZIPOutputStream(byteArrayOutputStream, bArr.length) : new GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.finish();
                this.f296k.t(byteArrayOutputStream.toByteArray());
                com.alibaba.fastjson.util.f.a(gZIPOutputStream);
            } catch (IOException e11) {
                throw new JSONException("write gzipBytes error", e11);
            }
        } catch (Throwable th2) {
            com.alibaba.fastjson.util.f.a(gZIPOutputStream);
            throw th2;
        }
    }

    public void j(SerializerFeature serializerFeature, boolean z10) {
        this.f296k.l(serializerFeature, z10);
    }

    public boolean k(Object obj) {
        e1 e1Var;
        IdentityHashMap identityHashMap = this.f302q;
        if (identityHashMap == null || (e1Var = (e1) identityHashMap.get(obj)) == null || obj == Collections.emptyMap()) {
            return false;
        }
        Object obj2 = e1Var.f196c;
        return obj2 == null || (obj2 instanceof Integer) || (obj2 instanceof String);
    }

    public void l() {
        this.f297l--;
    }

    public DateFormat n() {
        String str;
        if (this.f300o == null && (str = this.f299n) != null) {
            this.f300o = m(str);
        }
        return this.f300o;
    }

    public String o() {
        DateFormat dateFormat = this.f300o;
        return dateFormat instanceof SimpleDateFormat ? ((SimpleDateFormat) dateFormat).toPattern() : this.f299n;
    }

    public String p() {
        return this.f301p;
    }

    public z0 q(Class cls) {
        return this.f295j.h(cls);
    }

    public j1 r() {
        return this.f296k;
    }

    public void s() {
        this.f297l++;
    }

    public boolean t(SerializerFeature serializerFeature) {
        return this.f296k.q(serializerFeature);
    }

    public String toString() {
        return this.f296k.toString();
    }

    public final boolean u(Type type, Object obj) {
        e1 e1Var;
        return this.f296k.q(SerializerFeature.WriteClassName) && !(type == null && this.f296k.q(SerializerFeature.NotWriteRootClassName) && ((e1Var = this.f303r) == null || e1Var.f194a == null));
    }

    public void v() {
        this.f296k.write(10);
        for (int i11 = 0; i11 < this.f297l; i11++) {
            this.f296k.write(this.f298m);
        }
    }

    public void w(e1 e1Var, Object obj, Object obj2, int i11) {
        x(e1Var, obj, obj2, i11, 0);
    }

    public void x(e1 e1Var, Object obj, Object obj2, int i11, int i12) {
        if (this.f296k.f274h) {
            return;
        }
        this.f303r = new e1(e1Var, obj, obj2, i11, i12);
        if (this.f302q == null) {
            this.f302q = new IdentityHashMap();
        }
        this.f302q.put(obj, this.f303r);
    }

    public void y(String str) {
        this.f299n = str;
        if (this.f300o != null) {
            this.f300o = null;
        }
    }

    public void z(String str) {
        this.f301p = str;
    }
}
