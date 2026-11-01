package jj;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import androidx.room.util.k;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.db.audio.AudioBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class j implements jj.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f66213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f66214b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f66215c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.e f66216d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `audio` (`audioId`,`cover`,`duration`,`size`,`url`,`title`,`desc`,`bitrate`,`updateTimeStamp`,`readProcess`,`localPath`,`ops`,`resourceId`,`postId`,`subjectId`,`groupId`,`status`,`subjectTitle`,`se`,`ep`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AudioBean audioBean) {
            if (audioBean.getAudioUrl() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, audioBean.getAudioUrl());
            }
            if (audioBean.getCover() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, audioBean.getCover());
            }
            if (audioBean.getDuration() == null) {
                eVar.g(3);
            } else {
                eVar.c(3, audioBean.getDuration().longValue());
            }
            if (audioBean.getSize() == null) {
                eVar.g(4);
            } else {
                eVar.c(4, audioBean.getSize().longValue());
            }
            if (audioBean.getUrl() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, audioBean.getUrl());
            }
            if (audioBean.getTitle() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, audioBean.getTitle());
            }
            if (audioBean.getDesc() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, audioBean.getDesc());
            }
            if (audioBean.getBitrate() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, audioBean.getBitrate().intValue());
            }
            if (audioBean.getUpdateTimeStamp() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, audioBean.getUpdateTimeStamp().longValue());
            }
            if (audioBean.getReadProcess() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, audioBean.getReadProcess().longValue());
            }
            if (audioBean.getLocalPath() == null) {
                eVar.g(11);
            } else {
                eVar.j(11, audioBean.getLocalPath());
            }
            if (audioBean.getOps() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, audioBean.getOps());
            }
            if (audioBean.getResourceId() == null) {
                eVar.g(13);
            } else {
                eVar.j(13, audioBean.getResourceId());
            }
            if (audioBean.getPostId() == null) {
                eVar.g(14);
            } else {
                eVar.j(14, audioBean.getPostId());
            }
            if (audioBean.getSubjectId() == null) {
                eVar.g(15);
            } else {
                eVar.j(15, audioBean.getSubjectId());
            }
            if (audioBean.getGroupId() == null) {
                eVar.g(16);
            } else {
                eVar.j(16, audioBean.getGroupId());
            }
            eVar.c(17, audioBean.getStatus());
            if (audioBean.getSubjectTitle() == null) {
                eVar.g(18);
            } else {
                eVar.j(18, audioBean.getSubjectTitle());
            }
            eVar.c(19, audioBean.getSe());
            eVar.c(20, audioBean.getEp());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `audio` WHERE `audioId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AudioBean audioBean) {
            if (audioBean.getAudioUrl() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, audioBean.getAudioUrl());
            }
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `audio` SET `audioId` = ?,`cover` = ?,`duration` = ?,`size` = ?,`url` = ?,`title` = ?,`desc` = ?,`bitrate` = ?,`updateTimeStamp` = ?,`readProcess` = ?,`localPath` = ?,`ops` = ?,`resourceId` = ?,`postId` = ?,`subjectId` = ?,`groupId` = ?,`status` = ?,`subjectTitle` = ?,`se` = ?,`ep` = ? WHERE `audioId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, AudioBean audioBean) {
            if (audioBean.getAudioUrl() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, audioBean.getAudioUrl());
            }
            if (audioBean.getCover() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, audioBean.getCover());
            }
            if (audioBean.getDuration() == null) {
                eVar.g(3);
            } else {
                eVar.c(3, audioBean.getDuration().longValue());
            }
            if (audioBean.getSize() == null) {
                eVar.g(4);
            } else {
                eVar.c(4, audioBean.getSize().longValue());
            }
            if (audioBean.getUrl() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, audioBean.getUrl());
            }
            if (audioBean.getTitle() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, audioBean.getTitle());
            }
            if (audioBean.getDesc() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, audioBean.getDesc());
            }
            if (audioBean.getBitrate() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, audioBean.getBitrate().intValue());
            }
            if (audioBean.getUpdateTimeStamp() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, audioBean.getUpdateTimeStamp().longValue());
            }
            if (audioBean.getReadProcess() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, audioBean.getReadProcess().longValue());
            }
            if (audioBean.getLocalPath() == null) {
                eVar.g(11);
            } else {
                eVar.j(11, audioBean.getLocalPath());
            }
            if (audioBean.getOps() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, audioBean.getOps());
            }
            if (audioBean.getResourceId() == null) {
                eVar.g(13);
            } else {
                eVar.j(13, audioBean.getResourceId());
            }
            if (audioBean.getPostId() == null) {
                eVar.g(14);
            } else {
                eVar.j(14, audioBean.getPostId());
            }
            if (audioBean.getSubjectId() == null) {
                eVar.g(15);
            } else {
                eVar.j(15, audioBean.getSubjectId());
            }
            if (audioBean.getGroupId() == null) {
                eVar.g(16);
            } else {
                eVar.j(16, audioBean.getGroupId());
            }
            eVar.c(17, audioBean.getStatus());
            if (audioBean.getSubjectTitle() == null) {
                eVar.g(18);
            } else {
                eVar.j(18, audioBean.getSubjectTitle());
            }
            eVar.c(19, audioBean.getSe());
            eVar.c(20, audioBean.getEp());
            if (audioBean.getAudioUrl() == null) {
                eVar.g(21);
            } else {
                eVar.j(21, audioBean.getAudioUrl());
            }
        }
    }

    public j(RoomDatabase roomDatabase) {
        this.f66213a = roomDatabase;
    }

    public static List q() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit r(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM Audio");
        try {
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit s(AudioBean audioBean, z3.b bVar) throws Exception {
        this.f66215c.c(bVar, audioBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AudioBean t(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM Audio WHERE audioId = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = k.d(eVarD0, "audioId");
            int iD2 = k.d(eVarD0, "cover");
            int iD3 = k.d(eVarD0, "duration");
            int iD4 = k.d(eVarD0, "size");
            int iD5 = k.d(eVarD0, "url");
            int iD6 = k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = k.d(eVarD0, CampaignEx.JSON_KEY_DESC);
            int iD8 = k.d(eVarD0, "bitrate");
            int iD9 = k.d(eVarD0, "updateTimeStamp");
            int iD10 = k.d(eVarD0, "readProcess");
            int iD11 = k.d(eVarD0, "localPath");
            int iD12 = k.d(eVarD0, "ops");
            int iD13 = k.d(eVarD0, "resourceId");
            int iD14 = k.d(eVarD0, "postId");
            int iD15 = k.d(eVarD0, "subjectId");
            int iD16 = k.d(eVarD0, "groupId");
            int iD17 = k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD18 = k.d(eVarD0, "subjectTitle");
            int iD19 = k.d(eVarD0, "se");
            int iD20 = k.d(eVarD0, "ep");
            AudioBean audioBean = null;
            if (eVarD0.A0()) {
                audioBean = new AudioBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : Long.valueOf(eVarD0.getLong(iD3)), eVarD0.isNull(iD4) ? null : Long.valueOf(eVarD0.getLong(iD4)), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : Integer.valueOf((int) eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r42) ? null : eVarD0.n0(iD15), eVarD0.isNull(r43) ? null : eVarD0.n0(iD16), (int) eVarD0.getLong(iD17), eVarD0.isNull(iD18) ? null : eVarD0.n0(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20));
            }
            eVarD0.close();
            return audioBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AudioBean u(String str, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM Audio WHERE postId = ? AND subjectId =?");
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
            int iD = k.d(eVarD0, "audioId");
            int iD2 = k.d(eVarD0, "cover");
            int iD3 = k.d(eVarD0, "duration");
            int iD4 = k.d(eVarD0, "size");
            int iD5 = k.d(eVarD0, "url");
            int iD6 = k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = k.d(eVarD0, CampaignEx.JSON_KEY_DESC);
            int iD8 = k.d(eVarD0, "bitrate");
            int iD9 = k.d(eVarD0, "updateTimeStamp");
            int iD10 = k.d(eVarD0, "readProcess");
            int iD11 = k.d(eVarD0, "localPath");
            int iD12 = k.d(eVarD0, "ops");
            int iD13 = k.d(eVarD0, "resourceId");
            int iD14 = k.d(eVarD0, "postId");
            int iD15 = k.d(eVarD0, "subjectId");
            int iD16 = k.d(eVarD0, "groupId");
            int iD17 = k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD18 = k.d(eVarD0, "subjectTitle");
            int iD19 = k.d(eVarD0, "se");
            int iD20 = k.d(eVarD0, "ep");
            AudioBean audioBean = null;
            if (eVarD0.A0()) {
                audioBean = new AudioBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : Long.valueOf(eVarD0.getLong(iD3)), eVarD0.isNull(iD4) ? null : Long.valueOf(eVarD0.getLong(iD4)), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : Integer.valueOf((int) eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r41) ? null : eVarD0.n0(iD15), eVarD0.isNull(r42) ? null : eVarD0.n0(iD16), (int) eVarD0.getLong(iD17), eVarD0.isNull(iD18) ? null : eVarD0.n0(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20));
            }
            eVarD0.close();
            return audioBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ AudioBean v(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM Audio WHERE resourceId = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = k.d(eVarD0, "audioId");
            int iD2 = k.d(eVarD0, "cover");
            int iD3 = k.d(eVarD0, "duration");
            int iD4 = k.d(eVarD0, "size");
            int iD5 = k.d(eVarD0, "url");
            int iD6 = k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = k.d(eVarD0, CampaignEx.JSON_KEY_DESC);
            int iD8 = k.d(eVarD0, "bitrate");
            int iD9 = k.d(eVarD0, "updateTimeStamp");
            int iD10 = k.d(eVarD0, "readProcess");
            int iD11 = k.d(eVarD0, "localPath");
            int iD12 = k.d(eVarD0, "ops");
            int iD13 = k.d(eVarD0, "resourceId");
            int iD14 = k.d(eVarD0, "postId");
            int iD15 = k.d(eVarD0, "subjectId");
            int iD16 = k.d(eVarD0, "groupId");
            int iD17 = k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD18 = k.d(eVarD0, "subjectTitle");
            int iD19 = k.d(eVarD0, "se");
            int iD20 = k.d(eVarD0, "ep");
            AudioBean audioBean = null;
            if (eVarD0.A0()) {
                audioBean = new AudioBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : Long.valueOf(eVarD0.getLong(iD3)), eVarD0.isNull(iD4) ? null : Long.valueOf(eVarD0.getLong(iD4)), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : Integer.valueOf((int) eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r42) ? null : eVarD0.n0(iD15), eVarD0.isNull(r43) ? null : eVarD0.n0(iD16), (int) eVarD0.getLong(iD17), eVarD0.isNull(iD18) ? null : eVarD0.n0(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20));
            }
            eVarD0.close();
            return audioBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List w(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM Audio ORDER BY updateTimeStamp DESC");
        try {
            int iD = k.d(eVarD0, "audioId");
            int iD2 = k.d(eVarD0, "cover");
            int iD3 = k.d(eVarD0, "duration");
            int iD4 = k.d(eVarD0, "size");
            int iD5 = k.d(eVarD0, "url");
            int iD6 = k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = k.d(eVarD0, CampaignEx.JSON_KEY_DESC);
            int iD8 = k.d(eVarD0, "bitrate");
            int iD9 = k.d(eVarD0, "updateTimeStamp");
            int iD10 = k.d(eVarD0, "readProcess");
            int iD11 = k.d(eVarD0, "localPath");
            int iD12 = k.d(eVarD0, "ops");
            int iD13 = k.d(eVarD0, "resourceId");
            int iD14 = k.d(eVarD0, "postId");
            int iD15 = k.d(eVarD0, "subjectId");
            int iD16 = k.d(eVarD0, "groupId");
            int iD17 = k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD18 = k.d(eVarD0, "subjectTitle");
            int iD19 = k.d(eVarD0, "se");
            int iD20 = k.d(eVarD0, "ep");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                Long lValueOf = eVarD0.isNull(iD3) ? null : Long.valueOf(eVarD0.getLong(iD3));
                Long lValueOf2 = eVarD0.isNull(iD4) ? null : Long.valueOf(eVarD0.getLong(iD4));
                int i11 = iD16;
                int i12 = iD18;
                int i13 = iD17;
                int i14 = iD19;
                int i15 = iD4;
                int i16 = iD6;
                int i17 = iD20;
                int i18 = iD5;
                arrayList.add(new AudioBean(strN0, strN1, lValueOf, lValueOf2, eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : Integer.valueOf((int) eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(iD15) ? null : eVarD0.n0(iD15), eVarD0.isNull(iD16) ? null : eVarD0.n0(iD16), (int) eVarD0.getLong(iD17), eVarD0.isNull(i12) ? null : eVarD0.n0(i12), (int) eVarD0.getLong(i14), (int) eVarD0.getLong(i17)));
                iD5 = i18;
                iD2 = iD2;
                iD3 = iD3;
                iD6 = i16;
                iD20 = i17;
                iD4 = i15;
                iD19 = i14;
                iD = iD;
                iD15 = iD15;
                iD16 = i11;
                iD17 = i13;
                iD18 = i12;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit x(AudioBean audioBean, z3.b bVar) throws Exception {
        this.f66214b.d(bVar, audioBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit y(AudioBean audioBean, z3.b bVar) throws Exception {
        this.f66216d.c(bVar, audioBean);
        return Unit.f67061a;
    }

    @Override // jj.a
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f66213a, false, true, new Function1() { // from class: jj.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return j.r((z3.b) obj);
            }
        }, continuation);
    }

    @Override // jj.a
    public Object b(final AudioBean audioBean, Continuation continuation) {
        audioBean.getClass();
        return androidx.room.util.b.f(this.f66213a, false, true, new Function1() { // from class: jj.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f66211a.s(audioBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // jj.a
    public Object c(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f66213a, true, false, new Function1() { // from class: jj.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return j.t(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // jj.a
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f66213a, true, false, new Function1() { // from class: jj.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return j.v(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // jj.a
    public Object e(Continuation continuation) {
        return androidx.room.util.b.f(this.f66213a, true, false, new Function1() { // from class: jj.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return j.w((z3.b) obj);
            }
        }, continuation);
    }

    @Override // jj.a
    public Object f(final AudioBean audioBean, Continuation continuation) {
        audioBean.getClass();
        return androidx.room.util.b.f(this.f66213a, false, true, new Function1() { // from class: jj.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f66208a.y(audioBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // jj.a
    public Object g(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f66213a, true, false, new Function1() { // from class: jj.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return j.u(str, str2, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // jj.a
    public Object h(final AudioBean audioBean, Continuation continuation) {
        audioBean.getClass();
        return androidx.room.util.b.f(this.f66213a, false, true, new Function1() { // from class: jj.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f66205a.x(audioBean, (z3.b) obj);
            }
        }, continuation);
    }
}
