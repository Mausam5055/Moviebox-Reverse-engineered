package com.transsion.baselib.db.video;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class d1 implements VideoDetailPlayDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f43138a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ij.b f43140c = new ij.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f43139b = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.e f43141d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.room.e f43142e = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `video_detail_play` (`subjectId`,`id`,`ep`,`se`,`progress`,`title`,`coverUrl`,`thumbnail`,`videoUrl`,`timeStamp`,`subtitleSelectId`,`totalDuration`,`subjectDurationSeconds`,`averageHueLight`,`subjectType`,`hasDelete`,`playMode`,`downloadUrl`,`downloadFilePath`,`downloadSize`,`dubs`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`rewardPlayed`,`rewardUnlock`,`rewardFree`,`ops`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, VideoDetailPlayBean videoDetailPlayBean) {
            if (videoDetailPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, videoDetailPlayBean.getSubjectId());
            }
            if (videoDetailPlayBean.getId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, videoDetailPlayBean.getId());
            }
            eVar.c(3, videoDetailPlayBean.getEp());
            eVar.c(4, videoDetailPlayBean.getSe());
            eVar.c(5, videoDetailPlayBean.getProgress());
            if (videoDetailPlayBean.getTitle() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, videoDetailPlayBean.getTitle());
            }
            if (videoDetailPlayBean.getCoverUrl() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, videoDetailPlayBean.getCoverUrl());
            }
            if (videoDetailPlayBean.getThumbnail() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, videoDetailPlayBean.getThumbnail());
            }
            if (videoDetailPlayBean.getVideoUrl() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, videoDetailPlayBean.getVideoUrl());
            }
            eVar.c(10, videoDetailPlayBean.getTimeStamp());
            if (videoDetailPlayBean.getSubtitleSelectId() == null) {
                eVar.g(11);
            } else {
                eVar.j(11, videoDetailPlayBean.getSubtitleSelectId());
            }
            if (videoDetailPlayBean.getTotalDuration() == null) {
                eVar.g(12);
            } else {
                eVar.c(12, videoDetailPlayBean.getTotalDuration().longValue());
            }
            if (videoDetailPlayBean.getSubjectDurationSeconds() == null) {
                eVar.g(13);
            } else {
                eVar.c(13, videoDetailPlayBean.getSubjectDurationSeconds().longValue());
            }
            if (videoDetailPlayBean.getAverageHueLight() == null) {
                eVar.g(14);
            } else {
                eVar.j(14, videoDetailPlayBean.getAverageHueLight());
            }
            if (videoDetailPlayBean.getSubjectType() == null) {
                eVar.g(15);
            } else {
                eVar.c(15, videoDetailPlayBean.getSubjectType().intValue());
            }
            eVar.c(16, videoDetailPlayBean.getHasDelete() ? 1L : 0L);
            if (videoDetailPlayBean.getPlayMode() == null) {
                eVar.g(17);
            } else {
                eVar.j(17, videoDetailPlayBean.getPlayMode());
            }
            if (videoDetailPlayBean.getDownloadUrl() == null) {
                eVar.g(18);
            } else {
                eVar.j(18, videoDetailPlayBean.getDownloadUrl());
            }
            if (videoDetailPlayBean.getDownloadFilePath() == null) {
                eVar.g(19);
            } else {
                eVar.j(19, videoDetailPlayBean.getDownloadFilePath());
            }
            eVar.c(20, videoDetailPlayBean.getDownloadSize());
            String strA = d1.this.f43140c.a(videoDetailPlayBean.getDubs());
            if (strA == null) {
                eVar.g(21);
            } else {
                eVar.j(21, strA);
            }
            if (videoDetailPlayBean.getLastAdStartTimeStamp() == null) {
                eVar.g(22);
            } else {
                eVar.c(22, videoDetailPlayBean.getLastAdStartTimeStamp().longValue());
            }
            if (videoDetailPlayBean.getLastAdEndTimeStamp() == null) {
                eVar.g(23);
            } else {
                eVar.c(23, videoDetailPlayBean.getLastAdEndTimeStamp().longValue());
            }
            eVar.c(24, videoDetailPlayBean.getRewardPlayed() ? 1L : 0L);
            eVar.c(25, videoDetailPlayBean.getRewardUnlock() ? 1L : 0L);
            eVar.c(26, videoDetailPlayBean.getRewardFree() ? 1L : 0L);
            if (videoDetailPlayBean.getOps() == null) {
                eVar.g(27);
            } else {
                eVar.j(27, videoDetailPlayBean.getOps());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `video_detail_play` WHERE `subjectId` = ? AND `ep` = ? AND `se` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, VideoDetailPlayBean videoDetailPlayBean) {
            if (videoDetailPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, videoDetailPlayBean.getSubjectId());
            }
            eVar.c(2, videoDetailPlayBean.getEp());
            eVar.c(3, videoDetailPlayBean.getSe());
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `video_detail_play` SET `subjectId` = ?,`id` = ?,`ep` = ?,`se` = ?,`progress` = ?,`title` = ?,`coverUrl` = ?,`thumbnail` = ?,`videoUrl` = ?,`timeStamp` = ?,`subtitleSelectId` = ?,`totalDuration` = ?,`subjectDurationSeconds` = ?,`averageHueLight` = ?,`subjectType` = ?,`hasDelete` = ?,`playMode` = ?,`downloadUrl` = ?,`downloadFilePath` = ?,`downloadSize` = ?,`dubs` = ?,`lastAdStartTimeStamp` = ?,`lastAdEndTimeStamp` = ?,`rewardPlayed` = ?,`rewardUnlock` = ?,`rewardFree` = ?,`ops` = ? WHERE `subjectId` = ? AND `ep` = ? AND `se` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, VideoDetailPlayBean videoDetailPlayBean) {
            if (videoDetailPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, videoDetailPlayBean.getSubjectId());
            }
            if (videoDetailPlayBean.getId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, videoDetailPlayBean.getId());
            }
            eVar.c(3, videoDetailPlayBean.getEp());
            eVar.c(4, videoDetailPlayBean.getSe());
            eVar.c(5, videoDetailPlayBean.getProgress());
            if (videoDetailPlayBean.getTitle() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, videoDetailPlayBean.getTitle());
            }
            if (videoDetailPlayBean.getCoverUrl() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, videoDetailPlayBean.getCoverUrl());
            }
            if (videoDetailPlayBean.getThumbnail() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, videoDetailPlayBean.getThumbnail());
            }
            if (videoDetailPlayBean.getVideoUrl() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, videoDetailPlayBean.getVideoUrl());
            }
            eVar.c(10, videoDetailPlayBean.getTimeStamp());
            if (videoDetailPlayBean.getSubtitleSelectId() == null) {
                eVar.g(11);
            } else {
                eVar.j(11, videoDetailPlayBean.getSubtitleSelectId());
            }
            if (videoDetailPlayBean.getTotalDuration() == null) {
                eVar.g(12);
            } else {
                eVar.c(12, videoDetailPlayBean.getTotalDuration().longValue());
            }
            if (videoDetailPlayBean.getSubjectDurationSeconds() == null) {
                eVar.g(13);
            } else {
                eVar.c(13, videoDetailPlayBean.getSubjectDurationSeconds().longValue());
            }
            if (videoDetailPlayBean.getAverageHueLight() == null) {
                eVar.g(14);
            } else {
                eVar.j(14, videoDetailPlayBean.getAverageHueLight());
            }
            if (videoDetailPlayBean.getSubjectType() == null) {
                eVar.g(15);
            } else {
                eVar.c(15, videoDetailPlayBean.getSubjectType().intValue());
            }
            eVar.c(16, videoDetailPlayBean.getHasDelete() ? 1L : 0L);
            if (videoDetailPlayBean.getPlayMode() == null) {
                eVar.g(17);
            } else {
                eVar.j(17, videoDetailPlayBean.getPlayMode());
            }
            if (videoDetailPlayBean.getDownloadUrl() == null) {
                eVar.g(18);
            } else {
                eVar.j(18, videoDetailPlayBean.getDownloadUrl());
            }
            if (videoDetailPlayBean.getDownloadFilePath() == null) {
                eVar.g(19);
            } else {
                eVar.j(19, videoDetailPlayBean.getDownloadFilePath());
            }
            eVar.c(20, videoDetailPlayBean.getDownloadSize());
            String strA = d1.this.f43140c.a(videoDetailPlayBean.getDubs());
            if (strA == null) {
                eVar.g(21);
            } else {
                eVar.j(21, strA);
            }
            if (videoDetailPlayBean.getLastAdStartTimeStamp() == null) {
                eVar.g(22);
            } else {
                eVar.c(22, videoDetailPlayBean.getLastAdStartTimeStamp().longValue());
            }
            if (videoDetailPlayBean.getLastAdEndTimeStamp() == null) {
                eVar.g(23);
            } else {
                eVar.c(23, videoDetailPlayBean.getLastAdEndTimeStamp().longValue());
            }
            eVar.c(24, videoDetailPlayBean.getRewardPlayed() ? 1L : 0L);
            eVar.c(25, videoDetailPlayBean.getRewardUnlock() ? 1L : 0L);
            eVar.c(26, videoDetailPlayBean.getRewardFree() ? 1L : 0L);
            if (videoDetailPlayBean.getOps() == null) {
                eVar.g(27);
            } else {
                eVar.j(27, videoDetailPlayBean.getOps());
            }
            if (videoDetailPlayBean.getSubjectId() == null) {
                eVar.g(28);
            } else {
                eVar.j(28, videoDetailPlayBean.getSubjectId());
            }
            eVar.c(29, videoDetailPlayBean.getEp());
            eVar.c(30, videoDetailPlayBean.getSe());
        }
    }

    public d1(RoomDatabase roomDatabase) {
        this.f43138a = roomDatabase;
    }

    public static List E() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit F(VideoDetailPlayBean videoDetailPlayBean, z3.b bVar) throws Exception {
        this.f43141d.c(bVar, videoDetailPlayBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit G(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM VIDEO_DETAIL_PLAY");
        try {
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ VideoDetailPlayBean H(String str, z3.b bVar) throws Throwable {
        z3.e eVarD0 = bVar.D0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? ORDER BY timeStamp DESC LIMIT 1");
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
            int iD5 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD6 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD8 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD9 = androidx.room.util.k.d(eVarD0, "videoUrl");
            int iD10 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD12 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD14 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD15 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD16 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD17 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD18 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD19 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD20 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD21 = androidx.room.util.k.d(eVarD0, "dubs");
            int iD22 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD23 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD24 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD25 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD26 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD27 = androidx.room.util.k.d(eVarD0, "ops");
            VideoDetailPlayBean videoDetailPlayBean = null;
            if (eVarD0.A0()) {
                try {
                    videoDetailPlayBean = new VideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), (int) eVarD0.getLong(iD3), (int) eVarD0.getLong(iD4), eVarD0.getLong(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.getLong(iD10), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : Long.valueOf(eVarD0.getLong(iD12)), eVarD0.isNull(iD13) ? null : Long.valueOf(eVarD0.getLong(iD13)), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r61) ? null : Integer.valueOf((int) eVarD0.getLong(iD15)), ((int) eVarD0.getLong(iD16)) != 0, eVarD0.isNull(r17) ? null : eVarD0.n0(iD17), eVarD0.isNull(r18) ? null : eVarD0.n0(iD18), eVarD0.isNull(r19) ? null : eVarD0.n0(iD19), eVarD0.getLong(iD20), this.f43140c.b(eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21)), eVarD0.isNull(iD22) ? null : Long.valueOf(eVarD0.getLong(iD22)), eVarD0.isNull(r23) ? null : Long.valueOf(eVarD0.getLong(iD23)), ((int) eVarD0.getLong(iD24)) != 0, ((int) eVarD0.getLong(iD25)) != 0, ((int) eVarD0.getLong(iD26)) != 0, eVarD0.isNull(iD27) ? null : eVarD0.n0(iD27));
                } catch (Throwable th2) {
                    th = th2;
                    eVarD0.close();
                    throw th;
                }
            }
            eVarD0.close();
            return videoDetailPlayBean;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ VideoDetailPlayBean I(int i11, int i12, String str, z3.b bVar) throws Throwable {
        z3.e eVarD0 = bVar.D0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE se = ? AND ep = ? AND subjectId = ? ORDER BY timeStamp DESC LIMIT 1");
        try {
            eVarD0.c(1, i11);
            eVarD0.c(2, i12);
            if (str == null) {
                eVarD0.g(3);
            } else {
                eVarD0.j(3, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD2 = androidx.room.util.k.d(eVarD0, "id");
            int iD3 = androidx.room.util.k.d(eVarD0, "ep");
            int iD4 = androidx.room.util.k.d(eVarD0, "se");
            int iD5 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD6 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD8 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD9 = androidx.room.util.k.d(eVarD0, "videoUrl");
            int iD10 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD12 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD14 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD15 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD16 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD17 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD18 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD19 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD20 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD21 = androidx.room.util.k.d(eVarD0, "dubs");
            int iD22 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD23 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD24 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD25 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD26 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD27 = androidx.room.util.k.d(eVarD0, "ops");
            VideoDetailPlayBean videoDetailPlayBean = null;
            if (eVarD0.A0()) {
                try {
                    videoDetailPlayBean = new VideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), (int) eVarD0.getLong(iD3), (int) eVarD0.getLong(iD4), eVarD0.getLong(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.getLong(iD10), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : Long.valueOf(eVarD0.getLong(iD12)), eVarD0.isNull(iD13) ? null : Long.valueOf(eVarD0.getLong(iD13)), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r60) ? null : Integer.valueOf((int) eVarD0.getLong(iD15)), ((int) eVarD0.getLong(iD16)) != 0, eVarD0.isNull(r62) ? null : eVarD0.n0(iD17), eVarD0.isNull(r16) ? null : eVarD0.n0(iD18), eVarD0.isNull(r17) ? null : eVarD0.n0(iD19), eVarD0.getLong(iD20), this.f43140c.b(eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21)), eVarD0.isNull(iD22) ? null : Long.valueOf(eVarD0.getLong(iD22)), eVarD0.isNull(r21) ? null : Long.valueOf(eVarD0.getLong(iD23)), ((int) eVarD0.getLong(iD24)) != 0, ((int) eVarD0.getLong(iD25)) != 0, ((int) eVarD0.getLong(iD26)) != 0, eVarD0.isNull(iD27) ? null : eVarD0.n0(iD27));
                } catch (Throwable th2) {
                    th = th2;
                    eVarD0.close();
                    throw th;
                }
            }
            eVarD0.close();
            return videoDetailPlayBean;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ VideoDetailPlayBean J(String str, int i11, int i12, z3.b bVar) throws Throwable {
        z3.e eVarD0 = bVar.D0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? AND se = ? AND ep = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.c(2, i11);
            eVarD0.c(3, i12);
            int iD = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD2 = androidx.room.util.k.d(eVarD0, "id");
            int iD3 = androidx.room.util.k.d(eVarD0, "ep");
            int iD4 = androidx.room.util.k.d(eVarD0, "se");
            int iD5 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD6 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD8 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD9 = androidx.room.util.k.d(eVarD0, "videoUrl");
            int iD10 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD12 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD14 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD15 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD16 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD17 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD18 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD19 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD20 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD21 = androidx.room.util.k.d(eVarD0, "dubs");
            int iD22 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD23 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD24 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD25 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD26 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD27 = androidx.room.util.k.d(eVarD0, "ops");
            VideoDetailPlayBean videoDetailPlayBean = null;
            if (eVarD0.A0()) {
                try {
                    videoDetailPlayBean = new VideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), (int) eVarD0.getLong(iD3), (int) eVarD0.getLong(iD4), eVarD0.getLong(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.getLong(iD10), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : Long.valueOf(eVarD0.getLong(iD12)), eVarD0.isNull(iD13) ? null : Long.valueOf(eVarD0.getLong(iD13)), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r59) ? null : Integer.valueOf((int) eVarD0.getLong(iD15)), ((int) eVarD0.getLong(iD16)) != 0, eVarD0.isNull(r61) ? null : eVarD0.n0(iD17), eVarD0.isNull(r16) ? null : eVarD0.n0(iD18), eVarD0.isNull(r17) ? null : eVarD0.n0(iD19), eVarD0.getLong(iD20), this.f43140c.b(eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21)), eVarD0.isNull(iD22) ? null : Long.valueOf(eVarD0.getLong(iD22)), eVarD0.isNull(r21) ? null : Long.valueOf(eVarD0.getLong(iD23)), ((int) eVarD0.getLong(iD24)) != 0, ((int) eVarD0.getLong(iD25)) != 0, ((int) eVarD0.getLong(iD26)) != 0, eVarD0.isNull(iD27) ? null : eVarD0.n0(iD27));
                } catch (Throwable th2) {
                    th = th2;
                    eVarD0.close();
                    throw th;
                }
            }
            eVarD0.close();
            return videoDetailPlayBean;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List K(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? ORDER BY timeStamp DESC");
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
            int iD5 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD6 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD8 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD9 = androidx.room.util.k.d(eVarD0, "videoUrl");
            int iD10 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD12 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD14 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD15 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD16 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD17 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD18 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD19 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD20 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD21 = androidx.room.util.k.d(eVarD0, "dubs");
            int iD22 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD23 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD24 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD25 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD26 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD27 = androidx.room.util.k.d(eVarD0, "ops");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                int i11 = (int) eVarD0.getLong(iD3);
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD4);
                long j11 = eVarD0.getLong(iD5);
                String strN2 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN3 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN4 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                String strN5 = eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9);
                long j12 = eVarD0.getLong(iD10);
                String strN6 = eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11);
                Long lValueOf = eVarD0.isNull(iD12) ? null : Long.valueOf(eVarD0.getLong(iD12));
                Long lValueOf2 = eVarD0.isNull(iD13) ? null : Long.valueOf(eVarD0.getLong(iD13));
                String strN7 = eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14);
                Integer numValueOf = eVarD0.isNull(iD15) ? null : Integer.valueOf((int) eVarD0.getLong(iD15));
                int i14 = iD6;
                boolean z10 = ((int) eVarD0.getLong(iD16)) != 0;
                String strN8 = eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17);
                String strN9 = eVarD0.isNull(iD18) ? null : eVarD0.n0(iD18);
                String strN10 = eVarD0.isNull(iD19) ? null : eVarD0.n0(iD19);
                long j13 = eVarD0.getLong(iD20);
                iD20 = iD20;
                int i15 = iD21;
                ArrayList arrayListB = this.f43140c.b(eVarD0.isNull(i15) ? null : eVarD0.n0(i15));
                iD22 = iD22;
                Long lValueOf3 = eVarD0.isNull(iD22) ? null : Long.valueOf(eVarD0.getLong(iD22));
                Long lValueOf4 = eVarD0.isNull(iD23) ? null : Long.valueOf(eVarD0.getLong(iD23));
                int i16 = (int) eVarD0.getLong(iD24);
                int i17 = iD17;
                boolean z11 = i16 != 0;
                int i18 = (int) eVarD0.getLong(iD25);
                int i19 = iD18;
                VideoDetailPlayBean videoDetailPlayBean = new VideoDetailPlayBean(strN0, strN1, i11, i13, j11, strN2, strN3, strN4, strN5, j12, strN6, lValueOf, lValueOf2, strN7, numValueOf, z10, strN8, strN9, strN10, j13, arrayListB, lValueOf3, lValueOf4, z11, i18 != 0, ((int) eVarD0.getLong(iD26)) != 0, eVarD0.isNull(iD27) ? null : eVarD0.n0(iD27));
                arrayList = arrayList;
                arrayList.add(videoDetailPlayBean);
                iD26 = iD26;
                iD27 = iD27;
                iD6 = i14;
                iD17 = i17;
                iD2 = iD2;
                iD5 = iD5;
                iD16 = iD16;
                iD4 = iD4;
                iD24 = iD24;
                iD = iD;
                iD15 = iD15;
                iD18 = i19;
                iD21 = i15;
                iD25 = iD25;
                iD3 = i12;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ VideoDetailPlayBean L(String str, z3.b bVar) throws Throwable {
        z3.e eVarD0 = bVar.D0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE dubs LIKE '%' || ? || '%' ORDER BY timeStamp DESC LIMIT 1");
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
            int iD5 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD6 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD8 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD9 = androidx.room.util.k.d(eVarD0, "videoUrl");
            int iD10 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD12 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD14 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD15 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD16 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD17 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD18 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD19 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD20 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD21 = androidx.room.util.k.d(eVarD0, "dubs");
            int iD22 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD23 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD24 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD25 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD26 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD27 = androidx.room.util.k.d(eVarD0, "ops");
            VideoDetailPlayBean videoDetailPlayBean = null;
            if (eVarD0.A0()) {
                try {
                    videoDetailPlayBean = new VideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), (int) eVarD0.getLong(iD3), (int) eVarD0.getLong(iD4), eVarD0.getLong(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.getLong(iD10), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : Long.valueOf(eVarD0.getLong(iD12)), eVarD0.isNull(iD13) ? null : Long.valueOf(eVarD0.getLong(iD13)), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r61) ? null : Integer.valueOf((int) eVarD0.getLong(iD15)), ((int) eVarD0.getLong(iD16)) != 0, eVarD0.isNull(r17) ? null : eVarD0.n0(iD17), eVarD0.isNull(r18) ? null : eVarD0.n0(iD18), eVarD0.isNull(r19) ? null : eVarD0.n0(iD19), eVarD0.getLong(iD20), this.f43140c.b(eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21)), eVarD0.isNull(iD22) ? null : Long.valueOf(eVarD0.getLong(iD22)), eVarD0.isNull(r23) ? null : Long.valueOf(eVarD0.getLong(iD23)), ((int) eVarD0.getLong(iD24)) != 0, ((int) eVarD0.getLong(iD25)) != 0, ((int) eVarD0.getLong(iD26)) != 0, eVarD0.isNull(iD27) ? null : eVarD0.n0(iD27));
                } catch (Throwable th2) {
                    th = th2;
                    eVarD0.close();
                    throw th;
                }
            }
            eVarD0.close();
            return videoDetailPlayBean;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List M(int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;");
        try {
            eVarD0.c(1, i11);
            eVarD0.c(2, i12);
            int iD = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD2 = androidx.room.util.k.d(eVarD0, "id");
            int iD3 = androidx.room.util.k.d(eVarD0, "ep");
            int iD4 = androidx.room.util.k.d(eVarD0, "se");
            int iD5 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD6 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD8 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD9 = androidx.room.util.k.d(eVarD0, "videoUrl");
            int iD10 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD12 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD14 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD15 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD16 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD17 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD18 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD19 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD20 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD21 = androidx.room.util.k.d(eVarD0, "dubs");
            int iD22 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD23 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD24 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD25 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD26 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD27 = androidx.room.util.k.d(eVarD0, "ops");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                int i13 = (int) eVarD0.getLong(iD3);
                int i14 = iD3;
                int i15 = (int) eVarD0.getLong(iD4);
                long j11 = eVarD0.getLong(iD5);
                String strN2 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN3 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN4 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                String strN5 = eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9);
                long j12 = eVarD0.getLong(iD10);
                String strN6 = eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11);
                Long lValueOf = eVarD0.isNull(iD12) ? null : Long.valueOf(eVarD0.getLong(iD12));
                Long lValueOf2 = eVarD0.isNull(iD13) ? null : Long.valueOf(eVarD0.getLong(iD13));
                String strN7 = eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14);
                Integer numValueOf = eVarD0.isNull(iD15) ? null : Integer.valueOf((int) eVarD0.getLong(iD15));
                int i16 = iD16;
                int i17 = iD6;
                boolean z10 = ((int) eVarD0.getLong(i16)) != 0;
                String strN8 = eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17);
                String strN9 = eVarD0.isNull(iD18) ? null : eVarD0.n0(iD18);
                String strN10 = eVarD0.isNull(iD19) ? null : eVarD0.n0(iD19);
                long j13 = eVarD0.getLong(iD20);
                iD20 = iD20;
                int i18 = iD21;
                ArrayList arrayListB = this.f43140c.b(eVarD0.isNull(i18) ? null : eVarD0.n0(i18));
                iD22 = iD22;
                Long lValueOf3 = eVarD0.isNull(iD22) ? null : Long.valueOf(eVarD0.getLong(iD22));
                Long lValueOf4 = eVarD0.isNull(iD23) ? null : Long.valueOf(eVarD0.getLong(iD23));
                int i19 = (int) eVarD0.getLong(iD24);
                int i20 = iD18;
                boolean z11 = i19 != 0;
                int i21 = (int) eVarD0.getLong(iD25);
                int i22 = iD24;
                iD25 = iD25;
                arrayList.add(new VideoDetailPlayBean(strN0, strN1, i13, i15, j11, strN2, strN3, strN4, strN5, j12, strN6, lValueOf, lValueOf2, strN7, numValueOf, z10, strN8, strN9, strN10, j13, arrayListB, lValueOf3, lValueOf4, z11, i21 != 0, ((int) eVarD0.getLong(iD26)) != 0, eVarD0.isNull(iD27) ? null : eVarD0.n0(iD27)));
                iD4 = iD4;
                iD27 = iD27;
                iD26 = iD26;
                iD15 = iD15;
                iD18 = i20;
                iD = iD;
                iD2 = iD2;
                iD3 = i14;
                iD5 = iD5;
                iD17 = iD17;
                iD24 = i22;
                iD6 = i17;
                iD16 = i16;
                iD21 = i18;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long N(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT SUM(progress) AS totalProgress FROM VIDEO_DETAIL_PLAY WHERE subjectId = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            Long lValueOf = null;
            if (eVarD0.A0() && !eVarD0.isNull(0)) {
                lValueOf = Long.valueOf(eVarD0.getLong(0));
            }
            eVarD0.close();
            return lValueOf;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List O(int i11, int i12, int i13, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL AND subjectType=? AND subjectDurationSeconds > 0 AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;");
        try {
            eVarD0.c(1, i11);
            eVarD0.c(2, i12);
            eVarD0.c(3, i13);
            int iD = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD2 = androidx.room.util.k.d(eVarD0, "id");
            int iD3 = androidx.room.util.k.d(eVarD0, "ep");
            int iD4 = androidx.room.util.k.d(eVarD0, "se");
            int iD5 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD6 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD7 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD8 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD9 = androidx.room.util.k.d(eVarD0, "videoUrl");
            int iD10 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD12 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD14 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD15 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD16 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD17 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD18 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD19 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD20 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD21 = androidx.room.util.k.d(eVarD0, "dubs");
            int iD22 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD23 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD24 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD25 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD26 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD27 = androidx.room.util.k.d(eVarD0, "ops");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                int i14 = (int) eVarD0.getLong(iD3);
                int i15 = iD3;
                int i16 = (int) eVarD0.getLong(iD4);
                long j11 = eVarD0.getLong(iD5);
                String strN2 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN3 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN4 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                String strN5 = eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9);
                long j12 = eVarD0.getLong(iD10);
                String strN6 = eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11);
                Long lValueOf = eVarD0.isNull(iD12) ? null : Long.valueOf(eVarD0.getLong(iD12));
                Long lValueOf2 = eVarD0.isNull(iD13) ? null : Long.valueOf(eVarD0.getLong(iD13));
                String strN7 = eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14);
                Integer numValueOf = eVarD0.isNull(iD15) ? null : Integer.valueOf((int) eVarD0.getLong(iD15));
                int i17 = iD16;
                int i18 = iD6;
                boolean z10 = ((int) eVarD0.getLong(i17)) != 0;
                String strN8 = eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17);
                String strN9 = eVarD0.isNull(iD18) ? null : eVarD0.n0(iD18);
                String strN10 = eVarD0.isNull(iD19) ? null : eVarD0.n0(iD19);
                long j13 = eVarD0.getLong(iD20);
                iD20 = iD20;
                int i19 = iD21;
                ArrayList arrayListB = this.f43140c.b(eVarD0.isNull(i19) ? null : eVarD0.n0(i19));
                iD22 = iD22;
                Long lValueOf3 = eVarD0.isNull(iD22) ? null : Long.valueOf(eVarD0.getLong(iD22));
                Long lValueOf4 = eVarD0.isNull(iD23) ? null : Long.valueOf(eVarD0.getLong(iD23));
                int i20 = (int) eVarD0.getLong(iD24);
                int i21 = iD18;
                boolean z11 = i20 != 0;
                int i22 = (int) eVarD0.getLong(iD25);
                int i23 = iD24;
                iD25 = iD25;
                arrayList.add(new VideoDetailPlayBean(strN0, strN1, i14, i16, j11, strN2, strN3, strN4, strN5, j12, strN6, lValueOf, lValueOf2, strN7, numValueOf, z10, strN8, strN9, strN10, j13, arrayListB, lValueOf3, lValueOf4, z11, i22 != 0, ((int) eVarD0.getLong(iD26)) != 0, eVarD0.isNull(iD27) ? null : eVarD0.n0(iD27)));
                iD4 = iD4;
                iD27 = iD27;
                iD26 = iD26;
                iD15 = iD15;
                iD18 = i21;
                iD = iD;
                iD2 = iD2;
                iD3 = i15;
                iD5 = iD5;
                iD17 = iD17;
                iD24 = i23;
                iD6 = i18;
                iD16 = i17;
                iD21 = i19;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit P(VideoDetailPlayBean videoDetailPlayBean, z3.b bVar) throws Exception {
        this.f43139b.d(bVar, videoDetailPlayBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit Q(VideoDetailPlayBean videoDetailPlayBean, z3.b bVar) throws Exception {
        this.f43142e.c(bVar, videoDetailPlayBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit R(String str, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE VIDEO_DETAIL_PLAY SET subtitleSelectId = ? WHERE subjectId = ? ");
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

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f43138a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.c1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return d1.G((z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object b(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f43138a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.t0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return d1.R(str2, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object c(String str, Continuation continuation) {
        return VideoDetailPlayDao.DefaultImpls.a(this, str, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object d(final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f43138a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.w0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43241a.M(i12, i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object e(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43138a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.a1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43121a.H(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object f(String str, int i11, int i12, long j11, long j12, Continuation continuation) {
        return VideoDetailPlayDao.DefaultImpls.c(this, str, i11, i12, j11, j12, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object g(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43138a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.z0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return d1.N(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object h(final VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
        videoDetailPlayBean.getClass();
        return androidx.room.util.b.f(this.f43138a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.s0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43219a.F(videoDetailPlayBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object i(final int i11, final int i12, final int i13, Continuation continuation) {
        return androidx.room.util.b.f(this.f43138a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.v0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43236a.O(i13, i12, i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object j(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43138a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.r0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43215a.K(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object k(final VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
        videoDetailPlayBean.getClass();
        return androidx.room.util.b.f(this.f43138a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.x0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43245a.Q(videoDetailPlayBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object l(final String str, final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f43138a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.y0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43250a.I(i11, i12, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object m(final String str, final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f43138a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.u0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43229a.J(str, i11, i12, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object n(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43138a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.b1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43124a.L(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object o(final VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
        videoDetailPlayBean.getClass();
        return androidx.room.util.b.f(this.f43138a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43212a.P(videoDetailPlayBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.VideoDetailPlayDao
    public Object p(VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
        return VideoDetailPlayDao.DefaultImpls.b(this, videoDetailPlayBean, continuation);
    }
}
