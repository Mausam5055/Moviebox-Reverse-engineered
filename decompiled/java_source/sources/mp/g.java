package mp;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f69681a = new g();

    private g() {
    }

    public final int a(Context context, float f11) {
        Intrinsics.h(context, "context");
        return (int) ((f11 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final gp.a b(Context context, Uri uri) {
        Intrinsics.h(context, "context");
        if (uri == null) {
            return null;
        }
        String[] strArr = {"_data", CampaignEx.JSON_KEY_TITLE, "artist", "_size", "height", "width", "duration"};
        gp.a aVar = new gp.a();
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, strArr, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        aVar.j(cursorQuery.getString(cursorQuery.getColumnIndex("_data")));
                        aVar.l(cursorQuery.getString(cursorQuery.getColumnIndex(CampaignEx.JSON_KEY_TITLE)));
                        aVar.h(cursorQuery.getLong(cursorQuery.getColumnIndex("duration")));
                        aVar.g(cursorQuery.getString(cursorQuery.getColumnIndex("artist")));
                        aVar.k(cursorQuery.getLong(cursorQuery.getColumnIndex("_size")));
                        aVar.m(cursorQuery.getInt(cursorQuery.getColumnIndex("width")));
                        aVar.i(cursorQuery.getInt(cursorQuery.getColumnIndex("height")));
                        String strE = aVar.e();
                        long jA = aVar.a();
                        String strC = aVar.c();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("ContentUri:title-");
                        sb2.append(strE);
                        sb2.append(" duration:");
                        sb2.append(jA);
                        sb2.append(" ");
                        sb2.append(strC);
                        sb2.append(" \n uri:");
                        sb2.append(uri);
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(cursorQuery, th2);
                        throw th3;
                    }
                }
            }
            Unit unit = Unit.f67061a;
            CloseableKt.a(cursorQuery, null);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return aVar;
    }
}
