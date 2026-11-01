package com.bytedance.sdk.component.vS.Sj.sP.sP;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.bytedance.sdk.component.vS.Sj.EjP;
import com.bytedance.sdk.component.vS.Sj.Sj.Sj.Jcg;
import com.bytedance.sdk.component.vS.Sj.vS;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    public static vS Sj;

    private static String EjP() {
        return Jcg.sP + "/ad_log_event/";
    }

    public static vS Sj(Context context) {
        try {
            if (Sj == null) {
                Sj = Dq.Jcg().uvD().Ym();
            }
        } catch (Exception unused) {
        }
        return Sj;
    }

    public static void Sj() {
        if (Dq.Jcg().vS() == null) {
            return;
        }
        try {
            vS vSVarSj = Sj(Dq.Jcg().vS());
            if (vSVarSj != null) {
                vSVarSj.Sj(Uri.parse(EjP() + "adLogStart"));
            }
        } catch (Throwable unused) {
        }
    }

    public static void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2) {
        if (sj2 == null) {
            return;
        }
        try {
            vS vSVarSj = Sj(Dq.Jcg().vS());
            if (vSVarSj != null) {
                vSVarSj.Sj(Uri.parse(EjP() + "adLogDispatch?event=" + com.bytedance.sdk.component.vS.Sj.Sj.Sj.vS.Sj(sj2.vS())));
            }
        } catch (Throwable th2) {
            th2.toString();
        }
    }

    public static void Sj(String str, List<String> list, boolean z10, int i11, String str2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb2.append(com.bytedance.sdk.component.vS.Sj.Sj.Sj.vS.Sj(it.next()));
                sb2.append(",");
            }
            String str3 = "?did=" + String.valueOf(str) + "&track=" + String.valueOf(com.bytedance.sdk.component.vS.Sj.Sj.Sj.vS.Sj(sb2.toString())) + "&replace=" + String.valueOf(z10) + "&urlType=" + String.valueOf(i11) + "&adId=" + str2;
            vS vSVarSj = Sj(Dq.Jcg().vS());
            if (vSVarSj != null) {
                vSVarSj.Sj(Uri.parse(EjP() + "trackAdUrl" + str3));
            }
        } catch (Throwable unused) {
        }
    }

    public static void Sj(String str, boolean z10) {
        if (Dq.Jcg().uvD().vS() == 0 && TextUtils.isEmpty(str)) {
            return;
        }
        try {
            vS vSVarSj = Sj(Dq.Jcg().vS());
            if (vSVarSj != null) {
                vSVarSj.Sj(Uri.parse(EjP() + "trackAdFailed?did=" + String.valueOf(str) + "&triggerOnInit=" + z10));
            }
        } catch (Throwable unused) {
        }
    }

    public static void sP() {
        if (Dq.Jcg().vS() == null) {
            return;
        }
        try {
            vS vSVarSj = Sj(Dq.Jcg().vS());
            if (vSVarSj != null) {
                vSVarSj.Sj(Uri.parse(EjP() + "adLogStop"));
            }
        } catch (Throwable unused) {
        }
    }

    public int Sj(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public int Sj(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public Cursor Sj(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public Uri Sj(Uri uri, ContentValues contentValues) {
        return null;
    }

    public String Sj(Uri uri) {
        com.bytedance.sdk.component.vS.Sj.EjP.Sj sjTKC;
        byte b11 = 2;
        String str = uri.getPath().split("/")[2];
        str.hashCode();
        int i11 = 0;
        switch (str.hashCode()) {
            case -482705237:
                b11 = str.equals("trackAdFailed") ? (byte) 0 : (byte) -1;
                break;
            case -171493183:
                b11 = str.equals("adLogStart") ? (byte) 1 : (byte) -1;
                break;
            case 964299715:
                if (!str.equals("adLogStop")) {
                    b11 = -1;
                }
                break;
            case 1025736635:
                b11 = str.equals("adLogDispatch") ? (byte) 3 : (byte) -1;
                break;
            case 1131732929:
                b11 = str.equals("trackAdUrl") ? (byte) 4 : (byte) -1;
                break;
            default:
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
                com.bytedance.sdk.component.vS.Sj.vS.Sj.Sj().Sj(uri.getQueryParameter("did"), uri.getBooleanQueryParameter("triggerOnInit", false));
                break;
            case 1:
                Dq.Jcg().uA();
                break;
            case 2:
                Dq.Jcg().Ym();
                break;
            case 3:
                String queryParameter = uri.getQueryParameter(NotificationCompat.CATEGORY_EVENT);
                if (!TextUtils.isEmpty(queryParameter) && (sjTKC = com.bytedance.sdk.component.vS.Sj.EjP.Sj.Sj.TKC(com.bytedance.sdk.component.vS.Sj.Sj.Sj.vS.sP(queryParameter))) != null) {
                    EjP.Sj.Sj(sjTKC);
                    break;
                }
                break;
            case 4:
                try {
                    String queryParameter2 = uri.getQueryParameter("did");
                    boolean zBooleanValue = Boolean.valueOf(uri.getQueryParameter("replace")).booleanValue();
                    String queryParameter3 = uri.getQueryParameter("track");
                    String queryParameter4 = uri.getQueryParameter("urlType");
                    String queryParameter5 = uri.getQueryParameter("adId");
                    String[] strArrSplit = com.bytedance.sdk.component.vS.Sj.Sj.Sj.vS.sP(queryParameter3).split(",");
                    if (strArrSplit.length > 0) {
                        ArrayList arrayList = new ArrayList();
                        for (String str2 : strArrSplit) {
                            String strSP = com.bytedance.sdk.component.vS.Sj.Sj.Sj.vS.sP(str2);
                            if (!TextUtils.isEmpty(strSP)) {
                                arrayList.add(strSP);
                            }
                        }
                        try {
                            if (!TextUtils.isEmpty(queryParameter4)) {
                                i11 = Integer.parseInt(queryParameter4);
                            }
                            break;
                        } catch (Exception unused) {
                        }
                        com.bytedance.sdk.component.vS.Sj.vS.Sj.Sj().Sj(queryParameter2, arrayList, zBooleanValue, null, i11, queryParameter5);
                    }
                } catch (Throwable unused2) {
                    return null;
                }
                break;
        }
        return null;
    }

    public String TKC() {
        return "ad_log_event";
    }
}
