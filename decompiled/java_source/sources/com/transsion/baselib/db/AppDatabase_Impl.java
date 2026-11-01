package com.transsion.baselib.db;

import androidx.core.app.NotificationCompat;
import androidx.room.InvalidationTracker;
import androidx.room.d0;
import androidx.room.util.o;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.baselib.db.member.MemberResolutionDao;
import com.transsion.baselib.db.member.g;
import com.transsion.baselib.db.place.PlaceDao;
import com.transsion.baselib.db.video.IShortTvFavoriteStateDao;
import com.transsion.baselib.db.video.PlaybackRecordDao;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baselib.db.video.e1;
import com.transsion.baselib.db.video.f1;
import com.transsion.baselib.db.video.h;
import com.transsion.baselib.db.video.o0;
import com.transsion.baselib.db.video.p0;
import com.transsion.baselib.db.video.q;
import com.transsion.baselib.db.video.u;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import jj.j;
import lj.c;
import lj.c1;
import lj.d1;
import lj.h1;
import lj.l0;
import lj.n0;
import lj.r0;
import lj.t0;
import lj.u0;
import lj.v0;
import qj.d;
import rj.e;
import z3.b;

/* JADX INFO: loaded from: classes.dex */
public final class AppDatabase_Impl extends AppDatabase {
    private volatile v0 A0;
    private volatile n0 B0;
    private volatile e1 C0;
    private volatile ShortTVPlayDao D0;
    private volatile d1 E0;
    private volatile IShortTvFavoriteStateDao F0;
    private volatile VideoDetailPlayDao G0;
    private volatile PlaybackRecordDao H0;
    private volatile oj.a I0;
    private volatile PlaceDao J0;
    private volatile UGCVideoDetailPlayDao K0;
    private volatile UGCCollectionVideoGroupDao L0;
    private volatile MemberResolutionDao M0;
    private volatile mj.a N0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private volatile jj.a f43057x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private volatile c f43058y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private volatile rj.a f43059z0;

    /* JADX INFO: loaded from: classes5.dex */
    class a extends d0 {
        a(int i11, String str, String str2) {
            super(i11, str, str2);
        }

