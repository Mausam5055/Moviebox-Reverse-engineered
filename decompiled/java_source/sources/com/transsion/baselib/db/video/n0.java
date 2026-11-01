package com.transsion.baselib.db.video;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class n0 implements UGCVideoDetailPlayDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f43193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f43194b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f43195c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.e f43196d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `ugc_video_detail_play` (`collectionId`,`ugcVideoId`,`progress`,`title`,`coverUrl`,`thumbnail`,`position`,`type`,`cateLev1Id`,`cateLev2Id`,`cateLev3Id`,`cateLev4Id`,`timeStamp`,`subtitleSelectId`,`totalDuration`,`subjectDurationSeconds`,`averageHueLight`,`subjectType`,`hasDelete`,`playMode`,`downloadUrl`,`downloadResid`,`downloadFilePath`,`downloadSize`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`rewardPlayed`,`rewardUnlock`,`rewardFree`,`ops`,`uid`,`userName`,`userAvatar`,`description`,`videoStyle`,`kidId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
            if (uGCVideoDetailPlayBean.getCollectionId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, uGCVideoDetailPlayBean.getCollectionId());
            }
            if (uGCVideoDetailPlayBean.getUgcVideoId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, uGCVideoDetailPlayBean.getUgcVideoId());
            }
            eVar.c(3, uGCVideoDetailPlayBean.getProgress());
            if (uGCVideoDetailPlayBean.getTitle() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, uGCVideoDetailPlayBean.getTitle());
            }
            if (uGCVideoDetailPlayBean.getCoverUrl() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, uGCVideoDetailPlayBean.getCoverUrl());
            }
            if (uGCVideoDetailPlayBean.getThumbnail() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, uGCVideoDetailPlayBean.getThumbnail());
            }
            eVar.c(7, uGCVideoDetailPlayBean.getPosition());
            if (uGCVideoDetailPlayBean.getType() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, uGCVideoDetailPlayBean.getType());
            }
            if (uGCVideoDetailPlayBean.getCateLev1Id() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, uGCVideoDetailPlayBean.getCateLev1Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev2Id() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, uGCVideoDetailPlayBean.getCateLev2Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev3Id() == null) {
                eVar.g(11);
            } else {
                eVar.c(11, uGCVideoDetailPlayBean.getCateLev3Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev4Id() == null) {
                eVar.g(12);
            } else {
                eVar.c(12, uGCVideoDetailPlayBean.getCateLev4Id().intValue());
            }
            eVar.c(13, uGCVideoDetailPlayBean.getTimeStamp());
            if (uGCVideoDetailPlayBean.getSubtitleSelectId() == null) {
                eVar.g(14);
            } else {
                eVar.j(14, uGCVideoDetailPlayBean.getSubtitleSelectId());
            }
            if (uGCVideoDetailPlayBean.getTotalDuration() == null) {
                eVar.g(15);
            } else {
                eVar.c(15, uGCVideoDetailPlayBean.getTotalDuration().longValue());
            }
            if (uGCVideoDetailPlayBean.getSubjectDurationSeconds() == null) {
                eVar.g(16);
            } else {
                eVar.c(16, uGCVideoDetailPlayBean.getSubjectDurationSeconds().longValue());
            }
            if (uGCVideoDetailPlayBean.getAverageHueLight() == null) {
                eVar.g(17);
            } else {
                eVar.j(17, uGCVideoDetailPlayBean.getAverageHueLight());
            }
            if (uGCVideoDetailPlayBean.getSubjectType() == null) {
                eVar.g(18);
            } else {
                eVar.c(18, uGCVideoDetailPlayBean.getSubjectType().intValue());
            }
            eVar.c(19, uGCVideoDetailPlayBean.getHasDelete() ? 1L : 0L);
            if (uGCVideoDetailPlayBean.getPlayMode() == null) {
                eVar.g(20);
            } else {
                eVar.j(20, uGCVideoDetailPlayBean.getPlayMode());
            }
            if (uGCVideoDetailPlayBean.getDownloadUrl() == null) {
                eVar.g(21);
            } else {
                eVar.j(21, uGCVideoDetailPlayBean.getDownloadUrl());
            }
            if (uGCVideoDetailPlayBean.getDownloadResid() == null) {
                eVar.g(22);
            } else {
                eVar.j(22, uGCVideoDetailPlayBean.getDownloadResid());
            }
            if (uGCVideoDetailPlayBean.getDownloadFilePath() == null) {
                eVar.g(23);
            } else {
                eVar.j(23, uGCVideoDetailPlayBean.getDownloadFilePath());
            }
            eVar.c(24, uGCVideoDetailPlayBean.getDownloadSize());
            if (uGCVideoDetailPlayBean.getLastAdStartTimeStamp() == null) {
                eVar.g(25);
            } else {
                eVar.c(25, uGCVideoDetailPlayBean.getLastAdStartTimeStamp().longValue());
            }
            if (uGCVideoDetailPlayBean.getLastAdEndTimeStamp() == null) {
                eVar.g(26);
            } else {
                eVar.c(26, uGCVideoDetailPlayBean.getLastAdEndTimeStamp().longValue());
            }
            eVar.c(27, uGCVideoDetailPlayBean.getRewardPlayed() ? 1L : 0L);
            eVar.c(28, uGCVideoDetailPlayBean.getRewardUnlock() ? 1L : 0L);
            eVar.c(29, uGCVideoDetailPlayBean.getRewardFree() ? 1L : 0L);
            if (uGCVideoDetailPlayBean.getOps() == null) {
                eVar.g(30);
            } else {
                eVar.j(30, uGCVideoDetailPlayBean.getOps());
            }
            if (uGCVideoDetailPlayBean.getUid() == null) {
                eVar.g(31);
            } else {
                eVar.j(31, uGCVideoDetailPlayBean.getUid());
            }
            if (uGCVideoDetailPlayBean.getUserName() == null) {
                eVar.g(32);
            } else {
                eVar.j(32, uGCVideoDetailPlayBean.getUserName());
            }
            if (uGCVideoDetailPlayBean.getUserAvatar() == null) {
                eVar.g(33);
            } else {
                eVar.j(33, uGCVideoDetailPlayBean.getUserAvatar());
            }
            if (uGCVideoDetailPlayBean.getDescription() == null) {
                eVar.g(34);
            } else {
                eVar.j(34, uGCVideoDetailPlayBean.getDescription());
            }
            if (uGCVideoDetailPlayBean.getVideoStyle() == null) {
                eVar.g(35);
            } else {
                eVar.j(35, uGCVideoDetailPlayBean.getVideoStyle());
            }
            if (uGCVideoDetailPlayBean.getKidId() == null) {
                eVar.g(36);
            } else {
                eVar.j(36, uGCVideoDetailPlayBean.getKidId());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `ugc_video_detail_play` WHERE `collectionId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
            if (uGCVideoDetailPlayBean.getCollectionId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, uGCVideoDetailPlayBean.getCollectionId());
            }
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `ugc_video_detail_play` SET `collectionId` = ?,`ugcVideoId` = ?,`progress` = ?,`title` = ?,`coverUrl` = ?,`thumbnail` = ?,`position` = ?,`type` = ?,`cateLev1Id` = ?,`cateLev2Id` = ?,`cateLev3Id` = ?,`cateLev4Id` = ?,`timeStamp` = ?,`subtitleSelectId` = ?,`totalDuration` = ?,`subjectDurationSeconds` = ?,`averageHueLight` = ?,`subjectType` = ?,`hasDelete` = ?,`playMode` = ?,`downloadUrl` = ?,`downloadResid` = ?,`downloadFilePath` = ?,`downloadSize` = ?,`lastAdStartTimeStamp` = ?,`lastAdEndTimeStamp` = ?,`rewardPlayed` = ?,`rewardUnlock` = ?,`rewardFree` = ?,`ops` = ?,`uid` = ?,`userName` = ?,`userAvatar` = ?,`description` = ?,`videoStyle` = ?,`kidId` = ? WHERE `collectionId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
            if (uGCVideoDetailPlayBean.getCollectionId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, uGCVideoDetailPlayBean.getCollectionId());
            }
            if (uGCVideoDetailPlayBean.getUgcVideoId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, uGCVideoDetailPlayBean.getUgcVideoId());
            }
            eVar.c(3, uGCVideoDetailPlayBean.getProgress());
            if (uGCVideoDetailPlayBean.getTitle() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, uGCVideoDetailPlayBean.getTitle());
            }
            if (uGCVideoDetailPlayBean.getCoverUrl() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, uGCVideoDetailPlayBean.getCoverUrl());
            }
            if (uGCVideoDetailPlayBean.getThumbnail() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, uGCVideoDetailPlayBean.getThumbnail());
            }
            eVar.c(7, uGCVideoDetailPlayBean.getPosition());
            if (uGCVideoDetailPlayBean.getType() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, uGCVideoDetailPlayBean.getType());
            }
            if (uGCVideoDetailPlayBean.getCateLev1Id() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, uGCVideoDetailPlayBean.getCateLev1Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev2Id() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, uGCVideoDetailPlayBean.getCateLev2Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev3Id() == null) {
                eVar.g(11);
            } else {
                eVar.c(11, uGCVideoDetailPlayBean.getCateLev3Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev4Id() == null) {
                eVar.g(12);
            } else {
                eVar.c(12, uGCVideoDetailPlayBean.getCateLev4Id().intValue());
            }
            eVar.c(13, uGCVideoDetailPlayBean.getTimeStamp());
            if (uGCVideoDetailPlayBean.getSubtitleSelectId() == null) {
                eVar.g(14);
            } else {
                eVar.j(14, uGCVideoDetailPlayBean.getSubtitleSelectId());
            }
            if (uGCVideoDetailPlayBean.getTotalDuration() == null) {
                eVar.g(15);
            } else {
                eVar.c(15, uGCVideoDetailPlayBean.getTotalDuration().longValue());
            }
            if (uGCVideoDetailPlayBean.getSubjectDurationSeconds() == null) {
                eVar.g(16);
            } else {
                eVar.c(16, uGCVideoDetailPlayBean.getSubjectDurationSeconds().longValue());
            }
            if (uGCVideoDetailPlayBean.getAverageHueLight() == null) {
                eVar.g(17);
            } else {
                eVar.j(17, uGCVideoDetailPlayBean.getAverageHueLight());
            }
            if (uGCVideoDetailPlayBean.getSubjectType() == null) {
                eVar.g(18);
            } else {
                eVar.c(18, uGCVideoDetailPlayBean.getSubjectType().intValue());
            }
            eVar.c(19, uGCVideoDetailPlayBean.getHasDelete() ? 1L : 0L);
            if (uGCVideoDetailPlayBean.getPlayMode() == null) {
                eVar.g(20);
            } else {
                eVar.j(20, uGCVideoDetailPlayBean.getPlayMode());
            }
            if (uGCVideoDetailPlayBean.getDownloadUrl() == null) {
                eVar.g(21);
            } else {
                eVar.j(21, uGCVideoDetailPlayBean.getDownloadUrl());
            }
            if (uGCVideoDetailPlayBean.getDownloadResid() == null) {
                eVar.g(22);
            } else {
                eVar.j(22, uGCVideoDetailPlayBean.getDownloadResid());
            }
            if (uGCVideoDetailPlayBean.getDownloadFilePath() == null) {
                eVar.g(23);
            } else {
                eVar.j(23, uGCVideoDetailPlayBean.getDownloadFilePath());
            }
            eVar.c(24, uGCVideoDetailPlayBean.getDownloadSize());
            if (uGCVideoDetailPlayBean.getLastAdStartTimeStamp() == null) {
                eVar.g(25);
            } else {
                eVar.c(25, uGCVideoDetailPlayBean.getLastAdStartTimeStamp().longValue());
            }
            if (uGCVideoDetailPlayBean.getLastAdEndTimeStamp() == null) {
                eVar.g(26);
            } else {
                eVar.c(26, uGCVideoDetailPlayBean.getLastAdEndTimeStamp().longValue());
            }
            eVar.c(27, uGCVideoDetailPlayBean.getRewardPlayed() ? 1L : 0L);
            eVar.c(28, uGCVideoDetailPlayBean.getRewardUnlock() ? 1L : 0L);
            eVar.c(29, uGCVideoDetailPlayBean.getRewardFree() ? 1L : 0L);
            if (uGCVideoDetailPlayBean.getOps() == null) {
                eVar.g(30);
            } else {
                eVar.j(30, uGCVideoDetailPlayBean.getOps());
            }
            if (uGCVideoDetailPlayBean.getUid() == null) {
                eVar.g(31);
            } else {
                eVar.j(31, uGCVideoDetailPlayBean.getUid());
            }
            if (uGCVideoDetailPlayBean.getUserName() == null) {
                eVar.g(32);
            } else {
                eVar.j(32, uGCVideoDetailPlayBean.getUserName());
            }
            if (uGCVideoDetailPlayBean.getUserAvatar() == null) {
                eVar.g(33);
            } else {
                eVar.j(33, uGCVideoDetailPlayBean.getUserAvatar());
            }
            if (uGCVideoDetailPlayBean.getDescription() == null) {
                eVar.g(34);
            } else {
                eVar.j(34, uGCVideoDetailPlayBean.getDescription());
            }
            if (uGCVideoDetailPlayBean.getVideoStyle() == null) {
                eVar.g(35);
            } else {
                eVar.j(35, uGCVideoDetailPlayBean.getVideoStyle());
            }
            if (uGCVideoDetailPlayBean.getKidId() == null) {
                eVar.g(36);
            } else {
                eVar.j(36, uGCVideoDetailPlayBean.getKidId());
            }
            if (uGCVideoDetailPlayBean.getCollectionId() == null) {
                eVar.g(37);
            } else {
                eVar.j(37, uGCVideoDetailPlayBean.getCollectionId());
            }
        }
    }

    public n0(RoomDatabase roomDatabase) {
        this.f43193a = roomDatabase;
    }

    public static List P() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit Q(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM UGC_VIDEO_DETAIL_PLAY");
        try {
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit R(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId=?");
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
    public static /* synthetic */ List S(String str, int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId NOT LIKE 'SINGLE_%' AND rowid IN (SELECT rowid FROM (SELECT rowid, collectionId, MAX(timeStamp) as maxTimeStamp FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId NOT LIKE 'SINGLE_%' GROUP BY collectionId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            if (str == null) {
                eVarD0.g(2);
            } else {
                eVarD0.j(2, str);
            }
            eVarD0.c(3, i11);
            eVarD0.c(4, i12);
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                long j11 = eVarD0.getLong(iD3);
                String strN2 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN3 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                int i13 = (int) eVarD0.getLong(iD7);
                String strN5 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Integer numValueOf = eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9));
                Integer numValueOf2 = eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10));
                Integer numValueOf3 = eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11));
                Integer numValueOf4 = eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12));
                long j12 = eVarD0.getLong(iD13);
                String strN6 = eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14);
                Long lValueOf = eVarD0.isNull(iD15) ? null : Long.valueOf(eVarD0.getLong(iD15));
                Long lValueOf2 = eVarD0.isNull(iD16) ? null : Long.valueOf(eVarD0.getLong(iD16));
                iD17 = iD17;
                String strN7 = eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17);
                Integer numValueOf5 = eVarD0.isNull(iD18) ? null : Integer.valueOf((int) eVarD0.getLong(iD18));
                int i14 = iD5;
                boolean z10 = ((int) eVarD0.getLong(iD19)) != 0;
                String strN8 = eVarD0.isNull(iD20) ? null : eVarD0.n0(iD20);
                String strN9 = eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21);
                String strN10 = eVarD0.isNull(iD22) ? null : eVarD0.n0(iD22);
                String strN11 = eVarD0.isNull(iD23) ? null : eVarD0.n0(iD23);
                long j13 = eVarD0.getLong(iD24);
                iD24 = iD24;
                iD25 = iD25;
                Long lValueOf3 = eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25));
                Long lValueOf4 = eVarD0.isNull(iD26) ? null : Long.valueOf(eVarD0.getLong(iD26));
                int i15 = iD19;
                boolean z11 = ((int) eVarD0.getLong(iD27)) != 0;
                int i16 = iD21;
                boolean z12 = ((int) eVarD0.getLong(iD28)) != 0;
                int i17 = iD6;
                boolean z13 = ((int) eVarD0.getLong(iD29)) != 0;
                String strN12 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN13 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                String strN14 = eVarD0.isNull(iD32) ? null : eVarD0.n0(iD32);
                String strN15 = eVarD0.isNull(iD33) ? null : eVarD0.n0(iD33);
                String strN16 = eVarD0.isNull(iD34) ? null : eVarD0.n0(iD34);
                String strN17 = eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35);
                String strN18 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                iD36 = iD36;
                arrayList.add(new UGCVideoDetailPlayBean(strN0, strN1, j11, strN2, strN3, strN4, i13, strN5, numValueOf, numValueOf2, numValueOf3, numValueOf4, j12, strN6, lValueOf, lValueOf2, strN7, numValueOf5, z10, strN8, strN9, strN10, strN11, j13, lValueOf3, lValueOf4, z11, z12, z13, strN12, strN13, strN14, strN15, strN16, strN17, strN18));
                iD = iD;
                iD30 = iD30;
                iD31 = iD31;
                iD15 = iD15;
                iD5 = i14;
                iD18 = iD18;
                iD19 = i15;
                iD21 = i16;
                iD6 = i17;
                iD2 = iD2;
                iD28 = iD28;
                iD29 = iD29;
                iD27 = iD27;
                iD3 = iD3;
                iD4 = iD4;
                iD20 = iD20;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List T(int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = '') AND coverUrl IS NOT NULL AND collectionId NOT LIKE 'SINGLE_%' AND rowid IN (SELECT rowid FROM (SELECT rowid, collectionId, MAX(timeStamp) as maxTimeStamp FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = '') AND coverUrl IS NOT NULL AND collectionId NOT LIKE 'SINGLE_%' GROUP BY collectionId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?");
        try {
            eVarD0.c(1, i11);
            eVarD0.c(2, i12);
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                long j11 = eVarD0.getLong(iD3);
                String strN2 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN3 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                int i13 = (int) eVarD0.getLong(iD7);
                String strN5 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Integer numValueOf = eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9));
                Integer numValueOf2 = eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10));
                Integer numValueOf3 = eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11));
                Integer numValueOf4 = eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12));
                long j12 = eVarD0.getLong(iD13);
                String strN6 = eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14);
                Long lValueOf = eVarD0.isNull(iD15) ? null : Long.valueOf(eVarD0.getLong(iD15));
                Long lValueOf2 = eVarD0.isNull(iD16) ? null : Long.valueOf(eVarD0.getLong(iD16));
                String strN7 = eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17);
                Integer numValueOf5 = eVarD0.isNull(iD18) ? null : Integer.valueOf((int) eVarD0.getLong(iD18));
                int i14 = iD5;
                boolean z10 = ((int) eVarD0.getLong(iD19)) != 0;
                String strN8 = eVarD0.isNull(iD20) ? null : eVarD0.n0(iD20);
                String strN9 = eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21);
                String strN10 = eVarD0.isNull(iD22) ? null : eVarD0.n0(iD22);
                String strN11 = eVarD0.isNull(iD23) ? null : eVarD0.n0(iD23);
                long j13 = eVarD0.getLong(iD24);
                iD24 = iD24;
                iD25 = iD25;
                Long lValueOf3 = eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25));
                Long lValueOf4 = eVarD0.isNull(iD26) ? null : Long.valueOf(eVarD0.getLong(iD26));
                int i15 = iD19;
                boolean z11 = ((int) eVarD0.getLong(iD27)) != 0;
                int i16 = iD21;
                int i17 = iD27;
                boolean z12 = ((int) eVarD0.getLong(iD28)) != 0;
                int i18 = iD28;
                boolean z13 = ((int) eVarD0.getLong(iD29)) != 0;
                String strN12 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN13 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                String strN14 = eVarD0.isNull(iD32) ? null : eVarD0.n0(iD32);
                String strN15 = eVarD0.isNull(iD33) ? null : eVarD0.n0(iD33);
                String strN16 = eVarD0.isNull(iD34) ? null : eVarD0.n0(iD34);
                String strN17 = eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35);
                String strN18 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                iD36 = iD36;
                arrayList.add(new UGCVideoDetailPlayBean(strN0, strN1, j11, strN2, strN3, strN4, i13, strN5, numValueOf, numValueOf2, numValueOf3, numValueOf4, j12, strN6, lValueOf, lValueOf2, strN7, numValueOf5, z10, strN8, strN9, strN10, strN11, j13, lValueOf3, lValueOf4, z11, z12, z13, strN12, strN13, strN14, strN15, strN16, strN17, strN18));
                iD31 = iD31;
                iD = iD;
                iD2 = iD2;
                iD3 = iD3;
                iD20 = iD20;
                iD4 = iD4;
                iD16 = iD16;
                iD18 = iD18;
                iD21 = i16;
                iD28 = i18;
                iD29 = iD29;
                iD27 = i17;
                iD5 = i14;
                iD19 = i15;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ UGCVideoDetailPlayBean U(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId = ? AND collectionId NOT LIKE 'SINGLE_%' ORDER BY timeStamp DESC LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarD0.A0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.getLong(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), (int) eVarD0.getLong(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11)), eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12)), eVarD0.getLong(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r78) ? null : Long.valueOf(eVarD0.getLong(iD15)), eVarD0.isNull(r16) ? null : Long.valueOf(eVarD0.getLong(iD16)), eVarD0.isNull(r17) ? null : eVarD0.n0(iD17), eVarD0.isNull(r18) ? null : Integer.valueOf((int) eVarD0.getLong(iD18)), ((int) eVarD0.getLong(iD19)) != 0, eVarD0.isNull(r20) ? null : eVarD0.n0(iD20), eVarD0.isNull(r21) ? null : eVarD0.n0(iD21), eVarD0.isNull(r22) ? null : eVarD0.n0(iD22), eVarD0.isNull(r23) ? null : eVarD0.n0(iD23), eVarD0.getLong(iD24), eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25)), eVarD0.isNull(r26) ? null : Long.valueOf(eVarD0.getLong(iD26)), ((int) eVarD0.getLong(iD27)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, eVarD0.isNull(r30) ? null : eVarD0.n0(iD30), eVarD0.isNull(r31) ? null : eVarD0.n0(iD31), eVarD0.isNull(r32) ? null : eVarD0.n0(iD32), eVarD0.isNull(r33) ? null : eVarD0.n0(iD33), eVarD0.isNull(r34) ? null : eVarD0.n0(iD34), eVarD0.isNull(r35) ? null : eVarD0.n0(iD35), eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36));
            }
            eVarD0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ UGCVideoDetailPlayBean V(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE collectionId = ? ORDER BY timeStamp DESC LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarD0.A0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.getLong(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), (int) eVarD0.getLong(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11)), eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12)), eVarD0.getLong(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r78) ? null : Long.valueOf(eVarD0.getLong(iD15)), eVarD0.isNull(r16) ? null : Long.valueOf(eVarD0.getLong(iD16)), eVarD0.isNull(r17) ? null : eVarD0.n0(iD17), eVarD0.isNull(r18) ? null : Integer.valueOf((int) eVarD0.getLong(iD18)), ((int) eVarD0.getLong(iD19)) != 0, eVarD0.isNull(r20) ? null : eVarD0.n0(iD20), eVarD0.isNull(r21) ? null : eVarD0.n0(iD21), eVarD0.isNull(r22) ? null : eVarD0.n0(iD22), eVarD0.isNull(r23) ? null : eVarD0.n0(iD23), eVarD0.getLong(iD24), eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25)), eVarD0.isNull(r26) ? null : Long.valueOf(eVarD0.getLong(iD26)), ((int) eVarD0.getLong(iD27)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, eVarD0.isNull(r30) ? null : eVarD0.n0(iD30), eVarD0.isNull(r31) ? null : eVarD0.n0(iD31), eVarD0.isNull(r32) ? null : eVarD0.n0(iD32), eVarD0.isNull(r33) ? null : eVarD0.n0(iD33), eVarD0.isNull(r34) ? null : eVarD0.n0(iD34), eVarD0.isNull(r35) ? null : eVarD0.n0(iD35), eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36));
            }
            eVarD0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ UGCVideoDetailPlayBean W(String str, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId = ? AND collectionId = ? ORDER BY timeStamp DESC LIMIT 1");
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
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarD0.A0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.getLong(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), (int) eVarD0.getLong(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11)), eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12)), eVarD0.getLong(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r77) ? null : Long.valueOf(eVarD0.getLong(iD15)), eVarD0.isNull(r78) ? null : Long.valueOf(eVarD0.getLong(iD16)), eVarD0.isNull(r16) ? null : eVarD0.n0(iD17), eVarD0.isNull(r17) ? null : Integer.valueOf((int) eVarD0.getLong(iD18)), ((int) eVarD0.getLong(iD19)) != 0, eVarD0.isNull(r19) ? null : eVarD0.n0(iD20), eVarD0.isNull(r20) ? null : eVarD0.n0(iD21), eVarD0.isNull(r21) ? null : eVarD0.n0(iD22), eVarD0.isNull(r22) ? null : eVarD0.n0(iD23), eVarD0.getLong(iD24), eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25)), eVarD0.isNull(r25) ? null : Long.valueOf(eVarD0.getLong(iD26)), ((int) eVarD0.getLong(iD27)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, eVarD0.isNull(r29) ? null : eVarD0.n0(iD30), eVarD0.isNull(r30) ? null : eVarD0.n0(iD31), eVarD0.isNull(r31) ? null : eVarD0.n0(iD32), eVarD0.isNull(r32) ? null : eVarD0.n0(iD33), eVarD0.isNull(r33) ? null : eVarD0.n0(iD34), eVarD0.isNull(r34) ? null : eVarD0.n0(iD35), eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36));
            }
            eVarD0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ UGCVideoDetailPlayBean X(String str, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND kidId = ? ORDER BY timeStamp DESC LIMIT 1");
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
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarD0.A0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.getLong(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), (int) eVarD0.getLong(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11)), eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12)), eVarD0.getLong(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r77) ? null : Long.valueOf(eVarD0.getLong(iD15)), eVarD0.isNull(r78) ? null : Long.valueOf(eVarD0.getLong(iD16)), eVarD0.isNull(r16) ? null : eVarD0.n0(iD17), eVarD0.isNull(r17) ? null : Integer.valueOf((int) eVarD0.getLong(iD18)), ((int) eVarD0.getLong(iD19)) != 0, eVarD0.isNull(r19) ? null : eVarD0.n0(iD20), eVarD0.isNull(r20) ? null : eVarD0.n0(iD21), eVarD0.isNull(r21) ? null : eVarD0.n0(iD22), eVarD0.isNull(r22) ? null : eVarD0.n0(iD23), eVarD0.getLong(iD24), eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25)), eVarD0.isNull(r25) ? null : Long.valueOf(eVarD0.getLong(iD26)), ((int) eVarD0.getLong(iD27)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, eVarD0.isNull(r29) ? null : eVarD0.n0(iD30), eVarD0.isNull(r30) ? null : eVarD0.n0(iD31), eVarD0.isNull(r31) ? null : eVarD0.n0(iD32), eVarD0.isNull(r32) ? null : eVarD0.n0(iD33), eVarD0.isNull(r33) ? null : eVarD0.n0(iD34), eVarD0.isNull(r34) ? null : eVarD0.n0(iD35), eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36));
            }
            eVarD0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ UGCVideoDetailPlayBean Y(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND (kidId IS NULL OR kidId = '') ORDER BY timeStamp DESC LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarD0.A0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.getLong(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), (int) eVarD0.getLong(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11)), eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12)), eVarD0.getLong(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r78) ? null : Long.valueOf(eVarD0.getLong(iD15)), eVarD0.isNull(r16) ? null : Long.valueOf(eVarD0.getLong(iD16)), eVarD0.isNull(r17) ? null : eVarD0.n0(iD17), eVarD0.isNull(r18) ? null : Integer.valueOf((int) eVarD0.getLong(iD18)), ((int) eVarD0.getLong(iD19)) != 0, eVarD0.isNull(r20) ? null : eVarD0.n0(iD20), eVarD0.isNull(r21) ? null : eVarD0.n0(iD21), eVarD0.isNull(r22) ? null : eVarD0.n0(iD22), eVarD0.isNull(r23) ? null : eVarD0.n0(iD23), eVarD0.getLong(iD24), eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25)), eVarD0.isNull(r26) ? null : Long.valueOf(eVarD0.getLong(iD26)), ((int) eVarD0.getLong(iD27)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, eVarD0.isNull(r30) ? null : eVarD0.n0(iD30), eVarD0.isNull(r31) ? null : eVarD0.n0(iD31), eVarD0.isNull(r32) ? null : eVarD0.n0(iD32), eVarD0.isNull(r33) ? null : eVarD0.n0(iD33), eVarD0.isNull(r34) ? null : eVarD0.n0(iD34), eVarD0.isNull(r35) ? null : eVarD0.n0(iD35), eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36));
            }
            eVarD0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ UGCVideoDetailPlayBean Z(String str, String str2, String str3, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND ugcVideoId = ? AND kidId = ? ORDER BY timeStamp DESC LIMIT 1");
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
            if (str3 == null) {
                eVarD0.g(3);
            } else {
                eVarD0.j(3, str3);
            }
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarD0.A0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.getLong(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), (int) eVarD0.getLong(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11)), eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12)), eVarD0.getLong(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r76) ? null : Long.valueOf(eVarD0.getLong(iD15)), eVarD0.isNull(r77) ? null : Long.valueOf(eVarD0.getLong(iD16)), eVarD0.isNull(r78) ? null : eVarD0.n0(iD17), eVarD0.isNull(r16) ? null : Integer.valueOf((int) eVarD0.getLong(iD18)), ((int) eVarD0.getLong(iD19)) != 0, eVarD0.isNull(r18) ? null : eVarD0.n0(iD20), eVarD0.isNull(r19) ? null : eVarD0.n0(iD21), eVarD0.isNull(r20) ? null : eVarD0.n0(iD22), eVarD0.isNull(r21) ? null : eVarD0.n0(iD23), eVarD0.getLong(iD24), eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25)), eVarD0.isNull(r24) ? null : Long.valueOf(eVarD0.getLong(iD26)), ((int) eVarD0.getLong(iD27)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, eVarD0.isNull(r28) ? null : eVarD0.n0(iD30), eVarD0.isNull(r29) ? null : eVarD0.n0(iD31), eVarD0.isNull(r30) ? null : eVarD0.n0(iD32), eVarD0.isNull(r31) ? null : eVarD0.n0(iD33), eVarD0.isNull(r32) ? null : eVarD0.n0(iD34), eVarD0.isNull(r33) ? null : eVarD0.n0(iD35), eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36));
            }
            eVarD0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ UGCVideoDetailPlayBean a0(String str, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND ugcVideoId = ? AND (kidId IS NULL OR kidId = '') ORDER BY timeStamp DESC LIMIT 1");
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
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarD0.A0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.getLong(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), (int) eVarD0.getLong(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10)), eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11)), eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12)), eVarD0.getLong(iD13), eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14), eVarD0.isNull(r77) ? null : Long.valueOf(eVarD0.getLong(iD15)), eVarD0.isNull(r78) ? null : Long.valueOf(eVarD0.getLong(iD16)), eVarD0.isNull(r16) ? null : eVarD0.n0(iD17), eVarD0.isNull(r17) ? null : Integer.valueOf((int) eVarD0.getLong(iD18)), ((int) eVarD0.getLong(iD19)) != 0, eVarD0.isNull(r19) ? null : eVarD0.n0(iD20), eVarD0.isNull(r20) ? null : eVarD0.n0(iD21), eVarD0.isNull(r21) ? null : eVarD0.n0(iD22), eVarD0.isNull(r22) ? null : eVarD0.n0(iD23), eVarD0.getLong(iD24), eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25)), eVarD0.isNull(r25) ? null : Long.valueOf(eVarD0.getLong(iD26)), ((int) eVarD0.getLong(iD27)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, eVarD0.isNull(r29) ? null : eVarD0.n0(iD30), eVarD0.isNull(r30) ? null : eVarD0.n0(iD31), eVarD0.isNull(r31) ? null : eVarD0.n0(iD32), eVarD0.isNull(r32) ? null : eVarD0.n0(iD33), eVarD0.isNull(r33) ? null : eVarD0.n0(iD34), eVarD0.isNull(r34) ? null : eVarD0.n0(iD35), eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36));
            }
            eVarD0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List b0(String str, int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId LIKE 'SINGLE_%' ORDER BY timeStamp DESC LIMIT ? OFFSET ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.c(2, i11);
            eVarD0.c(3, i12);
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                long j11 = eVarD0.getLong(iD3);
                String strN2 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN3 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                int i13 = (int) eVarD0.getLong(iD7);
                String strN5 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Integer numValueOf = eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9));
                Integer numValueOf2 = eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10));
                Integer numValueOf3 = eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11));
                Integer numValueOf4 = eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12));
                long j12 = eVarD0.getLong(iD13);
                String strN6 = eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14);
                Long lValueOf = eVarD0.isNull(iD15) ? null : Long.valueOf(eVarD0.getLong(iD15));
                Long lValueOf2 = eVarD0.isNull(iD16) ? null : Long.valueOf(eVarD0.getLong(iD16));
                iD17 = iD17;
                String strN7 = eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17);
                Integer numValueOf5 = eVarD0.isNull(iD18) ? null : Integer.valueOf((int) eVarD0.getLong(iD18));
                int i14 = iD5;
                boolean z10 = ((int) eVarD0.getLong(iD19)) != 0;
                String strN8 = eVarD0.isNull(iD20) ? null : eVarD0.n0(iD20);
                String strN9 = eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21);
                String strN10 = eVarD0.isNull(iD22) ? null : eVarD0.n0(iD22);
                String strN11 = eVarD0.isNull(iD23) ? null : eVarD0.n0(iD23);
                long j13 = eVarD0.getLong(iD24);
                iD24 = iD24;
                iD25 = iD25;
                Long lValueOf3 = eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25));
                Long lValueOf4 = eVarD0.isNull(iD26) ? null : Long.valueOf(eVarD0.getLong(iD26));
                int i15 = iD19;
                boolean z11 = ((int) eVarD0.getLong(iD27)) != 0;
                int i16 = iD21;
                boolean z12 = ((int) eVarD0.getLong(iD28)) != 0;
                int i17 = iD6;
                boolean z13 = ((int) eVarD0.getLong(iD29)) != 0;
                String strN12 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN13 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                String strN14 = eVarD0.isNull(iD32) ? null : eVarD0.n0(iD32);
                String strN15 = eVarD0.isNull(iD33) ? null : eVarD0.n0(iD33);
                String strN16 = eVarD0.isNull(iD34) ? null : eVarD0.n0(iD34);
                String strN17 = eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35);
                String strN18 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                iD36 = iD36;
                arrayList.add(new UGCVideoDetailPlayBean(strN0, strN1, j11, strN2, strN3, strN4, i13, strN5, numValueOf, numValueOf2, numValueOf3, numValueOf4, j12, strN6, lValueOf, lValueOf2, strN7, numValueOf5, z10, strN8, strN9, strN10, strN11, j13, lValueOf3, lValueOf4, z11, z12, z13, strN12, strN13, strN14, strN15, strN16, strN17, strN18));
                iD = iD;
                iD30 = iD30;
                iD31 = iD31;
                iD15 = iD15;
                iD5 = i14;
                iD18 = iD18;
                iD19 = i15;
                iD21 = i16;
                iD6 = i17;
                iD2 = iD2;
                iD28 = iD28;
                iD29 = iD29;
                iD27 = iD27;
                iD3 = iD3;
                iD4 = iD4;
                iD20 = iD20;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List c0(int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = '') AND coverUrl IS NOT NULL AND collectionId LIKE 'SINGLE_%' ORDER BY timeStamp DESC LIMIT ? OFFSET ?");
        try {
            eVarD0.c(1, i11);
            eVarD0.c(2, i12);
            int iD = androidx.room.util.k.d(eVarD0, "collectionId");
            int iD2 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD3 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD4 = androidx.room.util.k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD5 = androidx.room.util.k.d(eVarD0, "coverUrl");
            int iD6 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD7 = androidx.room.util.k.d(eVarD0, RequestParameters.POSITION);
            int iD8 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD9 = androidx.room.util.k.d(eVarD0, "cateLev1Id");
            int iD10 = androidx.room.util.k.d(eVarD0, "cateLev2Id");
            int iD11 = androidx.room.util.k.d(eVarD0, "cateLev3Id");
            int iD12 = androidx.room.util.k.d(eVarD0, "cateLev4Id");
            int iD13 = androidx.room.util.k.d(eVarD0, "timeStamp");
            int iD14 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD15 = androidx.room.util.k.d(eVarD0, "totalDuration");
            int iD16 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD17 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD18 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD19 = androidx.room.util.k.d(eVarD0, "hasDelete");
            int iD20 = androidx.room.util.k.d(eVarD0, "playMode");
            int iD21 = androidx.room.util.k.d(eVarD0, "downloadUrl");
            int iD22 = androidx.room.util.k.d(eVarD0, "downloadResid");
            int iD23 = androidx.room.util.k.d(eVarD0, "downloadFilePath");
            int iD24 = androidx.room.util.k.d(eVarD0, "downloadSize");
            int iD25 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD26 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD27 = androidx.room.util.k.d(eVarD0, "rewardPlayed");
            int iD28 = androidx.room.util.k.d(eVarD0, "rewardUnlock");
            int iD29 = androidx.room.util.k.d(eVarD0, "rewardFree");
            int iD30 = androidx.room.util.k.d(eVarD0, "ops");
            int iD31 = androidx.room.util.k.d(eVarD0, CommonUtils.PARAM_UID);
            int iD32 = androidx.room.util.k.d(eVarD0, "userName");
            int iD33 = androidx.room.util.k.d(eVarD0, "userAvatar");
            int iD34 = androidx.room.util.k.d(eVarD0, TrackingKey.DESCRIPTION);
            int iD35 = androidx.room.util.k.d(eVarD0, "videoStyle");
            int iD36 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                long j11 = eVarD0.getLong(iD3);
                String strN2 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN3 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                int i13 = (int) eVarD0.getLong(iD7);
                String strN5 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Integer numValueOf = eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9));
                Integer numValueOf2 = eVarD0.isNull(iD10) ? null : Integer.valueOf((int) eVarD0.getLong(iD10));
                Integer numValueOf3 = eVarD0.isNull(iD11) ? null : Integer.valueOf((int) eVarD0.getLong(iD11));
                Integer numValueOf4 = eVarD0.isNull(iD12) ? null : Integer.valueOf((int) eVarD0.getLong(iD12));
                long j12 = eVarD0.getLong(iD13);
                String strN6 = eVarD0.isNull(iD14) ? null : eVarD0.n0(iD14);
                Long lValueOf = eVarD0.isNull(iD15) ? null : Long.valueOf(eVarD0.getLong(iD15));
                Long lValueOf2 = eVarD0.isNull(iD16) ? null : Long.valueOf(eVarD0.getLong(iD16));
                String strN7 = eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17);
                Integer numValueOf5 = eVarD0.isNull(iD18) ? null : Integer.valueOf((int) eVarD0.getLong(iD18));
                int i14 = iD5;
                boolean z10 = ((int) eVarD0.getLong(iD19)) != 0;
                String strN8 = eVarD0.isNull(iD20) ? null : eVarD0.n0(iD20);
                String strN9 = eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21);
                String strN10 = eVarD0.isNull(iD22) ? null : eVarD0.n0(iD22);
                String strN11 = eVarD0.isNull(iD23) ? null : eVarD0.n0(iD23);
                long j13 = eVarD0.getLong(iD24);
                iD24 = iD24;
                iD25 = iD25;
                Long lValueOf3 = eVarD0.isNull(iD25) ? null : Long.valueOf(eVarD0.getLong(iD25));
                Long lValueOf4 = eVarD0.isNull(iD26) ? null : Long.valueOf(eVarD0.getLong(iD26));
                int i15 = iD19;
                boolean z11 = ((int) eVarD0.getLong(iD27)) != 0;
                int i16 = iD21;
                int i17 = iD27;
                boolean z12 = ((int) eVarD0.getLong(iD28)) != 0;
                int i18 = iD28;
                boolean z13 = ((int) eVarD0.getLong(iD29)) != 0;
                String strN12 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN13 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                String strN14 = eVarD0.isNull(iD32) ? null : eVarD0.n0(iD32);
                String strN15 = eVarD0.isNull(iD33) ? null : eVarD0.n0(iD33);
                String strN16 = eVarD0.isNull(iD34) ? null : eVarD0.n0(iD34);
                String strN17 = eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35);
                String strN18 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                iD36 = iD36;
                arrayList.add(new UGCVideoDetailPlayBean(strN0, strN1, j11, strN2, strN3, strN4, i13, strN5, numValueOf, numValueOf2, numValueOf3, numValueOf4, j12, strN6, lValueOf, lValueOf2, strN7, numValueOf5, z10, strN8, strN9, strN10, strN11, j13, lValueOf3, lValueOf4, z11, z12, z13, strN12, strN13, strN14, strN15, strN16, strN17, strN18));
                iD31 = iD31;
                iD = iD;
                iD2 = iD2;
                iD3 = iD3;
                iD20 = iD20;
                iD4 = iD4;
                iD16 = iD16;
                iD18 = iD18;
                iD21 = i16;
                iD28 = i18;
                iD29 = iD29;
                iD27 = i17;
                iD5 = i14;
                iD19 = i15;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit d0(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, z3.b bVar) throws Exception {
        this.f43194b.d(bVar, uGCVideoDetailPlayBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit e0(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, z3.b bVar) throws Exception {
        this.f43196d.c(bVar, uGCVideoDetailPlayBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit f0(long j11, String str, long j12, int i11, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE UGC_VIDEO_DETAIL_PLAY SET progress = ?, ugcVideoId= ?, timeStamp =?, position = ? WHERE collectionId = ? ");
        try {
            eVarD0.c(1, j11);
            if (str == null) {
                eVarD0.g(2);
            } else {
                eVarD0.j(2, str);
            }
            eVarD0.c(3, j12);
            eVarD0.c(4, i11);
            if (str2 == null) {
                eVarD0.g(5);
            } else {
                eVarD0.j(5, str2);
            }
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit g0(String str, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE UGC_VIDEO_DETAIL_PLAY SET subtitleSelectId = ? WHERE collectionId = ? ");
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit h0(long j11, String str, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE UGC_VIDEO_DETAIL_PLAY SET totalDuration = ?, ugcVideoId= ? WHERE collectionId = ? ");
        try {
            eVarD0.c(1, j11);
            if (str == null) {
                eVarD0.g(2);
            } else {
                eVarD0.j(2, str);
            }
            if (str2 == null) {
                eVarD0.g(3);
            } else {
                eVarD0.j(3, str2);
            }
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.Q((z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object b(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.g0(str2, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object c(String str, Continuation continuation) {
        return UGCVideoDetailPlayDao.DefaultImpls.b(this, str, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object d(int i11, int i12, Continuation continuation) {
        return UGCVideoDetailPlayDao.DefaultImpls.c(this, i11, i12, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object e(final String str, final String str2, final long j11, final long j12, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.m0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.f0(j12, str2, j11, i11, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object f(final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.T(i12, i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object g(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.V(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object h(final String str, final String str2, final long j11, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.h0(j11, str2, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object i(final int i11, final int i12, final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.b0(str, i12, i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object j(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.R(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object k(String str, String str2, long j11, long j12, Continuation continuation) {
        return UGCVideoDetailPlayDao.DefaultImpls.e(this, str, str2, j11, j12, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object l(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.l0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.X(str, str2, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object m(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.U(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object n(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation) {
        return UGCVideoDetailPlayDao.DefaultImpls.d(this, uGCVideoDetailPlayBean, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object o(final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.c0(i12, i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object p(final UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation) {
        uGCVideoDetailPlayBean.getClass();
        return androidx.room.util.b.f(this.f43193a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43153a.d0(uGCVideoDetailPlayBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object q(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.a0(str, str2, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object r(String str, Continuation continuation) {
        return UGCVideoDetailPlayDao.DefaultImpls.a(this, str, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object s(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.i0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.W(str2, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object t(final String str, final String str2, final String str3, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.Z(str, str2, str3, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object u(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.Y(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object v(final UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation) {
        uGCVideoDetailPlayBean.getClass();
        return androidx.room.util.b.f(this.f43193a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43160a.e0(uGCVideoDetailPlayBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.UGCVideoDetailPlayDao
    public Object w(final int i11, final int i12, final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43193a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.k0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n0.S(str, i12, i11, (z3.b) obj);
            }
        }, continuation);
    }
}
