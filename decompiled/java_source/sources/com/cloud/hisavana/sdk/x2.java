package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class x2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x2 f23083a = new x2();

    private x2() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(String filePath) {
        Intrinsics.h(filePath, "$filePath");
        HSRoomDatabase.v0().t0().a(filePath);
    }

    public final List b() {
        try {
            return HSRoomDatabase.v0().t0().a();
        } catch (Exception e11) {
            e4.b().w("DefaultDBManager", "query default data failed :" + e11.getMessage());
            return null;
        }
    }

    public final void c(int i11) {
        try {
            HSRoomDatabase.v0().t0().a(i11);
        } catch (Exception unused) {
            e4.b().w("DefaultDBManager", "delete old data by ad version failed ");
        }
    }

    public final void d(DefaultAdDTO ad2) {
        Intrinsics.h(ad2, "ad");
        try {
            String adCreativeId = ad2.getAdCreativeId();
            Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
            String codeSeatId = ad2.getCodeSeatId();
            String str = codeSeatId == null ? "" : codeSeatId;
            int adType = ad2.getAdType();
            Double firstPrice = ad2.getFirstPrice();
            int adRequestVersion = ad2.getAdRequestVersion();
            String startDate = ad2.getStartDate();
            String str2 = startDate == null ? "" : startDate;
            String endDate = ad2.getEndDate();
            String str3 = endDate == null ? "" : endDate;
            int showMaxOfDay = ad2.getShowMaxOfDay();
            String filePath = ad2.getFilePath();
            String countryWhite = ad2.getCountryWhite();
            String str4 = countryWhite == null ? "" : countryWhite;
            String countryBlack = ad2.getCountryBlack();
            String str5 = countryBlack == null ? "" : countryBlack;
            String brandWhite = ad2.getBrandWhite();
            String str6 = brandWhite == null ? "" : brandWhite;
            String brandBlack = ad2.getBrandBlack();
            String str7 = brandBlack == null ? "" : brandBlack;
            String adBeanJson = ad2.getAdBeanJson();
            HSRoomDatabase.v0().t0().a(new g2(adCreativeId, str, adType, firstPrice, adRequestVersion, 0, "", str2, str3, showMaxOfDay, filePath, str4, str5, str6, str7, adBeanJson == null ? "" : adBeanJson));
        } catch (Throwable th2) {
            e4.b().w("DefaultDBManager", "save or update default ad error: id is " + ad2.getAdCreativeId() + ", error msg is " + th2.getMessage() + ' ');
        }
    }

    public final void e(String codeSeatId) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        e4.b().d("DefaultDBManager", "delete old data by code seat id");
        try {
            HSRoomDatabase.v0().t0().b(codeSeatId);
        } catch (Throwable th2) {
            e4.b().w("DefaultDBManager", "delete old ad : error msg is " + th2.getMessage());
        }
    }

    public final void f(String creativeId, String str) {
        Intrinsics.h(creativeId, "creativeId");
        try {
            HSRoomDatabase.v0().t0().a(creativeId, str);
        } catch (Exception e11) {
            e4.b().w("DefaultDBManager", "delete ad by filtered error: id is " + creativeId + ", error msg is " + e11.getMessage());
        }
    }

    public final void g(String adCreativeId, String codeSeatId, int i11, String displayedDate) {
        Intrinsics.h(adCreativeId, "adCreativeId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(displayedDate, "displayedDate");
        try {
            HSRoomDatabase.v0().t0().b(adCreativeId, codeSeatId, i11, displayedDate);
        } catch (Exception e11) {
            e4.b().w("DefaultDBManager", "update display times error: id is " + adCreativeId + ", error msg is " + e11.getMessage());
        }
    }

    public final void h(String adCreativeId, String codeSeatId, String filepath) {
        Intrinsics.h(adCreativeId, "adCreativeId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(filepath, "filepath");
        try {
            HSRoomDatabase.v0().t0().a(adCreativeId, codeSeatId, filepath);
        } catch (Exception e11) {
            e4.b().w("DefaultDBManager", "update ad material file path error: " + e11.getMessage());
        }
    }

    public final void i(List codeSeatIds) {
        Intrinsics.h(codeSeatIds, "codeSeatIds");
        try {
            HSRoomDatabase.v0().t0().a(codeSeatIds);
        } catch (Throwable th2) {
            e4.b().w("DefaultDBManager", "delete invalid ad error: error msg is " + th2.getMessage());
        }
    }

    public final void j(final String filePath) {
        Intrinsics.h(filePath, "filePath");
        try {
            HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.w2
                @Override // java.lang.Runnable
                public final void run() {
                    x2.k(filePath);
                }
            });
        } catch (Throwable th2) {
            e4.b().w("DefaultDBManager", "update material  error: error msg is " + th2.getMessage());
        }
    }
}