        @Override // androidx.room.d0
        public void a(b bVar) throws Exception {
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `audio` (`audioId` TEXT NOT NULL, `cover` TEXT, `duration` INTEGER, `size` INTEGER, `url` TEXT, `title` TEXT, `desc` TEXT, `bitrate` INTEGER, `updateTimeStamp` INTEGER, `readProcess` INTEGER, `localPath` TEXT, `ops` TEXT, `resourceId` TEXT, `postId` TEXT, `subjectId` TEXT, `groupId` TEXT, `status` INTEGER NOT NULL, `subjectTitle` TEXT, `se` INTEGER NOT NULL, `ep` INTEGER NOT NULL, PRIMARY KEY(`audioId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `download_table` (`url` TEXT NOT NULL, `resourceId` TEXT, `name` TEXT, `cover` TEXT, `size` INTEGER, `postId` TEXT, `sizeFormat` TEXT, `path` TEXT, `duration` INTEGER, `updateTimeStamp` INTEGER, `progress` INTEGER NOT NULL, `supportRanges` INTEGER NOT NULL, `status` INTEGER NOT NULL, `type` INTEGER NOT NULL, `readProgress` INTEGER NOT NULL, `createAt` INTEGER NOT NULL, `isRead` INTEGER NOT NULL, `episode` INTEGER NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `resolution` INTEGER NOT NULL, `resourcePosition` INTEGER NOT NULL, `multiresolution` INTEGER NOT NULL, `videoWidth` INTEGER NOT NULL, `videoHeight` INTEGER NOT NULL, `downloadErrorCount` INTEGER NOT NULL, `subtitleStarted` INTEGER NOT NULL, `subjectId` TEXT, `pageFrom` TEXT, `lastPageFrom` TEXT, `subjectName` TEXT, `lastPlayTimeStamp` INTEGER NOT NULL, `fileType` INTEGER NOT NULL, `totalEpisode` INTEGER NOT NULL, `uploadBy` TEXT, `sourceUrl` TEXT, `urlCreateAt` INTEGER NOT NULL, `subtitleSelectId` TEXT, `taskId` TEXT, `sessionTime` INTEGER NOT NULL, `reportStatus` INTEGER NOT NULL, `downloadHeaderSize` INTEGER NOT NULL, `rootPath` TEXT, `rootPathType` INTEGER NOT NULL, `thumbnail` TEXT, `averageHueLight` TEXT, `isTransferFailed` INTEGER NOT NULL, `isClosedTransferFailed` INTEGER NOT NULL, `subjectType` INTEGER NOT NULL, `genre` TEXT, `subjectDurationSeconds` INTEGER, `currentDubLanName` TEXT, `currentDubLanCode` TEXT, `ops` TEXT, `restrictLevel` TEXT, `releaseDate` TEXT, `countryName` TEXT, `seNum` INTEGER, `subtitles` TEXT, `imdbRate` TEXT, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `subtitleIdType` TEXT, `ugcVideoCollectionId` TEXT, `ugcVideoId` TEXT, `ugcVideoName` TEXT, `ugcVideoCollectionName` TEXT, `ugcVideoPosition` INTEGER, `ugcVideoType` TEXT, `ugcCateLev1Id` INTEGER, `ugcCateLev2Id` INTEGER, `ugcCateLev3Id` INTEGER, `ugcCateLev4Id` INTEGER, `ugcVideoTrackId` TEXT, `ugcVideoParentVideoId` TEXT, `ugcVideoParentTrackId` TEXT, `ugcVideoEpTitle` TEXT, `ugcVideoIsVertical` INTEGER NOT NULL, `originData` TEXT, `kidId` TEXT, PRIMARY KEY(`url`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `video` (`postId` TEXT NOT NULL, `playProgress` INTEGER, `url` TEXT, PRIMARY KEY(`postId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `download_thread_info` (`id` INTEGER NOT NULL, `threadId` INTEGER NOT NULL, `downloadInfoId` TEXT, `uri` TEXT, `start` INTEGER NOT NULL, `end` INTEGER NOT NULL, `progress` INTEGER NOT NULL, PRIMARY KEY(`id`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `room_table` (`groupId` TEXT NOT NULL, `name` TEXT, `avatar` TEXT, `hasJoin` INTEGER, `newPostCount` INTEGER, `description` TEXT, `postCount` INTEGER, `userCount` INTEGER, `level` TEXT, `updateTimeStamp` INTEGER NOT NULL, PRIMARY KEY(`groupId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `permanent_msg` (`id` INTEGER NOT NULL, `deep_link_list` TEXT, `desc` TEXT, `image_list` TEXT, `message_id` TEXT, `style` TEXT, `title` TEXT, PRIMARY KEY(`id`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `download_subtitle_table` (`resourceId` TEXT NOT NULL, `postId` TEXT, `url` TEXT, `path` TEXT, `lan` TEXT, `lanName` TEXT NOT NULL, `subtitleName` TEXT, `size` INTEGER, `delayDuration` INTEGER, `status` INTEGER NOT NULL, `type` INTEGER NOT NULL, `fileCharsetName` TEXT, `subjectId` TEXT, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `resolution` INTEGER NOT NULL, PRIMARY KEY(`resourceId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `msg` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `deep_link` TEXT, `desc` TEXT, `image_list` TEXT, `message_id` TEXT, `source` TEXT, `style` TEXT, `title` TEXT, `type` TEXT, `receive_time` INTEGER, `msg_status` INTEGER NOT NULL, `show_time` INTEGER, `force_show` INTEGER NOT NULL, `has_screen_on` INTEGER NOT NULL, `built_in` INTEGER NOT NULL, `permanent_msg_status` INTEGER NOT NULL)");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `consume_bean` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `updateTimeStamp` INTEGER NOT NULL, `dataType` INTEGER NOT NULL, `appVersion` INTEGER NOT NULL, `consumeJson` TEXT)");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `download_thread_range` (`threadId` INTEGER NOT NULL, `rangeId` INTEGER NOT NULL, `resourceId` TEXT, `start` INTEGER NOT NULL, `end` INTEGER NOT NULL, `progress` INTEGER NOT NULL, PRIMARY KEY(`threadId`, `rangeId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `video_land_ad` (`resourceId` TEXT NOT NULL, `startAdDayKey` INTEGER NOT NULL, `endAdDayKey` INTEGER NOT NULL, PRIMARY KEY(`resourceId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `subtitle_language_map_table` (`lan` TEXT NOT NULL, `lanIOS3` TEXT, `lanName` TEXT NOT NULL, `inSearch` INTEGER NOT NULL, PRIMARY KEY(`lan`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `non_ad_plans` (`id` TEXT NOT NULL, `version` TEXT, `name` TEXT, `startTime` TEXT, `endTime` TEXT, `extraConfig` TEXT, `displayTimes` INTEGER, `showedTimes` INTEGER, `showDate` TEXT, `advertiserName` TEXT, `advertiserAvatar` TEXT, `advertiserAvatarPath` TEXT, `brand` TEXT, `denyBrand` TEXT, `model` TEXT, `denyModel` TEXT, `country` TEXT, `scenes` TEXT, `adMaterialList` TEXT, `adPlanUpdateTime` TEXT, `sort` INTEGER, `adShowLevel` TEXT, `filterClientVersion` TEXT, `adPlanCreateTime` TEXT, `appStarDesc` TEXT, `appSizeDesc` TEXT, PRIMARY KEY(`id`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `local_mcc` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `Country` TEXT NOT NULL, `Mcc` TEXT NOT NULL, `Iso` TEXT NOT NULL, `CountryCode` TEXT NOT NULL)");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `short_tv_play` (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `totalEp` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `description` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoId` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, PRIMARY KEY(`subjectId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `ShortTvFavoriteState` (`subjectId` TEXT NOT NULL, `favoriteNum` TEXT, `hasFavorite` INTEGER NOT NULL, `favoriteTime` TEXT, PRIMARY KEY(`subjectId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `video_detail_play` (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, `totalDuration` INTEGER, `subjectDurationSeconds` INTEGER, `averageHueLight` TEXT, `subjectType` INTEGER, `hasDelete` INTEGER NOT NULL, `playMode` TEXT NOT NULL, `downloadUrl` TEXT, `downloadFilePath` TEXT, `downloadSize` INTEGER NOT NULL, `dubs` TEXT, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `rewardPlayed` INTEGER NOT NULL, `rewardUnlock` INTEGER NOT NULL, `rewardFree` INTEGER NOT NULL, `ops` TEXT, PRIMARY KEY(`subjectId`, `ep`, `se`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `music_liked` (`subjectId` TEXT NOT NULL, `title` TEXT, `coverUrl` TEXT, `countryName` TEXT, `genre` TEXT, `releaseDate` TEXT, `durationSeconds` INTEGER NOT NULL, `singerName` TEXT, `singerAvatar` TEXT, `path` TEXT, `timeStamp` INTEGER NOT NULL, PRIMARY KEY(`subjectId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `place_list` (`latitude` REAL NOT NULL, `longitude` REAL NOT NULL, `name` TEXT, `address` TEXT, `distance` TEXT, PRIMARY KEY(`latitude`, `longitude`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `ugc_video_detail_play` (`collectionId` TEXT NOT NULL, `ugcVideoId` TEXT NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `position` INTEGER NOT NULL, `type` TEXT, `cateLev1Id` INTEGER, `cateLev2Id` INTEGER, `cateLev3Id` INTEGER, `cateLev4Id` INTEGER, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, `totalDuration` INTEGER, `subjectDurationSeconds` INTEGER, `averageHueLight` TEXT, `subjectType` INTEGER, `hasDelete` INTEGER NOT NULL, `playMode` TEXT NOT NULL, `downloadUrl` TEXT, `downloadResid` TEXT, `downloadFilePath` TEXT, `downloadSize` INTEGER NOT NULL, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `rewardPlayed` INTEGER NOT NULL, `rewardUnlock` INTEGER NOT NULL, `rewardFree` INTEGER NOT NULL, `ops` TEXT, `uid` TEXT, `userName` TEXT, `userAvatar` TEXT, `description` TEXT, `videoStyle` TEXT, `kidId` TEXT, PRIMARY KEY(`collectionId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `ugc_collection_video_group` (`collectionId` TEXT NOT NULL, `ugcVideoIds` TEXT NOT NULL, PRIMARY KEY(`collectionId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `member_resolution` (`subjectId` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `vipResolutionTip` INTEGER, `isUnlock` INTEGER, PRIMARY KEY(`subjectId`, `ep`, `se`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `home_preferences_interval_time` (`id` TEXT NOT NULL, `showTime` INTEGER NOT NULL, `closeTime` INTEGER NOT NULL, `chooseTime` INTEGER NOT NULL, `showIntervalSeconds` INTEGER NOT NULL, `closeIntervalSeconds` INTEGER NOT NULL, `chooseIntervalSeconds` INTEGER NOT NULL, PRIMARY KEY(`id`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `playback_record_table` (`subjectId` TEXT NOT NULL, `se` INTEGER NOT NULL, `ep` INTEGER NOT NULL, `lastAdStartTimeStamp` INTEGER NOT NULL, `lastAdEndTimeStamp` INTEGER NOT NULL, `rewardUnlock` INTEGER NOT NULL, PRIMARY KEY(`subjectId`, `ep`, `se`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            z3.a.a(bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'af048d25b4883d8a347dd58538827738')");
        }

        @Override // androidx.room.d0
        public void b(b bVar) throws Exception {
            z3.a.a(bVar, "DROP TABLE IF EXISTS `audio`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `download_table`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `video`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `download_thread_info`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `room_table`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `permanent_msg`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `download_subtitle_table`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `msg`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `consume_bean`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `download_thread_range`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `video_land_ad`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `subtitle_language_map_table`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `non_ad_plans`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `local_mcc`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `short_tv_play`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `ShortTvFavoriteState`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `video_detail_play`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `music_liked`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `place_list`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `ugc_video_detail_play`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `ugc_collection_video_group`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `member_resolution`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `home_preferences_interval_time`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `playback_record_table`");
        }

        @Override // androidx.room.d0
        public void f(b bVar) {
        }

        @Override // androidx.room.d0
        public void g(b bVar) {
            AppDatabase_Impl.this.Q(bVar);
        }

        @Override // androidx.room.d0
        public void h(b bVar) {
        }

        @Override // androidx.room.d0
        public void i(b bVar) {
            androidx.room.util.b.b(bVar);
        }

        @Override // androidx.room.d0
        public d0.a j(b bVar) {
            HashMap map = new HashMap(20);
            map.put("audioId", new o.a("audioId", "TEXT", true, 1, null, 1));
            map.put("cover", new o.a("cover", "TEXT", false, 0, null, 1));
            map.put("duration", new o.a("duration", "INTEGER", false, 0, null, 1));
            map.put("size", new o.a("size", "INTEGER", false, 0, null, 1));
            map.put("url", new o.a("url", "TEXT", false, 0, null, 1));
            map.put(CampaignEx.JSON_KEY_TITLE, new o.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map.put(CampaignEx.JSON_KEY_DESC, new o.a(CampaignEx.JSON_KEY_DESC, "TEXT", false, 0, null, 1));
            map.put("bitrate", new o.a("bitrate", "INTEGER", false, 0, null, 1));
            map.put("updateTimeStamp", new o.a("updateTimeStamp", "INTEGER", false, 0, null, 1));
            map.put("readProcess", new o.a("readProcess", "INTEGER", false, 0, null, 1));
            map.put("localPath", new o.a("localPath", "TEXT", false, 0, null, 1));
            map.put("ops", new o.a("ops", "TEXT", false, 0, null, 1));
            map.put("resourceId", new o.a("resourceId", "TEXT", false, 0, null, 1));
            map.put("postId", new o.a("postId", "TEXT", false, 0, null, 1));
            map.put("subjectId", new o.a("subjectId", "TEXT", false, 0, null, 1));
            map.put("groupId", new o.a("groupId", "TEXT", false, 0, null, 1));
            map.put(NotificationCompat.CATEGORY_STATUS, new o.a(NotificationCompat.CATEGORY_STATUS, "INTEGER", true, 0, null, 1));
            map.put("subjectTitle", new o.a("subjectTitle", "TEXT", false, 0, null, 1));
            map.put("se", new o.a("se", "INTEGER", true, 0, null, 1));
            map.put("ep", new o.a("ep", "INTEGER", true, 0, null, 1));
            o oVar = new o(MimeTypes.BASE_TYPE_AUDIO, map, new HashSet(0), new HashSet(0));
            o oVarB = o.b(bVar, MimeTypes.BASE_TYPE_AUDIO);
            if (!oVar.equals(oVarB)) {
                return new d0.a(false, "audio(com.transsion.baselib.db.audio.AudioBean).\n Expected:\n" + oVar + "\n Found:\n" + oVarB);
            }
            HashMap map2 = new HashMap(80);
            map2.put("url", new o.a("url", "TEXT", true, 1, null, 1));
            map2.put("resourceId", new o.a("resourceId", "TEXT", false, 0, null, 1));
            map2.put("name", new o.a("name", "TEXT", false, 0, null, 1));
            map2.put("cover", new o.a("cover", "TEXT", false, 0, null, 1));
            map2.put("size", new o.a("size", "INTEGER", false, 0, null, 1));
            map2.put("postId", new o.a("postId", "TEXT", false, 0, null, 1));
            map2.put("sizeFormat", new o.a("sizeFormat", "TEXT", false, 0, null, 1));
            map2.put("path", new o.a("path", "TEXT", false, 0, null, 1));
            map2.put("duration", new o.a("duration", "INTEGER", false, 0, null, 1));
            map2.put("updateTimeStamp", new o.a("updateTimeStamp", "INTEGER", false, 0, null, 1));
            map2.put(NotificationCompat.CATEGORY_PROGRESS, new o.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            map2.put("supportRanges", new o.a("supportRanges", "INTEGER", true, 0, null, 1));
            map2.put(NotificationCompat.CATEGORY_STATUS, new o.a(NotificationCompat.CATEGORY_STATUS, "INTEGER", true, 0, null, 1));
            map2.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new o.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "INTEGER", true, 0, null, 1));
            map2.put("readProgress", new o.a("readProgress", "INTEGER", true, 0, null, 1));
            map2.put("createAt", new o.a("createAt", "INTEGER", true, 0, null, 1));
            map2.put("isRead", new o.a("isRead", "INTEGER", true, 0, null, 1));
            map2.put("episode", new o.a("episode", "INTEGER", true, 0, null, 1));
            map2.put("ep", new o.a("ep", "INTEGER", true, 0, null, 1));
            map2.put("se", new o.a("se", "INTEGER", true, 0, null, 1));
            map2.put("resolution", new o.a("resolution", "INTEGER", true, 0, null, 1));
            map2.put("resourcePosition", new o.a("resourcePosition", "INTEGER", true, 0, null, 1));
            map2.put("multiresolution", new o.a("multiresolution", "INTEGER", true, 0, null, 1));
            map2.put("videoWidth", new o.a("videoWidth", "INTEGER", true, 0, null, 1));
            map2.put("videoHeight", new o.a("videoHeight", "INTEGER", true, 0, null, 1));
            map2.put("downloadErrorCount", new o.a("downloadErrorCount", "INTEGER", true, 0, null, 1));
            map2.put("subtitleStarted", new o.a("subtitleStarted", "INTEGER", true, 0, null, 1));
            map2.put("subjectId", new o.a("subjectId", "TEXT", false, 0, null, 1));
            map2.put("pageFrom", new o.a("pageFrom", "TEXT", false, 0, null, 1));
            map2.put("lastPageFrom", new o.a("lastPageFrom", "TEXT", false, 0, null, 1));
            map2.put("subjectName", new o.a("subjectName", "TEXT", false, 0, null, 1));
            map2.put("lastPlayTimeStamp", new o.a("lastPlayTimeStamp", "INTEGER", true, 0, null, 1));
            map2.put("fileType", new o.a("fileType", "INTEGER", true, 0, null, 1));
            map2.put("totalEpisode", new o.a("totalEpisode", "INTEGER", true, 0, null, 1));
            map2.put("uploadBy", new o.a("uploadBy", "TEXT", false, 0, null, 1));
            map2.put("sourceUrl", new o.a("sourceUrl", "TEXT", false, 0, null, 1));
            map2.put("urlCreateAt", new o.a("urlCreateAt", "INTEGER", true, 0, null, 1));
            map2.put("subtitleSelectId", new o.a("subtitleSelectId", "TEXT", false, 0, null, 1));
            map2.put("taskId", new o.a("taskId", "TEXT", false, 0, null, 1));
            map2.put("sessionTime", new o.a("sessionTime", "INTEGER", true, 0, null, 1));
            map2.put("reportStatus", new o.a("reportStatus", "INTEGER", true, 0, null, 1));
            map2.put("downloadHeaderSize", new o.a("downloadHeaderSize", "INTEGER", true, 0, null, 1));
            map2.put("rootPath", new o.a("rootPath", "TEXT", false, 0, null, 1));
            map2.put("rootPathType", new o.a("rootPathType", "INTEGER", true, 0, null, 1));
            map2.put("thumbnail", new o.a("thumbnail", "TEXT", false, 0, null, 1));
            map2.put("averageHueLight", new o.a("averageHueLight", "TEXT", false, 0, null, 1));
            map2.put("isTransferFailed", new o.a("isTransferFailed", "INTEGER", true, 0, null, 1));
            map2.put("isClosedTransferFailed", new o.a("isClosedTransferFailed", "INTEGER", true, 0, null, 1));
            map2.put("subjectType", new o.a("subjectType", "INTEGER", true, 0, null, 1));
            map2.put("genre", new o.a("genre", "TEXT", false, 0, null, 1));
            map2.put("subjectDurationSeconds", new o.a("subjectDurationSeconds", "INTEGER", false, 0, null, 1));
            map2.put("currentDubLanName", new o.a("currentDubLanName", "TEXT", false, 0, null, 1));
            map2.put("currentDubLanCode", new o.a("currentDubLanCode", "TEXT", false, 0, null, 1));
            map2.put("ops", new o.a("ops", "TEXT", false, 0, null, 1));
            map2.put("restrictLevel", new o.a("restrictLevel", "TEXT", false, 0, null, 1));
            map2.put("releaseDate", new o.a("releaseDate", "TEXT", false, 0, null, 1));
            map2.put("countryName", new o.a("countryName", "TEXT", false, 0, null, 1));
            map2.put("seNum", new o.a("seNum", "INTEGER", false, 0, null, 1));
            map2.put("subtitles", new o.a("subtitles", "TEXT", false, 0, null, 1));
            map2.put("imdbRate", new o.a("imdbRate", "TEXT", false, 0, null, 1));
            map2.put("lastAdStartTimeStamp", new o.a("lastAdStartTimeStamp", "INTEGER", false, 0, null, 1));
            map2.put("lastAdEndTimeStamp", new o.a("lastAdEndTimeStamp", "INTEGER", false, 0, null, 1));
            map2.put("subtitleIdType", new o.a("subtitleIdType", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoCollectionId", new o.a("ugcVideoCollectionId", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoId", new o.a("ugcVideoId", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoName", new o.a("ugcVideoName", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoCollectionName", new o.a("ugcVideoCollectionName", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoPosition", new o.a("ugcVideoPosition", "INTEGER", false, 0, null, 1));
            map2.put("ugcVideoType", new o.a("ugcVideoType", "TEXT", false, 0, null, 1));
            map2.put("ugcCateLev1Id", new o.a("ugcCateLev1Id", "INTEGER", false, 0, null, 1));
            map2.put("ugcCateLev2Id", new o.a("ugcCateLev2Id", "INTEGER", false, 0, null, 1));
            map2.put("ugcCateLev3Id", new o.a("ugcCateLev3Id", "INTEGER", false, 0, null, 1));
            map2.put("ugcCateLev4Id", new o.a("ugcCateLev4Id", "INTEGER", false, 0, null, 1));
            map2.put("ugcVideoTrackId", new o.a("ugcVideoTrackId", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoParentVideoId", new o.a("ugcVideoParentVideoId", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoParentTrackId", new o.a("ugcVideoParentTrackId", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoEpTitle", new o.a("ugcVideoEpTitle", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoIsVertical", new o.a("ugcVideoIsVertical", "INTEGER", true, 0, null, 1));
            map2.put("originData", new o.a("originData", "TEXT", false, 0, null, 1));
            map2.put("kidId", new o.a("kidId", "TEXT", false, 0, null, 1));
            o oVar2 = new o("download_table", map2, new HashSet(0), new HashSet(0));
            o oVarB2 = o.b(bVar, "download_table");
            if (!oVar2.equals(oVarB2)) {
                return new d0.a(false, "download_table(com.transsion.baselib.db.download.DownloadBean).\n Expected:\n" + oVar2 + "\n Found:\n" + oVarB2);
            }
            HashMap map3 = new HashMap(3);
            map3.put("postId", new o.a("postId", "TEXT", true, 1, null, 1));
            map3.put("playProgress", new o.a("playProgress", "INTEGER", false, 0, null, 1));
            map3.put("url", new o.a("url", "TEXT", false, 0, null, 1));
            o oVar3 = new o("video", map3, new HashSet(0), new HashSet(0));
            o oVarB3 = o.b(bVar, "video");
            if (!oVar3.equals(oVarB3)) {
                return new d0.a(false, "video(com.transsion.baselib.db.video.VideoBean).\n Expected:\n" + oVar3 + "\n Found:\n" + oVarB3);
            }
            HashMap map4 = new HashMap(7);
            map4.put("id", new o.a("id", "INTEGER", true, 1, null, 1));
            map4.put("threadId", new o.a("threadId", "INTEGER", true, 0, null, 1));
            map4.put("downloadInfoId", new o.a("downloadInfoId", "TEXT", false, 0, null, 1));
            map4.put("uri", new o.a("uri", "TEXT", false, 0, null, 1));
            map4.put("start", new o.a("start", "INTEGER", true, 0, null, 1));
            map4.put(TtmlNode.END, new o.a(TtmlNode.END, "INTEGER", true, 0, null, 1));
            map4.put(NotificationCompat.CATEGORY_PROGRESS, new o.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            o oVar4 = new o("download_thread_info", map4, new HashSet(0), new HashSet(0));
            o oVarB4 = o.b(bVar, "download_thread_info");
            if (!oVar4.equals(oVarB4)) {
                return new d0.a(false, "download_thread_info(com.transsion.baselib.db.download.DownloadTaskInfo).\n Expected:\n" + oVar4 + "\n Found:\n" + oVarB4);
            }
            HashMap map5 = new HashMap(10);
            map5.put("groupId", new o.a("groupId", "TEXT", true, 1, null, 1));
            map5.put("name", new o.a("name", "TEXT", false, 0, null, 1));
            map5.put("avatar", new o.a("avatar", "TEXT", false, 0, null, 1));
            map5.put("hasJoin", new o.a("hasJoin", "INTEGER", false, 0, null, 1));
            map5.put("newPostCount", new o.a("newPostCount", "INTEGER", false, 0, null, 1));
            map5.put(TrackingKey.DESCRIPTION, new o.a(TrackingKey.DESCRIPTION, "TEXT", false, 0, null, 1));
            map5.put("postCount", new o.a("postCount", "INTEGER", false, 0, null, 1));
            map5.put("userCount", new o.a("userCount", "INTEGER", false, 0, null, 1));
            map5.put(PermissionConstant.level, new o.a(PermissionConstant.level, "TEXT", false, 0, null, 1));
            map5.put("updateTimeStamp", new o.a("updateTimeStamp", "INTEGER", true, 0, null, 1));
            o oVar5 = new o("room_table", map5, new HashSet(0), new HashSet(0));
            o oVarB5 = o.b(bVar, "room_table");
            if (!oVar5.equals(oVarB5)) {
                return new d0.a(false, "room_table(com.transsion.baselib.db.room.RoomItemBean).\n Expected:\n" + oVar5 + "\n Found:\n" + oVarB5);
            }
            HashMap map6 = new HashMap(7);
            map6.put("id", new o.a("id", "INTEGER", true, 1, null, 1));
            map6.put("deep_link_list", new o.a("deep_link_list", "TEXT", false, 0, null, 1));
            map6.put(CampaignEx.JSON_KEY_DESC, new o.a(CampaignEx.JSON_KEY_DESC, "TEXT", false, 0, null, 1));
            map6.put(GifImagePreviewActivity.IMAGE_LIST, new o.a(GifImagePreviewActivity.IMAGE_LIST, "TEXT", false, 0, null, 1));
            map6.put(PushConstants.EXTRA_PUSH_MESSAGE_ID, new o.a(PushConstants.EXTRA_PUSH_MESSAGE_ID, "TEXT", false, 0, null, 1));
            map6.put(TtmlNode.TAG_STYLE, new o.a(TtmlNode.TAG_STYLE, "TEXT", false, 0, null, 1));
            map6.put(CampaignEx.JSON_KEY_TITLE, new o.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            o oVar6 = new o("permanent_msg", map6, new HashSet(0), new HashSet(0));
            o oVarB6 = o.b(bVar, "permanent_msg");
            if (!oVar6.equals(oVarB6)) {
                return new d0.a(false, "permanent_msg(com.transsion.baselib.db.notification.PermanentMsgBean).\n Expected:\n" + oVar6 + "\n Found:\n" + oVarB6);
            }
            HashMap map7 = new HashMap(16);
            map7.put("resourceId", new o.a("resourceId", "TEXT", true, 1, null, 1));
            map7.put("postId", new o.a("postId", "TEXT", false, 0, null, 1));
            map7.put("url", new o.a("url", "TEXT", false, 0, null, 1));
            map7.put("path", new o.a("path", "TEXT", false, 0, null, 1));
            map7.put("lan", new o.a("lan", "TEXT", false, 0, null, 1));
            map7.put("lanName", new o.a("lanName", "TEXT", true, 0, null, 1));
            map7.put("subtitleName", new o.a("subtitleName", "TEXT", false, 0, null, 1));
            map7.put("size", new o.a("size", "INTEGER", false, 0, null, 1));
            map7.put("delayDuration", new o.a("delayDuration", "INTEGER", false, 0, null, 1));
            map7.put(NotificationCompat.CATEGORY_STATUS, new o.a(NotificationCompat.CATEGORY_STATUS, "INTEGER", true, 0, null, 1));
            map7.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new o.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "INTEGER", true, 0, null, 1));
            map7.put("fileCharsetName", new o.a("fileCharsetName", "TEXT", false, 0, null, 1));
            map7.put("subjectId", new o.a("subjectId", "TEXT", false, 0, null, 1));
            map7.put("ep", new o.a("ep", "INTEGER", true, 0, null, 1));
            map7.put("se", new o.a("se", "INTEGER", true, 0, null, 1));
            map7.put("resolution", new o.a("resolution", "INTEGER", true, 0, null, 1));
            o oVar7 = new o("download_subtitle_table", map7, new HashSet(0), new HashSet(0));
            o oVarB7 = o.b(bVar, "download_subtitle_table");
            if (!oVar7.equals(oVarB7)) {
                return new d0.a(false, "download_subtitle_table(com.transsion.baselib.db.download.SubtitleBean).\n Expected:\n" + oVar7 + "\n Found:\n" + oVarB7);
            }
            HashMap map8 = new HashMap(16);
            map8.put("id", new o.a("id", "INTEGER", true, 1, null, 1));
            map8.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, new o.a(CampaignEx.JSON_KEY_DEEP_LINK_URL, "TEXT", false, 0, null, 1));
            map8.put(CampaignEx.JSON_KEY_DESC, new o.a(CampaignEx.JSON_KEY_DESC, "TEXT", false, 0, null, 1));
            map8.put(GifImagePreviewActivity.IMAGE_LIST, new o.a(GifImagePreviewActivity.IMAGE_LIST, "TEXT", false, 0, null, 1));
            map8.put(PushConstants.EXTRA_PUSH_MESSAGE_ID, new o.a(PushConstants.EXTRA_PUSH_MESSAGE_ID, "TEXT", false, 0, null, 1));
            map8.put(EventConstants.KEY_SOURCE, new o.a(EventConstants.KEY_SOURCE, "TEXT", false, 0, null, 1));
            map8.put(TtmlNode.TAG_STYLE, new o.a(TtmlNode.TAG_STYLE, "TEXT", false, 0, null, 1));
            map8.put(CampaignEx.JSON_KEY_TITLE, new o.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map8.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new o.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "TEXT", false, 0, null, 1));
            map8.put("receive_time", new o.a("receive_time", "INTEGER", false, 0, null, 1));
            map8.put("msg_status", new o.a("msg_status", "INTEGER", true, 0, null, 1));
            map8.put(TrackingKey.SHOW_TIME, new o.a(TrackingKey.SHOW_TIME, "INTEGER", false, 0, null, 1));
            map8.put("force_show", new o.a("force_show", "INTEGER", true, 0, null, 1));
            map8.put("has_screen_on", new o.a("has_screen_on", "INTEGER", true, 0, null, 1));
            map8.put("built_in", new o.a("built_in", "INTEGER", true, 0, null, 1));
            map8.put("permanent_msg_status", new o.a("permanent_msg_status", "INTEGER", true, 0, null, 1));
            o oVar8 = new o(NotificationCompat.CATEGORY_MESSAGE, map8, new HashSet(0), new HashSet(0));
            o oVarB8 = o.b(bVar, NotificationCompat.CATEGORY_MESSAGE);
            if (!oVar8.equals(oVarB8)) {
                return new d0.a(false, "msg(com.transsion.baselib.db.notification.MsgBean).\n Expected:\n" + oVar8 + "\n Found:\n" + oVarB8);
            }
            HashMap map9 = new HashMap(5);
            map9.put("id", new o.a("id", "INTEGER", true, 1, null, 1));
            map9.put("updateTimeStamp", new o.a("updateTimeStamp", "INTEGER", true, 0, null, 1));
            map9.put("dataType", new o.a("dataType", "INTEGER", true, 0, null, 1));
            map9.put(TmcStartParams.KEY_APP_VERSION, new o.a(TmcStartParams.KEY_APP_VERSION, "INTEGER", true, 0, null, 1));
            map9.put("consumeJson", new o.a("consumeJson", "TEXT", false, 0, null, 1));
            o oVar9 = new o("consume_bean", map9, new HashSet(0), new HashSet(0));
            o oVarB9 = o.b(bVar, "consume_bean");
            if (!oVar9.equals(oVarB9)) {
                return new d0.a(false, "consume_bean(com.transsion.baselib.db.consume.ConsumeBean).\n Expected:\n" + oVar9 + "\n Found:\n" + oVarB9);
            }
            HashMap map10 = new HashMap(6);
            map10.put("threadId", new o.a("threadId", "INTEGER", true, 1, null, 1));
            map10.put("rangeId", new o.a("rangeId", "INTEGER", true, 2, null, 1));
            map10.put("resourceId", new o.a("resourceId", "TEXT", false, 0, null, 1));
            map10.put("start", new o.a("start", "INTEGER", true, 0, null, 1));
            map10.put(TtmlNode.END, new o.a(TtmlNode.END, "INTEGER", true, 0, null, 1));
            map10.put(NotificationCompat.CATEGORY_PROGRESS, new o.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            o oVar10 = new o("download_thread_range", map10, new HashSet(0), new HashSet(0));
            o oVarB10 = o.b(bVar, "download_thread_range");
            if (!oVar10.equals(oVarB10)) {
                return new d0.a(false, "download_thread_range(com.transsion.baselib.db.download.DownloadRange).\n Expected:\n" + oVar10 + "\n Found:\n" + oVarB10);
            }
            HashMap map11 = new HashMap(3);
            map11.put("resourceId", new o.a("resourceId", "TEXT", true, 1, null, 1));
            map11.put("startAdDayKey", new o.a("startAdDayKey", "INTEGER", true, 0, null, 1));
            map11.put("endAdDayKey", new o.a("endAdDayKey", "INTEGER", true, 0, null, 1));
            o oVar11 = new o("video_land_ad", map11, new HashSet(0), new HashSet(0));
            o oVarB11 = o.b(bVar, "video_land_ad");
            if (!oVar11.equals(oVarB11)) {
                return new d0.a(false, "video_land_ad(com.transsion.baselib.db.video.VideoLandAdBean).\n Expected:\n" + oVar11 + "\n Found:\n" + oVarB11);
            }
            HashMap map12 = new HashMap(4);
            map12.put("lan", new o.a("lan", "TEXT", true, 1, null, 1));
            map12.put("lanIOS3", new o.a("lanIOS3", "TEXT", false, 0, null, 1));
            map12.put("lanName", new o.a("lanName", "TEXT", true, 0, null, 1));
            map12.put("inSearch", new o.a("inSearch", "INTEGER", true, 0, null, 1));
            o oVar12 = new o("subtitle_language_map_table", map12, new HashSet(0), new HashSet(0));
            o oVarB12 = o.b(bVar, "subtitle_language_map_table");
            if (!oVar12.equals(oVarB12)) {
                return new d0.a(false, "subtitle_language_map_table(com.transsion.baselib.db.download.SubtitleLanguageMapBean).\n Expected:\n" + oVar12 + "\n Found:\n" + oVarB12);
            }
            HashMap map13 = new HashMap(26);
            map13.put("id", new o.a("id", "TEXT", true, 1, null, 1));
            map13.put("version", new o.a("version", "TEXT", false, 0, null, 1));
            map13.put("name", new o.a("name", "TEXT", false, 0, null, 1));
            map13.put("startTime", new o.a("startTime", "TEXT", false, 0, null, 1));
            map13.put("endTime", new o.a("endTime", "TEXT", false, 0, null, 1));
            map13.put("extraConfig", new o.a("extraConfig", "TEXT", false, 0, null, 1));
            map13.put("displayTimes", new o.a("displayTimes", "INTEGER", false, 0, null, 1));
            map13.put("showedTimes", new o.a("showedTimes", "INTEGER", false, 0, null, 1));
            map13.put("showDate", new o.a("showDate", "TEXT", false, 0, null, 1));
            map13.put("advertiserName", new o.a("advertiserName", "TEXT", false, 0, null, 1));
            map13.put("advertiserAvatar", new o.a("advertiserAvatar", "TEXT", false, 0, null, 1));
            map13.put("advertiserAvatarPath", new o.a("advertiserAvatarPath", "TEXT", false, 0, null, 1));
            map13.put("brand", new o.a("brand", "TEXT", false, 0, null, 1));
            map13.put("denyBrand", new o.a("denyBrand", "TEXT", false, 0, null, 1));
            map13.put("model", new o.a("model", "TEXT", false, 0, null, 1));
            map13.put("denyModel", new o.a("denyModel", "TEXT", false, 0, null, 1));
            map13.put(PlaceTypes.COUNTRY, new o.a(PlaceTypes.COUNTRY, "TEXT", false, 0, null, 1));
            map13.put("scenes", new o.a("scenes", "TEXT", false, 0, null, 1));
            map13.put("adMaterialList", new o.a("adMaterialList", "TEXT", false, 0, null, 1));
            map13.put("adPlanUpdateTime", new o.a("adPlanUpdateTime", "TEXT", false, 0, null, 1));
            map13.put("sort", new o.a("sort", "INTEGER", false, 0, null, 1));
            map13.put("adShowLevel", new o.a("adShowLevel", "TEXT", false, 0, null, 1));
            map13.put("filterClientVersion", new o.a("filterClientVersion", "TEXT", false, 0, null, 1));
            map13.put("adPlanCreateTime", new o.a("adPlanCreateTime", "TEXT", false, 0, null, 1));
            map13.put("appStarDesc", new o.a("appStarDesc", "TEXT", false, 0, null, 1));
            map13.put("appSizeDesc", new o.a("appSizeDesc", "TEXT", false, 0, null, 1));
            o oVar13 = new o("non_ad_plans", map13, new HashSet(0), new HashSet(0));
            o oVarB13 = o.b(bVar, "non_ad_plans");
            if (!oVar13.equals(oVarB13)) {
                return new d0.a(false, "non_ad_plans(com.transsion.baselib.db.non.NonAdPlans).\n Expected:\n" + oVar13 + "\n Found:\n" + oVarB13);
            }
            HashMap map14 = new HashMap(5);
            map14.put("id", new o.a("id", "INTEGER", true, 1, null, 1));
            map14.put("Country", new o.a("Country", "TEXT", true, 0, null, 1));
            map14.put("Mcc", new o.a("Mcc", "TEXT", true, 0, null, 1));
            map14.put("Iso", new o.a("Iso", "TEXT", true, 0, null, 1));
            map14.put("CountryCode", new o.a("CountryCode", "TEXT", true, 0, null, 1));
            o oVar14 = new o("local_mcc", map14, new HashSet(0), new HashSet(0));
            o oVarB14 = o.b(bVar, "local_mcc");
            if (!oVar14.equals(oVarB14)) {
                return new d0.a(false, "local_mcc(com.transsion.baselib.db.mcc.LocalMcc).\n Expected:\n" + oVar14 + "\n Found:\n" + oVarB14);
            }
            HashMap map15 = new HashMap(14);
            map15.put("subjectId", new o.a("subjectId", "TEXT", true, 1, null, 1));
            map15.put("id", new o.a("id", "TEXT", true, 0, null, 1));
            map15.put("ep", new o.a("ep", "INTEGER", true, 0, null, 1));
            map15.put("se", new o.a("se", "INTEGER", true, 0, null, 1));
            map15.put("totalEp", new o.a("totalEp", "INTEGER", true, 0, null, 1));
            map15.put(NotificationCompat.CATEGORY_PROGRESS, new o.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            map15.put(CampaignEx.JSON_KEY_TITLE, new o.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map15.put(TrackingKey.DESCRIPTION, new o.a(TrackingKey.DESCRIPTION, "TEXT", false, 0, null, 1));
            map15.put("coverUrl", new o.a("coverUrl", "TEXT", false, 0, null, 1));
            map15.put("thumbnail", new o.a("thumbnail", "TEXT", false, 0, null, 1));
            map15.put("videoId", new o.a("videoId", "TEXT", false, 0, null, 1));
            map15.put("videoUrl", new o.a("videoUrl", "TEXT", false, 0, null, 1));
            map15.put("timeStamp", new o.a("timeStamp", "INTEGER", true, 0, null, 1));
            map15.put("subtitleSelectId", new o.a("subtitleSelectId", "TEXT", false, 0, null, 1));
            o oVar15 = new o("short_tv_play", map15, new HashSet(0), new HashSet(0));
            o oVarB15 = o.b(bVar, "short_tv_play");
            if (!oVar15.equals(oVarB15)) {
                return new d0.a(false, "short_tv_play(com.transsion.baselib.db.video.ShortTVPlayBean).\n Expected:\n" + oVar15 + "\n Found:\n" + oVarB15);
            }
            HashMap map16 = new HashMap(4);
            map16.put("subjectId", new o.a("subjectId", "TEXT", true, 1, null, 1));
            map16.put("favoriteNum", new o.a("favoriteNum", "TEXT", false, 0, null, 1));
            map16.put("hasFavorite", new o.a("hasFavorite", "INTEGER", true, 0, null, 1));
            map16.put("favoriteTime", new o.a("favoriteTime", "TEXT", false, 0, null, 1));
            o oVar16 = new o("ShortTvFavoriteState", map16, new HashSet(0), new HashSet(0));
            o oVarB16 = o.b(bVar, "ShortTvFavoriteState");
            if (!oVar16.equals(oVarB16)) {
                return new d0.a(false, "ShortTvFavoriteState(com.transsion.baselib.db.video.ShortTvFavoriteState).\n Expected:\n" + oVar16 + "\n Found:\n" + oVarB16);
            }
            HashMap map17 = new HashMap(27);
            map17.put("subjectId", new o.a("subjectId", "TEXT", true, 1, null, 1));
            map17.put("id", new o.a("id", "TEXT", true, 0, null, 1));
            map17.put("ep", new o.a("ep", "INTEGER", true, 2, null, 1));
            map17.put("se", new o.a("se", "INTEGER", true, 3, null, 1));
            map17.put(NotificationCompat.CATEGORY_PROGRESS, new o.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            map17.put(CampaignEx.JSON_KEY_TITLE, new o.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map17.put("coverUrl", new o.a("coverUrl", "TEXT", false, 0, null, 1));
            map17.put("thumbnail", new o.a("thumbnail", "TEXT", false, 0, null, 1));
            map17.put("videoUrl", new o.a("videoUrl", "TEXT", false, 0, null, 1));
            map17.put("timeStamp", new o.a("timeStamp", "INTEGER", true, 0, null, 1));
            map17.put("subtitleSelectId", new o.a("subtitleSelectId", "TEXT", false, 0, null, 1));
            map17.put("totalDuration", new o.a("totalDuration", "INTEGER", false, 0, null, 1));
            map17.put("subjectDurationSeconds", new o.a("subjectDurationSeconds", "INTEGER", false, 0, null, 1));
            map17.put("averageHueLight", new o.a("averageHueLight", "TEXT", false, 0, null, 1));
            map17.put("subjectType", new o.a("subjectType", "INTEGER", false, 0, null, 1));
            map17.put("hasDelete", new o.a("hasDelete", "INTEGER", true, 0, null, 1));
            map17.put("playMode", new o.a("playMode", "TEXT", true, 0, null, 1));
            map17.put("downloadUrl", new o.a("downloadUrl", "TEXT", false, 0, null, 1));
            map17.put("downloadFilePath", new o.a("downloadFilePath", "TEXT", false, 0, null, 1));
            map17.put("downloadSize", new o.a("downloadSize", "INTEGER", true, 0, null, 1));
            map17.put("dubs", new o.a("dubs", "TEXT", false, 0, null, 1));
            map17.put("lastAdStartTimeStamp", new o.a("lastAdStartTimeStamp", "INTEGER", false, 0, null, 1));
            map17.put("lastAdEndTimeStamp", new o.a("lastAdEndTimeStamp", "INTEGER", false, 0, null, 1));
            map17.put("rewardPlayed", new o.a("rewardPlayed", "INTEGER", true, 0, null, 1));
            map17.put("rewardUnlock", new o.a("rewardUnlock", "INTEGER", true, 0, null, 1));
            map17.put("rewardFree", new o.a("rewardFree", "INTEGER", true, 0, null, 1));
            map17.put("ops", new o.a("ops", "TEXT", false, 0, null, 1));
            o oVar17 = new o("video_detail_play", map17, new HashSet(0), new HashSet(0));
            o oVarB17 = o.b(bVar, "video_detail_play");
            if (!oVar17.equals(oVarB17)) {
                return new d0.a(false, "video_detail_play(com.transsion.baselib.db.video.VideoDetailPlayBean).\n Expected:\n" + oVar17 + "\n Found:\n" + oVarB17);
            }
            HashMap map18 = new HashMap(11);
            map18.put("subjectId", new o.a("subjectId", "TEXT", true, 1, null, 1));
            map18.put(CampaignEx.JSON_KEY_TITLE, new o.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map18.put("coverUrl", new o.a("coverUrl", "TEXT", false, 0, null, 1));
            map18.put("countryName", new o.a("countryName", "TEXT", false, 0, null, 1));
            map18.put("genre", new o.a("genre", "TEXT", false, 0, null, 1));
            map18.put("releaseDate", new o.a("releaseDate", "TEXT", false, 0, null, 1));
            map18.put("durationSeconds", new o.a("durationSeconds", "INTEGER", true, 0, null, 1));
            map18.put("singerName", new o.a("singerName", "TEXT", false, 0, null, 1));
            map18.put("singerAvatar", new o.a("singerAvatar", "TEXT", false, 0, null, 1));
            map18.put("path", new o.a("path", "TEXT", false, 0, null, 1));
            map18.put("timeStamp", new o.a("timeStamp", "INTEGER", true, 0, null, 1));
            o oVar18 = new o("music_liked", map18, new HashSet(0), new HashSet(0));
            o oVarB18 = o.b(bVar, "music_liked");
            if (!oVar18.equals(oVarB18)) {
                return new d0.a(false, "music_liked(com.transsion.baselib.db.music.MusicLikedDbBean).\n Expected:\n" + oVar18 + "\n Found:\n" + oVarB18);
            }
            HashMap map19 = new HashMap(5);
            map19.put("latitude", new o.a("latitude", "REAL", true, 1, null, 1));
            map19.put("longitude", new o.a("longitude", "REAL", true, 2, null, 1));
            map19.put("name", new o.a("name", "TEXT", false, 0, null, 1));
            map19.put(PlaceTypes.ADDRESS, new o.a(PlaceTypes.ADDRESS, "TEXT", false, 0, null, 1));
            map19.put("distance", new o.a("distance", "TEXT", false, 0, null, 1));
            o oVar19 = new o("place_list", map19, new HashSet(0), new HashSet(0));
            o oVarB19 = o.b(bVar, "place_list");
            if (!oVar19.equals(oVarB19)) {
                return new d0.a(false, "place_list(com.transsion.baselib.db.place.PlaceDBBean).\n Expected:\n" + oVar19 + "\n Found:\n" + oVarB19);
            }
            HashMap map20 = new HashMap(36);
            map20.put("collectionId", new o.a("collectionId", "TEXT", true, 1, null, 1));
            map20.put("ugcVideoId", new o.a("ugcVideoId", "TEXT", true, 0, null, 1));
            map20.put(NotificationCompat.CATEGORY_PROGRESS, new o.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            map20.put(CampaignEx.JSON_KEY_TITLE, new o.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map20.put("coverUrl", new o.a("coverUrl", "TEXT", false, 0, null, 1));
            map20.put("thumbnail", new o.a("thumbnail", "TEXT", false, 0, null, 1));
            map20.put(RequestParameters.POSITION, new o.a(RequestParameters.POSITION, "INTEGER", true, 0, null, 1));
            map20.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new o.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "TEXT", false, 0, null, 1));
            map20.put("cateLev1Id", new o.a("cateLev1Id", "INTEGER", false, 0, null, 1));
            map20.put("cateLev2Id", new o.a("cateLev2Id", "INTEGER", false, 0, null, 1));
            map20.put("cateLev3Id", new o.a("cateLev3Id", "INTEGER", false, 0, null, 1));
            map20.put("cateLev4Id", new o.a("cateLev4Id", "INTEGER", false, 0, null, 1));
            map20.put("timeStamp", new o.a("timeStamp", "INTEGER", true, 0, null, 1));
            map20.put("subtitleSelectId", new o.a("subtitleSelectId", "TEXT", false, 0, null, 1));
            map20.put("totalDuration", new o.a("totalDuration", "INTEGER", false, 0, null, 1));
            map20.put("subjectDurationSeconds", new o.a("subjectDurationSeconds", "INTEGER", false, 0, null, 1));
            map20.put("averageHueLight", new o.a("averageHueLight", "TEXT", false, 0, null, 1));
            map20.put("subjectType", new o.a("subjectType", "INTEGER", false, 0, null, 1));
            map20.put("hasDelete", new o.a("hasDelete", "INTEGER", true, 0, null, 1));
            map20.put("playMode", new o.a("playMode", "TEXT", true, 0, null, 1));
            map20.put("downloadUrl", new o.a("downloadUrl", "TEXT", false, 0, null, 1));
            map20.put("downloadResid", new o.a("downloadResid", "TEXT", false, 0, null, 1));
            map20.put("downloadFilePath", new o.a("downloadFilePath", "TEXT", false, 0, null, 1));
            map20.put("downloadSize", new o.a("downloadSize", "INTEGER", true, 0, null, 1));
            map20.put("lastAdStartTimeStamp", new o.a("lastAdStartTimeStamp", "INTEGER", false, 0, null, 1));
            map20.put("lastAdEndTimeStamp", new o.a("lastAdEndTimeStamp", "INTEGER", false, 0, null, 1));
            map20.put("rewardPlayed", new o.a("rewardPlayed", "INTEGER", true, 0, null, 1));
            map20.put("rewardUnlock", new o.a("rewardUnlock", "INTEGER", true, 0, null, 1));
            map20.put("rewardFree", new o.a("rewardFree", "INTEGER", true, 0, null, 1));
            map20.put("ops", new o.a("ops", "TEXT", false, 0, null, 1));
            map20.put(CommonUtils.PARAM_UID, new o.a(CommonUtils.PARAM_UID, "TEXT", false, 0, null, 1));
            map20.put("userName", new o.a("userName", "TEXT", false, 0, null, 1));
            map20.put("userAvatar", new o.a("userAvatar", "TEXT", false, 0, null, 1));
            map20.put(TrackingKey.DESCRIPTION, new o.a(TrackingKey.DESCRIPTION, "TEXT", false, 0, null, 1));
            map20.put("videoStyle", new o.a("videoStyle", "TEXT", false, 0, null, 1));
            map20.put("kidId", new o.a("kidId", "TEXT", false, 0, null, 1));
            o oVar20 = new o("ugc_video_detail_play", map20, new HashSet(0), new HashSet(0));
            o oVarB20 = o.b(bVar, "ugc_video_detail_play");
            if (!oVar20.equals(oVarB20)) {
                return new d0.a(false, "ugc_video_detail_play(com.transsion.baselib.db.video.UGCVideoDetailPlayBean).\n Expected:\n" + oVar20 + "\n Found:\n" + oVarB20);
            }
            HashMap map21 = new HashMap(2);
            map21.put("collectionId", new o.a("collectionId", "TEXT", true, 1, null, 1));
            map21.put("ugcVideoIds", new o.a("ugcVideoIds", "TEXT", true, 0, null, 1));
            o oVar21 = new o("ugc_collection_video_group", map21, new HashSet(0), new HashSet(0));
            o oVarB21 = o.b(bVar, "ugc_collection_video_group");
            if (!oVar21.equals(oVarB21)) {
                return new d0.a(false, "ugc_collection_video_group(com.transsion.baselib.db.video.UGCCollectionVideoGroup).\n Expected:\n" + oVar21 + "\n Found:\n" + oVarB21);
            }
            HashMap map22 = new HashMap(5);
            map22.put("subjectId", new o.a("subjectId", "TEXT", true, 1, null, 1));
            map22.put("ep", new o.a("ep", "INTEGER", true, 2, null, 1));
            map22.put("se", new o.a("se", "INTEGER", true, 3, null, 1));
            map22.put("vipResolutionTip", new o.a("vipResolutionTip", "INTEGER", false, 0, null, 1));
            map22.put("isUnlock", new o.a("isUnlock", "INTEGER", false, 0, null, 1));
            o oVar22 = new o("member_resolution", map22, new HashSet(0), new HashSet(0));
            o oVarB22 = o.b(bVar, "member_resolution");
            if (!oVar22.equals(oVarB22)) {
                return new d0.a(false, "member_resolution(com.transsion.baselib.db.member.MemberResolutionBean).\n Expected:\n" + oVar22 + "\n Found:\n" + oVarB22);
            }
            HashMap map23 = new HashMap(7);
            map23.put("id", new o.a("id", "TEXT", true, 1, null, 1));
            map23.put("showTime", new o.a("showTime", "INTEGER", true, 0, null, 1));
            map23.put("closeTime", new o.a("closeTime", "INTEGER", true, 0, null, 1));
            map23.put("chooseTime", new o.a("chooseTime", "INTEGER", true, 0, null, 1));
            map23.put("showIntervalSeconds", new o.a("showIntervalSeconds", "INTEGER", true, 0, null, 1));
            map23.put("closeIntervalSeconds", new o.a("closeIntervalSeconds", "INTEGER", true, 0, null, 1));
            map23.put("chooseIntervalSeconds", new o.a("chooseIntervalSeconds", "INTEGER", true, 0, null, 1));
            o oVar23 = new o("home_preferences_interval_time", map23, new HashSet(0), new HashSet(0));
            o oVarB23 = o.b(bVar, "home_preferences_interval_time");
            if (!oVar23.equals(oVarB23)) {
                return new d0.a(false, "home_preferences_interval_time(com.transsion.baselib.db.home.HomePreferencesIntervalTimeDbBean).\n Expected:\n" + oVar23 + "\n Found:\n" + oVarB23);
            }
            HashMap map24 = new HashMap(6);
            map24.put("subjectId", new o.a("subjectId", "TEXT", true, 1, null, 1));
            map24.put("se", new o.a("se", "INTEGER", true, 3, null, 1));
            map24.put("ep", new o.a("ep", "INTEGER", true, 2, null, 1));
            map24.put("lastAdStartTimeStamp", new o.a("lastAdStartTimeStamp", "INTEGER", true, 0, null, 1));
            map24.put("lastAdEndTimeStamp", new o.a("lastAdEndTimeStamp", "INTEGER", true, 0, null, 1));
            map24.put("rewardUnlock", new o.a("rewardUnlock", "INTEGER", true, 0, null, 1));
            o oVar24 = new o("playback_record_table", map24, new HashSet(0), new HashSet(0));
            o oVarB24 = o.b(bVar, "playback_record_table");
            if (oVar24.equals(oVarB24)) {
                return new d0.a(true, null);
            }
            return new d0.a(false, "playback_record_table(com.transsion.baselib.db.video.PlaybackRecordTable).\n Expected:\n" + oVar24 + "\n Found:\n" + oVarB24);
        }
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public d1 A1() {
        d1 d1Var;
        if (this.E0 != null) {
            return this.E0;
        }
        synchronized (this) {
            try {
                if (this.E0 == null) {
                    this.E0 = new h1(this);
                }
                d1Var = this.E0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return d1Var;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public UGCCollectionVideoGroupDao B1() {
        UGCCollectionVideoGroupDao uGCCollectionVideoGroupDao;
        if (this.L0 != null) {
            return this.L0;
        }
        synchronized (this) {
            try {
                if (this.L0 == null) {
                    this.L0 = new u(this);
                }
                uGCCollectionVideoGroupDao = this.L0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return uGCCollectionVideoGroupDao;
    }

    @Override // androidx.room.RoomDatabase
    public Set C() {
        return new HashSet();
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public UGCVideoDetailPlayDao C1() {
        UGCVideoDetailPlayDao uGCVideoDetailPlayDao;
        if (this.K0 != null) {
            return this.K0;
        }
        synchronized (this) {
            try {
                if (this.K0 == null) {
                    this.K0 = new com.transsion.baselib.db.video.n0(this);
                }
                uGCVideoDetailPlayDao = this.K0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return uGCVideoDetailPlayDao;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public VideoDetailPlayDao D1() {
        VideoDetailPlayDao videoDetailPlayDao;
        if (this.G0 != null) {
            return this.G0;
        }
        synchronized (this) {
            try {
                if (this.G0 == null) {
                    this.G0 = new com.transsion.baselib.db.video.d1(this);
                }
                videoDetailPlayDao = this.G0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return videoDetailPlayDao;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public e1 E1() {
        e1 e1Var;
        if (this.C0 != null) {
            return this.C0;
        }
        synchronized (this) {
            try {
                if (this.C0 == null) {
                    this.C0 = new f1(this);
                }
                e1Var = this.C0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return e1Var;
    }

    @Override // androidx.room.RoomDatabase
    protected Map F() {
        HashMap map = new HashMap();
        map.put(jj.a.class, j.q());
        map.put(c.class, l0.q0());
        map.put(o0.class, p0.a());
        map.put(t0.class, u0.a());
        map.put(rj.a.class, e.g());
        map.put(v0.class, c1.m());
        map.put(qj.c.class, d.a());
        map.put(qj.a.class, qj.b.a());
        map.put(kj.a.class, kj.b.a());
        map.put(pj.a.class, pj.b.a());
        map.put(nj.a.class, nj.b.a());
        map.put(n0.class, r0.g());
        map.put(e1.class, f1.a());
        map.put(ShortTVPlayDao.class, q.r());
        map.put(d1.class, h1.g());
        map.put(IShortTvFavoriteStateDao.class, com.transsion.baselib.db.video.d.h());
        map.put(VideoDetailPlayDao.class, com.transsion.baselib.db.video.d1.E());
        map.put(PlaybackRecordDao.class, h.h());
        map.put(oj.a.class, oj.h.m());
        map.put(PlaceDao.class, com.transsion.baselib.db.place.d.h());
        map.put(UGCVideoDetailPlayDao.class, com.transsion.baselib.db.video.n0.P());
        map.put(UGCCollectionVideoGroupDao.class, u.j());
        map.put(MemberResolutionDao.class, g.m());
        map.put(mj.a.class, mj.d.e());
        return map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    /* JADX INFO: renamed from: G1, reason: merged with bridge method [inline-methods] */
    public d0 r() {
        return new a(59, "af048d25b4883d8a347dd58538827738", "94e36e9c0bfc9353da5431720d60a683");
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public jj.a o1() {
        jj.a aVar;
        if (this.f43057x0 != null) {
            return this.f43057x0;
        }
        synchronized (this) {
            try {
                if (this.f43057x0 == null) {
                    this.f43057x0 = new j(this);
                }
                aVar = this.f43057x0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public c p1() {
        c cVar;
        if (this.f43058y0 != null) {
            return this.f43058y0;
        }
        synchronized (this) {
            try {
                if (this.f43058y0 == null) {
                    this.f43058y0 = new l0(this);
                }
                cVar = this.f43058y0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cVar;
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), MimeTypes.BASE_TYPE_AUDIO, "download_table", "video", "download_thread_info", "room_table", "permanent_msg", "download_subtitle_table", NotificationCompat.CATEGORY_MESSAGE, "consume_bean", "download_thread_range", "video_land_ad", "subtitle_language_map_table", "non_ad_plans", "local_mcc", "short_tv_play", "ShortTvFavoriteState", "video_detail_play", "music_liked", "place_list", "ugc_video_detail_play", "ugc_collection_video_group", "member_resolution", "home_preferences_interval_time", "playback_record_table");
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public n0 q1() {
        n0 n0Var;
        if (this.B0 != null) {
            return this.B0;
        }
        synchronized (this) {
            try {
                if (this.B0 == null) {
                    this.B0 = new r0(this);
                }
                n0Var = this.B0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return n0Var;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public mj.a r1() {
        mj.a aVar;
        if (this.N0 != null) {
            return this.N0;
        }
        synchronized (this) {
            try {
                if (this.N0 == null) {
                    this.N0 = new mj.d(this);
                }
                aVar = this.N0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public MemberResolutionDao s1() {
        MemberResolutionDao memberResolutionDao;
        if (this.M0 != null) {
            return this.M0;
        }
        synchronized (this) {
            try {
                if (this.M0 == null) {
                    this.M0 = new g(this);
                }
                memberResolutionDao = this.M0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return memberResolutionDao;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public oj.a t1() {
        oj.a aVar;
        if (this.I0 != null) {
            return this.I0;
        }
        synchronized (this) {
            try {
                if (this.I0 == null) {
                    this.I0 = new oj.h(this);
                }
                aVar = this.I0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public PlaceDao u1() {
        PlaceDao placeDao;
        if (this.J0 != null) {
            return this.J0;
        }
        synchronized (this) {
            try {
                if (this.J0 == null) {
                    this.J0 = new com.transsion.baselib.db.place.d(this);
                }
                placeDao = this.J0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return placeDao;
    }

    @Override // androidx.room.RoomDatabase
    public List v(Map map) {
        return new ArrayList();
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public PlaybackRecordDao v1() {
        PlaybackRecordDao playbackRecordDao;
        if (this.H0 != null) {
            return this.H0;
        }
        synchronized (this) {
            try {
                if (this.H0 == null) {
                    this.H0 = new h(this);
                }
                playbackRecordDao = this.H0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return playbackRecordDao;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public rj.a w1() {
        rj.a aVar;
        if (this.f43059z0 != null) {
            return this.f43059z0;
        }
        synchronized (this) {
            try {
                if (this.f43059z0 == null) {
                    this.f43059z0 = new e(this);
                }
                aVar = this.f43059z0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public ShortTVPlayDao x1() {
        ShortTVPlayDao shortTVPlayDao;
        if (this.D0 != null) {
            return this.D0;
        }
        synchronized (this) {
            try {
                if (this.D0 == null) {
                    this.D0 = new q(this);
                }
                shortTVPlayDao = this.D0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return shortTVPlayDao;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public IShortTvFavoriteStateDao y1() {
        IShortTvFavoriteStateDao iShortTvFavoriteStateDao;
        if (this.F0 != null) {
            return this.F0;
        }
        synchronized (this) {
            try {
                if (this.F0 == null) {
                    this.F0 = new com.transsion.baselib.db.video.d(this);
                }
                iShortTvFavoriteStateDao = this.F0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iShortTvFavoriteStateDao;
    }

    @Override // com.transsion.baselib.db.AppDatabase
    public v0 z1() {
        v0 v0Var;
        if (this.A0 != null) {
            return this.A0;
        }
        synchronized (this) {
            try {
                if (this.A0 == null) {
                    this.A0 = new c1(this);
                }
                v0Var = this.A0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return v0Var;
    }
}
