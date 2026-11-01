package com.transsion.baselib.db.video;

import androidx.room.RoomDatabase;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class f1 implements e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f43155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f43156b = new a();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `video_land_ad` (`resourceId`,`startAdDayKey`,`endAdDayKey`) VALUES (?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, VideoLandAdBean videoLandAdBean) {
            if (videoLandAdBean.getResourceId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, videoLandAdBean.getResourceId());
            }
            eVar.c(2, videoLandAdBean.getStartAdDayKey());
            eVar.c(3, videoLandAdBean.getEndAdDayKey());
        }
    }

    public f1(RoomDatabase roomDatabase) {
        this.f43155a = roomDatabase;
    }

    public static List a() {
        return Collections.emptyList();
    }
}
