package a5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class g0 implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.alibaba.fastjson.util.d f206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final boolean f207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f211f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected p f212g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f213h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected boolean f214i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected boolean f215j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected boolean f216k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected boolean f217l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected boolean f218m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected boolean f219n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a f220o;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final z0 f221a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Class f222b;

        public a(z0 z0Var, Class cls) {
            this.f221a = z0Var;
            this.f222b = cls;
        }
    }

    public g0(Class cls, com.alibaba.fastjson.util.d dVar) {
        boolean z10;
        x4.d dVar2;
        this.f214i = false;
        this.f215j = false;
        this.f216k = false;
        this.f218m = false;
        this.f206a = dVar;
        this.f212g = new p(cls, dVar);
        if (cls != null && (dVar2 = (x4.d) TypeUtils.N(cls, x4.d.class)) != null) {
            for (SerializerFeature serializerFeature : dVar2.serialzeFeatures()) {
                if (serializerFeature == SerializerFeature.WriteEnumUsingToString) {
                    this.f214i = true;
                } else if (serializerFeature == SerializerFeature.WriteEnumUsingName) {
                    this.f215j = true;
                } else if (serializerFeature == SerializerFeature.DisableCircularReferenceDetect) {
                    this.f216k = true;
                } else {
                    SerializerFeature serializerFeature2 = SerializerFeature.BrowserCompatible;
                    if (serializerFeature == serializerFeature2) {
                        this.f208c |= serializerFeature2.mask;
                        this.f219n = true;
                    } else {
                        SerializerFeature serializerFeature3 = SerializerFeature.WriteMapNullValue;
                        if (serializerFeature == serializerFeature3) {
                            this.f208c |= serializerFeature3.mask;
                        }
                    }
                }
            }
        }
        dVar.p();
        this.f209d = '\"' + dVar.f18197a + "\":";
        x4.b bVarE = dVar.e();
        if (bVarE != null) {
            SerializerFeature[] serializerFeatureArrSerialzeFeatures = bVarE.serialzeFeatures();
            int length = serializerFeatureArrSerialzeFeatures.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    z10 = false;
                    break;
                } else {
                    if ((serializerFeatureArrSerialzeFeatures[i11].getMask() & SerializerFeature.WRITE_MAP_NULL_FEATURES) != 0) {
                        z10 = true;
                        break;
                    }
                    i11++;
                }
            }
            String str = bVarE.format();
            this.f213h = str;
            if (str.trim().length() == 0) {
                this.f213h = null;
            }
            for (SerializerFeature serializerFeature4 : bVarE.serialzeFeatures()) {
                if (serializerFeature4 == SerializerFeature.WriteEnumUsingToString) {
                    this.f214i = true;
                } else if (serializerFeature4 == SerializerFeature.WriteEnumUsingName) {
                    this.f215j = true;
                } else if (serializerFeature4 == SerializerFeature.DisableCircularReferenceDetect) {
                    this.f216k = true;
                } else if (serializerFeature4 == SerializerFeature.BrowserCompatible) {
                    this.f219n = true;
                }
            }
            this.f208c = SerializerFeature.of(bVarE.serialzeFeatures()) | this.f208c;
        } else {
            z10 = false;
        }
        this.f207b = z10;
        this.f218m = TypeUtils.n0(dVar.f18198b) || TypeUtils.m0(dVar.f18198b);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(g0 g0Var) {
        return this.f206a.compareTo(g0Var.f206a);
    }

    public Object b(Object obj) {
        Object objD = this.f206a.d(obj);
        if (this.f213h == null || objD == null) {
            return objD;
        }
        Class cls = this.f206a.f18201e;
        if (cls != Date.class && cls != java.sql.Date.class) {
            return objD;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.f213h, com.alibaba.fastjson.a.defaultLocale);
        simpleDateFormat.setTimeZone(com.alibaba.fastjson.a.defaultTimeZone);
        return simpleDateFormat.format(objD);
    }

    public Object d(Object obj) {
        Object objD = this.f206a.d(obj);
        if (!this.f218m || TypeUtils.q0(objD)) {
            return objD;
        }
        return null;
    }

    public void e(o0 o0Var) {
        j1 j1Var = o0Var.f296k;
        if (!j1Var.f272f) {
            if (this.f211f == null) {
                this.f211f = this.f206a.f18197a + ":";
            }
            j1Var.write(this.f211f);
            return;
        }
        if (!SerializerFeature.isEnabled(j1Var.f269c, this.f206a.f18205i, SerializerFeature.UseSingleQuotes)) {
            j1Var.write(this.f209d);
            return;
        }
        if (this.f210e == null) {
            this.f210e = '\'' + this.f206a.f18197a + "':";
        }
        j1Var.write(this.f210e);
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0082  */
    public void f(o0 o0Var, Object obj) throws Throwable {
        Class cls;
        Class<?> cls2;
        z0 z0VarQ;
        if (this.f220o == null) {
            if (obj == null) {
                cls2 = this.f206a.f18201e;
                if (cls2 == Byte.TYPE) {
                    cls2 = Byte.class;
                } else if (cls2 == Short.TYPE) {
                    cls2 = Short.class;
                } else if (cls2 == Integer.TYPE) {
                    cls2 = Integer.class;
                } else if (cls2 == Long.TYPE) {
                    cls2 = Long.class;
                } else if (cls2 == Float.TYPE) {
                    cls2 = Float.class;
                } else if (cls2 == Double.TYPE) {
                    cls2 = Double.class;
                } else if (cls2 == Boolean.TYPE) {
                    cls2 = Boolean.class;
                }
            } else {
                cls2 = obj.getClass();
            }
            x4.b bVarE = this.f206a.e();
            if (bVarE == null || bVarE.serializeUsing() == Void.class) {
                if (this.f213h == null) {
                    z0VarQ = null;
                } else if (cls2 == Double.TYPE || cls2 == Double.class) {
                    z0VarQ = new d0(this.f213h);
                } else if (cls2 == Float.TYPE || cls2 == Float.class) {
                    z0VarQ = new h0(this.f213h);
                } else {
                    z0VarQ = null;
                }
                if (z0VarQ == null) {
                    z0VarQ = o0Var.q(cls2);
                }
            } else {
                z0VarQ = (z0) bVarE.serializeUsing().newInstance();
                this.f217l = true;
            }
            this.f220o = new a(z0VarQ, cls2);
        }
        a aVar = this.f220o;
        int i11 = (this.f216k ? this.f206a.f18205i | SerializerFeature.DisableCircularReferenceDetect.mask : this.f206a.f18205i) | this.f208c;
        if (obj == null) {
            j1 j1Var = o0Var.f296k;
            if (this.f206a.f18201e == Object.class && j1Var.p(SerializerFeature.WRITE_MAP_NULL_FEATURES)) {
                j1Var.m0();
                return;
            }
            Class cls3 = aVar.f222b;
            if (Number.class.isAssignableFrom(cls3)) {
                j1Var.o0(this.f208c, SerializerFeature.WriteNullNumberAsZero.mask);
                return;
            }
            if (String.class == cls3) {
                j1Var.o0(this.f208c, SerializerFeature.WriteNullStringAsEmpty.mask);
                return;
            }
            if (Boolean.class == cls3) {
                j1Var.o0(this.f208c, SerializerFeature.WriteNullBooleanAsFalse.mask);
                return;
            }
            if (Collection.class.isAssignableFrom(cls3) || cls3.isArray()) {
                j1Var.o0(this.f208c, SerializerFeature.WriteNullListAsEmpty.mask);
                return;
            }
            z0 z0Var = aVar.f221a;
            if (j1Var.p(SerializerFeature.WRITE_MAP_NULL_FEATURES) && (z0Var instanceof p0)) {
                j1Var.m0();
                return;
            } else {
                com.alibaba.fastjson.util.d dVar = this.f206a;
                z0Var.d(o0Var, null, dVar.f18197a, dVar.f18202f, i11);
                return;
            }
        }
        if (this.f206a.f18213q) {
            if (this.f215j) {
                o0Var.f296k.q0(((Enum) obj).name());
                return;
            } else if (this.f214i) {
                o0Var.f296k.q0(((Enum) obj).toString());
                return;
            }
        }
        Class<?> cls4 = obj.getClass();
        z0 z0VarQ2 = (cls4 == aVar.f222b || this.f217l) ? aVar.f221a : o0Var.q(cls4);
        String str = this.f213h;
        if (str != null && !(z0VarQ2 instanceof d0) && !(z0VarQ2 instanceof h0)) {
            if (z0VarQ2 instanceof a0) {
                ((a0) z0VarQ2).a(o0Var, obj, this.f212g);
                return;
            } else {
                o0Var.G(obj, str);
                return;
            }
        }
        com.alibaba.fastjson.util.d dVar2 = this.f206a;
        if (dVar2.f18215s) {
            if (z0VarQ2 instanceof p0) {
                ((p0) z0VarQ2).t(o0Var, obj, dVar2.f18197a, dVar2.f18202f, i11, true);
                return;
            } else if (z0VarQ2 instanceof v0) {
                ((v0) z0VarQ2).j(o0Var, obj, dVar2.f18197a, dVar2.f18202f, i11, true);
                return;
            }
        }
        if ((this.f208c & SerializerFeature.WriteClassName.mask) != 0 && cls4 != dVar2.f18201e && (z0VarQ2 instanceof p0)) {
            ((p0) z0VarQ2).t(o0Var, obj, dVar2.f18197a, dVar2.f18202f, i11, false);
            return;
        }
        if (this.f219n && ((cls = dVar2.f18201e) == Long.TYPE || cls == Long.class)) {
            long jLongValue = ((Long) obj).longValue();
            if (jLongValue > 9007199254740991L || jLongValue < -9007199254740991L) {
                o0Var.r().q0(Long.toString(jLongValue));
                return;
            }
        }
        com.alibaba.fastjson.util.d dVar3 = this.f206a;
        z0VarQ2.d(o0Var, obj, dVar3.f18197a, dVar3.f18202f, i11);
    }
}
