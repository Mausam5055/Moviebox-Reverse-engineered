package com.transsion.moviedetail.staff;

import android.os.SystemClock;
import android.util.SparseArray;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.moviedetailapi.bean.Staff;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class w {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f47349c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f47347a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f47348b = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SparseArray f47350d = new SparseArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashSet f47351e = new HashSet();

    public final int a() {
        return this.f47347a;
    }

    public final int b() {
        return this.f47348b;
    }

    public final void c(int i11, long j11) {
        String staffId;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("reportBrowseEvent  staff----  position:");
            sb2.append(i11);
            sb2.append("  duration:");
            sb2.append(j11);
            List list = this.f47349c;
            Staff staff = list != null ? (Staff) list.get(i11) : null;
            if (this.f47351e.add(staff != null ? staff.getStaffId() : null)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("item_type", "staff");
                if (staff == null || (staffId = staff.getStaffId()) == null) {
                    staffId = "";
                }
                linkedHashMap.put("staff_id", staffId);
                linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i11));
                linkedHashMap.put("browse_duration", String.valueOf(j11));
                com.transsion.baselib.helper.a.f43262a.e("staff_info", linkedHashMap);
            }
        } catch (Exception unused) {
        }
    }

    public final void d(int i11, int i12) {
        int i13 = this.f47347a;
        if (i13 == i11 && this.f47348b == i12) {
            return;
        }
        if (i13 >= 0 && this.f47348b >= 0) {
            ArrayList arrayList = new ArrayList();
            IntIterator intIteratorA = androidx.core.util.k.a(this.f47350d);
            while (intIteratorA.hasNext()) {
                int iIntValue = intIteratorA.next().intValue();
                if (i11 > iIntValue || iIntValue > i12) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    Object obj = this.f47350d.get(iIntValue);
                    Intrinsics.g(obj, "get(...)");
                    c(iIntValue, jElapsedRealtime - ((Number) obj).longValue());
                    arrayList.add(Integer.valueOf(iIntValue));
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f47350d.remove(((Number) it.next()).intValue());
            }
            if (i11 <= i12) {
                int i14 = i11;
                while (true) {
                    if (this.f47350d.get(i14) == null) {
                        this.f47350d.put(i14, Long.valueOf(SystemClock.elapsedRealtime()));
                    }
                    if (i14 == i12) {
                        break;
                    } else {
                        i14++;
                    }
                }
            }
        } else if (i11 <= i12) {
            int i15 = i11;
            while (true) {
                this.f47350d.put(i15, Long.valueOf(SystemClock.elapsedRealtime()));
                if (i15 == i12) {
                    break;
                } else {
                    i15++;
                }
            }
        }
        this.f47347a = i11;
        this.f47348b = i12;
    }

    public final void e(List list) {
        this.f47349c = list;
    }
}
