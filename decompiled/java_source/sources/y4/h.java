package y4;

import a5.c0;
import a5.d1;
import a5.h0;
import a5.i0;
import a5.j0;
import a5.k1;
import a5.m;
import a5.q0;
import a5.r;
import a5.s;
import a5.t;
import a5.u;
import a5.u0;
import a5.v;
import a5.w;
import a5.w0;
import a5.x;
import a5.y0;
import a5.z;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.asm.TypeCollector;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.ParameterizedTypeImpl;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.AccessControlException;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.sql.DataSource;
import javax.sql.RowSet;
import javax.xml.datatype.XMLGregorianCalendar;
import z4.a2;
import z4.b2;
import z4.d3;
import z4.f3;
import z4.g3;
import z4.i3;
import z4.j3;
import z4.k3;
import z4.l;
import z4.l3;
import z4.n;
import z4.o;
import z4.p;
import z4.y1;
import z4.z1;

/* JADX INFO: loaded from: classes3.dex */
public class h {
    private static boolean A;
    private static boolean B;
    private static boolean C;
    private static boolean D;
    private static com.alibaba.fastjson.util.e E;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final String[] f78874v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final long[] f78877y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static h f78878z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.alibaba.fastjson.util.g f78879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.alibaba.fastjson.util.g f78880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConcurrentMap f78881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f78882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final i f78883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public PropertyNamingStrategy f78884f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected ClassLoader f78885g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected z4.a f78886h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f78887i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long[] f78888j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long[] f78889k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long[] f78890l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f78891m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f78892n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f78893o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List f78894p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile List f78895q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f78896r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Callable f78897s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String[] f78872t = B(com.alibaba.fastjson.util.f.j("fastjson.parser.deny.internal"));

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String[] f78873u = B(com.alibaba.fastjson.util.f.j("fastjson.parser.deny"));

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final boolean f78875w = "true".equals(com.alibaba.fastjson.util.f.j("fastjson.parser.autoTypeSupport"));

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final boolean f78876x = "true".equals(com.alibaba.fastjson.util.f.j("fastjson.parser.safeMode"));

    class a implements Callable {
        a() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() {
            h.this.f78879a.c(Timestamp.class, i3.f79240c);
            h.this.f78879a.c(Date.class, i3.f79239b);
            h.this.f78879a.c(Time.class, l3.f79245a);
            h.this.f78879a.c(java.util.Date.class, c0.f188a);
            return null;
        }
    }

    static class b implements com.alibaba.fastjson.util.e {
        b() {
        }

