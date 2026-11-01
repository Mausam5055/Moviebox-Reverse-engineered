package z4;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class h implements b2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Class f79229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Enum[] f79230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final Enum[] f79231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected long[] f79232d;

    public h(Class cls) {
        x4.b bVar;
        this.f79229a = cls;
        this.f79231c = (Enum[]) cls.getEnumConstants();
        HashMap map = new HashMap();
        int i11 = 0;
        while (true) {
            Enum[] enumArr = this.f79231c;
            if (i11 >= enumArr.length) {
                break;
            }
            Enum r11 = enumArr[i11];
            String strName = r11.name();
            x4.b bVar2 = null;
            try {
                bVar = (x4.b) TypeUtils.O(cls.getField(strName), x4.b.class);
                if (bVar != null) {
                    try {
                        String strName2 = bVar.name();
                        if (strName2 != null && strName2.length() > 0) {
                            strName = strName2;
                        }
                    } catch (Exception unused) {
                        bVar2 = bVar;
                        bVar = bVar2;
                    }
                }
            } catch (Exception unused2) {
            }
            int i12 = 0;
            long j11 = -3750763034362895579L;
            long j12 = -3750763034362895579L;
            while (i12 < strName.length()) {
                int iCharAt = strName.charAt(i12);
                long j13 = ((long) iCharAt) ^ j11;
                if (iCharAt >= 65 && iCharAt <= 90) {
                    iCharAt += 32;
                }
                j12 = (((long) iCharAt) ^ j12) * 1099511628211L;
                i12++;
                j11 = j13 * 1099511628211L;
            }
            map.put(Long.valueOf(j11), r11);
            if (j11 != j12) {
                map.put(Long.valueOf(j12), r11);
            }
            if (bVar != null) {
                String[] strArrAlternateNames = bVar.alternateNames();
                int length = strArrAlternateNames.length;
                int i13 = 0;
                while (i13 < length) {
                    String str = strArrAlternateNames[i13];
                    int i14 = 0;
                    long jCharAt = -3750763034362895579L;
                    while (i14 < str.length()) {
                        jCharAt = (jCharAt ^ ((long) str.charAt(i14))) * 1099511628211L;
                        i14++;
                        i11 = i11;
                    }
                    int i15 = i11;
                    if (jCharAt != j11 && jCharAt != j12) {
                        map.put(Long.valueOf(jCharAt), r11);
                    }
                    i13++;
                    i11 = i15;
                }
            }
            i11++;
        }
        this.f79232d = new long[map.size()];
        Iterator it = map.keySet().iterator();
        int i16 = 0;
        while (it.hasNext()) {
            this.f79232d[i16] = ((Long) it.next()).longValue();
            i16++;
        }
        Arrays.sort(this.f79232d);
        this.f79230b = new Enum[this.f79232d.length];
        int i17 = 0;
        while (true) {
            long[] jArr = this.f79232d;
            if (i17 >= jArr.length) {
                return;
            }
            this.f79230b[i17] = (Enum) map.get(Long.valueOf(jArr[i17]));
            i17++;
        }
    }

    public Enum a(long j11) {
        int iBinarySearch;
        if (this.f79230b != null && (iBinarySearch = Arrays.binarySearch(this.f79232d, j11)) >= 0) {
            return this.f79230b[iBinarySearch];
        }
        return null;
    }

    @Override // z4.b2
    public int b() {
        return 2;
    }

    @Override // z4.b2
    public Object c(y4.a aVar, Type type, Object obj) {
        try {
            y4.b bVar = aVar.f78831f;
            int iQ0 = bVar.q0();
            if (iQ0 == 2) {
                int iO = bVar.o();
                bVar.c0(16);
                if (iO >= 0) {
                    Enum[] enumArr = this.f79231c;
                    if (iO < enumArr.length) {
                        return enumArr[iO];
                    }
                }
                throw new JSONException("parse enum " + this.f79229a.getName() + " error, value : " + iO);
            }
            if (iQ0 != 4) {
                if (iQ0 == 8) {
                    bVar.c0(16);
                    return null;
                }
                throw new JSONException("parse enum " + this.f79229a.getName() + " error, value : " + aVar.T());
            }
            String strK0 = bVar.k0();
            bVar.c0(16);
            if (strK0.length() == 0) {
                return null;
            }
            long j11 = -3750763034362895579L;
            long j12 = -3750763034362895579L;
            for (int i11 = 0; i11 < strK0.length(); i11++) {
                int iCharAt = strK0.charAt(i11);
                long j13 = j11 ^ ((long) iCharAt);
                if (iCharAt >= 65 && iCharAt <= 90) {
                    iCharAt += 32;
                }
                j11 = j13 * 1099511628211L;
                j12 = (j12 ^ ((long) iCharAt)) * 1099511628211L;
            }
            Enum enumA = a(j11);
            if (enumA == null && j12 != j11) {
                enumA = a(j12);
            }
            if (enumA == null && bVar.n(Feature.ErrorOnEnumNotMatch)) {
                throw new JSONException("not match enum value, " + this.f79229a.getName() + " : " + strK0);
            }
            return enumA;
        } catch (JSONException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new JSONException(e12.getMessage(), e12);
        }
    }

    public Enum d(int i11) {
        return this.f79231c[i11];
    }
}
