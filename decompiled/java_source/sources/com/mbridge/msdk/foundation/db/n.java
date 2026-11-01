package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.o;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.y0;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class n extends a<com.mbridge.msdk.foundation.entity.m> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f35114a = "com.mbridge.msdk.foundation.db.n";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static n f35115b;

    private n(f fVar) {
        super(fVar);
    }

    public static n a(f fVar) {
        if (f35115b == null) {
            synchronized (n.class) {
                try {
                    if (f35115b == null) {
                        f35115b = new n(fVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35115b;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0026 A[EXC_TOP_SPLITTER, PHI: r0 r1
  0x0026: PHI (r0v4 int) = (r0v0 int), (r0v6 int) binds: [B:17:0x0024, B:14:0x001e] A[DONT_GENERATE, DONT_INLINE]
  0x0026: PHI (r1v3 android.database.Cursor) = (r1v2 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:17:0x0024, B:14:0x001e] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public synchronized int a() {
        int i11;
        i11 = 0;
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = getReadableDatabase().rawQuery("select count(*) from reward_report", null);
                if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
                    i11 = cursorRawQuery.getInt(0);
                }
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            }
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                try {
                    cursorRawQuery.close();
                } catch (Exception unused2) {
                }
            }
            throw th2;
        }
        return i11;
    }

    public synchronized long a(com.mbridge.msdk.foundation.entity.m mVar) {
        try {
            if (mVar != null) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("key", mVar.n());
                    contentValues.put(NetworkBridge.KEY_NETWORK_TYPE, Integer.valueOf(mVar.q()));
                    contentValues.put("network_str", mVar.r());
                    contentValues.put("isCompleteView", Integer.valueOf(mVar.m()));
                    contentValues.put("watchedMillis", Integer.valueOf(mVar.F()));
                    contentValues.put(MRAIDPresenter.VIDEO_LENGTH, Integer.valueOf(mVar.C()));
                    if (!TextUtils.isEmpty(mVar.s())) {
                        contentValues.put("offerUrl", mVar.s());
                    }
                    if (!TextUtils.isEmpty(mVar.t())) {
                        contentValues.put("reason", URLEncoder.encode(mVar.t(), "utf-8"));
                    }
                    contentValues.put("result", Integer.valueOf(mVar.x()));
                    contentValues.put("duration", mVar.g());
                    contentValues.put("videoSize", Long.valueOf(mVar.D()));
                    contentValues.put(NativeComponentConstants.KEY_COMPONENT_TYPE, mVar.h());
                    String strI = mVar.i();
                    if (!TextUtils.isEmpty(strI)) {
                        contentValues.put("endcard_url", strI);
                    }
                    String strE = mVar.E();
                    if (!TextUtils.isEmpty(strE)) {
                        contentValues.put(CampaignEx.JSON_KEY_VIDEO_URL, strE);
                    }
                    String strU = mVar.u();
                    if (!TextUtils.isEmpty(strU)) {
                        contentValues.put("rid", strU);
                    }
                    String strV = mVar.v();
                    if (!TextUtils.isEmpty(strV)) {
                        contentValues.put("rid_n", strV);
                    }
                    String strZ = mVar.z();
                    if (!TextUtils.isEmpty(strZ)) {
                        contentValues.put("template_url", strZ);
                    }
                    String strL = mVar.l();
                    if (!TextUtils.isEmpty(strL)) {
                        contentValues.put("image_url", strL);
                    }
                    String strA = mVar.a();
                    if (!TextUtils.isEmpty(strA)) {
                        contentValues.put("ad_type", URLEncoder.encode(strA, "utf-8"));
                    }
                    contentValues.put("unitId", mVar.B());
                    contentValues.put("campaignId", mVar.d());
                    if ("2000039".equals(mVar.n())) {
                        String strB = o.b(mVar);
                        if (y0.b(strB)) {
                            contentValues.put("h5_click_data", strB);
                        }
                    }
                    String strW = mVar.w();
                    if (!TextUtils.isEmpty(strW)) {
                        contentValues.put("resource_type", URLEncoder.encode(strW, "utf-8"));
                    }
                    String strF = mVar.f();
                    if (!TextUtils.isEmpty(strF)) {
                        contentValues.put("device_id", URLEncoder.encode(strF, "utf-8"));
                    }
                    String strE2 = mVar.e();
                    if (!TextUtils.isEmpty(strE2)) {
                        contentValues.put("creative", URLEncoder.encode(strE2, "utf-8"));
                    }
                    contentValues.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, Integer.valueOf(mVar.b()));
                    return getWritableDatabase().insert("reward_report", null, contentValues);
                } catch (Exception e11) {
                    o0.b(f35114a, e11.getMessage());
                }
            }
            return -1L;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:141:0x035d A[EXC_TOP_SPLITTER, PHI: r11
  0x035d: PHI (r11v3 android.database.Cursor) = (r11v2 android.database.Cursor), (r11v14 android.database.Cursor) binds: [B:123:0x035b, B:117:0x0348] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x0363 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:163:0x02f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x02fb  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public synchronized List<com.mbridge.msdk.foundation.entity.m> a(String str) {
        Cursor cursor;
        Cursor cursorQuery;
        Cursor cursor2;
        com.mbridge.msdk.foundation.entity.m mVar;
        String str2;
        ArrayList arrayList;
        Cursor cursor3;
        com.mbridge.msdk.foundation.entity.m mVar2;
        String str3 = str;
        synchronized (this) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    cursorQuery = getReadableDatabase().query("reward_report", null, "key=?", new String[]{str}, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.getCount() > 0) {
                                ArrayList arrayList2 = new ArrayList();
                                while (cursorQuery.moveToNext()) {
                                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("key"));
                                    int i11 = cursorQuery.getInt(cursorQuery.getColumnIndex(NetworkBridge.KEY_NETWORK_TYPE));
                                    String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("network_str"));
                                    cursorQuery.getInt(cursorQuery.getColumnIndex("isCompleteView"));
                                    cursorQuery.getInt(cursorQuery.getColumnIndex("watchedMillis"));
                                    int i12 = cursorQuery.getInt(cursorQuery.getColumnIndex(MRAIDPresenter.VIDEO_LENGTH));
                                    String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("offerUrl"));
                                    String string4 = cursorQuery.getString(cursorQuery.getColumnIndex("reason"));
                                    int i13 = cursorQuery.getInt(cursorQuery.getColumnIndex("result"));
                                    String string5 = cursorQuery.getString(cursorQuery.getColumnIndex("duration"));
                                    int i14 = cursorQuery.getInt(cursorQuery.getColumnIndex("videoSize"));
                                    String string6 = cursorQuery.getString(cursorQuery.getColumnIndex("campaignId"));
                                    String string7 = cursorQuery.getString(cursorQuery.getColumnIndex(CampaignEx.JSON_KEY_VIDEO_URL));
                                    String string8 = cursorQuery.getString(cursorQuery.getColumnIndex("unitId"));
                                    String string9 = cursorQuery.getString(cursorQuery.getColumnIndex("rid"));
                                    String string10 = cursorQuery.getString(cursorQuery.getColumnIndex("rid_n"));
                                    String string11 = cursorQuery.getString(cursorQuery.getColumnIndex("ad_type"));
                                    String string12 = cursorQuery.getString(cursorQuery.getColumnIndex("resource_type"));
                                    ArrayList arrayList3 = arrayList2;
                                    String string13 = cursorQuery.getString(cursorQuery.getColumnIndex("device_id"));
                                    String string14 = cursorQuery.getString(cursorQuery.getColumnIndex("creative"));
                                    int i15 = cursorQuery.getInt(cursorQuery.getColumnIndex(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T));
                                    if (str3.equals("2000021")) {
                                        try {
                                            try {
                                                mVar = new com.mbridge.msdk.foundation.entity.m(string, i11, string3, string4, string2);
                                                mVar.b(string6);
                                                mVar.v(string7);
                                                mVar.n(string9);
                                                mVar.o(string10);
                                                mVar.u(string8);
                                                str2 = str3;
                                                cursor2 = cursorQuery;
                                                if (mVar != null) {
                                                    try {
                                                        arrayList = arrayList3;
                                                        arrayList.add(mVar);
                                                    } catch (Exception e11) {
                                                        e = e11;
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        cursor = cursor2;
                                                        if (cursor != null) {
                                                            try {
                                                                cursor.close();
                                                            } catch (Exception unused) {
                                                            }
                                                        }
                                                        throw th;
                                                    }
                                                } else {
                                                    arrayList = arrayList3;
                                                }
                                                int i16 = cursor2.getInt(cursor2.getColumnIndex("id"));
                                                getWritableDatabase().delete("reward_report", "id = ?", new String[]{i16 + ""});
                                                arrayList2 = arrayList;
                                                cursorQuery = cursor2;
                                                str3 = str2;
                                            } catch (Exception e12) {
                                                e = e12;
                                                e.printStackTrace();
                                                o0.b(f35114a, e.getMessage());
                                                if (cursorQuery != null) {
                                                    try {
                                                        cursorQuery.close();
                                                    } catch (Exception unused2) {
                                                    }
                                                }
                                                return null;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            cursor = cursorQuery;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            throw th;
                                        }
                                    } else if (str3.equals("2000022")) {
                                        try {
                                            cursor3 = cursorQuery;
                                            try {
                                                mVar = new com.mbridge.msdk.foundation.entity.m(string, i11, i12, string3, i13, string5, i14, string2);
                                                mVar.b(string6);
                                                mVar.v(string7);
                                                mVar.n(string9);
                                                mVar.u(string8);
                                                mVar.m(string4);
                                                mVar.o(string10);
                                                mVar.a(string11);
                                                str2 = str3;
                                                cursor2 = cursor3;
                                                if (mVar != null) {
                                                    arrayList = arrayList3;
                                                    arrayList.add(mVar);
                                                } else {
                                                    arrayList = arrayList3;
                                                }
                                                int i17 = cursor2.getInt(cursor2.getColumnIndex("id"));
                                                getWritableDatabase().delete("reward_report", "id = ?", new String[]{i17 + ""});
                                                arrayList2 = arrayList;
                                                cursorQuery = cursor2;
                                                str3 = str2;
                                            } catch (Exception e13) {
                                                e = e13;
                                                cursorQuery = cursor3;
                                                e.printStackTrace();
                                                o0.b(f35114a, e.getMessage());
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                                return null;
                                            } catch (Throwable th4) {
                                                th = th4;
                                                cursor = cursor3;
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                                throw th;
                                            }
                                        } catch (Exception e14) {
                                            e = e14;
                                        } catch (Throwable th5) {
                                            th = th5;
                                            cursor3 = cursorQuery;
                                        }
                                    } else {
                                        cursor3 = cursorQuery;
                                        try {
                                            if (str3.equals("2000025")) {
                                                mVar = new com.mbridge.msdk.foundation.entity.m(string, i11, i12, string3, i13, string5, i14, string2);
                                            } else {
                                                if (str3.equals("2000024")) {
                                                    mVar = new com.mbridge.msdk.foundation.entity.m(string, i11, string3, string4, string2);
                                                } else {
                                                    if ("2000039".equals(str3)) {
                                                        try {
                                                            mVar = new com.mbridge.msdk.foundation.entity.m(cursor3.getString(cursor3.getColumnIndex("h5_click_data")));
                                                            str2 = str3;
                                                            cursor2 = cursor3;
                                                        } catch (Exception e15) {
                                                            e = e15;
                                                            cursorQuery = cursor3;
                                                        } catch (Throwable th6) {
                                                            th = th6;
                                                            cursor = cursor3;
                                                            if (cursor != null) {
                                                                cursor.close();
                                                            }
                                                            throw th;
                                                        }
                                                    } else {
                                                        try {
                                                            if ("2000043".equals(str3)) {
                                                                try {
                                                                    String string15 = cursor3.getString(cursor3.getColumnIndex(NativeComponentConstants.KEY_COMPONENT_TYPE));
                                                                    String string16 = cursor3.getString(cursor3.getColumnIndex("endcard_url"));
                                                                    cursor3 = cursor3;
                                                                    com.mbridge.msdk.foundation.entity.m mVar3 = new com.mbridge.msdk.foundation.entity.m(str, i13, string5, string16, string6, string8, string4, string15);
                                                                    mVar3.n(string9);
                                                                    mVar3.o(string10);
                                                                    if (!TextUtils.isEmpty(string6)) {
                                                                        mVar3.b(string6);
                                                                    }
                                                                    mVar3.a(i15);
                                                                    mVar3.a(string11);
                                                                    mVar3.p(string12);
                                                                    mVar3.d(string13);
                                                                    mVar3.c(string14);
                                                                    str2 = str;
                                                                    mVar = mVar3;
                                                                    cursor2 = cursor3;
                                                                } catch (Exception e16) {
                                                                    e = e16;
                                                                    cursor3 = cursor3;
                                                                    cursorQuery = cursor3;
                                                                    e.printStackTrace();
                                                                    o0.b(f35114a, e.getMessage());
                                                                    if (cursorQuery != null) {
                                                                        cursorQuery.close();
                                                                    }
                                                                    return null;
                                                                } catch (Throwable th7) {
                                                                    th = th7;
                                                                    cursor3 = cursor3;
                                                                    cursor = cursor3;
                                                                    if (cursor != null) {
                                                                        cursor.close();
                                                                    }
                                                                    throw th;
                                                                }
                                                            } else {
                                                                cursor3 = cursor3;
                                                                str2 = str;
                                                                if ("2000045".equals(str2)) {
                                                                    mVar2 = new com.mbridge.msdk.foundation.entity.m();
                                                                    mVar2.j(str2);
                                                                    mVar2.c(i11);
                                                                    mVar2.d(i13);
                                                                    mVar2.b(string6);
                                                                    cursor2 = cursor3;
                                                                    mVar2.t(cursor2.getString(cursor2.getColumnIndex("template_url")));
                                                                    mVar2.m(string4);
                                                                    mVar2.n(string9);
                                                                    mVar2.o(string10);
                                                                    mVar2.u(string8);
                                                                } else {
                                                                    cursor2 = cursor3;
                                                                    if ("2000044".equals(str2)) {
                                                                        mVar2 = new com.mbridge.msdk.foundation.entity.m();
                                                                        mVar2.j(str2);
                                                                        mVar2.c(i11);
                                                                        mVar2.b(string6);
                                                                        mVar2.i(cursor2.getString(cursor2.getColumnIndex("image_url")));
                                                                        mVar2.m(string4);
                                                                        mVar2.n(string9);
                                                                        mVar2.o(string10);
                                                                        mVar2.u(string8);
                                                                    } else if ("2000054".equals(str2)) {
                                                                        com.mbridge.msdk.foundation.entity.m mVar4 = new com.mbridge.msdk.foundation.entity.m();
                                                                        mVar4.j(str2);
                                                                        mVar4.p(string12);
                                                                        mVar4.u(string8);
                                                                        mVar4.d(string13);
                                                                        mVar4.a(string11);
                                                                        mVar4.b(string6);
                                                                        mVar4.n(string9);
                                                                        mVar4.o(string10);
                                                                        mVar4.d(i13);
                                                                        mVar4.m(string4);
                                                                        mVar4.c(i11);
                                                                        mVar4.c(string14);
                                                                        mVar4.a(i15);
                                                                        mVar = mVar4;
                                                                    } else {
                                                                        mVar = null;
                                                                    }
                                                                }
                                                                mVar = mVar2;
                                                            }
                                                        } catch (Exception e17) {
                                                            e = e17;
                                                            cursor2 = cursor3;
                                                        } catch (Throwable th8) {
                                                            th = th8;
                                                            cursor2 = cursor3;
                                                            cursor = cursor2;
                                                            if (cursor != null) {
                                                                cursor.close();
                                                            }
                                                            throw th;
                                                        }
                                                    }
                                                    if (mVar != null) {
                                                        arrayList = arrayList3;
                                                        arrayList.add(mVar);
                                                    } else {
                                                        arrayList = arrayList3;
                                                    }
                                                    int i18 = cursor2.getInt(cursor2.getColumnIndex("id"));
                                                    getWritableDatabase().delete("reward_report", "id = ?", new String[]{i18 + ""});
                                                    arrayList2 = arrayList;
                                                    cursorQuery = cursor2;
                                                    str3 = str2;
                                                }
                                                cursorQuery = cursor2;
                                                e.printStackTrace();
                                                o0.b(f35114a, e.getMessage());
                                                if (cursorQuery != null) {
                                                    cursorQuery.close();
                                                }
                                            }
                                            str2 = str3;
                                            cursor2 = cursor3;
                                            if (mVar != null) {
                                                arrayList = arrayList3;
                                                arrayList.add(mVar);
                                            } else {
                                                arrayList = arrayList3;
                                            }
                                            int i19 = cursor2.getInt(cursor2.getColumnIndex("id"));
                                            getWritableDatabase().delete("reward_report", "id = ?", new String[]{i19 + ""});
                                            arrayList2 = arrayList;
                                            cursorQuery = cursor2;
                                            str3 = str2;
                                        } catch (Exception e18) {
                                            e = e18;
                                            cursor2 = cursor3;
                                        } catch (Throwable th9) {
                                            th = th9;
                                            cursor2 = cursor3;
                                        }
                                    }
                                }
                                ArrayList arrayList4 = arrayList2;
                                try {
                                    cursorQuery.close();
                                } catch (Exception unused3) {
                                }
                                return arrayList4;
                            }
                        } catch (Exception e19) {
                            e = e19;
                        } catch (Throwable th10) {
                            th = th10;
                            cursor2 = cursorQuery;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery = cursorQuery;
                        cursorQuery.close();
                    }
                } catch (Exception e20) {
                    e = e20;
                    cursorQuery = null;
                } catch (Throwable th11) {
                    th = th11;
                    cursor = null;
                }
            }
            return null;
        }
    }
}
