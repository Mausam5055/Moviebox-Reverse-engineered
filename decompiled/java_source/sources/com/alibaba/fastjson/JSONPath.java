package com.alibaba.fastjson;

import a5.g1;
import a5.p0;
import a5.z0;
import com.alibaba.fastjson.util.TypeUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class JSONPath implements com.alibaba.fastjson.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ConcurrentMap f17982g = new ConcurrentHashMap(128, 0.75f, 1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a0[] f17984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f17985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g1 f17986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private y4.h f17987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f17988f;

    enum Operator {
        EQ,
        NE,
        GT,
        GE,
        LT,
        LE,
        LIKE,
        NOT_LIKE,
        RLIKE,
        NOT_RLIKE,
        IN,
        NOT_IN,
        BETWEEN,
        NOT_BETWEEN,
        And,
        Or,
        REG_MATCH
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17989a;

        static {
            int[] iArr = new int[Operator.values().length];
            f17989a = iArr;
            try {
                iArr[Operator.EQ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17989a[Operator.NE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17989a[Operator.GE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17989a[Operator.GT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17989a[Operator.LE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17989a[Operator.LT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    interface a0 {
        Object a(JSONPath jSONPath, Object obj, Object obj2);
    }

    static class b implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f17990a;

        public b(int i11) {
            this.f17990a = i11;
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.h(obj2, this.f17990a);
        }
    }

    static class b0 implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b0 f17991a = new b0();

        b0() {
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Integer a(JSONPath jSONPath, Object obj, Object obj2) {
            return Integer.valueOf(jSONPath.g(obj2));
        }
    }

    static class c extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final double f17992f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Operator f17993g;

        public c(String str, boolean z10, double d11, Operator operator) {
            super(str, z10);
            this.f17992f = d11;
            this.f17993g = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null || !(objB instanceof Number)) {
                return false;
            }
            double dDoubleValue = ((Number) objB).doubleValue();
            switch (a.f17989a[this.f17993g.ordinal()]) {
                case 1:
                    return dDoubleValue == this.f17992f;
                case 2:
                    return dDoubleValue != this.f17992f;
                case 3:
                    return dDoubleValue >= this.f17992f;
                case 4:
                    return dDoubleValue > this.f17992f;
                case 5:
                    return dDoubleValue <= this.f17992f;
                case 6:
                    return dDoubleValue < this.f17992f;
                default:
                    return false;
            }
        }
    }

    static class c0 extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String[] f17994f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f17995g;

        public c0(String str, boolean z10, String[] strArr, boolean z11) {
            super(str, z10);
            this.f17994f = strArr;
            this.f17995g = z11;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            for (String str : this.f17994f) {
                if (str == objB) {
                    return !this.f17995g;
                }
                if (str != null && str.equals(objB)) {
                    return !this.f17995g;
                }
            }
            return this.f17995g;
        }
    }

    interface d {
        boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3);
    }

    static class d0 extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f17996f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Operator f17997g;

        public d0(String str, boolean z10, String str2, Operator operator) {
            super(str, z10);
            this.f17996f = str2;
            this.f17997g = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            Operator operator = this.f17997g;
            if (operator == Operator.EQ) {
                return this.f17996f.equals(objB);
            }
            if (operator == Operator.NE) {
                return !this.f17996f.equals(objB);
            }
            if (objB == null) {
                return false;
            }
            int iCompareTo = this.f17996f.compareTo(objB.toString());
            Operator operator2 = this.f17997g;
            if (operator2 == Operator.GE) {
                return iCompareTo <= 0;
            }
            if (operator2 == Operator.GT) {
                return iCompareTo < 0;
            }
            if (operator2 == Operator.LE) {
                return iCompareTo >= 0;
            }
            return operator2 == Operator.LT && iCompareTo > 0;
        }
    }

    static class e implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f17998a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List f17999b;

        public e(d dVar, d dVar2, boolean z10) {
            ArrayList arrayList = new ArrayList(2);
            this.f17999b = arrayList;
            arrayList.add(dVar);
            this.f17999b.add(dVar2);
            this.f17998a = z10;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            if (this.f17998a) {
                Iterator it = this.f17999b.iterator();
                while (it.hasNext()) {
                    if (!((d) it.next()).a(jSONPath, obj, obj2, obj3)) {
                        return false;
                    }
                }
                return true;
            }
            Iterator it2 = this.f17999b.iterator();
            while (it2.hasNext()) {
                if (((d) it2.next()).a(jSONPath, obj, obj2, obj3)) {
                    return true;
                }
            }
            return false;
        }
    }

    static class e0 implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e0 f18000a = new e0();

        e0() {
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public String a(JSONPath jSONPath, Object obj, Object obj2) {
            if (obj2 == null) {
                return "null";
            }
            if (obj2 instanceof Collection) {
                return "array";
            }
            if (obj2 instanceof Number) {
                return "number";
            }
            if (obj2 instanceof Boolean) {
                return "boolean";
            }
            return ((obj2 instanceof String) || (obj2 instanceof UUID) || (obj2 instanceof Enum)) ? "string" : "object";
        }
    }

    public static class f implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final d f18001a;

        public f(d dVar) {
            this.f18001a = dVar;
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (obj2 == null) {
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            if (!(obj2 instanceof Iterable)) {
                if (this.f18001a.a(jSONPath, obj, obj2, obj2)) {
                    return obj2;
                }
                return null;
            }
            for (Object obj3 : (Iterable) obj2) {
                if (this.f18001a.a(jSONPath, obj, obj2, obj3)) {
                    jSONArray.add(obj3);
                }
            }
            return jSONArray;
        }
    }

    static class f0 extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Object f18002f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f18003g;

        public f0(String str, boolean z10, Object obj, boolean z11) {
            super(str, z10);
            this.f18003g = true;
            if (obj == null) {
                throw new IllegalArgumentException("value is null");
            }
            this.f18002f = obj;
            this.f18003g = z11;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            boolean zEquals = this.f18002f.equals(b(jSONPath, obj, obj3));
            return !this.f18003g ? !zEquals : zEquals;
        }
    }

    static class g implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f18004a = new g();

        g() {
        }

        private static Object b(Object obj) {
            if (obj == null) {
                return null;
            }
            if (obj instanceof Float) {
                return Double.valueOf(Math.floor(((Float) obj).floatValue()));
            }
            if (obj instanceof Double) {
                return Double.valueOf(Math.floor(((Double) obj).doubleValue()));
            }
            if (obj instanceof BigDecimal) {
                return ((BigDecimal) obj).setScale(0, RoundingMode.FLOOR);
            }
            if ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof BigInteger)) {
                return obj;
            }
            throw new UnsupportedOperationException();
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (!(obj2 instanceof JSONArray)) {
                return b(obj2);
            }
            JSONArray jSONArray = (JSONArray) ((JSONArray) obj2).clone();
            for (int i11 = 0; i11 < jSONArray.size(); i11++) {
                Object obj3 = jSONArray.get(i11);
                Object objB = b(obj3);
                if (objB != obj3) {
                    jSONArray.set(i11, objB);
                }
            }
            return jSONArray;
        }
    }

    static class g0 implements a0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final g0 f18005c = new g0(false, false);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final g0 f18006d = new g0(true, false);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final g0 f18007e = new g0(true, true);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f18008a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f18009b;

        private g0(boolean z10, boolean z11) {
            this.f18008a = z10;
            this.f18009b = z11;
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (!this.f18008a) {
                return jSONPath.k(obj2);
            }
            ArrayList arrayList = new ArrayList();
            jSONPath.c(obj2, arrayList);
            return arrayList;
        }
    }

    static class h extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f18010f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f18011g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f18012h;

        public h(String str, boolean z10, long j11, long j12, boolean z11) {
            super(str, z10);
            this.f18010f = j11;
            this.f18011g = j12;
            this.f18012h = z11;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null) {
                return false;
            }
            if (objB instanceof Number) {
                long jD0 = TypeUtils.D0((Number) objB);
                if (jD0 >= this.f18010f && jD0 <= this.f18011g) {
                    return !this.f18012h;
                }
            }
            return this.f18012h;
        }
    }

    static class i extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long[] f18013f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f18014g;

        public i(String str, boolean z10, long[] jArr, boolean z11) {
            super(str, z10);
            this.f18013f = jArr;
            this.f18014g = z11;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null) {
                return false;
            }
            if (objB instanceof Number) {
                long jD0 = TypeUtils.D0((Number) objB);
                for (long j11 : this.f18013f) {
                    if (j11 == jD0) {
                        return !this.f18014g;
                    }
                }
            }
            return this.f18014g;
        }
    }

    static class j extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Long[] f18015f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f18016g;

        public j(String str, boolean z10, Long[] lArr, boolean z11) {
            super(str, z10);
            this.f18015f = lArr;
            this.f18016g = z11;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            int i11 = 0;
            if (objB == null) {
                Long[] lArr = this.f18015f;
                int length = lArr.length;
                while (i11 < length) {
                    if (lArr[i11] == null) {
                        return !this.f18016g;
                    }
                    i11++;
                }
                return this.f18016g;
            }
            if (objB instanceof Number) {
                long jD0 = TypeUtils.D0((Number) objB);
                Long[] lArr2 = this.f18015f;
                int length2 = lArr2.length;
                while (i11 < length2) {
                    Long l11 = lArr2[i11];
                    if (l11 != null && l11.longValue() == jD0) {
                        return !this.f18016g;
                    }
                    i11++;
                }
            }
            return this.f18016g;
        }
    }

    static class k extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f18017f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Operator f18018g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private BigDecimal f18019h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Float f18020i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Double f18021j;

        public k(String str, boolean z10, long j11, Operator operator) {
            super(str, z10);
            this.f18017f = j11;
            this.f18018g = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null || !(objB instanceof Number)) {
                return false;
            }
            if (objB instanceof BigDecimal) {
                if (this.f18019h == null) {
                    this.f18019h = BigDecimal.valueOf(this.f18017f);
                }
                int iCompareTo = this.f18019h.compareTo((BigDecimal) objB);
                switch (a.f17989a[this.f18018g.ordinal()]) {
                    case 1:
                        return iCompareTo == 0;
                    case 2:
                        return iCompareTo != 0;
                    case 3:
                        return iCompareTo <= 0;
                    case 4:
                        return iCompareTo < 0;
                    case 5:
                        return iCompareTo >= 0;
                    case 6:
                        return iCompareTo > 0;
                    default:
                        return false;
                }
            }
            if (objB instanceof Float) {
                if (this.f18020i == null) {
                    this.f18020i = Float.valueOf(this.f18017f);
                }
                int iCompareTo2 = this.f18020i.compareTo((Float) objB);
                switch (a.f17989a[this.f18018g.ordinal()]) {
                    case 1:
                        return iCompareTo2 == 0;
                    case 2:
                        return iCompareTo2 != 0;
                    case 3:
                        return iCompareTo2 <= 0;
                    case 4:
                        return iCompareTo2 < 0;
                    case 5:
                        return iCompareTo2 >= 0;
                    case 6:
                        return iCompareTo2 > 0;
                    default:
                        return false;
                }
            }
            if (!(objB instanceof Double)) {
                long jD0 = TypeUtils.D0((Number) objB);
                switch (a.f17989a[this.f18018g.ordinal()]) {
                    case 1:
                        return jD0 == this.f18017f;
                    case 2:
                        return jD0 != this.f18017f;
                    case 3:
                        return jD0 >= this.f18017f;
                    case 4:
                        return jD0 > this.f18017f;
                    case 5:
                        return jD0 <= this.f18017f;
                    case 6:
                        return jD0 < this.f18017f;
                    default:
                        return false;
                }
            }
            if (this.f18021j == null) {
                this.f18021j = Double.valueOf(this.f18017f);
            }
            int iCompareTo3 = this.f18021j.compareTo((Double) objB);
            switch (a.f17989a[this.f18018g.ordinal()]) {
                case 1:
                    return iCompareTo3 == 0;
                case 2:
                    return iCompareTo3 != 0;
                case 3:
                    return iCompareTo3 <= 0;
                case 4:
                    return iCompareTo3 < 0;
                case 5:
                    return iCompareTo3 >= 0;
                case 6:
                    return iCompareTo3 > 0;
                default:
                    return false;
            }
        }
    }

    static class l {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final Pattern f18022f = Pattern.compile("'\\s*,\\s*'");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f18023a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f18024b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private char f18025c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f18026d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f18027e;

        public l(String str) {
            this.f18023a = str;
            i();
        }

        static boolean g(char c11) {
            return c11 == '-' || c11 == '+' || (c11 >= '0' && c11 <= '9');
        }

        void a(char c11) {
            if (this.f18025c == ' ') {
                i();
            }
            if (this.f18025c == c11) {
                if (h()) {
                    return;
                }
                i();
            } else {
                throw new JSONPathException("expect '" + c11 + ", but '" + this.f18025c + "'");
            }
        }

        a0 c(String str) {
            int length = str.length();
            char cCharAt = str.charAt(0);
            int i11 = length - 1;
            char cCharAt2 = str.charAt(i11);
            int iIndexOf = str.indexOf(44);
            if (str.length() > 2 && cCharAt == '\'' && cCharAt2 == '\'') {
                String strSubstring = str.substring(1, i11);
                return (iIndexOf == -1 || !f18022f.matcher(str).find()) ? new v(strSubstring, false) : new r(strSubstring.split("'\\s*,\\s*'"));
            }
            int iIndexOf2 = str.indexOf(58);
            if (iIndexOf == -1 && iIndexOf2 == -1) {
                if (TypeUtils.v0(str)) {
                    try {
                        return new b(Integer.parseInt(str));
                    } catch (NumberFormatException unused) {
                        return new v(str, false);
                    }
                }
                if (str.charAt(0) == '\"' && str.charAt(str.length() - 1) == '\"') {
                    str = str.substring(1, str.length() - 1);
                }
                return new v(str, false);
            }
            if (iIndexOf != -1) {
                String[] strArrSplit = str.split(",");
                int[] iArr = new int[strArrSplit.length];
                for (int i12 = 0; i12 < strArrSplit.length; i12++) {
                    iArr[i12] = Integer.parseInt(strArrSplit[i12]);
                }
                return new q(iArr);
            }
            if (iIndexOf2 == -1) {
                throw new UnsupportedOperationException();
            }
            String[] strArrSplit2 = str.split(":");
            int length2 = strArrSplit2.length;
            int[] iArr2 = new int[length2];
            for (int i13 = 0; i13 < strArrSplit2.length; i13++) {
                String str2 = strArrSplit2[i13];
                if (str2.length() != 0) {
                    iArr2[i13] = Integer.parseInt(str2);
                } else {
                    if (i13 != 0) {
                        throw new UnsupportedOperationException();
                    }
                    iArr2[i13] = 0;
                }
            }
            int i14 = iArr2[0];
            int i15 = length2 > 1 ? iArr2[1] : -1;
            int i16 = length2 == 3 ? iArr2[2] : 1;
            if (i15 < 0 || i15 >= i14) {
                if (i16 > 0) {
                    return new w(i14, i15, i16);
                }
                throw new UnsupportedOperationException("step must greater than zero : " + i16);
            }
            throw new UnsupportedOperationException("end must greater than or equals start. start " + i14 + ",  end " + i15);
        }

        public a0[] d() {
            String str = this.f18023a;
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException();
            }
            a0[] a0VarArr = new a0[8];
            while (true) {
                a0 a0VarP = p();
                if (a0VarP == null) {
                    break;
                }
                if (a0VarP instanceof v) {
                    v vVar = (v) a0VarP;
                    if (vVar.f18046c || !vVar.f18044a.equals("*")) {
                    }
                }
                int i11 = this.f18026d;
                if (i11 == a0VarArr.length) {
                    a0[] a0VarArr2 = new a0[(i11 * 3) / 2];
                    System.arraycopy(a0VarArr, 0, a0VarArr2, 0, i11);
                    a0VarArr = a0VarArr2;
                }
                int i12 = this.f18026d;
                this.f18026d = i12 + 1;
                a0VarArr[i12] = a0VarP;
            }
            int i13 = this.f18026d;
            if (i13 == a0VarArr.length) {
                return a0VarArr;
            }
            a0[] a0VarArr3 = new a0[i13];
            System.arraycopy(a0VarArr, 0, a0VarArr3, 0, i13);
            return a0VarArr3;
        }

        d e(d dVar) {
            char c11 = this.f18025c;
            boolean z10 = true;
            boolean z11 = c11 == '&';
            if ((c11 != '&' || f() != '&') && (this.f18025c != '|' || f() != '|')) {
                return dVar;
            }
            i();
            i();
            if (this.f18025c == '(') {
                i();
            } else {
                z10 = false;
            }
            while (this.f18025c == ' ') {
                i();
            }
            e eVar = new e(dVar, (d) k(false), z11);
            if (z10 && this.f18025c == ')') {
                i();
            }
            return eVar;
        }

        char f() {
            return this.f18023a.charAt(this.f18024b);
        }

        boolean h() {
            return this.f18024b >= this.f18023a.length();
        }

        void i() {
            String str = this.f18023a;
            int i11 = this.f18024b;
            this.f18024b = i11 + 1;
            this.f18025c = str.charAt(i11);
        }

        a0 j(boolean z10) {
            Object objK = k(z10);
            return objK instanceof a0 ? (a0) objK : new f((d) objK);
        }

        Object k(boolean z10) {
            int i11;
            boolean z11;
            boolean z12;
            char c11;
            char c12;
            char c13;
            char c14;
            char c15;
            char c16;
            String str;
            String[] strArr;
            String str2;
            String str3;
            d nVar;
            d d0Var;
            char c17;
            char c18;
            char c19;
            char c20;
            int i12;
            char c21;
            char c22;
            char c23;
            char c24;
            char c25;
            int i13;
            String strReplaceAll;
            int i14;
            char cCharAt;
            char c26;
            if (z10) {
                a('[');
            }
            if (this.f18025c == '?') {
                i();
                a('(');
                i11 = 1;
                while (this.f18025c == '(') {
                    i();
                    i11++;
                }
                z11 = true;
            } else {
                i11 = 0;
                z11 = false;
            }
            s();
            if (!z11 && !com.alibaba.fastjson.util.f.g(this.f18025c) && !Character.isJavaIdentifierStart(this.f18025c) && (c24 = this.f18025c) != '\\' && c24 != '@') {
                int i15 = this.f18024b - 1;
                while (true) {
                    char c27 = this.f18025c;
                    if (c27 == ']' || c27 == '/' || h() || !((c26 = this.f18025c) != '.' || z11 || z11 || c24 == '\'')) {
                        break;
                    }
                    if (c26 == '\\') {
                        i();
                    }
                    i();
                }
                if (z10 || (c25 = this.f18025c) == '/' || c25 == '.') {
                    int i16 = this.f18024b;
                    i13 = i16 - 1;
                } else {
                    i13 = this.f18024b;
                }
                String strSubstring = this.f18023a.substring(i15, i13);
                if (strSubstring.indexOf(92) != 0) {
                    StringBuilder sb2 = new StringBuilder(strSubstring.length());
                    int i17 = 0;
                    while (i17 < strSubstring.length()) {
                        char cCharAt2 = strSubstring.charAt(i17);
                        if (cCharAt2 == '\\' && i17 < strSubstring.length() - 1 && ((cCharAt = strSubstring.charAt((i14 = i17 + 1))) == '@' || cCharAt2 == '\\' || cCharAt2 == '\"')) {
                            sb2.append(cCharAt);
                            i17 = i14;
                        } else {
                            sb2.append(cCharAt2);
                        }
                        i17++;
                    }
                    strSubstring = sb2.toString();
                }
                if (strSubstring.indexOf("\\.") == -1) {
                    a0 a0VarC = c(strSubstring);
                    if (z10 && !h()) {
                        a(']');
                    }
                    return a0VarC;
                }
                if (c24 == '\'' && strSubstring.length() > 2 && strSubstring.charAt(strSubstring.length() - 1) == c24) {
                    strReplaceAll = strSubstring.substring(1, strSubstring.length() - 1);
                } else {
                    strReplaceAll = strSubstring.replaceAll("\\\\\\.", "\\.");
                    if (strReplaceAll.indexOf("\\-") != -1) {
                        strReplaceAll = strReplaceAll.replaceAll("\\\\-", "-");
                    }
                }
                if (z11) {
                    a(')');
                }
                return new v(strReplaceAll, false);
            }
            if (this.f18025c == '@') {
                i();
                a('.');
            }
            String strN = n();
            s();
            if (z11 && this.f18025c == ')') {
                i();
                d sVar = new s(strN, false);
                while (true) {
                    c23 = this.f18025c;
                    if (c23 != ' ') {
                        break;
                    }
                    i();
                }
                if (c23 == '&' || c23 == '|') {
                    sVar = e(sVar);
                }
                if (z10) {
                    a(']');
                }
                return sVar;
            }
            if (z10 && this.f18025c == ']') {
                if (h() && strN.equals("last")) {
                    return new q(new int[]{-1});
                }
                i();
                d sVar2 = new s(strN, false);
                while (true) {
                    c22 = this.f18025c;
                    if (c22 != ' ') {
                        break;
                    }
                    i();
                }
                if (c22 == '&' || c22 == '|') {
                    sVar2 = e(sVar2);
                }
                a(')');
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return sVar2;
            }
            s();
            if (this.f18025c == '(') {
                i();
                a(')');
                s();
                z12 = true;
            } else {
                z12 = false;
            }
            Operator operatorO = o();
            s();
            if (operatorO == Operator.BETWEEN || operatorO == Operator.NOT_BETWEEN) {
                boolean z13 = operatorO == Operator.NOT_BETWEEN;
                Object objR = r();
                if (!"and".equalsIgnoreCase(n())) {
                    throw new JSONPathException(this.f18023a);
                }
                Object objR2 = r();
                if (objR == null || objR2 == null) {
                    throw new JSONPathException(this.f18023a);
                }
                if (JSONPath.m(objR.getClass()) && JSONPath.m(objR2.getClass())) {
                    return new h(strN, z12, TypeUtils.D0((Number) objR), TypeUtils.D0((Number) objR2), z13);
                }
                throw new JSONPathException(this.f18023a);
            }
            if (operatorO == Operator.IN || operatorO == Operator.NOT_IN) {
                boolean z14 = operatorO == Operator.NOT_IN;
                a('(');
                JSONArray jSONArray = new JSONArray();
                jSONArray.add(r());
                while (true) {
                    s();
                    if (this.f18025c != ',') {
                        break;
                    }
                    i();
                    jSONArray.add(r());
                }
                boolean z15 = true;
                boolean z16 = true;
                boolean z17 = true;
                for (Object obj : jSONArray) {
                    if (obj != null) {
                        Class<?> cls = obj.getClass();
                        if (z15 && cls != Byte.class && cls != Short.class && cls != Integer.class && cls != Long.class) {
                            z15 = false;
                            z17 = false;
                        }
                        if (z16 && cls != String.class) {
                            z16 = false;
                        }
                    } else if (z15) {
                        z15 = false;
                    }
                }
                if (jSONArray.size() == 1 && jSONArray.get(0) == null) {
                    d sVar3 = z14 ? new s(strN, z12) : new t(strN, z12);
                    while (true) {
                        c16 = this.f18025c;
                        if (c16 != ' ') {
                            break;
                        }
                        i();
                    }
                    if (c16 == '&' || c16 == '|') {
                        sVar3 = e(sVar3);
                    }
                    a(')');
                    if (z11) {
                        a(')');
                    }
                    if (z10) {
                        a(']');
                    }
                    return sVar3;
                }
                if (z15) {
                    if (jSONArray.size() == 1) {
                        d kVar = new k(strN, z12, TypeUtils.D0((Number) jSONArray.get(0)), z14 ? Operator.NE : Operator.EQ);
                        while (true) {
                            c15 = this.f18025c;
                            if (c15 != ' ') {
                                break;
                            }
                            i();
                        }
                        if (c15 == '&' || c15 == '|') {
                            kVar = e(kVar);
                        }
                        a(')');
                        if (z11) {
                            a(')');
                        }
                        if (z10) {
                            a(']');
                        }
                        return kVar;
                    }
                    int size = jSONArray.size();
                    long[] jArr = new long[size];
                    for (int i18 = 0; i18 < size; i18++) {
                        jArr[i18] = TypeUtils.D0((Number) jSONArray.get(i18));
                    }
                    d iVar = new i(strN, z12, jArr, z14);
                    while (true) {
                        c14 = this.f18025c;
                        if (c14 != ' ') {
                            break;
                        }
                        i();
                    }
                    if (c14 == '&' || c14 == '|') {
                        iVar = e(iVar);
                    }
                    a(')');
                    if (z11) {
                        a(')');
                    }
                    if (z10) {
                        a(']');
                    }
                    return iVar;
                }
                if (!z16) {
                    if (!z17) {
                        throw new UnsupportedOperationException();
                    }
                    int size2 = jSONArray.size();
                    Long[] lArr = new Long[size2];
                    for (int i19 = 0; i19 < size2; i19++) {
                        Number number = (Number) jSONArray.get(i19);
                        if (number != null) {
                            lArr[i19] = Long.valueOf(TypeUtils.D0(number));
                        }
                    }
                    d jVar = new j(strN, z12, lArr, z14);
                    while (true) {
                        c11 = this.f18025c;
                        if (c11 != ' ') {
                            break;
                        }
                        i();
                    }
                    if (c11 == '&' || c11 == '|') {
                        jVar = e(jVar);
                    }
                    a(')');
                    if (z11) {
                        a(')');
                    }
                    if (z10) {
                        a(']');
                    }
                    return jVar;
                }
                if (jSONArray.size() == 1) {
                    d d0Var2 = new d0(strN, z12, (String) jSONArray.get(0), z14 ? Operator.NE : Operator.EQ);
                    while (true) {
                        c13 = this.f18025c;
                        if (c13 != ' ') {
                            break;
                        }
                        i();
                    }
                    if (c13 == '&' || c13 == '|') {
                        d0Var2 = e(d0Var2);
                    }
                    a(')');
                    if (z11) {
                        a(')');
                    }
                    if (z10) {
                        a(']');
                    }
                    return d0Var2;
                }
                String[] strArr2 = new String[jSONArray.size()];
                jSONArray.toArray(strArr2);
                d c0Var = new c0(strN, z12, strArr2, z14);
                while (true) {
                    c12 = this.f18025c;
                    if (c12 != ' ') {
                        break;
                    }
                    i();
                }
                if (c12 == '&' || c12 == '|') {
                    c0Var = e(c0Var);
                }
                a(')');
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return c0Var;
            }
            char c28 = this.f18025c;
            if (c28 == '\'' || c28 == '\"') {
                String strQ = q();
                if (operatorO == Operator.RLIKE) {
                    nVar = new z(strN, z12, strQ, false);
                } else {
                    if (operatorO == Operator.NOT_RLIKE) {
                        d0Var = new z(strN, z12, strQ, true);
                    } else if (operatorO == Operator.LIKE || operatorO == Operator.NOT_LIKE) {
                        while (strQ.indexOf("%%") != -1) {
                            strQ = strQ.replaceAll("%%", "%");
                        }
                        boolean z18 = operatorO == Operator.NOT_LIKE;
                        int iIndexOf = strQ.indexOf(37);
                        if (iIndexOf == -1) {
                            d0Var = new d0(strN, z12, strQ, operatorO == Operator.LIKE ? Operator.EQ : Operator.NE);
                        } else {
                            String[] strArrSplit = strQ.split("%");
                            if (iIndexOf != 0) {
                                if (strQ.charAt(strQ.length() - 1) == '%') {
                                    if (strArrSplit.length == 1) {
                                        str3 = strArrSplit[0];
                                    } else {
                                        strArr = strArrSplit;
                                        str = null;
                                        str2 = null;
                                    }
                                } else if (strArrSplit.length == 1) {
                                    str3 = strArrSplit[0];
                                } else if (strArrSplit.length == 2) {
                                    str = strArrSplit[0];
                                    str2 = strArrSplit[1];
                                    strArr = null;
                                } else {
                                    String str4 = strArrSplit[0];
                                    String str5 = strArrSplit[strArrSplit.length - 1];
                                    int length = strArrSplit.length - 2;
                                    String[] strArr3 = new String[length];
                                    System.arraycopy(strArrSplit, 1, strArr3, 0, length);
                                    str = str4;
                                    strArr = strArr3;
                                    str2 = str5;
                                }
                                str = str3;
                                str2 = null;
                                strArr = null;
                            } else if (strQ.charAt(strQ.length() - 1) == '%') {
                                int length2 = strArrSplit.length - 1;
                                String[] strArr4 = new String[length2];
                                System.arraycopy(strArrSplit, 1, strArr4, 0, length2);
                                strArr = strArr4;
                                str = null;
                                str2 = null;
                            } else {
                                String str6 = strArrSplit[strArrSplit.length - 1];
                                if (strArrSplit.length > 2) {
                                    int length3 = strArrSplit.length - 2;
                                    String[] strArr5 = new String[length3];
                                    System.arraycopy(strArrSplit, 1, strArr5, 0, length3);
                                    str2 = str6;
                                    strArr = strArr5;
                                    str = null;
                                } else {
                                    str2 = str6;
                                    str = null;
                                    strArr = null;
                                }
                            }
                            nVar = new n(strN, z12, str, str2, strArr, z18);
                        }
                    } else {
                        nVar = new d0(strN, z12, strQ, operatorO);
                    }
                    nVar = d0Var;
                }
                while (true) {
                    c17 = this.f18025c;
                    if (c17 != ' ') {
                        break;
                    }
                    i();
                }
                if (c17 == '&' || c17 == '|') {
                    nVar = e(nVar);
                }
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return nVar;
            }
            if (g(c28)) {
                long jM = m();
                double dL = this.f18025c == '.' ? l(jM) : 0.0d;
                d kVar2 = dL == 0.0d ? new k(strN, z12, jM, operatorO) : new c(strN, z12, dL, operatorO);
                while (true) {
                    c21 = this.f18025c;
                    if (c21 != ' ') {
                        break;
                    }
                    i();
                }
                if (i11 > 1 && c21 == ')') {
                    i();
                }
                char c29 = this.f18025c;
                if (c29 == '&' || c29 == '|') {
                    kVar2 = e(kVar2);
                }
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return kVar2;
            }
            char c30 = this.f18025c;
            if (c30 == '$') {
                x xVar = new x(strN, z12, p(), operatorO);
                this.f18027e = true;
                while (this.f18025c == ' ') {
                    i();
                }
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return xVar;
            }
            if (c30 == '/') {
                StringBuilder sb3 = new StringBuilder();
                while (true) {
                    i();
                    char c31 = this.f18025c;
                    if (c31 == '/') {
                        break;
                    }
                    if (c31 == '\\') {
                        i();
                        sb3.append(this.f18025c);
                    } else {
                        sb3.append(c31);
                    }
                }
                i();
                if (this.f18025c == 'i') {
                    i();
                    i12 = 2;
                } else {
                    i12 = 0;
                }
                y yVar = new y(strN, z12, Pattern.compile(sb3.toString(), i12), operatorO);
                if (z11) {
                    a(')');
                }
                if (z10) {
                    a(']');
                }
                return yVar;
            }
            if (c30 == 'n') {
                if ("null".equals(n())) {
                    d tVar = operatorO == Operator.EQ ? new t(strN, z12) : operatorO == Operator.NE ? new s(strN, z12) : null;
                    if (tVar != null) {
                        while (true) {
                            c20 = this.f18025c;
                            if (c20 != ' ') {
                                break;
                            }
                            i();
                        }
                        if (c20 == '&' || c20 == '|') {
                            tVar = e(tVar);
                        }
                    }
                    if (z11) {
                        a(')');
                    }
                    a(']');
                    if (tVar != null) {
                        return tVar;
                    }
                    throw new UnsupportedOperationException();
                }
            } else if (c30 == 't') {
                if ("true".equals(n())) {
                    d f0Var = operatorO == Operator.EQ ? new f0(strN, z12, Boolean.TRUE, true) : operatorO == Operator.NE ? new f0(strN, z12, Boolean.TRUE, false) : null;
                    if (f0Var != null) {
                        while (true) {
                            c19 = this.f18025c;
                            if (c19 != ' ') {
                                break;
                            }
                            i();
                        }
                        if (c19 == '&' || c19 == '|') {
                            f0Var = e(f0Var);
                        }
                    }
                    if (z11) {
                        a(')');
                    }
                    a(']');
                    if (f0Var != null) {
                        return f0Var;
                    }
                    throw new UnsupportedOperationException();
                }
            } else if (c30 == 'f' && "false".equals(n())) {
                d f0Var2 = operatorO == Operator.EQ ? new f0(strN, z12, Boolean.FALSE, true) : operatorO == Operator.NE ? new f0(strN, z12, Boolean.FALSE, false) : null;
                if (f0Var2 != null) {
                    while (true) {
                        c18 = this.f18025c;
                        if (c18 != ' ') {
                            break;
                        }
                        i();
                    }
                    if (c18 == '&' || c18 == '|') {
                        f0Var2 = e(f0Var2);
                    }
                }
                if (z11) {
                    a(')');
                }
                a(']');
                if (f0Var2 != null) {
                    return f0Var2;
                }
                throw new UnsupportedOperationException();
            }
            throw new UnsupportedOperationException();
        }

        protected double l(long j11) {
            int i11 = this.f18024b - 1;
            i();
            while (true) {
                char c11 = this.f18025c;
                if (c11 < '0' || c11 > '9') {
                    break;
                }
                i();
            }
            return Double.parseDouble(this.f18023a.substring(i11, this.f18024b - 1)) + j11;
        }

        protected long m() {
            int i11 = this.f18024b - 1;
            char c11 = this.f18025c;
            if (c11 == '+' || c11 == '-') {
                i();
            }
            while (true) {
                char c12 = this.f18025c;
                if (c12 < '0' || c12 > '9') {
                    break;
                }
                i();
            }
            return Long.parseLong(this.f18023a.substring(i11, this.f18024b - 1));
        }

        String n() {
            s();
            char c11 = this.f18025c;
            if (c11 != '\\' && !Character.isJavaIdentifierStart(c11)) {
                throw new JSONPathException("illeal jsonpath syntax. " + this.f18023a);
            }
            StringBuilder sb2 = new StringBuilder();
            while (!h()) {
                char c12 = this.f18025c;
                if (c12 == '\\') {
                    i();
                    sb2.append(this.f18025c);
                    if (h()) {
                        return sb2.toString();
                    }
                    i();
                } else {
                    if (!Character.isJavaIdentifierPart(c12)) {
                        break;
                    }
                    sb2.append(this.f18025c);
                    i();
                }
            }
            if (h() && Character.isJavaIdentifierPart(this.f18025c)) {
                sb2.append(this.f18025c);
            }
            return sb2.toString();
        }

        protected Operator o() {
            Operator operator;
            char c11 = this.f18025c;
            if (c11 == '=') {
                i();
                char c12 = this.f18025c;
                if (c12 == '~') {
                    i();
                    operator = Operator.REG_MATCH;
                } else if (c12 == '=') {
                    i();
                    operator = Operator.EQ;
                } else {
                    operator = Operator.EQ;
                }
            } else if (c11 == '!') {
                i();
                a('=');
                operator = Operator.NE;
            } else if (c11 == '<') {
                i();
                if (this.f18025c == '=') {
                    i();
                    operator = Operator.LE;
                } else {
                    operator = Operator.LT;
                }
            } else if (c11 == '>') {
                i();
                if (this.f18025c == '=') {
                    i();
                    operator = Operator.GE;
                } else {
                    operator = Operator.GT;
                }
            } else {
                operator = null;
            }
            if (operator != null) {
                return operator;
            }
            String strN = n();
            if ("not".equalsIgnoreCase(strN)) {
                s();
                String strN2 = n();
                if ("like".equalsIgnoreCase(strN2)) {
                    return Operator.NOT_LIKE;
                }
                if ("rlike".equalsIgnoreCase(strN2)) {
                    return Operator.NOT_RLIKE;
                }
                if ("in".equalsIgnoreCase(strN2)) {
                    return Operator.NOT_IN;
                }
                if ("between".equalsIgnoreCase(strN2)) {
                    return Operator.NOT_BETWEEN;
                }
                throw new UnsupportedOperationException();
            }
            if ("nin".equalsIgnoreCase(strN)) {
                return Operator.NOT_IN;
            }
            if ("like".equalsIgnoreCase(strN)) {
                return Operator.LIKE;
            }
            if ("rlike".equalsIgnoreCase(strN)) {
                return Operator.RLIKE;
            }
            if ("in".equalsIgnoreCase(strN)) {
                return Operator.IN;
            }
            if ("between".equalsIgnoreCase(strN)) {
                return Operator.BETWEEN;
            }
            throw new UnsupportedOperationException();
        }

        a0 p() {
            boolean z10;
            if (this.f18026d == 0 && this.f18023a.length() == 1) {
                if (g(this.f18025c)) {
                    return new b(this.f18025c - '0');
                }
                char c11 = this.f18025c;
                if ((c11 >= 'a' && c11 <= 'z') || (c11 >= 'A' && c11 <= 'Z')) {
                    return new v(Character.toString(c11), false);
                }
            }
            while (!h()) {
                s();
                char c12 = this.f18025c;
                if (c12 != '$') {
                    if (c12 != '.' && c12 != '/') {
                        if (c12 == '[') {
                            return j(true);
                        }
                        if (this.f18026d == 0) {
                            return new v(n(), false);
                        }
                        if (c12 == '?') {
                            return new f((d) k(false));
                        }
                        throw new JSONPathException("not support jsonpath : " + this.f18023a);
                    }
                    i();
                    if (c12 == '.' && this.f18025c == '.') {
                        i();
                        int length = this.f18023a.length();
                        int i11 = this.f18024b;
                        if (length > i11 + 3 && this.f18025c == '[' && this.f18023a.charAt(i11) == '*' && this.f18023a.charAt(this.f18024b + 1) == ']' && this.f18023a.charAt(this.f18024b + 2) == '.') {
                            i();
                            i();
                            i();
                            i();
                        }
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    char c13 = this.f18025c;
                    if (c13 == '*' || (z10 && c13 == '[')) {
                        boolean z11 = c13 == '[';
                        if (!h()) {
                            i();
                        }
                        if (z10) {
                            return z11 ? g0.f18007e : g0.f18006d;
                        }
                        return g0.f18005c;
                    }
                    if (g(c13)) {
                        return j(false);
                    }
                    String strN = n();
                    if (this.f18025c != '(') {
                        return new v(strN, z10);
                    }
                    i();
                    if (this.f18025c != ')') {
                        throw new JSONPathException("not support jsonpath : " + this.f18023a);
                    }
                    if (!h()) {
                        i();
                    }
                    if ("size".equals(strN) || "length".equals(strN)) {
                        return b0.f17991a;
                    }
                    if ("max".equals(strN)) {
                        return o.f18034a;
                    }
                    if ("min".equals(strN)) {
                        return p.f18035a;
                    }
                    if ("keySet".equals(strN)) {
                        return m.f18028a;
                    }
                    if (NativeComponentConstants.KEY_COMPONENT_TYPE.equals(strN)) {
                        return e0.f18000a;
                    }
                    if (PlaceTypes.FLOOR.equals(strN)) {
                        return g.f18004a;
                    }
                    throw new JSONPathException("not support jsonpath : " + this.f18023a);
                }
                i();
                s();
                if (this.f18025c == '?') {
                    return new f((d) k(false));
                }
            }
            return null;
        }

        String q() {
            char c11 = this.f18025c;
            i();
            int i11 = this.f18024b - 1;
            while (this.f18025c != c11 && !h()) {
                i();
            }
            String strSubstring = this.f18023a.substring(i11, h() ? this.f18024b : this.f18024b - 1);
            a(c11);
            return strSubstring;
        }

        protected Object r() {
            s();
            if (g(this.f18025c)) {
                return Long.valueOf(m());
            }
            char c11 = this.f18025c;
            if (c11 == '\"' || c11 == '\'') {
                return q();
            }
            if (c11 != 'n') {
                throw new UnsupportedOperationException();
            }
            if ("null".equals(n())) {
                return null;
            }
            throw new JSONPathException(this.f18023a);
        }

        public final void s() {
            while (true) {
                char c11 = this.f18025c;
                if (c11 > ' ') {
                    return;
                }
                if (c11 != ' ' && c11 != '\r' && c11 != '\n' && c11 != '\t' && c11 != '\f' && c11 != '\b') {
                    return;
                } else {
                    i();
                }
            }
        }
    }

    static class m implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final m f18028a = new m();

        m() {
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.f(obj2);
        }
    }

    static class n extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f18029f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final String f18030g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final String[] f18031h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int f18032i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final boolean f18033j;

        public n(String str, boolean z10, String str2, String str3, String[] strArr, boolean z11) {
            super(str, z10);
            this.f18029f = str2;
            this.f18030g = str3;
            this.f18031h = strArr;
            this.f18033j = z11;
            int length = str2 != null ? str2.length() : 0;
            length = str3 != null ? length + str3.length() : length;
            if (strArr != null) {
                for (String str4 : strArr) {
                    length += str4.length();
                }
            }
            this.f18032i = length;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            int length;
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null) {
                return false;
            }
            String string = objB.toString();
            if (string.length() < this.f18032i) {
                return this.f18033j;
            }
            String str = this.f18029f;
            if (str == null) {
                length = 0;
            } else {
                if (!string.startsWith(str)) {
                    return this.f18033j;
                }
                length = this.f18029f.length();
            }
            String[] strArr = this.f18031h;
            if (strArr != null) {
                for (String str2 : strArr) {
                    int iIndexOf = string.indexOf(str2, length);
                    if (iIndexOf == -1) {
                        return this.f18033j;
                    }
                    length = iIndexOf + str2.length();
                }
            }
            String str3 = this.f18030g;
            return (str3 == null || string.endsWith(str3)) ? !this.f18033j : this.f18033j;
        }
    }

    static class o implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final o f18034a = new o();

        o() {
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (!(obj2 instanceof Collection)) {
                throw new UnsupportedOperationException();
            }
            Object obj3 = null;
            for (Object obj4 : (Collection) obj2) {
                if (obj4 != null && (obj3 == null || JSONPath.a(obj3, obj4) < 0)) {
                    obj3 = obj4;
                }
            }
            return obj3;
        }
    }

    static class p implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final p f18035a = new p();

        p() {
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (!(obj2 instanceof Collection)) {
                throw new UnsupportedOperationException();
            }
            Object obj3 = null;
            for (Object obj4 : (Collection) obj2) {
                if (obj4 != null && (obj3 == null || JSONPath.a(obj3, obj4) > 0)) {
                    obj3 = obj4;
                }
            }
            return obj3;
        }
    }

    static class q implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f18036a;

        public q(int[] iArr) {
            this.f18036a = iArr;
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            JSONArray jSONArray = new JSONArray(this.f18036a.length);
            int i11 = 0;
            while (true) {
                int[] iArr = this.f18036a;
                if (i11 >= iArr.length) {
                    return jSONArray;
                }
                jSONArray.add(jSONPath.h(obj2, iArr[i11]));
                i11++;
            }
        }
    }

    static class r implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f18037a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long[] f18038b;

        public r(String[] strArr) {
            this.f18037a = strArr;
            this.f18038b = new long[strArr.length];
            int i11 = 0;
            while (true) {
                long[] jArr = this.f18038b;
                if (i11 >= jArr.length) {
                    return;
                }
                jArr[i11] = TypeUtils.J(strArr[i11]);
                i11++;
            }
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            ArrayList arrayList = new ArrayList(this.f18037a.length);
            int i11 = 0;
            while (true) {
                String[] strArr = this.f18037a;
                if (i11 >= strArr.length) {
                    return arrayList;
                }
                arrayList.add(jSONPath.j(obj2, strArr[i11], this.f18038b[i11]));
                i11++;
            }
        }
    }

    static class s extends u {
        public s(String str, boolean z10) {
            super(str, z10);
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            return jSONPath.j(obj3, this.f18040a, this.f18041b) != null;
        }
    }

    static class t extends u {
        public t(String str, boolean z10) {
            super(str, z10);
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            return b(jSONPath, obj, obj3) == null;
        }
    }

    static abstract class u implements d {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static long f18039e = TypeUtils.J(NativeComponentConstants.KEY_COMPONENT_TYPE);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final String f18040a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected final long f18041b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected final boolean f18042c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected a0 f18043d;

        protected u(String str, boolean z10) {
            this.f18040a = str;
            long J = TypeUtils.J(str);
            this.f18041b = J;
            this.f18042c = z10;
            if (z10) {
                if (J == f18039e) {
                    this.f18043d = e0.f18000a;
                } else {
                    if (J == 5614464919154503228L) {
                        this.f18043d = b0.f17991a;
                        return;
                    }
                    throw new JSONPathException("unsupported funciton : " + str);
                }
            }
        }

        protected Object b(JSONPath jSONPath, Object obj, Object obj2) {
            a0 a0Var = this.f18043d;
            return a0Var != null ? a0Var.a(jSONPath, obj, obj2) : jSONPath.j(obj2, this.f18040a, this.f18041b);
        }
    }

    static class v implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f18044a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f18045b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f18046c;

        public v(String str, boolean z10) {
            this.f18044a = str;
            this.f18045b = TypeUtils.J(str);
            this.f18046c = z10;
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            if (!this.f18046c) {
                return jSONPath.j(obj2, this.f18044a, this.f18045b);
            }
            ArrayList arrayList = new ArrayList();
            jSONPath.d(obj2, this.f18044a, arrayList);
            return arrayList;
        }
    }

    static class w implements a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f18047a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f18048b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f18049c;

        public w(int i11, int i12, int i13) {
            this.f18047a = i11;
            this.f18048b = i12;
            this.f18049c = i13;
        }

        @Override // com.alibaba.fastjson.JSONPath.a0
        public Object a(JSONPath jSONPath, Object obj, Object obj2) {
            int iIntValue = b0.f17991a.a(jSONPath, obj, obj2).intValue();
            int i11 = this.f18047a;
            if (i11 < 0) {
                i11 += iIntValue;
            }
            int i12 = this.f18048b;
            if (i12 < 0) {
                i12 += iIntValue;
            }
            int i13 = ((i12 - i11) / this.f18049c) + 1;
            if (i13 == -1) {
                return null;
            }
            ArrayList arrayList = new ArrayList(i13);
            while (i11 <= i12 && i11 < iIntValue) {
                arrayList.add(jSONPath.h(obj2, i11));
                i11 += this.f18049c;
            }
            return arrayList;
        }
    }

    static class x extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final a0 f18050f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Operator f18051g;

        public x(String str, boolean z10, a0 a0Var, Operator operator) {
            super(str, z10);
            this.f18050f = a0Var;
            this.f18051g = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null || !(objB instanceof Number)) {
                return false;
            }
            Object objA = this.f18050f.a(jSONPath, obj, obj);
            if ((objA instanceof Integer) || (objA instanceof Long) || (objA instanceof Short) || (objA instanceof Byte)) {
                long jD0 = TypeUtils.D0((Number) objA);
                if ((objB instanceof Integer) || (objB instanceof Long) || (objB instanceof Short) || (objB instanceof Byte)) {
                    long jD1 = TypeUtils.D0((Number) objB);
                    switch (a.f17989a[this.f18051g.ordinal()]) {
                        case 1:
                            return jD1 == jD0;
                        case 2:
                            return jD1 != jD0;
                        case 3:
                            return jD1 >= jD0;
                        case 4:
                            return jD1 > jD0;
                        case 5:
                            return jD1 <= jD0;
                        case 6:
                            return jD1 < jD0;
                    }
                }
                if (objB instanceof BigDecimal) {
                    int iCompareTo = BigDecimal.valueOf(jD0).compareTo((BigDecimal) objB);
                    switch (a.f17989a[this.f18051g.ordinal()]) {
                        case 1:
                            return iCompareTo == 0;
                        case 2:
                            return iCompareTo != 0;
                        case 3:
                            return iCompareTo <= 0;
                        case 4:
                            return iCompareTo < 0;
                        case 5:
                            return iCompareTo >= 0;
                        case 6:
                            return iCompareTo > 0;
                        default:
                            return false;
                    }
                }
            }
            throw new UnsupportedOperationException();
        }
    }

    static class y extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Pattern f18052f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Operator f18053g;

        public y(String str, boolean z10, Pattern pattern, Operator operator) {
            super(str, z10);
            this.f18052f = pattern;
            this.f18053g = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null) {
                return false;
            }
            return this.f18052f.matcher(objB.toString()).matches();
        }
    }

    static class z extends u {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Pattern f18054f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f18055g;

        public z(String str, boolean z10, String str2, boolean z11) {
            super(str, z10);
            this.f18054f = Pattern.compile(str2);
            this.f18055g = z11;
        }

        @Override // com.alibaba.fastjson.JSONPath.d
        public boolean a(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object objB = b(jSONPath, obj, obj3);
            if (objB == null) {
                return false;
            }
            boolean zMatches = this.f18054f.matcher(objB.toString()).matches();
            return this.f18055g ? !zMatches : zMatches;
        }
    }

    public JSONPath(String str) {
        this(str, g1.g(), y4.h.t(), true);
    }

    public JSONPath(String str, g1 g1Var, y4.h hVar, boolean z10) {
        if (str == null || str.length() == 0) {
            throw new JSONPathException("json-path can not be null or empty");
        }
        this.f17983a = str;
        this.f17986d = g1Var;
        this.f17987e = hVar;
        this.f17988f = z10;
    }

    static int a(Object obj, Object obj2) {
        Object d11;
        Object f11;
        if (obj.getClass() == obj2.getClass()) {
            return ((Comparable) obj).compareTo(obj2);
        }
        Class<?> cls = obj.getClass();
        Class<?> cls2 = obj2.getClass();
        if (cls == BigDecimal.class) {
            if (cls2 == Integer.class) {
                f11 = new BigDecimal(((Integer) obj2).intValue());
            } else if (cls2 == Long.class) {
                f11 = new BigDecimal(((Long) obj2).longValue());
            } else if (cls2 == Float.class) {
                f11 = new BigDecimal(((Float) obj2).floatValue());
            } else if (cls2 == Double.class) {
                f11 = new BigDecimal(((Double) obj2).doubleValue());
            }
            obj2 = f11;
        } else if (cls == Long.class) {
            if (cls2 == Integer.class) {
                f11 = new Long(((Integer) obj2).intValue());
                obj2 = f11;
            } else {
                if (cls2 == BigDecimal.class) {
                    d11 = new BigDecimal(((Long) obj).longValue());
                } else if (cls2 == Float.class) {
                    d11 = new Float(((Long) obj).longValue());
                } else if (cls2 == Double.class) {
                    d11 = new Double(((Long) obj).longValue());
                }
                obj = d11;
            }
        } else if (cls == Integer.class) {
            if (cls2 == Long.class) {
                d11 = new Long(((Integer) obj).intValue());
            } else if (cls2 == BigDecimal.class) {
                d11 = new BigDecimal(((Integer) obj).intValue());
            } else if (cls2 == Float.class) {
                d11 = new Float(((Integer) obj).intValue());
            } else if (cls2 == Double.class) {
                d11 = new Double(((Integer) obj).intValue());
            }
            obj = d11;
        } else if (cls == Double.class) {
            if (cls2 == Integer.class) {
                f11 = new Double(((Integer) obj2).intValue());
            } else if (cls2 == Long.class) {
                f11 = new Double(((Long) obj2).longValue());
            } else if (cls2 == Float.class) {
                f11 = new Double(((Float) obj2).floatValue());
            }
            obj2 = f11;
        } else if (cls == Float.class) {
            if (cls2 == Integer.class) {
                f11 = new Float(((Integer) obj2).intValue());
            } else if (cls2 == Long.class) {
                f11 = new Float(((Long) obj2).longValue());
            } else if (cls2 == Double.class) {
                d11 = new Double(((Float) obj).floatValue());
                obj = d11;
            }
            obj2 = f11;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    public static JSONPath b(String str) {
        if (str == null) {
            throw new JSONPathException("jsonpath can not be null");
        }
        JSONPath jSONPath = (JSONPath) f17982g.get(str);
        if (jSONPath != null) {
            return jSONPath;
        }
        JSONPath jSONPath2 = new JSONPath(str);
        if (f17982g.size() >= 1024) {
            return jSONPath2;
        }
        f17982g.putIfAbsent(str, jSONPath2);
        return (JSONPath) f17982g.get(str);
    }

    protected static boolean m(Class cls) {
        return cls == Byte.class || cls == Short.class || cls == Integer.class || cls == Long.class;
    }

    protected void c(Object obj, List list) {
        Collection collectionO;
        Class<?> cls = obj.getClass();
        p0 p0VarI = i(cls);
        if (p0VarI != null) {
            try {
                collectionO = p0VarI.o(obj);
            } catch (Exception e11) {
                throw new JSONPathException("jsonpath error, path " + this.f17983a, e11);
            }
        } else if (obj instanceof Map) {
            collectionO = ((Map) obj).values();
        } else {
            collectionO = obj instanceof Collection ? (Collection) obj : null;
        }
        if (collectionO == null) {
            throw new UnsupportedOperationException(cls.getName());
        }
        for (Object obj2 : collectionO) {
            if (obj2 == null || y4.h.w(obj2.getClass())) {
                list.add(obj2);
            } else {
                c(obj2, list);
            }
        }
    }

    protected void d(Object obj, String str, List list) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object value = entry.getValue();
                if (str.equals(entry.getKey())) {
                    if (value instanceof Collection) {
                        list.addAll((Collection) value);
                    } else {
                        list.add(value);
                    }
                } else if (value != null && !y4.h.w(value.getClass())) {
                    d(value, str, list);
                }
            }
            return;
        }
        if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                if (!y4.h.w(obj2.getClass())) {
                    d(obj2, str, list);
                }
            }
            return;
        }
        p0 p0VarI = i(obj.getClass());
        if (p0VarI == null) {
            if (obj instanceof List) {
                List list2 = (List) obj;
                for (int i11 = 0; i11 < list2.size(); i11++) {
                    d(list2.get(i11), str, list);
                }
                return;
            }
            return;
        }
        try {
            a5.g0 g0VarM = p0VarI.m(str);
            if (g0VarM == null) {
                Iterator it = p0VarI.o(obj).iterator();
                while (it.hasNext()) {
                    d(it.next(), str, list);
                }
                return;
            }
            try {
                try {
                    list.add(g0VarM.d(obj));
                } catch (IllegalAccessException e11) {
                    throw new JSONException("getFieldValue error." + str, e11);
                }
            } catch (InvocationTargetException e12) {
                throw new JSONException("getFieldValue error." + str, e12);
            }
        } catch (Exception e13) {
            throw new JSONPathException("jsonpath error, path " + this.f17983a + ", segement " + str, e13);
        }
    }

    public Object e(Object obj) {
        if (obj == null) {
            return null;
        }
        l();
        int i11 = 0;
        Object objA = obj;
        while (true) {
            a0[] a0VarArr = this.f17984b;
            if (i11 >= a0VarArr.length) {
                return objA;
            }
            objA = a0VarArr[i11].a(this, obj, objA);
            i11++;
        }
    }

    Set f(Object obj) {
        p0 p0VarI;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Map) {
            return ((Map) obj).keySet();
        }
        if ((obj instanceof Collection) || (obj instanceof Object[]) || obj.getClass().isArray() || (p0VarI = i(obj.getClass())) == null) {
            return null;
        }
        try {
            return p0VarI.k(obj);
        } catch (Exception e11) {
            throw new JSONPathException("evalKeySet error : " + this.f17983a, e11);
        }
    }

    int g(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).size();
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj).length;
        }
        if (obj.getClass().isArray()) {
            return Array.getLength(obj);
        }
        if (obj instanceof Map) {
            Iterator it = ((Map) obj).values().iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (it.next() != null) {
                    i11++;
                }
            }
            return i11;
        }
        p0 p0VarI = i(obj.getClass());
        if (p0VarI == null) {
            return -1;
        }
        try {
            return p0VarI.r(obj);
        } catch (Exception e11) {
            throw new JSONPathException("evalSize error : " + this.f17983a, e11);
        }
    }

    protected Object h(Object obj, int i11) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (i11 >= 0) {
                if (i11 < list.size()) {
                    return list.get(i11);
                }
                return null;
            }
            if (Math.abs(i11) <= list.size()) {
                return list.get(list.size() + i11);
            }
            return null;
        }
        if (obj.getClass().isArray()) {
            int length = Array.getLength(obj);
            if (i11 >= 0) {
                if (i11 < length) {
                    return Array.get(obj, i11);
                }
                return null;
            }
            if (Math.abs(i11) <= length) {
                return Array.get(obj, length + i11);
            }
            return null;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            Object obj2 = map.get(Integer.valueOf(i11));
            return obj2 == null ? map.get(Integer.toString(i11)) : obj2;
        }
        if (!(obj instanceof Collection)) {
            if (i11 == 0) {
                return obj;
            }
            throw new UnsupportedOperationException();
        }
        int i12 = 0;
        for (Object obj3 : (Collection) obj) {
            if (i12 == i11) {
                return obj3;
            }
            i12++;
        }
        return null;
    }

    protected p0 i(Class cls) {
        z0 z0VarH = this.f17986d.h(cls);
        if (z0VarH instanceof p0) {
            return (p0) z0VarH;
        }
        return null;
    }

    protected Object j(Object obj, String str, long j11) {
        Object obj2;
        JSONArray jSONArray = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            try {
                obj2 = (JSONObject) com.alibaba.fastjson.a.parse((String) obj, this.f17987e);
            } catch (Exception unused) {
                obj2 = obj;
            }
        } else {
            obj2 = obj;
        }
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get(str);
            if (obj3 == null) {
                return (5614464919154503228L == j11 || -1580386065683472715L == j11) ? Integer.valueOf(map.size()) : obj3;
            }
            return obj3;
        }
        p0 p0VarI = i(obj2.getClass());
        if (p0VarI != null) {
            try {
                return p0VarI.n(obj2, str, j11, false);
            } catch (Exception e11) {
                throw new JSONPathException("jsonpath error, path " + this.f17983a + ", segement " + str, e11);
            }
        }
        int i11 = 0;
        if (obj2 instanceof List) {
            List list = (List) obj2;
            if (5614464919154503228L == j11 || -1580386065683472715L == j11) {
                return Integer.valueOf(list.size());
            }
            while (i11 < list.size()) {
                Object obj4 = list.get(i11);
                if (obj4 == list) {
                    if (jSONArray == null) {
                        jSONArray = new JSONArray(list.size());
                    }
                    jSONArray.add(obj4);
                } else {
                    Object objJ = j(obj4, str, j11);
                    if (objJ instanceof Collection) {
                        Collection collection = (Collection) objJ;
                        if (jSONArray == null) {
                            jSONArray = new JSONArray(list.size());
                        }
                        jSONArray.addAll(collection);
                    } else if (objJ != null || !this.f17988f) {
                        if (jSONArray == null) {
                            jSONArray = new JSONArray(list.size());
                        }
                        jSONArray.add(objJ);
                    }
                }
                i11++;
            }
            return jSONArray == null ? Collections.emptyList() : jSONArray;
        }
        if (obj2 instanceof Object[]) {
            Object[] objArr = (Object[]) obj2;
            if (5614464919154503228L == j11 || -1580386065683472715L == j11) {
                return Integer.valueOf(objArr.length);
            }
            JSONArray jSONArray2 = new JSONArray(objArr.length);
            while (i11 < objArr.length) {
                Object[] objArr2 = objArr[i11];
                if (objArr2 == objArr) {
                    jSONArray2.add(objArr2);
                } else {
                    Object objJ2 = j(objArr2, str, j11);
                    if (objJ2 instanceof Collection) {
                        jSONArray2.addAll((Collection) objJ2);
                    } else if (objJ2 != null || !this.f17988f) {
                        jSONArray2.add(objJ2);
                    }
                }
                i11++;
            }
            return jSONArray2;
        }
        if (obj2 instanceof Enum) {
            Enum r11 = (Enum) obj2;
            if (-4270347329889690746L == j11) {
                return r11.name();
            }
            if (-1014497654951707614L == j11) {
                return Integer.valueOf(r11.ordinal());
            }
        }
        if (obj2 instanceof Calendar) {
            Calendar calendar = (Calendar) obj2;
            if (8963398325558730460L == j11) {
                return Integer.valueOf(calendar.get(1));
            }
            if (-811277319855450459L == j11) {
                return Integer.valueOf(calendar.get(2));
            }
            if (-3851359326990528739L == j11) {
                return Integer.valueOf(calendar.get(5));
            }
            if (4647432019745535567L == j11) {
                return Integer.valueOf(calendar.get(11));
            }
            if (6607618197526598121L == j11) {
                return Integer.valueOf(calendar.get(12));
            }
            if (-6586085717218287427L == j11) {
                return Integer.valueOf(calendar.get(13));
            }
        }
        return null;
    }

    protected Collection k(Object obj) {
        if (obj == null) {
            return null;
        }
        p0 p0VarI = i(obj.getClass());
        if (p0VarI == null) {
            if (obj instanceof Map) {
                return ((Map) obj).values();
            }
            if (obj instanceof Collection) {
                return (Collection) obj;
            }
            throw new UnsupportedOperationException();
        }
        try {
            return p0VarI.o(obj);
        } catch (Exception e11) {
            throw new JSONPathException("jsonpath error, path " + this.f17983a, e11);
        }
    }

    protected void l() {
        if (this.f17984b != null) {
            return;
        }
        if ("*".equals(this.f17983a)) {
            this.f17984b = new a0[]{g0.f18005c};
            return;
        }
        l lVar = new l(this.f17983a);
        this.f17984b = lVar.d();
        this.f17985c = lVar.f18027e;
    }

    public boolean n() {
        try {
            l();
            int i11 = 0;
            while (true) {
                a0[] a0VarArr = this.f17984b;
                if (i11 >= a0VarArr.length) {
                    return true;
                }
                Class<?> cls = a0VarArr[i11].getClass();
                if (cls != b.class && cls != v.class) {
                    return false;
                }
                i11++;
            }
        } catch (JSONPathException unused) {
            return false;
        }
    }

    @Override // com.alibaba.fastjson.b
    public String toJSONString() {
        return com.alibaba.fastjson.a.toJSONString(this.f17983a);
    }
}
