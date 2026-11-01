package be;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class f implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Uri f16390a;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f16391a = new f();
    }

    public f() {
        if (com.cloud.sdk.commonutil.util.e.a() == null) {
            AdLogUtil.Log().e("ssp", "HSCoreUtil is not init now");
            return;
        }
        this.f16390a = Uri.parse("content://" + com.cloud.sdk.commonutil.util.e.a().getPackageName() + ".HisavanaConfigContentProvider/config");
    }

    public static f d() {
        return b.f16391a;
    }

    @Override // be.j
    public void a() {
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(this.f16390a, null, null);
        } catch (Exception e11) {
            AdLogUtil.Log().e("CloudProviderManager", Log.getStackTraceString(e11));
        }
    }

    @Override // be.j
    public void a(CloudControlConfig.CodeSeat codeSeat) {
        if (codeSeat == null) {
            AdLogUtil.Log().d("CloudProviderManager", "updateConfig codeSeat is null");
            return;
        }
        try {
            ContentResolver contentResolver = com.cloud.sdk.commonutil.util.e.a().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put(codeSeat.getCodeSeatId(), GsonUtil.d(codeSeat));
            int iUpdate = contentResolver.update(this.f16390a, contentValues, codeSeat.getCodeSeatId(), null);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("updateConfig result ");
            sb2.append(iUpdate);
        } catch (Exception e11) {
            AdLogUtil.Log().e("CloudProviderManager", Log.getStackTraceString(e11));
        }
    }

    @Override // be.j
    public boolean a(List list) {
        if (list == null || list.isEmpty()) {
            AdLogUtil.Log().d("CloudProviderManager", "insert seatList is null or empty");
            return false;
        }
        ContentResolver contentResolver = com.cloud.sdk.commonutil.util.e.a().getContentResolver();
        ContentValues contentValues = new ContentValues();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CloudControlConfig.CodeSeat codeSeat = (CloudControlConfig.CodeSeat) it.next();
            if (codeSeat != null) {
                contentValues.put(codeSeat.getCodeSeatId(), GsonUtil.d(codeSeat));
            }
        }
        Uri uriInsert = contentResolver.insert(this.f16390a, contentValues);
        String path = uriInsert != null ? uriInsert.getPath() : null;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("insert sResult ");
        sb2.append(uriInsert);
        return path != null && path.endsWith("true");
    }

    @Override // be.j
    public long b() {
        List listC = c();
        if (listC == null) {
            return 0L;
        }
        return listC.size();
    }

    @Override // be.j
    public List c() {
        String[] strArr;
        if (TAdManager.getCodeSeatIds() == null || TAdManager.getCodeSeatIds().isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ContentResolver contentResolver = com.cloud.sdk.commonutil.util.e.a().getContentResolver();
        String[] strArr2 = new String[0];
        List<String> codeSeatIds = TAdManager.getCodeSeatIds();
        if (codeSeatIds == null || codeSeatIds.isEmpty()) {
            AdLogUtil.Log().d("CloudProviderManager", "getAllCodeSeats codeIds is empty");
            strArr = strArr2;
        } else {
            int size = codeSeatIds.size();
            String[] strArr3 = new String[size];
            for (int i11 = 0; i11 < size; i11++) {
                strArr3[i11] = codeSeatIds.get(i11);
            }
            AdLogUtil.Log().d("CloudProviderManager", "getAllCodeSeats codeIds " + codeSeatIds);
            strArr = strArr3;
        }
        Cursor cursorQuery = contentResolver.query(this.f16390a, strArr, null, null, null);
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                try {
                    try {
                        int columnIndex = cursorQuery.getColumnIndex("json");
                        if (columnIndex >= 0) {
                            arrayList.add((CloudControlConfig.CodeSeat) GsonUtil.a(cursorQuery.getString(columnIndex), CloudControlConfig.CodeSeat.class));
                        }
                    } catch (Exception e11) {
                        AdLogUtil.Log().e("CloudProviderManager", Log.getStackTraceString(e11));
                        cursorQuery.close();
                    }
                } catch (Throwable th2) {
                    cursorQuery.close();
                    throw th2;
                }
            }
            cursorQuery.close();
        }
        return arrayList;
    }
}
