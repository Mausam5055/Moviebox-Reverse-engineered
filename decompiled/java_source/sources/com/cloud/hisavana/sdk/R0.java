package com.cloud.hisavana.sdk;

import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class R0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f21535e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final R0 f21536f = new R0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f21537a = TmcConstants.MINI_POPWINDOW_ADD_HOME_INTERVAL;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f21538b = 400;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f21539c = 500;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f21540d = "RetryTrackingDbManager";

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final R0 a() {
            return R0.f21536f;
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/R0$b", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class b extends TypeToken<List<? extends DiskTrackingBean>> {
        b() {
        }
    }

    private final q1 c(DiskTrackingBean diskTrackingBean) {
        return q1.f22849f.a(diskTrackingBean);
    }

    private final List d(Integer num) throws GsonUtil.GsonParseException {
        Pair pairA = num != null ? TuplesKt.a("SELECT tracking_data FROM retry_tracking_table_room LIMIT ?", new Integer[]{num}) : TuplesKt.a("SELECT tracking_data FROM retry_tracking_table_room", new Integer[0]);
        Cursor cursorA = HSRoomDatabase.v0().x0().a(new a4.a((String) pairA.component1(), (Integer[]) pairA.component2()));
        ArrayList arrayList = new ArrayList();
        while (cursorA.moveToNext()) {
            String string = cursorA.getString(0);
            Intrinsics.e(string);
            arrayList.add(string);
        }
        cursorA.close();
        if (arrayList.isEmpty()) {
            return new ArrayList();
        }
        Object objB = GsonUtil.b(arrayList.toString(), new b().getType());
        Intrinsics.g(objB, "fromJson(...)");
        return (List) objB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(DiskTrackingBean diskTrackingBean, R0 this$0) {
        Intrinsics.h(this$0, "this$0");
        if (diskTrackingBean != null) {
            HSRoomDatabase.v0().x0().b(this$0.c(diskTrackingBean));
        }
    }

    private final void g(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        HSRoomDatabase.v0().x0().d((String[]) list.toArray(new String[0]));
        e4.b().d(this.f21540d, "deleteByUUIDs ," + list + ' ');
    }

    private final void i() {
        HSRoomDatabase.v0().x0().a(System.currentTimeMillis() - this.f21537a);
    }

    private final List n() {
        return d(null);
    }

    public final void f(String uuid) {
        Intrinsics.h(uuid, "uuid");
        try {
            HSRoomDatabase.v0().x0().d(new String[]{uuid});
        } catch (Exception e11) {
            e4.b().e(this.f21540d, "deleteByUUID " + Log.getStackTraceString(e11));
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0084  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4, types: [android.database.Cursor] */
    public final DiskTrackingBean h(String uuid) throws Throwable {
        Throwable th2;
        Cursor cursorA;
        Intrinsics.h(uuid, "uuid");
        try {
            try {
                cursorA = HSRoomDatabase.v0().x0().a(new a4.a("SELECT tracking_data FROM retry_tracking_table_room WHERE uuid = ?", new String[]{uuid}));
                try {
                    if (cursorA.moveToNext()) {
                        if (cursorA.getColumnCount() <= 0) {
                            cursorA.close();
                            return null;
                        }
                        int columnIndex = cursorA.getColumnIndex("tracking_data");
                        if (columnIndex < 0) {
                            cursorA.close();
                            return null;
                        }
                        String string = cursorA.getString(columnIndex);
                        if (TextUtils.isEmpty(string)) {
                            cursorA.close();
                            return null;
                        }
                        DiskTrackingBean diskTrackingBean = (DiskTrackingBean) GsonUtil.a(string, DiskTrackingBean.class);
                        cursorA.close();
                        return diskTrackingBean;
                    }
                } catch (Exception e11) {
                    e = e11;
                    e4.b().e(this.f21540d, "queryByMd5 " + Log.getStackTraceString(e));
                    if (cursorA != null) {
                    }
                    return null;
                }
            } catch (Throwable th3) {
                th2 = th3;
                if (uuid != 0) {
                    uuid.close();
                }
                throw th2;
            }
        } catch (Exception e12) {
            e = e12;
            cursorA = null;
        } catch (Throwable th4) {
            th2 = th4;
            uuid = 0;
            if (uuid != 0) {
                uuid.close();
            }
            throw th2;
        }
        cursorA.close();
        return null;
    }

    public final void j(final DiskTrackingBean diskTrackingBean) {
        try {
            HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.p1
                @Override // java.lang.Runnable
                public final void run() {
                    R0.e(diskTrackingBean, this);
                }
            });
        } catch (Exception e11) {
            e4.b().e(this.f21540d, "saveTrackingBean " + Log.getStackTraceString(e11));
        }
    }

    public final void k() {
        try {
            List listA = HSRoomDatabase.v0().x0().a();
            int size = (listA == null || listA.size() < this.f21539c) ? 0 : listA.size() - this.f21538b;
            e4 e4VarB = e4.b();
            String str = this.f21540d;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("deleteTrackingBeanToSafeSpace count : ");
            sb2.append(size);
            sb2.append(",query?.count : ");
            sb2.append(listA != null ? Integer.valueOf(listA.size()) : null);
            sb2.append(' ');
            e4VarB.e(str, sb2.toString());
            if (size > 0) {
                List listD = d(Integer.valueOf(size));
                ArrayList arrayList = new ArrayList();
                Iterator it = listD.iterator();
                while (it.hasNext()) {
                    arrayList.add(((DiskTrackingBean) it.next()).getUuid());
                }
                g(arrayList);
            }
        } catch (Exception e11) {
            e4.b().e(this.f21540d, "deleteTrackingBeanToSafeSpace " + Log.getStackTraceString(e11));
        }
    }

    public final void l(DiskTrackingBean diskTrackingBean) {
        if (diskTrackingBean != null) {
            try {
                HSRoomDatabase.v0().x0().c(c(diskTrackingBean));
            } catch (Exception e11) {
                e4.b().e(this.f21540d, "updateTrackingBean " + Log.getStackTraceString(e11));
            }
        }
    }

    public final List m() {
        try {
            i();
            return n();
        } catch (Exception e11) {
            e4.b().e(this.f21540d, "getAllTrackingBeans " + Log.getStackTraceString(e11));
            return new ArrayList();
        }
    }
}
