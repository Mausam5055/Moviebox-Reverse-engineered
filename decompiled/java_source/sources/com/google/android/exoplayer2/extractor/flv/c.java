package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.util.d0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g9.k;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class c extends TagPayloadReader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f25063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f25064c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long[] f25065d;

    public c() {
        super(new k());
        this.f25063b = C.TIME_UNSET;
        this.f25064c = new long[0];
        this.f25065d = new long[0];
    }

    private static Boolean g(d0 d0Var) {
        return Boolean.valueOf(d0Var.D() == 1);
    }

    private static Object h(d0 d0Var, int i11) {
        if (i11 == 0) {
            return j(d0Var);
        }
        if (i11 == 1) {
            return g(d0Var);
        }
        if (i11 == 2) {
            return n(d0Var);
        }
        if (i11 == 3) {
            return l(d0Var);
        }
        if (i11 == 8) {
            return k(d0Var);
        }
        if (i11 == 10) {
            return m(d0Var);
        }
        if (i11 != 11) {
            return null;
        }
        return i(d0Var);
    }

    private static Date i(d0 d0Var) {
        Date date = new Date((long) j(d0Var).doubleValue());
        d0Var.Q(2);
        return date;
    }

    private static Double j(d0 d0Var) {
        return Double.valueOf(Double.longBitsToDouble(d0Var.w()));
    }

    private static HashMap k(d0 d0Var) {
        int iH = d0Var.H();
        HashMap map = new HashMap(iH);
        for (int i11 = 0; i11 < iH; i11++) {
            String strN = n(d0Var);
            Object objH = h(d0Var, o(d0Var));
            if (objH != null) {
                map.put(strN, objH);
            }
        }
        return map;
    }

    private static HashMap l(d0 d0Var) {
        HashMap map = new HashMap();
        while (true) {
            String strN = n(d0Var);
            int iO = o(d0Var);
            if (iO == 9) {
                return map;
            }
            Object objH = h(d0Var, iO);
            if (objH != null) {
                map.put(strN, objH);
            }
        }
    }

    private static ArrayList m(d0 d0Var) {
        int iH = d0Var.H();
        ArrayList arrayList = new ArrayList(iH);
        for (int i11 = 0; i11 < iH; i11++) {
            Object objH = h(d0Var, o(d0Var));
            if (objH != null) {
                arrayList.add(objH);
            }
        }
        return arrayList;
    }

    private static String n(d0 d0Var) {
        int iJ = d0Var.J();
        int iE = d0Var.e();
        d0Var.Q(iJ);
        return new String(d0Var.d(), iE, iJ);
    }

    private static int o(d0 d0Var) {
        return d0Var.D();
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(d0 d0Var) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(d0 d0Var, long j11) {
        if (o(d0Var) != 2 || !"onMetaData".equals(n(d0Var)) || d0Var.a() == 0 || o(d0Var) != 8) {
            return false;
        }
        HashMap mapK = k(d0Var);
        Object obj = mapK.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.f25063b = (long) (dDoubleValue * 1000000.0d);
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
                this.f25064c = new long[size];
                this.f25065d = new long[size];
                for (int i11 = 0; i11 < size; i11++) {
                    Object obj5 = list.get(i11);
                    Object obj6 = list2.get(i11);
                    if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                        this.f25064c = new long[0];
                        this.f25065d = new long[0];
                        break;
                    }
                    this.f25064c[i11] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                    this.f25065d[i11] = ((Double) obj5).longValue();
                }
            }
        }
        return false;
    }

    public long d() {
        return this.f25063b;
    }

    public long[] e() {
        return this.f25065d;
    }

    public long[] f() {
        return this.f25064c;
    }
}
