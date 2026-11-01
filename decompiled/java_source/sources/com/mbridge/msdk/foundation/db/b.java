package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class b extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile b f35068a;

    public b(f fVar) {
        super(fVar);
    }

    public static b a(Context context) {
        if (f35068a == null) {
            synchronized (b.class) {
                try {
                    if (f35068a == null) {
                        f35068a = new b(g.a(context));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35068a;
    }

    public int a() {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return 0;
            }
            return writableDatabase.delete("bid_replace_campaign", "is_replace = 0", null);
        } catch (Exception e11) {
            o0.b("BidReplaceCampaignDao", e11.getLocalizedMessage());
            return 0;
        }
    }

    public int a(String str) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return 0;
            }
            return writableDatabase.delete("bid_replace_campaign", "real_request_id = ? AND is_replace = 1", new String[]{str});
        } catch (Exception e11) {
            o0.b("BidReplaceCampaignDao", e11.getLocalizedMessage());
            return 0;
        }
    }

    public int a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || getWritableDatabase() == null) {
            return 0;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("expect_encrypt_price", str3);
            return getWritableDatabase().update("bid_replace_campaign", contentValues, "bid_unit_id = ? AND expect_bid_token = ?", new String[]{str2, str});
        } catch (Exception e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00d0 A[PHI: r2
  0x00d0: PHI (r2v6 android.database.Cursor) = (r2v5 android.database.Cursor), (r2v7 android.database.Cursor) binds: [B:30:0x00ce, B:24:0x00bf] A[DONT_GENERATE, DONT_INLINE]] */
    public List<com.mbridge.msdk.foundation.entity.d> a(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return arrayList;
        }
        Cursor cursorRawQuery = null;
        try {
            try {
                synchronized (new Object()) {
                    cursorRawQuery = getReadableDatabase().rawQuery("SELECT * FROM bid_replace_campaign WHERE bid_unit_id = ? AND real_request_id = ?", new String[]{str, str2});
                }
                if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
                    while (cursorRawQuery.moveToNext()) {
                        com.mbridge.msdk.foundation.entity.d dVar = new com.mbridge.msdk.foundation.entity.d();
                        String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("bid_unit_id"));
                        String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("expect_bid_token"));
                        String string3 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("expect_encrypt_price"));
                        String string4 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("real_request_id"));
                        String string5 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("real_encrypt_price"));
                        int i11 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("real_token_rule"));
                        int i12 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("is_replace"));
                        dVar.a(string);
                        dVar.b(string2);
                        dVar.c(string3);
                        dVar.e(string4);
                        dVar.d(string5);
                        dVar.b(i11);
                        dVar.a(i12);
                        arrayList.add(dVar);
                    }
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            } catch (Exception e11) {
                o0.b("BidReplaceCampaignDao", e11.getLocalizedMessage());
                if (0 != 0) {
                    cursorRawQuery.close();
                }
            }
            return arrayList;
        } catch (Throwable th2) {
            if (0 != 0) {
                cursorRawQuery.close();
            }
            throw th2;
        }
    }

    public void a(String str, List<CampaignEx> list) {
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
            return;
        }
        try {
            String requestId = list.get(0).getRequestId();
            String encryptPrice = list.get(0).getEncryptPrice();
            String campaignUnitId = list.get(0).getCampaignUnitId();
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("bid_unit_id", campaignUnitId);
            contentValues.put("expect_bid_token", str);
            contentValues.put("expect_encrypt_price", "");
            contentValues.put("real_request_id", requestId);
            contentValues.put("real_encrypt_price", encryptPrice);
            contentValues.put("real_token_rule", (Integer) 1);
            contentValues.put("is_replace", (Integer) 0);
            writableDatabase.insert("bid_replace_campaign", null, contentValues);
            o0.b("HBOPTIMIZE", "插入数据到对应关系表 期望 bidToken 值" + str + "+ 用于替换期望Offer 的RequestId " + requestId);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public int b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || getWritableDatabase() == null) {
            return 0;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_replace", (Integer) 1);
            return getWritableDatabase().update("bid_replace_campaign", contentValues, "bid_unit_id = ? AND expect_bid_token = ?", new String[]{str2, str});
        } catch (Exception e11) {
            e11.printStackTrace();
            return 0;
        }
    }
}
