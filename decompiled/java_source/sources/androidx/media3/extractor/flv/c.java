package androidx.media3.extractor.flv;

import androidx.media3.common.util.j0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import l2.n;

/* JADX INFO: loaded from: classes2.dex */
final class c extends TagPayloadReader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f13423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f13424c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long[] f13425d;

    public c() {
        super(new n());
        this.f13423b = C.TIME_UNSET;
        this.f13424c = new long[0];
        this.f13425d = new long[0];
    }

    private static Boolean g(j0 j0Var) {
        return Boolean.valueOf(j0Var.H() == 1);
    }

    private static Object h(j0 j0Var, int i11) {
        if (i11 == 0) {
            return j(j0Var);
        }
        if (i11 == 1) {
            return g(j0Var);
        }
        if (i11 == 2) {
            return n(j0Var);
        }
        if (i11 == 3) {
            return l(j0Var);
        }
        if (i11 == 8) {
            return k(j0Var);
        }
        if (i11 == 10) {
            return m(j0Var);
        }
        if (i11 != 11) {
            return null;
        }
        return i(j0Var);
    }

    private static Date i(j0 j0Var) {
        Date date = new Date((long) j(j0Var).doubleValue());
        j0Var.X(2);
        return date;
    }

    private static Double j(j0 j0Var) {
        return Double.valueOf(Double.longBitsToDouble(j0Var.A()));
    }

    private static HashMap k(j0 j0Var) {
        int iL = j0Var.L();
        HashMap map = new HashMap(iL);
        for (int i11 = 0; i11 < iL; i11++) {
            String strN = n(j0Var);
            Object objH = h(j0Var, o(j0Var));
            if (objH != null) {
                map.put(strN, objH);
            }
        }
        return map;
    }

    private static HashMap l(j0 j0Var) {
        HashMap map = new HashMap();
        while (true) {
            String strN = n(j0Var);
            int iO = o(j0Var);
            if (iO == 9) {
                return map;
            }
            Object objH = h(j0Var, iO);
            if (objH != null) {
                map.put(strN, objH);
            }
        }
    }

    private static ArrayList m(j0 j0Var) {
        int iL = j0Var.L();
        ArrayList arrayList = new ArrayList(iL);
        for (int i11 = 0; i11 < iL; i11++) {
            Object objH = h(j0Var, o(j0Var));
            if (objH != null) {
                arrayList.add(objH);
            }
        }
        return arrayList;
    }

    private static String n(j0 j0Var) {
        int iP = j0Var.P();
        int iF = j0Var.f();
        j0Var.X(iP);
        return new String(j0Var.e(), iF, iP);
    }

    private static int o(j0 j0Var) {
        return j0Var.H();
    }

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean b(j0 j0Var) {
        return true;
    }

    @Override // androidx.media3.extractor.flv.TagPayloadReader
    protected boolean c(j0 j0Var, long j11) {
        if (o(j0Var) != 2 || !"onMetaData".equals(n(j0Var)) || j0Var.a() == 0 || o(j0Var) != 8) {
            return false;
        }
        HashMap mapK = k(j0Var);
        Object obj = mapK.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.f13423b = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = mapK.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.f13424c = new long[size];
                this.f13425d = new long[size];
                for (int i11 = 0; i11 < size; i11++) {
                    Object obj5 = list.get(i11);
                    Object obj6 = list2.get(i11);
                    if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                        this.f13424c = new long[0];
                        this.f13425d = new long[0];
                        break;
                    }
                    this.f13424c[i11] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                    this.f13425d[i11] = ((Double) obj5).longValue();
                }
            }
        }
        return false;
    }

    public long d() {
        return this.f13423b;
    }

    public long[] e() {
        return this.f13425d;
    }

    public long[] f() {
        return this.f13424c;
    }
}
