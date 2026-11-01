package li;

import androidx.room.RoomDatabase;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsion.ad.db.plan.MbAdDbPlans;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class m implements li.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f68860a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final li.a f68862c = new li.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f68861b = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.e f68863d = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `mb_ad_db_plans` (`id`,`version`,`name`,`startTime`,`endTime`,`extraConfig`,`displayTimes`,`showedTimes`,`showDate`,`advertiserName`,`advertiserAvatar`,`advertiserAvatarPath`,`brand`,`denyBrand`,`model`,`denyModel`,`country`,`scenes`,`adSource`,`extAdSlot`,`adMaterialList`,`adPlanUpdateTime`,`sort`,`adShowLevel`,`filterClientVersion`,`adPlanCreateTime`,`appStarDesc`,`appSizeDesc`,`ctxEnableExpr`,`ctxDisableExpr`,`ctxAttributeConfig`,`dispatchTimeStart`,`dispatchTimeEnd`,`extImage`,`bidEcpmCent`,`ecpmCent`,`isValid`,`h5LinkPreload`,`h5LinkOpenByCct`,`countryCode`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, MbAdDbPlans mbAdDbPlans) {
            if (mbAdDbPlans.getId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, mbAdDbPlans.getId());
            }
            if (mbAdDbPlans.getVersion() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, mbAdDbPlans.getVersion());
            }
            if (mbAdDbPlans.getName() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, mbAdDbPlans.getName());
            }
            if (mbAdDbPlans.getStartTime() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, mbAdDbPlans.getStartTime());
            }
            if (mbAdDbPlans.getEndTime() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, mbAdDbPlans.getEndTime());
            }
            if (mbAdDbPlans.getExtraConfig() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, mbAdDbPlans.getExtraConfig());
            }
            if (mbAdDbPlans.getDisplayTimes() == null) {
                eVar.g(7);
            } else {
                eVar.c(7, mbAdDbPlans.getDisplayTimes().intValue());
            }
            if (mbAdDbPlans.getShowedTimes() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, mbAdDbPlans.getShowedTimes().intValue());
            }
            if (mbAdDbPlans.getShowDate() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, mbAdDbPlans.getShowDate());
            }
            if (mbAdDbPlans.getAdvertiserName() == null) {
                eVar.g(10);
            } else {
                eVar.j(10, mbAdDbPlans.getAdvertiserName());
            }
            if (mbAdDbPlans.getAdvertiserAvatar() == null) {
                eVar.g(11);
            } else {
                eVar.j(11, mbAdDbPlans.getAdvertiserAvatar());
            }
            if (mbAdDbPlans.getAdvertiserAvatarPath() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, mbAdDbPlans.getAdvertiserAvatarPath());
            }
            String strA = m.this.f68862c.a(mbAdDbPlans.getBrand());
            if (strA == null) {
                eVar.g(13);
            } else {
                eVar.j(13, strA);
            }
            String strA2 = m.this.f68862c.a(mbAdDbPlans.getDenyBrand());
            if (strA2 == null) {
                eVar.g(14);
            } else {
                eVar.j(14, strA2);
            }
            String strA3 = m.this.f68862c.a(mbAdDbPlans.getModel());
            if (strA3 == null) {
                eVar.g(15);
            } else {
                eVar.j(15, strA3);
            }
            String strA4 = m.this.f68862c.a(mbAdDbPlans.getDenyModel());
            if (strA4 == null) {
                eVar.g(16);
            } else {
                eVar.j(16, strA4);
            }
            String strA5 = m.this.f68862c.a(mbAdDbPlans.getCountry());
            if (strA5 == null) {
                eVar.g(17);
            } else {
                eVar.j(17, strA5);
            }
            String strA6 = m.this.f68862c.a(mbAdDbPlans.getScenes());
            if (strA6 == null) {
                eVar.g(18);
            } else {
                eVar.j(18, strA6);
            }
            if (mbAdDbPlans.getAdSource() == null) {
                eVar.g(19);
            } else {
                eVar.j(19, mbAdDbPlans.getAdSource());
            }
            if (mbAdDbPlans.getExtAdSlot() == null) {
                eVar.g(20);
            } else {
                eVar.j(20, mbAdDbPlans.getExtAdSlot());
            }
            if (mbAdDbPlans.getAdMaterialList() == null) {
                eVar.g(21);
            } else {
                eVar.j(21, mbAdDbPlans.getAdMaterialList());
            }
            if (mbAdDbPlans.getAdPlanUpdateTime() == null) {
                eVar.g(22);
            } else {
                eVar.j(22, mbAdDbPlans.getAdPlanUpdateTime());
            }
            if (mbAdDbPlans.getSort() == null) {
                eVar.g(23);
            } else {
                eVar.c(23, mbAdDbPlans.getSort().intValue());
            }
            if (mbAdDbPlans.getAdShowLevel() == null) {
                eVar.g(24);
            } else {
                eVar.j(24, mbAdDbPlans.getAdShowLevel());
            }
            if (mbAdDbPlans.getFilterClientVersion() == null) {
                eVar.g(25);
            } else {
                eVar.j(25, mbAdDbPlans.getFilterClientVersion());
            }
            if (mbAdDbPlans.getAdPlanCreateTime() == null) {
                eVar.g(26);
            } else {
                eVar.j(26, mbAdDbPlans.getAdPlanCreateTime());
            }
            if (mbAdDbPlans.getAppStarDesc() == null) {
                eVar.g(27);
            } else {
                eVar.j(27, mbAdDbPlans.getAppStarDesc());
            }
            if (mbAdDbPlans.getAppSizeDesc() == null) {
                eVar.g(28);
            } else {
                eVar.j(28, mbAdDbPlans.getAppSizeDesc());
            }
            if (mbAdDbPlans.getCtxEnableExpr() == null) {
                eVar.g(29);
            } else {
                eVar.j(29, mbAdDbPlans.getCtxEnableExpr());
            }
            if (mbAdDbPlans.getCtxDisableExpr() == null) {
                eVar.g(30);
            } else {
                eVar.j(30, mbAdDbPlans.getCtxDisableExpr());
            }
            if (mbAdDbPlans.getCtxAttributeConfig() == null) {
                eVar.g(31);
            } else {
                eVar.j(31, mbAdDbPlans.getCtxAttributeConfig());
            }
            if (mbAdDbPlans.getDispatchTimeStart() == null) {
                eVar.g(32);
            } else {
                eVar.j(32, mbAdDbPlans.getDispatchTimeStart());
            }
            if (mbAdDbPlans.getDispatchTimeEnd() == null) {
                eVar.g(33);
            } else {
                eVar.j(33, mbAdDbPlans.getDispatchTimeEnd());
            }
            if (mbAdDbPlans.getExtImage() == null) {
                eVar.g(34);
            } else {
                eVar.j(34, mbAdDbPlans.getExtImage());
            }
            if (mbAdDbPlans.getBidEcpmCent() == null) {
                eVar.g(35);
            } else {
                eVar.a(35, mbAdDbPlans.getBidEcpmCent().doubleValue());
            }
            if (mbAdDbPlans.getEcpmCent() == null) {
                eVar.g(36);
            } else {
                eVar.c(36, mbAdDbPlans.getEcpmCent().longValue());
            }
            eVar.c(37, mbAdDbPlans.isValid() ? 1L : 0L);
            eVar.c(38, mbAdDbPlans.getH5LinkPreload() ? 1L : 0L);
            eVar.c(39, mbAdDbPlans.getH5LinkOpenByCct() ? 1L : 0L);
            if (mbAdDbPlans.getCountryCode() == null) {
                eVar.g(40);
            } else {
                eVar.j(40, mbAdDbPlans.getCountryCode());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `mb_ad_db_plans` SET `id` = ?,`version` = ?,`name` = ?,`startTime` = ?,`endTime` = ?,`extraConfig` = ?,`displayTimes` = ?,`showedTimes` = ?,`showDate` = ?,`advertiserName` = ?,`advertiserAvatar` = ?,`advertiserAvatarPath` = ?,`brand` = ?,`denyBrand` = ?,`model` = ?,`denyModel` = ?,`country` = ?,`scenes` = ?,`adSource` = ?,`extAdSlot` = ?,`adMaterialList` = ?,`adPlanUpdateTime` = ?,`sort` = ?,`adShowLevel` = ?,`filterClientVersion` = ?,`adPlanCreateTime` = ?,`appStarDesc` = ?,`appSizeDesc` = ?,`ctxEnableExpr` = ?,`ctxDisableExpr` = ?,`ctxAttributeConfig` = ?,`dispatchTimeStart` = ?,`dispatchTimeEnd` = ?,`extImage` = ?,`bidEcpmCent` = ?,`ecpmCent` = ?,`isValid` = ?,`h5LinkPreload` = ?,`h5LinkOpenByCct` = ?,`countryCode` = ? WHERE `id` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, MbAdDbPlans mbAdDbPlans) {
            if (mbAdDbPlans.getId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, mbAdDbPlans.getId());
            }
            if (mbAdDbPlans.getVersion() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, mbAdDbPlans.getVersion());
            }
            if (mbAdDbPlans.getName() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, mbAdDbPlans.getName());
            }
            if (mbAdDbPlans.getStartTime() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, mbAdDbPlans.getStartTime());
            }
            if (mbAdDbPlans.getEndTime() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, mbAdDbPlans.getEndTime());
            }
            if (mbAdDbPlans.getExtraConfig() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, mbAdDbPlans.getExtraConfig());
            }
            if (mbAdDbPlans.getDisplayTimes() == null) {
                eVar.g(7);
            } else {
                eVar.c(7, mbAdDbPlans.getDisplayTimes().intValue());
            }
            if (mbAdDbPlans.getShowedTimes() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, mbAdDbPlans.getShowedTimes().intValue());
            }
            if (mbAdDbPlans.getShowDate() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, mbAdDbPlans.getShowDate());
            }
            if (mbAdDbPlans.getAdvertiserName() == null) {
                eVar.g(10);
            } else {
                eVar.j(10, mbAdDbPlans.getAdvertiserName());
            }
            if (mbAdDbPlans.getAdvertiserAvatar() == null) {
                eVar.g(11);
            } else {
                eVar.j(11, mbAdDbPlans.getAdvertiserAvatar());
            }
            if (mbAdDbPlans.getAdvertiserAvatarPath() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, mbAdDbPlans.getAdvertiserAvatarPath());
            }
            String strA = m.this.f68862c.a(mbAdDbPlans.getBrand());
            if (strA == null) {
                eVar.g(13);
            } else {
                eVar.j(13, strA);
            }
            String strA2 = m.this.f68862c.a(mbAdDbPlans.getDenyBrand());
            if (strA2 == null) {
                eVar.g(14);
            } else {
                eVar.j(14, strA2);
            }
            String strA3 = m.this.f68862c.a(mbAdDbPlans.getModel());
            if (strA3 == null) {
                eVar.g(15);
            } else {
                eVar.j(15, strA3);
            }
            String strA4 = m.this.f68862c.a(mbAdDbPlans.getDenyModel());
            if (strA4 == null) {
                eVar.g(16);
            } else {
                eVar.j(16, strA4);
            }
            String strA5 = m.this.f68862c.a(mbAdDbPlans.getCountry());
            if (strA5 == null) {
                eVar.g(17);
            } else {
                eVar.j(17, strA5);
            }
            String strA6 = m.this.f68862c.a(mbAdDbPlans.getScenes());
            if (strA6 == null) {
                eVar.g(18);
            } else {
                eVar.j(18, strA6);
            }
            if (mbAdDbPlans.getAdSource() == null) {
                eVar.g(19);
            } else {
                eVar.j(19, mbAdDbPlans.getAdSource());
            }
            if (mbAdDbPlans.getExtAdSlot() == null) {
                eVar.g(20);
            } else {
                eVar.j(20, mbAdDbPlans.getExtAdSlot());
            }
            if (mbAdDbPlans.getAdMaterialList() == null) {
                eVar.g(21);
            } else {
                eVar.j(21, mbAdDbPlans.getAdMaterialList());
            }
            if (mbAdDbPlans.getAdPlanUpdateTime() == null) {
                eVar.g(22);
            } else {
                eVar.j(22, mbAdDbPlans.getAdPlanUpdateTime());
            }
            if (mbAdDbPlans.getSort() == null) {
                eVar.g(23);
            } else {
                eVar.c(23, mbAdDbPlans.getSort().intValue());
            }
            if (mbAdDbPlans.getAdShowLevel() == null) {
                eVar.g(24);
            } else {
                eVar.j(24, mbAdDbPlans.getAdShowLevel());
            }
            if (mbAdDbPlans.getFilterClientVersion() == null) {
                eVar.g(25);
            } else {
                eVar.j(25, mbAdDbPlans.getFilterClientVersion());
            }
            if (mbAdDbPlans.getAdPlanCreateTime() == null) {
                eVar.g(26);
            } else {
                eVar.j(26, mbAdDbPlans.getAdPlanCreateTime());
            }
            if (mbAdDbPlans.getAppStarDesc() == null) {
                eVar.g(27);
            } else {
                eVar.j(27, mbAdDbPlans.getAppStarDesc());
            }
            if (mbAdDbPlans.getAppSizeDesc() == null) {
                eVar.g(28);
            } else {
                eVar.j(28, mbAdDbPlans.getAppSizeDesc());
            }
            if (mbAdDbPlans.getCtxEnableExpr() == null) {
                eVar.g(29);
            } else {
                eVar.j(29, mbAdDbPlans.getCtxEnableExpr());
            }
            if (mbAdDbPlans.getCtxDisableExpr() == null) {
                eVar.g(30);
            } else {
                eVar.j(30, mbAdDbPlans.getCtxDisableExpr());
            }
            if (mbAdDbPlans.getCtxAttributeConfig() == null) {
                eVar.g(31);
            } else {
                eVar.j(31, mbAdDbPlans.getCtxAttributeConfig());
            }
            if (mbAdDbPlans.getDispatchTimeStart() == null) {
                eVar.g(32);
            } else {
                eVar.j(32, mbAdDbPlans.getDispatchTimeStart());
            }
            if (mbAdDbPlans.getDispatchTimeEnd() == null) {
                eVar.g(33);
            } else {
                eVar.j(33, mbAdDbPlans.getDispatchTimeEnd());
            }
            if (mbAdDbPlans.getExtImage() == null) {
                eVar.g(34);
            } else {
                eVar.j(34, mbAdDbPlans.getExtImage());
            }
            if (mbAdDbPlans.getBidEcpmCent() == null) {
                eVar.g(35);
            } else {
                eVar.a(35, mbAdDbPlans.getBidEcpmCent().doubleValue());
            }
            if (mbAdDbPlans.getEcpmCent() == null) {
                eVar.g(36);
            } else {
                eVar.c(36, mbAdDbPlans.getEcpmCent().longValue());
            }
            eVar.c(37, mbAdDbPlans.isValid() ? 1L : 0L);
            eVar.c(38, mbAdDbPlans.getH5LinkPreload() ? 1L : 0L);
            eVar.c(39, mbAdDbPlans.getH5LinkOpenByCct() ? 1L : 0L);
            if (mbAdDbPlans.getCountryCode() == null) {
                eVar.g(40);
            } else {
                eVar.j(40, mbAdDbPlans.getCountryCode());
            }
            if (mbAdDbPlans.getId() == null) {
                eVar.g(41);
            } else {
                eVar.j(41, mbAdDbPlans.getId());
            }
        }
    }

    public m(RoomDatabase roomDatabase) {
        this.f68860a = roomDatabase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List A(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("\n        SELECT * FROM mb_ad_db_plans\n        WHERE isValid = 1\n          AND (\n              scenes IS NULL\n              OR TRIM(scenes) = ''\n              OR TRIM(scenes) = '[]'\n              OR instr(LOWER(scenes), ?) > 0\n          )\n        ORDER BY sort\n        ");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "version");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "startTime");
            int iD5 = androidx.room.util.k.d(eVarD0, "endTime");
            int iD6 = androidx.room.util.k.d(eVarD0, "extraConfig");
            int iD7 = androidx.room.util.k.d(eVarD0, "displayTimes");
            int iD8 = androidx.room.util.k.d(eVarD0, "showedTimes");
            int iD9 = androidx.room.util.k.d(eVarD0, "showDate");
            int iD10 = androidx.room.util.k.d(eVarD0, "advertiserName");
            int iD11 = androidx.room.util.k.d(eVarD0, "advertiserAvatar");
            int iD12 = androidx.room.util.k.d(eVarD0, "advertiserAvatarPath");
            int iD13 = androidx.room.util.k.d(eVarD0, "brand");
            int iD14 = androidx.room.util.k.d(eVarD0, "denyBrand");
            int iD15 = androidx.room.util.k.d(eVarD0, "model");
            int iD16 = androidx.room.util.k.d(eVarD0, "denyModel");
            int iD17 = androidx.room.util.k.d(eVarD0, PlaceTypes.COUNTRY);
            int iD18 = androidx.room.util.k.d(eVarD0, "scenes");
            int iD19 = androidx.room.util.k.d(eVarD0, "adSource");
            int iD20 = androidx.room.util.k.d(eVarD0, "extAdSlot");
            int iD21 = androidx.room.util.k.d(eVarD0, "adMaterialList");
            int iD22 = androidx.room.util.k.d(eVarD0, "adPlanUpdateTime");
            int iD23 = androidx.room.util.k.d(eVarD0, "sort");
            int iD24 = androidx.room.util.k.d(eVarD0, "adShowLevel");
            int iD25 = androidx.room.util.k.d(eVarD0, "filterClientVersion");
            int iD26 = androidx.room.util.k.d(eVarD0, "adPlanCreateTime");
            int iD27 = androidx.room.util.k.d(eVarD0, "appStarDesc");
            int iD28 = androidx.room.util.k.d(eVarD0, "appSizeDesc");
            int iD29 = androidx.room.util.k.d(eVarD0, "ctxEnableExpr");
            int iD30 = androidx.room.util.k.d(eVarD0, "ctxDisableExpr");
            int iD31 = androidx.room.util.k.d(eVarD0, "ctxAttributeConfig");
            int iD32 = androidx.room.util.k.d(eVarD0, "dispatchTimeStart");
            int iD33 = androidx.room.util.k.d(eVarD0, "dispatchTimeEnd");
            int iD34 = androidx.room.util.k.d(eVarD0, "extImage");
            int iD35 = androidx.room.util.k.d(eVarD0, "bidEcpmCent");
            int iD36 = androidx.room.util.k.d(eVarD0, "ecpmCent");
            int iD37 = androidx.room.util.k.d(eVarD0, "isValid");
            int iD38 = androidx.room.util.k.d(eVarD0, "h5LinkPreload");
            int iD39 = androidx.room.util.k.d(eVarD0, "h5LinkOpenByCct");
            int iD40 = androidx.room.util.k.d(eVarD0, "countryCode");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN4 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN5 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                Integer numValueOf = eVarD0.isNull(iD7) ? null : Integer.valueOf((int) eVarD0.getLong(iD7));
                Integer numValueOf2 = eVarD0.isNull(iD8) ? null : Integer.valueOf((int) eVarD0.getLong(iD8));
                String strN6 = eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9);
                String strN7 = eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10);
                String strN8 = eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11);
                String strN9 = eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12);
                List listB = this.f68862c.b(eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13));
                int i11 = iD14;
                List listB2 = this.f68862c.b(eVarD0.isNull(i11) ? null : eVarD0.n0(i11));
                iD15 = iD15;
                List listB3 = this.f68862c.b(eVarD0.isNull(iD15) ? null : eVarD0.n0(iD15));
                iD16 = iD16;
                List listB4 = this.f68862c.b(eVarD0.isNull(iD16) ? null : eVarD0.n0(iD16));
                iD17 = iD17;
                List listB5 = this.f68862c.b(eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17));
                iD18 = iD18;
                List listB6 = this.f68862c.b(eVarD0.isNull(iD18) ? null : eVarD0.n0(iD18));
                iD19 = iD19;
                int i12 = iD25;
                int i13 = iD4;
                int i14 = iD37;
                arrayList.add(new MbAdDbPlans(strN0, strN1, strN2, strN3, strN4, strN5, numValueOf, numValueOf2, strN6, strN7, strN8, strN9, listB, listB2, listB3, listB4, listB5, listB6, eVarD0.isNull(iD19) ? null : eVarD0.n0(iD19), eVarD0.isNull(iD20) ? null : eVarD0.n0(iD20), eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21), eVarD0.isNull(iD22) ? null : eVarD0.n0(iD22), eVarD0.isNull(iD23) ? null : Integer.valueOf((int) eVarD0.getLong(iD23)), eVarD0.isNull(iD24) ? null : eVarD0.n0(iD24), eVarD0.isNull(iD25) ? null : eVarD0.n0(iD25), eVarD0.isNull(iD26) ? null : eVarD0.n0(iD26), eVarD0.isNull(iD27) ? null : eVarD0.n0(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29), eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30), eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31), eVarD0.isNull(iD32) ? null : eVarD0.n0(iD32), eVarD0.isNull(iD33) ? null : eVarD0.n0(iD33), eVarD0.isNull(iD34) ? null : eVarD0.n0(iD34), eVarD0.isNull(iD35) ? null : Double.valueOf(eVarD0.getDouble(iD35)), eVarD0.isNull(iD36) ? null : Long.valueOf(eVarD0.getLong(iD36)), ((int) eVarD0.getLong(iD37)) != 0, ((int) eVarD0.getLong(iD38)) != 0, ((int) eVarD0.getLong(iD39)) != 0, eVarD0.isNull(iD40) ? null : eVarD0.n0(iD40)));
                iD40 = iD40;
                iD39 = iD39;
                iD3 = iD3;
                iD = iD;
                iD14 = i11;
                iD20 = iD20;
                iD23 = iD23;
                iD24 = iD24;
                iD25 = i12;
                iD37 = i14;
                iD4 = i13;
                iD38 = iD38;
                iD2 = iD2;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List B(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM mb_ad_db_plans where adSource=?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "version");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "startTime");
            int iD5 = androidx.room.util.k.d(eVarD0, "endTime");
            int iD6 = androidx.room.util.k.d(eVarD0, "extraConfig");
            int iD7 = androidx.room.util.k.d(eVarD0, "displayTimes");
            int iD8 = androidx.room.util.k.d(eVarD0, "showedTimes");
            int iD9 = androidx.room.util.k.d(eVarD0, "showDate");
            int iD10 = androidx.room.util.k.d(eVarD0, "advertiserName");
            int iD11 = androidx.room.util.k.d(eVarD0, "advertiserAvatar");
            int iD12 = androidx.room.util.k.d(eVarD0, "advertiserAvatarPath");
            int iD13 = androidx.room.util.k.d(eVarD0, "brand");
            int iD14 = androidx.room.util.k.d(eVarD0, "denyBrand");
            int iD15 = androidx.room.util.k.d(eVarD0, "model");
            int iD16 = androidx.room.util.k.d(eVarD0, "denyModel");
            int iD17 = androidx.room.util.k.d(eVarD0, PlaceTypes.COUNTRY);
            int iD18 = androidx.room.util.k.d(eVarD0, "scenes");
            int iD19 = androidx.room.util.k.d(eVarD0, "adSource");
            int iD20 = androidx.room.util.k.d(eVarD0, "extAdSlot");
            int iD21 = androidx.room.util.k.d(eVarD0, "adMaterialList");
            int iD22 = androidx.room.util.k.d(eVarD0, "adPlanUpdateTime");
            int iD23 = androidx.room.util.k.d(eVarD0, "sort");
            int iD24 = androidx.room.util.k.d(eVarD0, "adShowLevel");
            int iD25 = androidx.room.util.k.d(eVarD0, "filterClientVersion");
            int iD26 = androidx.room.util.k.d(eVarD0, "adPlanCreateTime");
            int iD27 = androidx.room.util.k.d(eVarD0, "appStarDesc");
            int iD28 = androidx.room.util.k.d(eVarD0, "appSizeDesc");
            int iD29 = androidx.room.util.k.d(eVarD0, "ctxEnableExpr");
            int iD30 = androidx.room.util.k.d(eVarD0, "ctxDisableExpr");
            int iD31 = androidx.room.util.k.d(eVarD0, "ctxAttributeConfig");
            int iD32 = androidx.room.util.k.d(eVarD0, "dispatchTimeStart");
            int iD33 = androidx.room.util.k.d(eVarD0, "dispatchTimeEnd");
            int iD34 = androidx.room.util.k.d(eVarD0, "extImage");
            int iD35 = androidx.room.util.k.d(eVarD0, "bidEcpmCent");
            int iD36 = androidx.room.util.k.d(eVarD0, "ecpmCent");
            int iD37 = androidx.room.util.k.d(eVarD0, "isValid");
            int iD38 = androidx.room.util.k.d(eVarD0, "h5LinkPreload");
            int iD39 = androidx.room.util.k.d(eVarD0, "h5LinkOpenByCct");
            int iD40 = androidx.room.util.k.d(eVarD0, "countryCode");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN4 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN5 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                Integer numValueOf = eVarD0.isNull(iD7) ? null : Integer.valueOf((int) eVarD0.getLong(iD7));
                Integer numValueOf2 = eVarD0.isNull(iD8) ? null : Integer.valueOf((int) eVarD0.getLong(iD8));
                String strN6 = eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9);
                String strN7 = eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10);
                String strN8 = eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11);
                String strN9 = eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12);
                List listB = this.f68862c.b(eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13));
                int i11 = iD14;
                List listB2 = this.f68862c.b(eVarD0.isNull(i11) ? null : eVarD0.n0(i11));
                iD15 = iD15;
                List listB3 = this.f68862c.b(eVarD0.isNull(iD15) ? null : eVarD0.n0(iD15));
                iD16 = iD16;
                List listB4 = this.f68862c.b(eVarD0.isNull(iD16) ? null : eVarD0.n0(iD16));
                iD17 = iD17;
                List listB5 = this.f68862c.b(eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17));
                iD18 = iD18;
                List listB6 = this.f68862c.b(eVarD0.isNull(iD18) ? null : eVarD0.n0(iD18));
                iD19 = iD19;
                int i12 = iD25;
                int i13 = iD4;
                int i14 = iD37;
                arrayList.add(new MbAdDbPlans(strN0, strN1, strN2, strN3, strN4, strN5, numValueOf, numValueOf2, strN6, strN7, strN8, strN9, listB, listB2, listB3, listB4, listB5, listB6, eVarD0.isNull(iD19) ? null : eVarD0.n0(iD19), eVarD0.isNull(iD20) ? null : eVarD0.n0(iD20), eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21), eVarD0.isNull(iD22) ? null : eVarD0.n0(iD22), eVarD0.isNull(iD23) ? null : Integer.valueOf((int) eVarD0.getLong(iD23)), eVarD0.isNull(iD24) ? null : eVarD0.n0(iD24), eVarD0.isNull(iD25) ? null : eVarD0.n0(iD25), eVarD0.isNull(iD26) ? null : eVarD0.n0(iD26), eVarD0.isNull(iD27) ? null : eVarD0.n0(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29), eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30), eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31), eVarD0.isNull(iD32) ? null : eVarD0.n0(iD32), eVarD0.isNull(iD33) ? null : eVarD0.n0(iD33), eVarD0.isNull(iD34) ? null : eVarD0.n0(iD34), eVarD0.isNull(iD35) ? null : Double.valueOf(eVarD0.getDouble(iD35)), eVarD0.isNull(iD36) ? null : Long.valueOf(eVarD0.getLong(iD36)), ((int) eVarD0.getLong(iD37)) != 0, ((int) eVarD0.getLong(iD38)) != 0, ((int) eVarD0.getLong(iD39)) != 0, eVarD0.isNull(iD40) ? null : eVarD0.n0(iD40)));
                iD40 = iD40;
                iD39 = iD39;
                iD3 = iD3;
                iD = iD;
                iD14 = i11;
                iD20 = iD20;
                iD23 = iD23;
                iD24 = iD24;
                iD25 = i12;
                iD37 = i14;
                iD4 = i13;
                iD38 = iD38;
                iD2 = iD2;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit C(MbAdDbPlans mbAdDbPlans, z3.b bVar) throws Exception {
        this.f68861b.d(bVar, mbAdDbPlans);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit D(List list, z3.b bVar) throws Exception {
        this.f68861b.c(bVar, list);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit E(MbAdDbPlans mbAdDbPlans, z3.b bVar) throws Exception {
        this.f68863d.c(bVar, mbAdDbPlans);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit F(boolean z10, String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE mb_ad_db_plans SET isValid = ? WHERE version !=?");
        try {
            eVarD0.c(1, z10 ? 1L : 0L);
            if (str == null) {
                eVarD0.g(2);
            } else {
                eVarD0.j(2, str);
            }
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    public static List v() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit w(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM mb_ad_db_plans WHERE version !=?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.A0();
            Unit unit = Unit.f67061a;
            eVarD0.close();
            return unit;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer x(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT COUNT(*) FROM mb_ad_db_plans");
        try {
            Integer numValueOf = null;
            if (eVarD0.A0() && !eVarD0.isNull(0)) {
                numValueOf = Integer.valueOf((int) eVarD0.getLong(0));
            }
            return numValueOf;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List y(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM mb_ad_db_plans WHERE isValid = 1 ORDER BY sort");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "version");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "startTime");
            int iD5 = androidx.room.util.k.d(eVarD0, "endTime");
            int iD6 = androidx.room.util.k.d(eVarD0, "extraConfig");
            int iD7 = androidx.room.util.k.d(eVarD0, "displayTimes");
            int iD8 = androidx.room.util.k.d(eVarD0, "showedTimes");
            int iD9 = androidx.room.util.k.d(eVarD0, "showDate");
            int iD10 = androidx.room.util.k.d(eVarD0, "advertiserName");
            int iD11 = androidx.room.util.k.d(eVarD0, "advertiserAvatar");
            int iD12 = androidx.room.util.k.d(eVarD0, "advertiserAvatarPath");
            int iD13 = androidx.room.util.k.d(eVarD0, "brand");
            int iD14 = androidx.room.util.k.d(eVarD0, "denyBrand");
            int iD15 = androidx.room.util.k.d(eVarD0, "model");
            int iD16 = androidx.room.util.k.d(eVarD0, "denyModel");
            int iD17 = androidx.room.util.k.d(eVarD0, PlaceTypes.COUNTRY);
            int iD18 = androidx.room.util.k.d(eVarD0, "scenes");
            int iD19 = androidx.room.util.k.d(eVarD0, "adSource");
            int iD20 = androidx.room.util.k.d(eVarD0, "extAdSlot");
            int iD21 = androidx.room.util.k.d(eVarD0, "adMaterialList");
            int iD22 = androidx.room.util.k.d(eVarD0, "adPlanUpdateTime");
            int iD23 = androidx.room.util.k.d(eVarD0, "sort");
            int iD24 = androidx.room.util.k.d(eVarD0, "adShowLevel");
            int iD25 = androidx.room.util.k.d(eVarD0, "filterClientVersion");
            int iD26 = androidx.room.util.k.d(eVarD0, "adPlanCreateTime");
            int iD27 = androidx.room.util.k.d(eVarD0, "appStarDesc");
            int iD28 = androidx.room.util.k.d(eVarD0, "appSizeDesc");
            int iD29 = androidx.room.util.k.d(eVarD0, "ctxEnableExpr");
            int iD30 = androidx.room.util.k.d(eVarD0, "ctxDisableExpr");
            int iD31 = androidx.room.util.k.d(eVarD0, "ctxAttributeConfig");
            int iD32 = androidx.room.util.k.d(eVarD0, "dispatchTimeStart");
            int iD33 = androidx.room.util.k.d(eVarD0, "dispatchTimeEnd");
            int iD34 = androidx.room.util.k.d(eVarD0, "extImage");
            int iD35 = androidx.room.util.k.d(eVarD0, "bidEcpmCent");
            int iD36 = androidx.room.util.k.d(eVarD0, "ecpmCent");
            int iD37 = androidx.room.util.k.d(eVarD0, "isValid");
            int iD38 = androidx.room.util.k.d(eVarD0, "h5LinkPreload");
            int iD39 = androidx.room.util.k.d(eVarD0, "h5LinkOpenByCct");
            int iD40 = androidx.room.util.k.d(eVarD0, "countryCode");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN4 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN5 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                Integer numValueOf = eVarD0.isNull(iD7) ? null : Integer.valueOf((int) eVarD0.getLong(iD7));
                Integer numValueOf2 = eVarD0.isNull(iD8) ? null : Integer.valueOf((int) eVarD0.getLong(iD8));
                String strN6 = eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9);
                String strN7 = eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10);
                String strN8 = eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11);
                String strN9 = eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12);
                List listB = this.f68862c.b(eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13));
                int i11 = iD14;
                List listB2 = this.f68862c.b(eVarD0.isNull(i11) ? null : eVarD0.n0(i11));
                iD15 = iD15;
                List listB3 = this.f68862c.b(eVarD0.isNull(iD15) ? null : eVarD0.n0(iD15));
                iD16 = iD16;
                List listB4 = this.f68862c.b(eVarD0.isNull(iD16) ? null : eVarD0.n0(iD16));
                iD17 = iD17;
                List listB5 = this.f68862c.b(eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17));
                iD18 = iD18;
                List listB6 = this.f68862c.b(eVarD0.isNull(iD18) ? null : eVarD0.n0(iD18));
                iD19 = iD19;
                int i12 = iD25;
                int i13 = iD4;
                int i14 = iD39;
                int i15 = iD37;
                arrayList.add(new MbAdDbPlans(strN0, strN1, strN2, strN3, strN4, strN5, numValueOf, numValueOf2, strN6, strN7, strN8, strN9, listB, listB2, listB3, listB4, listB5, listB6, eVarD0.isNull(iD19) ? null : eVarD0.n0(iD19), eVarD0.isNull(iD20) ? null : eVarD0.n0(iD20), eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21), eVarD0.isNull(iD22) ? null : eVarD0.n0(iD22), eVarD0.isNull(iD23) ? null : Integer.valueOf((int) eVarD0.getLong(iD23)), eVarD0.isNull(iD24) ? null : eVarD0.n0(iD24), eVarD0.isNull(iD25) ? null : eVarD0.n0(iD25), eVarD0.isNull(iD26) ? null : eVarD0.n0(iD26), eVarD0.isNull(iD27) ? null : eVarD0.n0(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29), eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30), eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31), eVarD0.isNull(iD32) ? null : eVarD0.n0(iD32), eVarD0.isNull(iD33) ? null : eVarD0.n0(iD33), eVarD0.isNull(iD34) ? null : eVarD0.n0(iD34), eVarD0.isNull(iD35) ? null : Double.valueOf(eVarD0.getDouble(iD35)), eVarD0.isNull(iD36) ? null : Long.valueOf(eVarD0.getLong(iD36)), ((int) eVarD0.getLong(iD37)) != 0, ((int) eVarD0.getLong(iD38)) != 0, ((int) eVarD0.getLong(i14)) != 0, eVarD0.isNull(iD40) ? null : eVarD0.n0(iD40)));
                iD40 = iD40;
                iD3 = iD3;
                iD = iD;
                iD14 = i11;
                iD20 = iD20;
                iD23 = iD23;
                iD24 = iD24;
                iD25 = i12;
                iD37 = i15;
                iD39 = i14;
                iD4 = i13;
                iD38 = iD38;
                iD2 = iD2;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ MbAdDbPlans z(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM mb_ad_db_plans where id=?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "version");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "startTime");
            int iD5 = androidx.room.util.k.d(eVarD0, "endTime");
            int iD6 = androidx.room.util.k.d(eVarD0, "extraConfig");
            int iD7 = androidx.room.util.k.d(eVarD0, "displayTimes");
            int iD8 = androidx.room.util.k.d(eVarD0, "showedTimes");
            int iD9 = androidx.room.util.k.d(eVarD0, "showDate");
            int iD10 = androidx.room.util.k.d(eVarD0, "advertiserName");
            int iD11 = androidx.room.util.k.d(eVarD0, "advertiserAvatar");
            int iD12 = androidx.room.util.k.d(eVarD0, "advertiserAvatarPath");
            int iD13 = androidx.room.util.k.d(eVarD0, "brand");
            int iD14 = androidx.room.util.k.d(eVarD0, "denyBrand");
            int iD15 = androidx.room.util.k.d(eVarD0, "model");
            int iD16 = androidx.room.util.k.d(eVarD0, "denyModel");
            int iD17 = androidx.room.util.k.d(eVarD0, PlaceTypes.COUNTRY);
            int iD18 = androidx.room.util.k.d(eVarD0, "scenes");
            int iD19 = androidx.room.util.k.d(eVarD0, "adSource");
            int iD20 = androidx.room.util.k.d(eVarD0, "extAdSlot");
            int iD21 = androidx.room.util.k.d(eVarD0, "adMaterialList");
            int iD22 = androidx.room.util.k.d(eVarD0, "adPlanUpdateTime");
            int iD23 = androidx.room.util.k.d(eVarD0, "sort");
            int iD24 = androidx.room.util.k.d(eVarD0, "adShowLevel");
            int iD25 = androidx.room.util.k.d(eVarD0, "filterClientVersion");
            int iD26 = androidx.room.util.k.d(eVarD0, "adPlanCreateTime");
            int iD27 = androidx.room.util.k.d(eVarD0, "appStarDesc");
            int iD28 = androidx.room.util.k.d(eVarD0, "appSizeDesc");
            int iD29 = androidx.room.util.k.d(eVarD0, "ctxEnableExpr");
            int iD30 = androidx.room.util.k.d(eVarD0, "ctxDisableExpr");
            int iD31 = androidx.room.util.k.d(eVarD0, "ctxAttributeConfig");
            int iD32 = androidx.room.util.k.d(eVarD0, "dispatchTimeStart");
            int iD33 = androidx.room.util.k.d(eVarD0, "dispatchTimeEnd");
            int iD34 = androidx.room.util.k.d(eVarD0, "extImage");
            int iD35 = androidx.room.util.k.d(eVarD0, "bidEcpmCent");
            int iD36 = androidx.room.util.k.d(eVarD0, "ecpmCent");
            int iD37 = androidx.room.util.k.d(eVarD0, "isValid");
            int iD38 = androidx.room.util.k.d(eVarD0, "h5LinkPreload");
            int iD39 = androidx.room.util.k.d(eVarD0, "h5LinkOpenByCct");
            int iD40 = androidx.room.util.k.d(eVarD0, "countryCode");
            MbAdDbPlans mbAdDbPlans = null;
            if (eVarD0.A0()) {
                mbAdDbPlans = new MbAdDbPlans(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : Integer.valueOf((int) eVarD0.getLong(iD7)), eVarD0.isNull(iD8) ? null : Integer.valueOf((int) eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), this.f68862c.b(eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13)), this.f68862c.b(eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14)), this.f68862c.b(eVarD0.isNull(iD15) ? null : eVarD0.n0(iD15)), this.f68862c.b(eVarD0.isNull(iD16) ? null : eVarD0.n0(iD16)), this.f68862c.b(eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17)), this.f68862c.b(eVarD0.isNull(iD18) ? null : eVarD0.n0(iD18)), eVarD0.isNull(iD19) ? null : eVarD0.n0(iD19), eVarD0.isNull(r21) ? null : eVarD0.n0(iD20), eVarD0.isNull(r22) ? null : eVarD0.n0(iD21), eVarD0.isNull(r23) ? null : eVarD0.n0(iD22), eVarD0.isNull(r24) ? null : Integer.valueOf((int) eVarD0.getLong(iD23)), eVarD0.isNull(r25) ? null : eVarD0.n0(iD24), eVarD0.isNull(r26) ? null : eVarD0.n0(iD25), eVarD0.isNull(r27) ? null : eVarD0.n0(iD26), eVarD0.isNull(r28) ? null : eVarD0.n0(iD27), eVarD0.isNull(r29) ? null : eVarD0.n0(iD28), eVarD0.isNull(r30) ? null : eVarD0.n0(iD29), eVarD0.isNull(r31) ? null : eVarD0.n0(iD30), eVarD0.isNull(r32) ? null : eVarD0.n0(iD31), eVarD0.isNull(r33) ? null : eVarD0.n0(iD32), eVarD0.isNull(r34) ? null : eVarD0.n0(iD33), eVarD0.isNull(r35) ? null : eVarD0.n0(iD34), eVarD0.isNull(r36) ? null : Double.valueOf(eVarD0.getDouble(iD35)), eVarD0.isNull(r37) ? null : Long.valueOf(eVarD0.getLong(iD36)), ((int) eVarD0.getLong(iD37)) != 0, ((int) eVarD0.getLong(iD38)) != 0, ((int) eVarD0.getLong(iD39)) != 0, eVarD0.isNull(iD40) ? null : eVarD0.n0(iD40));
            }
            eVarD0.close();
            return mbAdDbPlans;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    @Override // li.b
    public Object a(final List list, Continuation continuation) {
        list.getClass();
        return androidx.room.util.b.f(this.f68860a, false, true, new Function1() { // from class: li.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68848a.D(list, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // li.b
    public Object b(Continuation continuation) {
        return androidx.room.util.b.f(this.f68860a, true, false, new Function1() { // from class: li.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68852a.y((z3.b) obj);
            }
        }, continuation);
    }

    @Override // li.b
    public Object c(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68860a, true, false, new Function1() { // from class: li.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68850a.A(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // li.b
    public Object d(Continuation continuation) {
        return androidx.room.util.b.f(this.f68860a, true, false, new Function1() { // from class: li.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return m.x((z3.b) obj);
            }
        }, continuation);
    }

    @Override // li.b
    public Object e(final MbAdDbPlans mbAdDbPlans, Continuation continuation) {
        mbAdDbPlans.getClass();
        return androidx.room.util.b.f(this.f68860a, false, true, new Function1() { // from class: li.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68857a.C(mbAdDbPlans, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // li.b
    public Object f(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68860a, false, true, new Function1() { // from class: li.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return m.w(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // li.b
    public Object g(final boolean z10, final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68860a, false, true, new Function1() { // from class: li.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return m.F(z10, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // li.b
    public Object h(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68860a, true, false, new Function1() { // from class: li.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68846a.z(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // li.b
    public Object i(final MbAdDbPlans mbAdDbPlans, Continuation continuation) {
        mbAdDbPlans.getClass();
        return androidx.room.util.b.f(this.f68860a, false, true, new Function1() { // from class: li.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68844a.E(mbAdDbPlans, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // li.b
    public Object j(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68860a, true, false, new Function1() { // from class: li.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68855a.B(str, (z3.b) obj);
            }
        }, continuation);
    }
}
