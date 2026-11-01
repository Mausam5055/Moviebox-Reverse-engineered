package com.transsion.baselib.db.video;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class q implements ShortTVPlayDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f43205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f43206b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f43207c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.e f43208d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `short_tv_play` (`subjectId`,`id`,`ep`,`se`,`totalEp`,`progress`,`title`,`description`,`coverUrl`,`thumbnail`,`videoId`,`videoUrl`,`timeStamp`,`subtitleSelectId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, ShortTVPlayBean shortTVPlayBean) {
            if (shortTVPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, shortTVPlayBean.getSubjectId());
            }
            if (shortTVPlayBean.getId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, shortTVPlayBean.getId());
            }
            eVar.c(3, shortTVPlayBean.getEp());
            eVar.c(4, shortTVPlayBean.getSe());
            eVar.c(5, shortTVPlayBean.getTotalEp());
            eVar.c(6, shortTVPlayBean.getProgress());
            if (shortTVPlayBean.getTitle() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, shortTVPlayBean.getTitle());
            }
            if (shortTVPlayBean.getDescription() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, shortTVPlayBean.getDescription());
            }
            if (shortTVPlayBean.getCoverUrl() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, shortTVPlayBean.getCoverUrl());
            }
            if (shortTVPlayBean.getThumbnail() == null) {
                eVar.g(10);
            } else {
                eVar.j(10, shortTVPlayBean.getThumbnail());
            }
            if (shortTVPlayBean.getVideoId() == null) {
                eVar.g(11);
            } else {
                eVar.j(11, shortTVPlayBean.getVideoId());
            }
            if (shortTVPlayBean.getVideoUrl() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, shortTVPlayBean.getVideoUrl());
            }
            eVar.c(13, shortTVPlayBean.getTimeStamp());
            if (shortTVPlayBean.getSubtitleSelectId() == null) {
                eVar.g(14);
            } else {
                eVar.j(14, shortTVPlayBean.getSubtitleSelectId());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `short_tv_play` WHERE `subjectId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, ShortTVPlayBean shortTVPlayBean) {
            if (shortTVPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, shortTVPlayBean.getSubjectId());
            }
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `short_tv_play` SET `subjectId` = ?,`id` = ?,`ep` = ?,`se` = ?,`totalEp` = ?,`progress` = ?,`title` = ?,`description` = ?,`coverUrl` = ?,`thumbnail` = ?,`videoId` = ?,`videoUrl` = ?,`timeStamp` = ?,`subtitleSelectId` = ? WHERE `subjectId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, ShortTVPlayBean shortTVPlayBean) {
            if (shortTVPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, shortTVPlayBean.getSubjectId());
            }
            if (shortTVPlayBean.getId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, shortTVPlayBean.getId());
            }
            eVar.c(3, shortTVPlayBean.getEp());
            eVar.c(4, shortTVPlayBean.getSe());
            eVar.c(5, shortTVPlayBean.getTotalEp());
            eVar.c(6, shortTVPlayBean.getProgress());
            if (shortTVPlayBean.getTitle() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, shortTVPlayBean.getTitle());
            }
            if (shortTVPlayBean.getDescription() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, shortTVPlayBean.getDescription());
            }
            if (shortTVPlayBean.getCoverUrl() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, shortTVPlayBean.getCoverUrl());
            }
            if (shortTVPlayBean.getThumbnail() == null) {
                eVar.g(10);
            } else {
                eVar.j(10, shortTVPlayBean.getThumbnail());
            }
            if (shortTVPlayBean.getVideoId() == null) {
                eVar.g(11);
            } else {
                eVar.j(11, shortTVPlayBean.getVideoId());
            }
            if (shortTVPlayBean.getVideoUrl() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, shortTVPlayBean.getVideoUrl());
            }
            eVar.c(13, shortTVPlayBean.getTimeStamp());
            if (shortTVPlayBean.getSubtitleSelectId() == null) {
                eVar.g(14);
            } else {
                eVar.j(14, shortTVPlayBean.getSubtitleSelectId());
            }
            if (shortTVPlayBean.getSubjectId() == null) {
                eVar.g(15);
            } else {
                eVar.j(15, shortTVPlayBean.getSubjectId());
            }
        }
    }

    public q(RoomDatabase roomDatabase) {
        this.f43205a = roomDatabase;
    }

    public static List r() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit s(ShortTVPlayBean shortTVPlayBean, z3.b bVar) throws Exception {
        this.f43207c.c(bVar, shortTVPlayBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit t(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM SHORT_TV_PLAY");
        try {
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ShortTVPlayBean u(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM SHORT_TV_PLAY WHERE subjectId = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD2 = androidx.room.util.k.d(eVarD0, "id");
            int iD3 = androidx.room.util.k.d(eVarD0, "ep");
            int iD4 = androidx.room.util.k.d(eVarD0, "se");
            int iD5 = androidx.room.util.k.d(eVarD0, "totalEp");
            int iD6 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD7 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD8 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD9 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD10 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD11 = androidx.room.util.k.d(eVarD0, "videoId");
            int iD12 = androidx.room.util.k.d(eVarD0, "videoUrl");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            ShortTVPlayBean shortTVPlayBean = null;
            if (eVarD0.A0()) {
                shortTVPlayBean = new ShortTVPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), (int) eVarD0.getLong(iD3), (int) eVarD0.getLong(iD4), (int) eVarD0.getLong(iD5), eVarD0.getLong(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.getLong(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14));
            }
            eVarD0.close();
            return shortTVPlayBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List v(int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM SHORT_TV_PLAY WHERE coverUrl IS NOT NULL AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM SHORT_TV_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;");
        try {
            eVarD0.c(1, i11);
            eVarD0.c(2, i12);
            int iD = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD2 = androidx.room.util.k.d(eVarD0, "id");
            int iD3 = androidx.room.util.k.d(eVarD0, "ep");
            int iD4 = androidx.room.util.k.d(eVarD0, "se");
            int iD5 = androidx.room.util.k.d(eVarD0, "totalEp");
            int iD6 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD7 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD8 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD9 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD10 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD11 = androidx.room.util.k.d(eVarD0, "videoId");
            int iD12 = androidx.room.util.k.d(eVarD0, "videoUrl");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                int i13 = (int) eVarD0.getLong(iD3);
                int i14 = iD2;
                int i15 = iD3;
                int i16 = (int) eVarD0.getLong(iD4);
                int i17 = iD4;
                int i18 = iD14;
                int i19 = iD;
                ShortTVPlayBean shortTVPlayBean = new ShortTVPlayBean(strN0, strN1, i13, i16, (int) eVarD0.getLong(iD5), eVarD0.getLong(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.getLong(iD13), eVarD0.isNull(i18) ? null : eVarD0.n0(i18));
                ArrayList arrayList2 = arrayList;
                arrayList2.add(shortTVPlayBean);
                iD = i19;
                iD14 = i18;
                iD3 = i15;
                iD4 = i17;
                arrayList = arrayList2;
                iD2 = i14;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit w(ShortTVPlayBean shortTVPlayBean, z3.b bVar) throws Exception {
        this.f43206b.d(bVar, shortTVPlayBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit x(long j11, int i11, String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE SHORT_TV_PLAY SET progress = ?, ep = ? WHERE subjectId = ?");
        try {
            eVarD0.c(1, j11);
            eVarD0.c(2, i11);
            if (str == null) {
                eVarD0.g(3);
            } else {
                eVarD0.j(3, str);
            }
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit y(ShortTVPlayBean shortTVPlayBean, z3.b bVar) throws Exception {
        this.f43208d.c(bVar, shortTVPlayBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit z(String str, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE SHORT_TV_PLAY SET subtitleSelectId = ? WHERE subjectId = ? ");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            if (str2 == null) {
                eVarD0.g(2);
            } else {
                eVarD0.j(2, str2);
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

    @Override // com.transsion.baselib.db.video.ShortTVPlayDao
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f43205a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return q.t((z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.ShortTVPlayDao
    public Object b(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f43205a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return q.z(str2, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.ShortTVPlayDao
    public Object d(final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f43205a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return q.v(i12, i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.ShortTVPlayDao
    public Object e(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43205a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return q.u(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.ShortTVPlayDao
    public Object f(final ShortTVPlayBean shortTVPlayBean, Continuation continuation) {
        shortTVPlayBean.getClass();
        return androidx.room.util.b.f(this.f43205a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43175a.w(shortTVPlayBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.ShortTVPlayDao
    public Object g(ShortTVPlayBean shortTVPlayBean, Continuation continuation) {
        return ShortTVPlayDao.DefaultImpls.a(this, shortTVPlayBean, continuation);
    }

    @Override // com.transsion.baselib.db.video.ShortTVPlayDao
    public Object h(final String str, final int i11, final long j11, Continuation continuation) {
        return androidx.room.util.b.f(this.f43205a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return q.x(j11, i11, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.ShortTVPlayDao
    public Object i(final ShortTVPlayBean shortTVPlayBean, Continuation continuation) {
        shortTVPlayBean.getClass();
        return androidx.room.util.b.f(this.f43205a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43182a.y(shortTVPlayBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.ShortTVPlayDao
    public Object j(final ShortTVPlayBean shortTVPlayBean, Continuation continuation) {
        shortTVPlayBean.getClass();
        return androidx.room.util.b.f(this.f43205a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43186a.s(shortTVPlayBean, (z3.b) obj);
            }
        }, continuation);
    }
}