        @Override // com.alibaba.fastjson.util.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean apply(Class cls) {
            return Boolean.valueOf(cls == Date.class || cls == Time.class || cls == Timestamp.class);
        }
    }

    public interface c {
    }

    static {
        String[] strArrB = B(com.alibaba.fastjson.util.f.j("fastjson.parser.autoTypeAccept"));
        if (strArrB == null) {
            strArrB = new String[0];
        }
        f78874v = strArrB;
        f78877y = new long[]{-6976602508726000783L, -6293031534589903644L, 59775428743665658L, 7267793227937552092L};
        f78878z = new h();
        A = false;
        B = false;
        C = false;
        D = false;
        E = new b();
    }

    public h() {
        this(false);
    }

    private h(z4.a aVar, ClassLoader classLoader, boolean z10) {
        this.f78879a = new com.alibaba.fastjson.util.g();
        this.f78880b = new com.alibaba.fastjson.util.g(16);
        this.f78881c = new ConcurrentHashMap(16, 0.75f, 1);
        this.f78882d = !com.alibaba.fastjson.util.b.f18196b;
        this.f78883e = new i(4096);
        this.f78887i = f78875w;
        this.f78892n = false;
        this.f78893o = TypeUtils.f18168b;
        this.f78894p = new ArrayList();
        this.f78896r = f78876x;
        this.f78889k = new long[]{-9164606388214699518L, -8754006975464705441L, -8720046426850100497L, -8649961213709896794L, -8614556368991373401L, -8382625455832334425L, -8165637398350707645L, -8109300701639721088L, -7966123100503199569L, -7921218830998286408L, -7775351613326101303L, -7768608037458185275L, -7766605818834748097L, -6835437086156813536L, -6316154655839304624L, -6179589609550493385L, -6149130139291498841L, -6149093380703242441L, -6088208984980396913L, -6025144546313590215L, -5939269048541779808L, -5885964883385605994L, -5767141746063564198L, -5764804792063216819L, -5472097725414717105L, -5194641081268104286L, -5076846148177416215L, -4837536971810737970L, -4836620931940850535L, -4733542790109620528L, -4703320437989596122L, -4608341446948126581L, -4537258998789938600L, -4438775680185074100L, -4314457471973557243L, -4150995715611818742L, -4082057040235125754L, -3975378478825053783L, -3967588558552655563L, -3935185854875733362L, -3750763034362895579L, -3319207949486691020L, -3077205613010077203L, -3053747177772160511L, -2995060141064716555L, -2825378362173150292L, -2533039401923731906L, -2439930098895578154L, -2378990704010641148L, -2364987994247679115L, -2262244760619952081L, -2192804397019347313L, -2095516571388852610L, -1872417015366588117L, -1800035667138631116L, -1650485814983027158L, -1589194880214235129L, -1363634950764737555L, -965955008570215305L, -905177026366752536L, -831789045734283466L, -803541446955902575L, -731978084025273882L, -666475508176557463L, -582813228520337988L, -254670111376247151L, -219577392946377768L, -190281065685395680L, -26639035867733124L, -9822483067882491L, 4750336058574309L, 33238344207745342L, 156405680656087946L, 218512992947536312L, 313864100207897507L, 386461436234701831L, 744602970950881621L, 823641066473609950L, 860052378298585747L, 1073634739308289776L, 1153291637701043748L, 1203232727967308606L, 1214780596910349029L, 1268707909007641340L, 1459860845934817624L, 1502845958873959152L, 1534439610567445754L, 1698504441317515818L, 1818089308493370394L, 2078113382421334967L, 2164696723069287854L, 2622551729063269307L, 2653453629929770569L, 2660670623866180977L, 2731823439467737506L, 2836431254737891113L, 2930861374593775110L, 3058452313624178956L, 3085473968517218653L, 3089451460101527857L, 3114862868117605599L, 3129395579983849527L, 3256258368248066264L, 3452379460455804429L, 3547627781654598988L, 3637939656440441093L, 3688179072722109200L, 3718352661124136681L, 3730752432285826863L, 3740226159580918099L, 3794316665763266033L, 3977090344859527316L, 4000049462512838776L, 4046190361520671643L, 4147696707147271408L, 4193204392725694463L, 4215053018660518963L, 4241163808635564644L, 4254584350247334433L, 4319304524795015394L, 4814658433570175913L, 4841947709850912914L, 4904007817188630457L, 5100336081510080343L, 5120543992130540564L, 5274044858141538265L, 5347909877633654828L, 5450448828334921485L, 5474268165959054640L, 5545425291794704408L, 5596129856135573697L, 5688200883751798389L, 5751393439502795295L, 5916409771425455946L, 5944107969236155580L, 6007332606592876737L, 6090377589998869205L, 6280357960959217660L, 6456855723474196908L, 6511035576063254270L, 6534946468240507089L, 6584624952928234050L, 6734240326434096246L, 6742705432718011780L, 6800727078373023163L, 6854854816081053523L, 7045245923763966215L, 7123326897294507060L, 7164889056054194741L, 7179336928365889465L, 7240293012336844478L, 7347653049056829645L, 7375862386996623731L, 7442624256860549330L, 7617522210483516279L, 7658177784286215602L, 8055461369741094911L, 8064026652676081192L, 8389032537095247355L, 8409640769019589119L, 8488266005336625107L, 8537233257283452655L, 8711531061028787095L, 8735538376409180149L, 8838294710098435315L, 8861402923078831179L, 9140390920032557669L, 9140416208800006522L, 9144212112462101475L};
        long[] jArr = new long[f78874v.length];
        int i11 = 0;
        while (true) {
            String[] strArr = f78874v;
            if (i11 >= strArr.length) {
                break;
            }
            jArr[i11] = TypeUtils.J(strArr[i11]);
            i11++;
        }
        Arrays.sort(jArr);
        this.f78890l = jArr;
        this.f78897s = new a();
        this.f78891m = z10;
        if (aVar == null && !com.alibaba.fastjson.util.b.f18196b) {
            try {
                aVar = classLoader == null ? new z4.a(new com.alibaba.fastjson.util.a()) : new z4.a(classLoader);
            } catch (ExceptionInInitializerError | NoClassDefFoundError | AccessControlException unused) {
            }
        }
        this.f78886h = aVar;
        if (aVar == null) {
            this.f78882d = false;
        }
        u();
        f(f78873u);
        g(f78872t);
        e(f78874v);
    }

    public h(boolean z10) {
        this(null, null, z10);
    }

    private static String[] B(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return str.split(",");
    }

    private void e(String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            b(str);
        }
    }

    private void f(String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            c(str);
        }
    }

    private void g(String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            d(str);
        }
    }

    private static Method q(Class cls, Class cls2) {
        for (Method method : cls.getMethods()) {
            if (Modifier.isStatic(method.getModifiers()) && method.getReturnType() == cls2 && method.getParameterTypes().length == 1 && ((x4.a) method.getAnnotation(x4.a.class)) != null) {
                return method;
            }
        }
        return null;
    }

    public static Field s(String str, Map map) {
        Field field = (Field) map.get(str);
        if (field == null) {
            field = (Field) map.get("_" + str);
        }
        if (field == null) {
            field = (Field) map.get("m_" + str);
        }
        if (field != null) {
            return field;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] - ' ');
            field = (Field) map.get(new String(charArray));
        }
        if (str.length() <= 2) {
            return field;
        }
        char cCharAt2 = str.charAt(1);
        if (cCharAt < 'a' || cCharAt > 'z' || cCharAt2 < 'A' || cCharAt2 > 'Z') {
            return field;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                return (Field) entry.getValue();
            }
        }
        return field;
    }

    public static h t() {
        return f78878z;
    }

    private void u() {
        com.alibaba.fastjson.util.g gVar = this.f78879a;
        w0 w0Var = w0.f356b;
        gVar.c(SimpleDateFormat.class, w0Var);
        com.alibaba.fastjson.util.g gVar2 = this.f78879a;
        v vVar = v.f351b;
        gVar2.c(Calendar.class, vVar);
        this.f78879a.c(XMLGregorianCalendar.class, vVar);
        this.f78879a.c(JSONObject.class, z1.f79278a);
        com.alibaba.fastjson.util.g gVar3 = this.f78879a;
        z zVar = z.f362a;
        gVar3.c(JSONArray.class, zVar);
        this.f78879a.c(Map.class, z1.f79278a);
        this.f78879a.c(HashMap.class, z1.f79278a);
        this.f78879a.c(LinkedHashMap.class, z1.f79278a);
        this.f78879a.c(TreeMap.class, z1.f79278a);
        this.f78879a.c(ConcurrentMap.class, z1.f79278a);
        this.f78879a.c(ConcurrentHashMap.class, z1.f79278a);
        this.f78879a.c(Collection.class, zVar);
        this.f78879a.c(List.class, zVar);
        this.f78879a.c(ArrayList.class, zVar);
        com.alibaba.fastjson.util.g gVar4 = this.f78879a;
        p pVar = p.f79256a;
        gVar4.c(Object.class, pVar);
        this.f78879a.c(String.class, k1.f287a);
        this.f78879a.c(StringBuffer.class, k1.f287a);
        this.f78879a.c(StringBuilder.class, k1.f287a);
        com.alibaba.fastjson.util.g gVar5 = this.f78879a;
        Class cls = Character.TYPE;
        x xVar = x.f359a;
        gVar5.c(cls, xVar);
        this.f78879a.c(Character.class, xVar);
        com.alibaba.fastjson.util.g gVar6 = this.f78879a;
        Class cls2 = Byte.TYPE;
        a2 a2Var = a2.f79219a;
        gVar6.c(cls2, a2Var);
        this.f78879a.c(Byte.class, a2Var);
        this.f78879a.c(Short.TYPE, a2Var);
        this.f78879a.c(Short.class, a2Var);
        this.f78879a.c(Integer.TYPE, j0.f260a);
        this.f78879a.c(Integer.class, j0.f260a);
        this.f78879a.c(Long.TYPE, u0.f350a);
        this.f78879a.c(Long.class, u0.f350a);
        this.f78879a.c(BigInteger.class, s.f343c);
        this.f78879a.c(BigDecimal.class, r.f340c);
        this.f78879a.c(Float.TYPE, h0.f240b);
        this.f78879a.c(Float.class, h0.f240b);
        this.f78879a.c(Double.TYPE, a2Var);
        this.f78879a.c(Double.class, a2Var);
        com.alibaba.fastjson.util.g gVar7 = this.f78879a;
        Class cls3 = Boolean.TYPE;
        t tVar = t.f344a;
        gVar7.c(cls3, tVar);
        this.f78879a.c(Boolean.class, tVar);
        this.f78879a.c(Class.class, w0Var);
        this.f78879a.c(char[].class, new w());
        this.f78879a.c(AtomicBoolean.class, tVar);
        this.f78879a.c(AtomicInteger.class, j0.f260a);
        this.f78879a.c(AtomicLong.class, u0.f350a);
        com.alibaba.fastjson.util.g gVar8 = this.f78879a;
        d1 d1Var = d1.f191a;
        gVar8.c(AtomicReference.class, d1Var);
        this.f78879a.c(WeakReference.class, d1Var);
        this.f78879a.c(SoftReference.class, d1Var);
        this.f78879a.c(UUID.class, w0Var);
        this.f78879a.c(TimeZone.class, w0Var);
        this.f78879a.c(Locale.class, w0Var);
        this.f78879a.c(Currency.class, w0Var);
        this.f78879a.c(Inet4Address.class, w0Var);
        this.f78879a.c(Inet6Address.class, w0Var);
        this.f78879a.c(InetSocketAddress.class, w0Var);
        this.f78879a.c(File.class, w0Var);
        this.f78879a.c(URI.class, w0Var);
        this.f78879a.c(URL.class, w0Var);
        this.f78879a.c(Pattern.class, w0Var);
        this.f78879a.c(Charset.class, w0Var);
        this.f78879a.c(JSONPath.class, w0Var);
        this.f78879a.c(Number.class, a2Var);
        com.alibaba.fastjson.util.g gVar9 = this.f78879a;
        m mVar = m.f292a;
        gVar9.c(AtomicIntegerArray.class, mVar);
        this.f78879a.c(AtomicLongArray.class, mVar);
        this.f78879a.c(StackTraceElement.class, j3.f79242a);
        this.f78879a.c(Serializable.class, pVar);
        this.f78879a.c(Cloneable.class, pVar);
        this.f78879a.c(Comparable.class, pVar);
        this.f78879a.c(Closeable.class, pVar);
        this.f78879a.c(com.alibaba.fastjson.c.class, new n());
        com.alibaba.fastjson.util.i.c(this.f78897s);
    }

    public static boolean w(Class cls) {
        boolean z10 = cls.isPrimitive() || cls == Boolean.class || cls == Character.class || cls == Byte.class || cls == Short.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == String.class || cls == java.util.Date.class || cls.isEnum();
        Boolean boolValueOf = Boolean.valueOf(z10);
        if (!z10) {
            boolValueOf = (Boolean) com.alibaba.fastjson.util.i.b(E, cls);
        }
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    public static void y(Class cls, Map map) {
        for (Field field : cls.getDeclaredFields()) {
            String name = field.getName();
            if (!map.containsKey(name)) {
                map.put(name, field);
            }
        }
        if (cls.getSuperclass() == null || cls.getSuperclass() == Object.class) {
            return;
        }
        y(cls.getSuperclass(), map);
    }

    public void A(boolean z10) {
        this.f78882d = z10;
    }

    public void b(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long J = TypeUtils.J(str);
        if (Arrays.binarySearch(this.f78890l, J) >= 0) {
            return;
        }
        long[] jArr = this.f78890l;
        int length = jArr.length;
        long[] jArr2 = new long[length + 1];
        jArr2[length] = J;
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        Arrays.sort(jArr2);
        this.f78890l = jArr2;
    }

    public void c(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long J = TypeUtils.J(str);
        if (Arrays.binarySearch(this.f78889k, J) >= 0) {
            return;
        }
        long[] jArr = this.f78889k;
        int length = jArr.length;
        long[] jArr2 = new long[length + 1];
        jArr2[length] = J;
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        Arrays.sort(jArr2);
        this.f78889k = jArr2;
    }

    public void d(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long J = TypeUtils.J(str);
        long[] jArr = this.f78888j;
        if (jArr == null) {
            this.f78888j = new long[]{J};
            return;
        }
        if (Arrays.binarySearch(jArr, J) >= 0) {
            return;
        }
        long[] jArr2 = this.f78888j;
        int length = jArr2.length;
        long[] jArr3 = new long[1 + length];
        jArr3[length] = J;
        System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
        Arrays.sort(jArr3);
        this.f78888j = jArr3;
    }

    public Class h(Class cls) {
        return m(cls) != null ? cls : j(cls.getName(), null, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    public Class i(String str, Class cls) {
        return j(str, cls, com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE);
    }

    /* JADX WARN: Code duplicated, block: B:173:0x030b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:175:0x030f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:176:0x0311 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:179:0x0316  */
    /* JADX WARN: Code duplicated, block: B:182:0x031f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:183:0x0321 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:184:0x0323  */
    /* JADX WARN: Code duplicated, block: B:186:0x0327  */
    /* JADX WARN: Code duplicated, block: B:188:0x032f  */
    /* JADX WARN: Code duplicated, block: B:209:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:211:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:213:0x03b1 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:217:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:218:0x03cb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:32:0x005e  */
    public Class j(String str, Class cls, int i11) throws Throwable {
        boolean z10;
        InputStream resourceAsStream;
        boolean z11;
        boolean zC;
        boolean z12;
        long j11;
        Class clsC0;
        if (str == null) {
            return null;
        }
        if (this.f78895q != null) {
            Iterator it = this.f78895q.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
        int i12 = Feature.SafeMode.mask;
        if (this.f78896r || (i11 & i12) != 0 || (i12 & com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE) != 0) {
            throw new JSONException("safeMode not support autoType : " + str);
        }
        int i13 = Feature.SupportAutoType.mask;
        boolean z13 = true;
        boolean z14 = (!this.f78887i && (i11 & i13) == 0 && (i13 & com.alibaba.fastjson.a.DEFAULT_PARSER_FEATURE) == 0) ? false : true;
        if (str.length() >= 192 || str.length() < 3) {
            throw new JSONException("autoType is not support. " + str);
        }
        if (cls == null) {
            z10 = false;
        } else {
            long J = TypeUtils.J(cls.getName());
            if (J == -8024746738719829346L || J == 3247277300971823414L || J == -5811778396720452501L || J == -1368967840069965882L || J == 2980334044947851925L || J == 5183404141909004468L || J == 7222019943667248779L || J == -2027296626235911549L || J == -2114196234051346931L || J == -2939497380989775398L) {
                z10 = false;
            } else {
                z10 = true;
            }
        }
        String strReplace = str.replace('$', '.');
        long jCharAt = (((long) strReplace.charAt(0)) ^ (-3750763034362895579L)) * 1099511628211L;
        if (jCharAt == -5808493101479473382L) {
            throw new JSONException("autoType is not support. " + str);
        }
        boolean z15 = z14;
        if ((((long) strReplace.charAt(strReplace.length() - 1)) ^ jCharAt) * 1099511628211L == 655701488918567152L) {
            throw new JSONException("autoType is not support. " + str);
        }
        long jCharAt2 = (((((((long) strReplace.charAt(0)) ^ (-3750763034362895579L)) * 1099511628211L) ^ ((long) strReplace.charAt(1))) * 1099511628211L) ^ ((long) strReplace.charAt(2))) * 1099511628211L;
        long J2 = TypeUtils.J(strReplace);
        boolean z16 = Arrays.binarySearch(f78877y, J2) >= 0;
        if (this.f78888j != null) {
            long j12 = jCharAt2;
            int i14 = 3;
            while (i14 < strReplace.length()) {
                long j13 = J2;
                long jCharAt3 = (j12 ^ ((long) strReplace.charAt(i14))) * 1099511628211L;
                if (Arrays.binarySearch(this.f78888j, jCharAt3) >= 0) {
                    throw new JSONException("autoType is not support. " + str);
                }
                i14++;
                j12 = jCharAt3;
                J2 = j13;
            }
        }
        long j14 = J2;
        if (!z16 && (z15 || z10)) {
            long jCharAt4 = jCharAt2;
            int i15 = 3;
            while (i15 < strReplace.length()) {
                jCharAt4 = (jCharAt4 ^ ((long) strReplace.charAt(i15))) * 1099511628211L;
                if (Arrays.binarySearch(this.f78890l, jCharAt4) >= 0 && (clsC0 = TypeUtils.C0(str, this.f78885g, z13)) != null) {
                    return clsC0;
                }
                if (Arrays.binarySearch(this.f78889k, jCharAt4) < 0 || TypeUtils.R(str) != null) {
                    j11 = j14;
                } else {
                    j11 = j14;
                    if (Arrays.binarySearch(this.f78890l, j11) < 0) {
                        throw new JSONException("autoType is not support. " + str);
                    }
                }
                i15++;
                j14 = j11;
                z13 = true;
            }
        }
        Class clsR = TypeUtils.R(str);
        if (clsR == null) {
            clsR = this.f78879a.a(str);
        }
        if (cls == null && clsR != null && Throwable.class.isAssignableFrom(clsR) && !z15) {
            clsR = null;
        }
        if (clsR == null) {
            clsR = (Class) this.f78881c.get(str);
        }
        if (z16) {
            clsR = TypeUtils.C0(str, this.f78885g, true);
        }
        if (clsR != null) {
            if (cls == null || clsR == HashMap.class || clsR == LinkedHashMap.class || cls.isAssignableFrom(clsR)) {
                return clsR;
            }
            throw new JSONException("type not match. " + str + " -> " + cls.getName());
        }
        if (!z15) {
            for (int i16 = 3; i16 < strReplace.length(); i16++) {
                jCharAt2 = (jCharAt2 ^ ((long) strReplace.charAt(i16))) * 1099511628211L;
                if (Arrays.binarySearch(this.f78889k, jCharAt2) >= 0) {
                    if (str.endsWith("Exception") || str.endsWith("Error")) {
                        return null;
                    }
                    throw new JSONException("autoType is not support. " + str);
                }
                if (Arrays.binarySearch(this.f78890l, jCharAt2) >= 0) {
                    Class<?> clsC1 = TypeUtils.C0(str, this.f78885g, true);
                    if (clsC1 == null) {
                        return cls;
                    }
                    if (cls == null || !cls.isAssignableFrom(clsC1)) {
                        return clsC1;
                    }
                    throw new JSONException("type not match. " + str + " -> " + cls.getName());
                }
            }
        }
        try {
            try {
                String str2 = str.replace('.', '/') + ".class";
                ClassLoader classLoader = this.f78885g;
                if (classLoader != null) {
                    try {
                        resourceAsStream = classLoader.getResourceAsStream(str2);
                    } catch (Exception unused) {
                        resourceAsStream = null;
                        z11 = false;
                        com.alibaba.fastjson.util.f.a(resourceAsStream);
                        zC = z11;
                        if (z15) {
                            if (z15) {
                                z12 = true;
                            } else {
                                z12 = true;
                            }
                            clsR = TypeUtils.C0(str, this.f78885g, z12);
                        } else {
                            if (z15) {
                                z12 = true;
                            } else {
                                z12 = true;
                            }
                            clsR = TypeUtils.C0(str, this.f78885g, z12);
                        }
                        if (clsR != null) {
                            if (zC) {
                                if (z15) {
                                    TypeUtils.b(str, clsR);
                                }
                                return clsR;
                            }
                            if (ClassLoader.class.isAssignableFrom(clsR)) {
                            }
                            throw new JSONException("autoType is not support. " + str);
                        }
                        if (!z15) {
                            if (clsR != null) {
                                TypeUtils.b(str, clsR);
                            }
                            return clsR;
                        }
                        if (str.endsWith("Exception")) {
                            return null;
                        }
                        return null;
                    }
                } else {
                    resourceAsStream = h.class.getClassLoader().getResourceAsStream(str2);
                }
                if (resourceAsStream != null) {
                    try {
                        try {
                            com.alibaba.fastjson.asm.b bVar = new com.alibaba.fastjson.asm.b(resourceAsStream, true);
                            z11 = false;
                            try {
                                TypeCollector typeCollector = new TypeCollector("<clinit>", new Class[0]);
                                bVar.a(typeCollector);
                                zC = typeCollector.c();
                            } catch (Exception unused2) {
                                com.alibaba.fastjson.util.f.a(resourceAsStream);
                                zC = z11;
                            }
                        } catch (Exception unused3) {
                            z11 = false;
                            com.alibaba.fastjson.util.f.a(resourceAsStream);
                            zC = z11;
                            if (z15) {
                                if (z15) {
                                    z12 = true;
                                } else {
                                    z12 = true;
                                }
                                clsR = TypeUtils.C0(str, this.f78885g, z12);
                            } else {
                                if (z15) {
                                    z12 = true;
                                } else {
                                    z12 = true;
                                }
                                clsR = TypeUtils.C0(str, this.f78885g, z12);
                            }
                            if (clsR != null) {
                                if (zC) {
                                    if (z15) {
                                        TypeUtils.b(str, clsR);
                                    }
                                    return clsR;
                                }
                                if (ClassLoader.class.isAssignableFrom(clsR)) {
                                }
                                throw new JSONException("autoType is not support. " + str);
                            }
                            if (!z15) {
                                if (str.endsWith("Exception")) {
                                    return null;
                                }
                                return null;
                            }
                            if (clsR != null) {
                                TypeUtils.b(str, clsR);
                            }
                            return clsR;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        com.alibaba.fastjson.util.f.a(resourceAsStream);
                        throw th;
                    }
                } else {
                    z11 = false;
                    zC = false;
                }
                com.alibaba.fastjson.util.f.a(resourceAsStream);
            } catch (Exception unused4) {
                z11 = false;
                resourceAsStream = null;
            }
            if (z15 || zC || z10) {
                if (z15 || zC) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                clsR = TypeUtils.C0(str, this.f78885g, z12);
            }
            if (clsR != null) {
                if (zC) {
                    if (z15) {
                        TypeUtils.b(str, clsR);
                    }
                    return clsR;
                }
                if (!ClassLoader.class.isAssignableFrom(clsR) || DataSource.class.isAssignableFrom(clsR) || RowSet.class.isAssignableFrom(clsR)) {
                    throw new JSONException("autoType is not support. " + str);
                }
                if (cls != null) {
                    if (cls.isAssignableFrom(clsR)) {
                        if (z15) {
                            TypeUtils.b(str, clsR);
                        }
                        return clsR;
                    }
                    throw new JSONException("type not match. " + str + " -> " + cls.getName());
                }
                if (com.alibaba.fastjson.util.h.b(clsR, clsR, this.f78884f).f18245d != null && z15) {
                    throw new JSONException("autoType is not support. " + str);
                }
            }
            if (!z15) {
                if (clsR != null && z15) {
                    TypeUtils.b(str, clsR);
                }
                return clsR;
            }
            if (str.endsWith("Exception") || str.endsWith("Error")) {
                return null;
            }
            throw new JSONException("autoType is not support. " + str);
        } catch (Throwable th3) {
            th = th3;
            resourceAsStream = null;
        }
    }

    public l k(h hVar, com.alibaba.fastjson.util.h hVar2, com.alibaba.fastjson.util.d dVar) {
        Class clsDeserializeUsing;
        Class cls = hVar2.f18242a;
        Class cls2 = dVar.f18201e;
        x4.b bVarE = dVar.e();
        Class cls3 = null;
        if (bVarE != null && (clsDeserializeUsing = bVarE.deserializeUsing()) != Void.class) {
            cls3 = clsDeserializeUsing;
        }
        return (cls3 == null && (cls2 == List.class || cls2 == ArrayList.class)) ? new z4.c(hVar, cls, dVar) : new z4.f(hVar, cls, dVar);
    }

    public b2 l(Class cls, Type type) {
        x4.b bVarE;
        Method method;
        z4.a aVar;
        boolean zA = this.f78882d & (!this.f78891m);
        if (zA) {
            x4.d dVar = (x4.d) TypeUtils.N(cls, x4.d.class);
            if (dVar != null) {
                Class clsDeserializer = dVar.deserializer();
                if (clsDeserializer != Void.class) {
                    try {
                        Object objNewInstance = clsDeserializer.newInstance();
                        if (objNewInstance instanceof b2) {
                            return (b2) objNewInstance;
                        }
                    } catch (Throwable unused) {
                    }
                }
                zA = dVar.asm() && dVar.parseFeatures().length == 0;
            }
            if (zA) {
                Class clsF = com.alibaba.fastjson.util.h.f(cls, dVar);
                if (clsF == null) {
                    clsF = cls;
                }
                do {
                    if (!Modifier.isPublic(clsF.getModifiers())) {
                        zA = false;
                        break;
                    }
                    clsF = clsF.getSuperclass();
                    if (clsF == Object.class) {
                        break;
                    }
                } while (clsF != null);
            }
        }
        if (cls.getTypeParameters().length != 0) {
            zA = false;
        }
        if (zA && (aVar = this.f78886h) != null && aVar.f79211a.c(cls)) {
            zA = false;
        }
        if (zA) {
            zA = com.alibaba.fastjson.util.b.a(cls.getSimpleName());
        }
        if (zA) {
            if (cls.isInterface()) {
                zA = false;
            }
            com.alibaba.fastjson.util.h hVarC = com.alibaba.fastjson.util.h.c(cls, type, this.f78884f, false, TypeUtils.f18168b, this.f78892n);
            if (zA && hVarC.f18249h.length > 200) {
                zA = false;
            }
            Constructor constructor = hVarC.f18244c;
            if (zA && constructor == null && !cls.isInterface()) {
                zA = false;
            }
            for (com.alibaba.fastjson.util.d dVar2 : hVarC.f18249h) {
                if (!dVar2.f18204h) {
                    Class cls2 = dVar2.f18201e;
                    if (Modifier.isPublic(cls2.getModifiers()) && ((!cls2.isMemberClass() || Modifier.isStatic(cls2.getModifiers())) && ((dVar2.m() == null || com.alibaba.fastjson.util.b.a(dVar2.m().getName())) && (((bVarE = dVar2.e()) == null || (com.alibaba.fastjson.util.b.a(bVarE.name()) && bVarE.format().length() == 0 && bVarE.deserializeUsing() == Void.class && bVarE.parseFeatures().length == 0 && !bVarE.unwrapped())) && (((method = dVar2.f18198b) == null || method.getParameterTypes().length <= 1) && (!cls2.isEnum() || (p(cls2) instanceof z4.h))))))) {
                    }
                }
                zA = false;
                break;
            }
        }
        if (zA && cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
            zA = false;
        }
        if (!((zA && TypeUtils.z0(cls)) ? false : zA)) {
            return new o(this, cls, type);
        }
        com.alibaba.fastjson.util.h hVarB = com.alibaba.fastjson.util.h.b(cls, type, this.f78884f);
        try {
            return this.f78886h.v(this, hVarB);
        } catch (JSONException unused2) {
            return new o(this, hVarB);
        } catch (NoSuchMethodException unused3) {
            return new o(this, cls, type);
        } catch (Exception e11) {
            throw new JSONException("create asm deserializer error, " + cls.getName(), e11);
        }
    }

    public b2 m(Type type) {
        Type mixInAnnotations = com.alibaba.fastjson.a.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            return (b2) this.f78879a.b(type);
        }
        com.alibaba.fastjson.util.g gVar = (com.alibaba.fastjson.util.g) this.f78880b.b(type);
        if (gVar == null) {
            return null;
        }
        return (b2) gVar.b(mixInAnnotations);
    }

    public ClassLoader n() {
        return this.f78885g;
    }

    public b2 o(Class cls, Type type) {
        b2 b2VarL;
        b2 g3Var;
        Class clsMappingTo;
        Type type2 = type;
        b2 b2VarM = m(type2);
        if (b2VarM == null && (type2 instanceof ParameterizedTypeImpl)) {
            b2VarM = m(com.alibaba.fastjson.g.b((ParameterizedTypeImpl) type2));
        }
        if (b2VarM != null) {
            return b2VarM;
        }
        if (type2 == null) {
            type2 = cls;
        }
        b2 b2VarM2 = m(type2);
        if (b2VarM2 != null) {
            return b2VarM2;
        }
        x4.d dVar = (x4.d) TypeUtils.N(cls, x4.d.class);
        if (dVar != null && (clsMappingTo = dVar.mappingTo()) != Void.class) {
            return o(clsMappingTo, clsMappingTo);
        }
        if ((type2 instanceof WildcardType) || (type2 instanceof TypeVariable) || (type2 instanceof ParameterizedType)) {
            b2VarM2 = m(cls);
        }
        if (b2VarM2 != null) {
            return b2VarM2;
        }
        Iterator it = this.f78894p.iterator();
        Method methodQ = null;
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
        String strReplace = cls.getName().replace('$', '.');
        if (strReplace.startsWith("java.awt.") && a5.o.j(cls) && !A) {
            String[] strArr = {"java.awt.Point", "java.awt.Font", "java.awt.Rectangle", "java.awt.Color"};
            for (int i11 = 0; i11 < 4; i11++) {
                try {
                    String str = strArr[i11];
                    if (str.equals(strReplace)) {
                        Class<?> cls2 = Class.forName(str);
                        a5.o oVar = a5.o.f294a;
                        z(cls2, oVar);
                        return oVar;
                    }
                } catch (Throwable unused) {
                    A = true;
                }
            }
            b2VarM2 = a5.o.f294a;
        }
        if (!B) {
            try {
                if (strReplace.startsWith("java.time.")) {
                    String[] strArr2 = {"java.time.LocalDateTime", "java.time.LocalDate", "java.time.LocalTime", "java.time.ZonedDateTime", "java.time.OffsetDateTime", "java.time.OffsetTime", "java.time.ZoneOffset", "java.time.ZoneRegion", "java.time.ZoneId", "java.time.Period", "java.time.Duration", "java.time.Instant"};
                    for (int i12 = 0; i12 < 12; i12++) {
                        String str2 = strArr2[i12];
                        if (str2.equals(strReplace)) {
                            Class<?> cls3 = Class.forName(str2);
                            y1 y1Var = y1.f79257a;
                            z(cls3, y1Var);
                            return y1Var;
                        }
                    }
                } else if (strReplace.startsWith("java.util.Optional")) {
                    String[] strArr3 = {"java.util.Optional", "java.util.OptionalDouble", "java.util.OptionalInt", "java.util.OptionalLong"};
                    for (int i13 = 0; i13 < 4; i13++) {
                        String str3 = strArr3[i13];
                        if (str3.equals(strReplace)) {
                            Class<?> cls4 = Class.forName(str3);
                            d3 d3Var = d3.f79223a;
                            z(cls4, d3Var);
                            return d3Var;
                        }
                    }
                }
            } catch (Throwable unused2) {
                B = true;
            }
        }
        if (!C) {
            try {
                if (strReplace.startsWith("org.joda.time.")) {
                    String[] strArr4 = {"org.joda.time.DateTime", "org.joda.time.LocalDate", "org.joda.time.LocalDateTime", "org.joda.time.LocalTime", "org.joda.time.Instant", "org.joda.time.Period", "org.joda.time.Duration", "org.joda.time.DateTimeZone", "org.joda.time.format.DateTimeFormatter"};
                    for (int i14 = 0; i14 < 9; i14++) {
                        String str4 = strArr4[i14];
                        if (str4.equals(strReplace)) {
                            Class<?> cls5 = Class.forName(str4);
                            b2VarM2 = q0.f317a;
                            z(cls5, b2VarM2);
                            return b2VarM2;
                        }
                    }
                }
            } catch (Throwable unused3) {
                C = true;
            }
        }
        if (!D && strReplace.startsWith("com.google.common.collect.")) {
            try {
                String[] strArr5 = {"com.google.common.collect.HashMultimap", "com.google.common.collect.LinkedListMultimap", "com.google.common.collect.LinkedHashMultimap", "com.google.common.collect.ArrayListMultimap", "com.google.common.collect.TreeMultimap"};
                for (int i15 = 0; i15 < 5; i15++) {
                    String str5 = strArr5[i15];
                    if (str5.equals(strReplace)) {
                        Class<?> cls6 = Class.forName(str5);
                        b2VarM2 = i0.f245a;
                        z(cls6, b2VarM2);
                        return b2VarM2;
                    }
                }
            } catch (ClassNotFoundException unused4) {
                D = true;
            }
        }
        if (strReplace.equals("java.nio.ByteBuffer")) {
            b2VarM2 = u.f346a;
            z(cls, b2VarM2);
        }
        if (strReplace.equals("java.nio.file.Path")) {
            b2VarM2 = w0.f356b;
            z(cls, b2VarM2);
        }
        if (cls == Map.Entry.class) {
            b2VarM2 = w0.f356b;
            z(cls, b2VarM2);
        }
        if (strReplace.equals("org.javamoney.moneta.Money")) {
            b2VarM2 = d5.a.f61233a;
            z(cls, b2VarM2);
        }
        try {
            Iterator it2 = com.alibaba.fastjson.util.l.a(z4.d.class, Thread.currentThread().getContextClassLoader()).iterator();
            if (it2.hasNext()) {
                android.support.v4.media.session.c.a(it2.next());
                throw null;
            }
        } catch (Exception unused5) {
        }
        if (b2VarM2 == null) {
            b2VarM2 = m(type2);
        }
        if (b2VarM2 != null) {
            return b2VarM2;
        }
        if (cls.isEnum()) {
            if (this.f78892n) {
                for (Method method : cls.getMethods()) {
                    if (TypeUtils.s0(method)) {
                        b2 b2VarL2 = l(cls, type2);
                        z(type2, b2VarL2);
                        return b2VarL2;
                    }
                }
            }
            Class cls7 = (Class) com.alibaba.fastjson.a.getMixInAnnotations(cls);
            x4.d dVar2 = (x4.d) TypeUtils.N(cls7 != null ? cls7 : cls, x4.d.class);
            if (dVar2 != null) {
                try {
                    b2 b2Var = (b2) dVar2.deserializer().newInstance();
                    z(cls, b2Var);
                    return b2Var;
                } catch (Throwable unused6) {
                }
            }
            if (cls7 != null) {
                Method methodQ2 = q(cls7, cls);
                if (methodQ2 != null) {
                    try {
                        methodQ = cls.getMethod(methodQ2.getName(), methodQ2.getParameterTypes());
                    } catch (Exception unused7) {
                    }
                }
            } else {
                methodQ = q(cls, cls);
            }
            if (methodQ != null) {
                z4.g gVar = new z4.g(methodQ);
                z(cls, gVar);
                return gVar;
            }
            b2VarL = r(cls);
        } else if (cls.isArray()) {
            b2VarL = y0.f361a;
        } else if (cls == Set.class || cls == HashSet.class || cls == Collection.class || cls == List.class || cls == ArrayList.class || Collection.class.isAssignableFrom(cls)) {
            b2VarL = z.f362a;
        } else if (Map.class.isAssignableFrom(cls)) {
            b2VarL = z1.f79278a;
        } else {
            if (Throwable.class.isAssignableFrom(cls)) {
                g3Var = new k3(this, cls);
            } else if (f3.class.isAssignableFrom(cls)) {
                g3Var = new g3(cls);
            } else {
                b2VarL = cls == InetAddress.class ? w0.f356b : l(cls, type2);
            }
            b2VarL = g3Var;
        }
        z(type2, b2VarL);
        return b2VarL;
    }

    public b2 p(Type type) {
        b2 b2VarM = m(type);
        if (b2VarM != null) {
            return b2VarM;
        }
        if (type instanceof Class) {
            return o((Class) type, type);
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            return rawType instanceof Class ? o((Class) rawType, type) : p(rawType);
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return p(upperBounds[0]);
            }
        }
        return p.f79256a;
    }

    protected b2 r(Class cls) {
        return new z4.h(cls);
    }

    public boolean v() {
        return this.f78892n;
    }

    public boolean x() {
        return this.f78896r;
    }

    public void z(Type type, b2 b2Var) {
        Type mixInAnnotations = com.alibaba.fastjson.a.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            this.f78879a.c(type, b2Var);
            return;
        }
        com.alibaba.fastjson.util.g gVar = (com.alibaba.fastjson.util.g) this.f78880b.b(type);
        if (gVar == null) {
            gVar = new com.alibaba.fastjson.util.g(4);
            this.f78880b.c(type, gVar);
        }
        gVar.c(mixInAnnotations, b2Var);
    }
}
