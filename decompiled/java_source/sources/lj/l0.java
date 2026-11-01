package lj;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.baselib.db.download.DownloadBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class l0 implements lj.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f68907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f68908b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f68909c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.e f68910d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `download_table` (`url`,`resourceId`,`name`,`cover`,`size`,`postId`,`sizeFormat`,`path`,`duration`,`updateTimeStamp`,`progress`,`supportRanges`,`status`,`type`,`readProgress`,`createAt`,`isRead`,`episode`,`ep`,`se`,`resolution`,`resourcePosition`,`multiresolution`,`videoWidth`,`videoHeight`,`downloadErrorCount`,`subtitleStarted`,`subjectId`,`pageFrom`,`lastPageFrom`,`subjectName`,`lastPlayTimeStamp`,`fileType`,`totalEpisode`,`uploadBy`,`sourceUrl`,`urlCreateAt`,`subtitleSelectId`,`taskId`,`sessionTime`,`reportStatus`,`downloadHeaderSize`,`rootPath`,`rootPathType`,`thumbnail`,`averageHueLight`,`isTransferFailed`,`isClosedTransferFailed`,`subjectType`,`genre`,`subjectDurationSeconds`,`currentDubLanName`,`currentDubLanCode`,`ops`,`restrictLevel`,`releaseDate`,`countryName`,`seNum`,`subtitles`,`imdbRate`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`subtitleIdType`,`ugcVideoCollectionId`,`ugcVideoId`,`ugcVideoName`,`ugcVideoCollectionName`,`ugcVideoPosition`,`ugcVideoType`,`ugcCateLev1Id`,`ugcCateLev2Id`,`ugcCateLev3Id`,`ugcCateLev4Id`,`ugcVideoTrackId`,`ugcVideoParentVideoId`,`ugcVideoParentTrackId`,`ugcVideoEpTitle`,`ugcVideoIsVertical`,`originData`,`kidId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, DownloadBean downloadBean) {
            if (downloadBean.getUrl() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, downloadBean.getUrl());
            }
            if (downloadBean.getResourceId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, downloadBean.getResourceId());
            }
            if (downloadBean.getName() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, downloadBean.getName());
            }
            if (downloadBean.getCover() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, downloadBean.getCover());
            }
            if (downloadBean.getSize() == null) {
                eVar.g(5);
            } else {
                eVar.c(5, downloadBean.getSize().longValue());
            }
            if (downloadBean.getPostId() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, downloadBean.getPostId());
            }
            if (downloadBean.getSizeFormat() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, downloadBean.getSizeFormat());
            }
            if (downloadBean.getPath() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, downloadBean.getPath());
            }
            if (downloadBean.getDuration() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, downloadBean.getDuration().longValue());
            }
            if (downloadBean.getUpdateTimeStamp() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, downloadBean.getUpdateTimeStamp().longValue());
            }
            eVar.c(11, downloadBean.getProgress());
            eVar.c(12, downloadBean.getSupportRanges());
            eVar.c(13, downloadBean.getStatus());
            eVar.c(14, downloadBean.getType());
            eVar.c(15, downloadBean.getReadProgress());
            eVar.c(16, downloadBean.getCreateAt());
            eVar.c(17, downloadBean.getIsRead());
            eVar.c(18, downloadBean.getEpse());
            eVar.c(19, downloadBean.getEp());
            eVar.c(20, downloadBean.getSe());
            eVar.c(21, downloadBean.getResolution());
            eVar.c(22, downloadBean.getResourcePosition());
            eVar.c(23, downloadBean.getMultiresolution());
            eVar.c(24, downloadBean.getVideoWidth());
            eVar.c(25, downloadBean.getVideoHeight());
            eVar.c(26, downloadBean.getDownloadErrorCount());
            eVar.c(27, downloadBean.getSubtitleStarted());
            if (downloadBean.getSubjectId() == null) {
                eVar.g(28);
            } else {
                eVar.j(28, downloadBean.getSubjectId());
            }
            if (downloadBean.getPageFrom() == null) {
                eVar.g(29);
            } else {
                eVar.j(29, downloadBean.getPageFrom());
            }
            if (downloadBean.getLastPageFrom() == null) {
                eVar.g(30);
            } else {
                eVar.j(30, downloadBean.getLastPageFrom());
            }
            if (downloadBean.getSubjectName() == null) {
                eVar.g(31);
            } else {
                eVar.j(31, downloadBean.getSubjectName());
            }
            eVar.c(32, downloadBean.getLastPlayTimeStamp());
            eVar.c(33, downloadBean.getFileType());
            eVar.c(34, downloadBean.getTotalEpisode());
            if (downloadBean.getUploadBy() == null) {
                eVar.g(35);
            } else {
                eVar.j(35, downloadBean.getUploadBy());
            }
            if (downloadBean.getSourceUrl() == null) {
                eVar.g(36);
            } else {
                eVar.j(36, downloadBean.getSourceUrl());
            }
            eVar.c(37, downloadBean.getUrlCreateAt());
            if (downloadBean.getSubtitleSelectId() == null) {
                eVar.g(38);
            } else {
                eVar.j(38, downloadBean.getSubtitleSelectId());
            }
            if (downloadBean.getTaskId() == null) {
                eVar.g(39);
            } else {
                eVar.j(39, downloadBean.getTaskId());
            }
            eVar.c(40, downloadBean.getSessionTime());
            eVar.c(41, downloadBean.getReportStatus());
            eVar.c(42, downloadBean.getDownloadHeaderSize());
            if (downloadBean.getRootPath() == null) {
                eVar.g(43);
            } else {
                eVar.j(43, downloadBean.getRootPath());
            }
            eVar.c(44, downloadBean.getRootPathType());
            if (downloadBean.getThumbnail() == null) {
                eVar.g(45);
            } else {
                eVar.j(45, downloadBean.getThumbnail());
            }
            if (downloadBean.getAverageHueLight() == null) {
                eVar.g(46);
            } else {
                eVar.j(46, downloadBean.getAverageHueLight());
            }
            eVar.c(47, downloadBean.getIsTransferFailed() ? 1L : 0L);
            eVar.c(48, downloadBean.getIsClosedTransferFailed() ? 1L : 0L);
            eVar.c(49, downloadBean.getSubjectType());
            if (downloadBean.getGenre() == null) {
                eVar.g(50);
            } else {
                eVar.j(50, downloadBean.getGenre());
            }
            if (downloadBean.getSubjectDurationSeconds() == null) {
                eVar.g(51);
            } else {
                eVar.c(51, downloadBean.getSubjectDurationSeconds().intValue());
            }
            if (downloadBean.getCurrentDubLanName() == null) {
                eVar.g(52);
            } else {
                eVar.j(52, downloadBean.getCurrentDubLanName());
            }
            if (downloadBean.getCurrentDubLanCode() == null) {
                eVar.g(53);
            } else {
                eVar.j(53, downloadBean.getCurrentDubLanCode());
            }
            if (downloadBean.getOps() == null) {
                eVar.g(54);
            } else {
                eVar.j(54, downloadBean.getOps());
            }
            if (downloadBean.getRestrictLevel() == null) {
                eVar.g(55);
            } else {
                eVar.j(55, downloadBean.getRestrictLevel());
            }
            if (downloadBean.getReleaseDate() == null) {
                eVar.g(56);
            } else {
                eVar.j(56, downloadBean.getReleaseDate());
            }
            if (downloadBean.getCountryName() == null) {
                eVar.g(57);
            } else {
                eVar.j(57, downloadBean.getCountryName());
            }
            if (downloadBean.getSeNum() == null) {
                eVar.g(58);
            } else {
                eVar.c(58, downloadBean.getSeNum().intValue());
            }
            if (downloadBean.getSubtitles() == null) {
                eVar.g(59);
            } else {
                eVar.j(59, downloadBean.getSubtitles());
            }
            if (downloadBean.getImdbRate() == null) {
                eVar.g(60);
            } else {
                eVar.j(60, downloadBean.getImdbRate());
            }
            if (downloadBean.getLastAdStartTimeStamp() == null) {
                eVar.g(61);
            } else {
                eVar.c(61, downloadBean.getLastAdStartTimeStamp().longValue());
            }
            if (downloadBean.getLastAdEndTimeStamp() == null) {
                eVar.g(62);
            } else {
                eVar.c(62, downloadBean.getLastAdEndTimeStamp().longValue());
            }
            if (downloadBean.getSubtitleIdType() == null) {
                eVar.g(63);
            } else {
                eVar.j(63, downloadBean.getSubtitleIdType());
            }
            if (downloadBean.getUgcVideoCollectionId() == null) {
                eVar.g(64);
            } else {
                eVar.j(64, downloadBean.getUgcVideoCollectionId());
            }
            if (downloadBean.getUgcVideoId() == null) {
                eVar.g(65);
            } else {
                eVar.j(65, downloadBean.getUgcVideoId());
            }
            if (downloadBean.getUgcVideoName() == null) {
                eVar.g(66);
            } else {
                eVar.j(66, downloadBean.getUgcVideoName());
            }
            if (downloadBean.getUgcVideoCollectionName() == null) {
                eVar.g(67);
            } else {
                eVar.j(67, downloadBean.getUgcVideoCollectionName());
            }
            if (downloadBean.getUgcVideoPosition() == null) {
                eVar.g(68);
            } else {
                eVar.c(68, downloadBean.getUgcVideoPosition().intValue());
            }
            if (downloadBean.getUgcVideoType() == null) {
                eVar.g(69);
            } else {
                eVar.j(69, downloadBean.getUgcVideoType());
            }
            if (downloadBean.getUgcCateLev1Id() == null) {
                eVar.g(70);
            } else {
                eVar.c(70, downloadBean.getUgcCateLev1Id().intValue());
            }
            if (downloadBean.getUgcCateLev2Id() == null) {
                eVar.g(71);
            } else {
                eVar.c(71, downloadBean.getUgcCateLev2Id().intValue());
            }
            if (downloadBean.getUgcCateLev3Id() == null) {
                eVar.g(72);
            } else {
                eVar.c(72, downloadBean.getUgcCateLev3Id().intValue());
            }
            if (downloadBean.getUgcCateLev4Id() == null) {
                eVar.g(73);
            } else {
                eVar.c(73, downloadBean.getUgcCateLev4Id().intValue());
            }
            if (downloadBean.getUgcVideoTrackId() == null) {
                eVar.g(74);
            } else {
                eVar.j(74, downloadBean.getUgcVideoTrackId());
            }
            if (downloadBean.getUgcVideoParentVideoId() == null) {
                eVar.g(75);
            } else {
                eVar.j(75, downloadBean.getUgcVideoParentVideoId());
            }
            if (downloadBean.getUgcVideoParentTrackId() == null) {
                eVar.g(76);
            } else {
                eVar.j(76, downloadBean.getUgcVideoParentTrackId());
            }
            if (downloadBean.getUgcVideoEpTitle() == null) {
                eVar.g(77);
            } else {
                eVar.j(77, downloadBean.getUgcVideoEpTitle());
            }
            eVar.c(78, downloadBean.getUgcVideoIsVertical() ? 1L : 0L);
            if (downloadBean.getOriginData() == null) {
                eVar.g(79);
            } else {
                eVar.j(79, downloadBean.getOriginData());
            }
            if (downloadBean.getKidId() == null) {
                eVar.g(80);
            } else {
                eVar.j(80, downloadBean.getKidId());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `download_table` WHERE `url` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, DownloadBean downloadBean) {
            if (downloadBean.getUrl() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, downloadBean.getUrl());
            }
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `download_table` SET `url` = ?,`resourceId` = ?,`name` = ?,`cover` = ?,`size` = ?,`postId` = ?,`sizeFormat` = ?,`path` = ?,`duration` = ?,`updateTimeStamp` = ?,`progress` = ?,`supportRanges` = ?,`status` = ?,`type` = ?,`readProgress` = ?,`createAt` = ?,`isRead` = ?,`episode` = ?,`ep` = ?,`se` = ?,`resolution` = ?,`resourcePosition` = ?,`multiresolution` = ?,`videoWidth` = ?,`videoHeight` = ?,`downloadErrorCount` = ?,`subtitleStarted` = ?,`subjectId` = ?,`pageFrom` = ?,`lastPageFrom` = ?,`subjectName` = ?,`lastPlayTimeStamp` = ?,`fileType` = ?,`totalEpisode` = ?,`uploadBy` = ?,`sourceUrl` = ?,`urlCreateAt` = ?,`subtitleSelectId` = ?,`taskId` = ?,`sessionTime` = ?,`reportStatus` = ?,`downloadHeaderSize` = ?,`rootPath` = ?,`rootPathType` = ?,`thumbnail` = ?,`averageHueLight` = ?,`isTransferFailed` = ?,`isClosedTransferFailed` = ?,`subjectType` = ?,`genre` = ?,`subjectDurationSeconds` = ?,`currentDubLanName` = ?,`currentDubLanCode` = ?,`ops` = ?,`restrictLevel` = ?,`releaseDate` = ?,`countryName` = ?,`seNum` = ?,`subtitles` = ?,`imdbRate` = ?,`lastAdStartTimeStamp` = ?,`lastAdEndTimeStamp` = ?,`subtitleIdType` = ?,`ugcVideoCollectionId` = ?,`ugcVideoId` = ?,`ugcVideoName` = ?,`ugcVideoCollectionName` = ?,`ugcVideoPosition` = ?,`ugcVideoType` = ?,`ugcCateLev1Id` = ?,`ugcCateLev2Id` = ?,`ugcCateLev3Id` = ?,`ugcCateLev4Id` = ?,`ugcVideoTrackId` = ?,`ugcVideoParentVideoId` = ?,`ugcVideoParentTrackId` = ?,`ugcVideoEpTitle` = ?,`ugcVideoIsVertical` = ?,`originData` = ?,`kidId` = ? WHERE `url` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, DownloadBean downloadBean) {
            if (downloadBean.getUrl() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, downloadBean.getUrl());
            }
            if (downloadBean.getResourceId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, downloadBean.getResourceId());
            }
            if (downloadBean.getName() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, downloadBean.getName());
            }
            if (downloadBean.getCover() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, downloadBean.getCover());
            }
            if (downloadBean.getSize() == null) {
                eVar.g(5);
            } else {
                eVar.c(5, downloadBean.getSize().longValue());
            }
            if (downloadBean.getPostId() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, downloadBean.getPostId());
            }
            if (downloadBean.getSizeFormat() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, downloadBean.getSizeFormat());
            }
            if (downloadBean.getPath() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, downloadBean.getPath());
            }
            if (downloadBean.getDuration() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, downloadBean.getDuration().longValue());
            }
            if (downloadBean.getUpdateTimeStamp() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, downloadBean.getUpdateTimeStamp().longValue());
            }
            eVar.c(11, downloadBean.getProgress());
            eVar.c(12, downloadBean.getSupportRanges());
            eVar.c(13, downloadBean.getStatus());
            eVar.c(14, downloadBean.getType());
            eVar.c(15, downloadBean.getReadProgress());
            eVar.c(16, downloadBean.getCreateAt());
            eVar.c(17, downloadBean.getIsRead());
            eVar.c(18, downloadBean.getEpse());
            eVar.c(19, downloadBean.getEp());
            eVar.c(20, downloadBean.getSe());
            eVar.c(21, downloadBean.getResolution());
            eVar.c(22, downloadBean.getResourcePosition());
            eVar.c(23, downloadBean.getMultiresolution());
            eVar.c(24, downloadBean.getVideoWidth());
            eVar.c(25, downloadBean.getVideoHeight());
            eVar.c(26, downloadBean.getDownloadErrorCount());
            eVar.c(27, downloadBean.getSubtitleStarted());
            if (downloadBean.getSubjectId() == null) {
                eVar.g(28);
            } else {
                eVar.j(28, downloadBean.getSubjectId());
            }
            if (downloadBean.getPageFrom() == null) {
                eVar.g(29);
            } else {
                eVar.j(29, downloadBean.getPageFrom());
            }
            if (downloadBean.getLastPageFrom() == null) {
                eVar.g(30);
            } else {
                eVar.j(30, downloadBean.getLastPageFrom());
            }
            if (downloadBean.getSubjectName() == null) {
                eVar.g(31);
            } else {
                eVar.j(31, downloadBean.getSubjectName());
            }
            eVar.c(32, downloadBean.getLastPlayTimeStamp());
            eVar.c(33, downloadBean.getFileType());
            eVar.c(34, downloadBean.getTotalEpisode());
            if (downloadBean.getUploadBy() == null) {
                eVar.g(35);
            } else {
                eVar.j(35, downloadBean.getUploadBy());
            }
            if (downloadBean.getSourceUrl() == null) {
                eVar.g(36);
            } else {
                eVar.j(36, downloadBean.getSourceUrl());
            }
            eVar.c(37, downloadBean.getUrlCreateAt());
            if (downloadBean.getSubtitleSelectId() == null) {
                eVar.g(38);
            } else {
                eVar.j(38, downloadBean.getSubtitleSelectId());
            }
            if (downloadBean.getTaskId() == null) {
                eVar.g(39);
            } else {
                eVar.j(39, downloadBean.getTaskId());
            }
            eVar.c(40, downloadBean.getSessionTime());
            eVar.c(41, downloadBean.getReportStatus());
            eVar.c(42, downloadBean.getDownloadHeaderSize());
            if (downloadBean.getRootPath() == null) {
                eVar.g(43);
            } else {
                eVar.j(43, downloadBean.getRootPath());
            }
            eVar.c(44, downloadBean.getRootPathType());
            if (downloadBean.getThumbnail() == null) {
                eVar.g(45);
            } else {
                eVar.j(45, downloadBean.getThumbnail());
            }
            if (downloadBean.getAverageHueLight() == null) {
                eVar.g(46);
            } else {
                eVar.j(46, downloadBean.getAverageHueLight());
            }
            eVar.c(47, downloadBean.getIsTransferFailed() ? 1L : 0L);
            eVar.c(48, downloadBean.getIsClosedTransferFailed() ? 1L : 0L);
            eVar.c(49, downloadBean.getSubjectType());
            if (downloadBean.getGenre() == null) {
                eVar.g(50);
            } else {
                eVar.j(50, downloadBean.getGenre());
            }
            if (downloadBean.getSubjectDurationSeconds() == null) {
                eVar.g(51);
            } else {
                eVar.c(51, downloadBean.getSubjectDurationSeconds().intValue());
            }
            if (downloadBean.getCurrentDubLanName() == null) {
                eVar.g(52);
            } else {
                eVar.j(52, downloadBean.getCurrentDubLanName());
            }
            if (downloadBean.getCurrentDubLanCode() == null) {
                eVar.g(53);
            } else {
                eVar.j(53, downloadBean.getCurrentDubLanCode());
            }
            if (downloadBean.getOps() == null) {
                eVar.g(54);
            } else {
                eVar.j(54, downloadBean.getOps());
            }
            if (downloadBean.getRestrictLevel() == null) {
                eVar.g(55);
            } else {
                eVar.j(55, downloadBean.getRestrictLevel());
            }
            if (downloadBean.getReleaseDate() == null) {
                eVar.g(56);
            } else {
                eVar.j(56, downloadBean.getReleaseDate());
            }
            if (downloadBean.getCountryName() == null) {
                eVar.g(57);
            } else {
                eVar.j(57, downloadBean.getCountryName());
            }
            if (downloadBean.getSeNum() == null) {
                eVar.g(58);
            } else {
                eVar.c(58, downloadBean.getSeNum().intValue());
            }
            if (downloadBean.getSubtitles() == null) {
                eVar.g(59);
            } else {
                eVar.j(59, downloadBean.getSubtitles());
            }
            if (downloadBean.getImdbRate() == null) {
                eVar.g(60);
            } else {
                eVar.j(60, downloadBean.getImdbRate());
            }
            if (downloadBean.getLastAdStartTimeStamp() == null) {
                eVar.g(61);
            } else {
                eVar.c(61, downloadBean.getLastAdStartTimeStamp().longValue());
            }
            if (downloadBean.getLastAdEndTimeStamp() == null) {
                eVar.g(62);
            } else {
                eVar.c(62, downloadBean.getLastAdEndTimeStamp().longValue());
            }
            if (downloadBean.getSubtitleIdType() == null) {
                eVar.g(63);
            } else {
                eVar.j(63, downloadBean.getSubtitleIdType());
            }
            if (downloadBean.getUgcVideoCollectionId() == null) {
                eVar.g(64);
            } else {
                eVar.j(64, downloadBean.getUgcVideoCollectionId());
            }
            if (downloadBean.getUgcVideoId() == null) {
                eVar.g(65);
            } else {
                eVar.j(65, downloadBean.getUgcVideoId());
            }
            if (downloadBean.getUgcVideoName() == null) {
                eVar.g(66);
            } else {
                eVar.j(66, downloadBean.getUgcVideoName());
            }
            if (downloadBean.getUgcVideoCollectionName() == null) {
                eVar.g(67);
            } else {
                eVar.j(67, downloadBean.getUgcVideoCollectionName());
            }
            if (downloadBean.getUgcVideoPosition() == null) {
                eVar.g(68);
            } else {
                eVar.c(68, downloadBean.getUgcVideoPosition().intValue());
            }
            if (downloadBean.getUgcVideoType() == null) {
                eVar.g(69);
            } else {
                eVar.j(69, downloadBean.getUgcVideoType());
            }
            if (downloadBean.getUgcCateLev1Id() == null) {
                eVar.g(70);
            } else {
                eVar.c(70, downloadBean.getUgcCateLev1Id().intValue());
            }
            if (downloadBean.getUgcCateLev2Id() == null) {
                eVar.g(71);
            } else {
                eVar.c(71, downloadBean.getUgcCateLev2Id().intValue());
            }
            if (downloadBean.getUgcCateLev3Id() == null) {
                eVar.g(72);
            } else {
                eVar.c(72, downloadBean.getUgcCateLev3Id().intValue());
            }
            if (downloadBean.getUgcCateLev4Id() == null) {
                eVar.g(73);
            } else {
                eVar.c(73, downloadBean.getUgcCateLev4Id().intValue());
            }
            if (downloadBean.getUgcVideoTrackId() == null) {
                eVar.g(74);
            } else {
                eVar.j(74, downloadBean.getUgcVideoTrackId());
            }
            if (downloadBean.getUgcVideoParentVideoId() == null) {
                eVar.g(75);
            } else {
                eVar.j(75, downloadBean.getUgcVideoParentVideoId());
            }
            if (downloadBean.getUgcVideoParentTrackId() == null) {
                eVar.g(76);
            } else {
                eVar.j(76, downloadBean.getUgcVideoParentTrackId());
            }
            if (downloadBean.getUgcVideoEpTitle() == null) {
                eVar.g(77);
            } else {
                eVar.j(77, downloadBean.getUgcVideoEpTitle());
            }
            eVar.c(78, downloadBean.getUgcVideoIsVertical() ? 1L : 0L);
            if (downloadBean.getOriginData() == null) {
                eVar.g(79);
            } else {
                eVar.j(79, downloadBean.getOriginData());
            }
            if (downloadBean.getKidId() == null) {
                eVar.g(80);
            } else {
                eVar.j(80, downloadBean.getKidId());
            }
            if (downloadBean.getUrl() == null) {
                eVar.g(81);
            } else {
                eVar.j(81, downloadBean.getUrl());
            }
        }
    }

    public l0(RoomDatabase roomDatabase) {
        this.f68907a = roomDatabase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List A0(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE status = 6 OR status = 3 AND fileType == 1 ORDER BY updateTimeStamp DESC ");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                ArrayList arrayList2 = arrayList;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                int i61 = iD45;
                int i62 = iD48;
                int i63 = iD50;
                int i64 = iD73;
                int i65 = iD78;
                arrayList2.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(i61) ? null : eVarD0.n0(i61), eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i63) ? null : eVarD0.n0(i63), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD13 = i38;
                iD21 = i37;
                iD23 = i42;
                iD24 = i44;
                iD26 = i48;
                iD27 = i50;
                iD33 = i53;
                iD34 = i55;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i62;
                iD49 = iD49;
                iD47 = iD47;
                iD52 = iD52;
                iD53 = iD53;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD51 = iD51;
                iD70 = iD70;
                iD71 = iD71;
                iD68 = iD68;
                iD72 = iD72;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD12 = i32;
                iD22 = i40;
                iD25 = i46;
                iD35 = i57;
                iD42 = i60;
                iD45 = i61;
                iD18 = i25;
                iD19 = i29;
                iD20 = i33;
                iD74 = iD74;
                iD75 = iD75;
                iD6 = i22;
                iD17 = i21;
                iD8 = i24;
                iD10 = i28;
                iD14 = i36;
                iD28 = i52;
                arrayList = arrayList2;
                iD2 = i11;
                iD78 = i65;
                iD50 = i63;
                iD69 = iD69;
                iD73 = i64;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DownloadBean B0(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE status ==5 AND fileType == 1 AND type != 1 ORDER BY updateTimeStamp DESC LIMIT 1");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarD0.A0()) {
                downloadBean = new DownloadBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5)), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.getLong(iD15), eVarD0.getLong(iD16), (int) eVarD0.getLong(iD17), (int) eVarD0.getLong(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20), (int) eVarD0.getLong(iD21), (int) eVarD0.getLong(iD22), (int) eVarD0.getLong(iD23), (int) eVarD0.getLong(iD24), (int) eVarD0.getLong(iD25), (int) eVarD0.getLong(iD26), (int) eVarD0.getLong(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(r29) ? null : eVarD0.n0(iD29), eVarD0.isNull(r30) ? null : eVarD0.n0(iD30), eVarD0.isNull(r31) ? null : eVarD0.n0(iD31), eVarD0.getLong(iD32), (int) eVarD0.getLong(iD33), (int) eVarD0.getLong(iD34), eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35), eVarD0.isNull(r36) ? null : eVarD0.n0(iD36), eVarD0.getLong(iD37), eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38), eVarD0.isNull(r39) ? null : eVarD0.n0(iD39), eVarD0.getLong(iD40), (int) eVarD0.getLong(iD41), eVarD0.getLong(iD42), eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(iD45) ? null : eVarD0.n0(iD45), eVarD0.isNull(r46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(iD50) ? null : eVarD0.n0(iD50), eVarD0.isNull(r51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(r52) ? null : eVarD0.n0(iD52), eVarD0.isNull(r53) ? null : eVarD0.n0(iD53), eVarD0.isNull(r54) ? null : eVarD0.n0(iD54), eVarD0.isNull(r55) ? null : eVarD0.n0(iD55), eVarD0.isNull(r56) ? null : eVarD0.n0(iD56), eVarD0.isNull(r57) ? null : eVarD0.n0(iD57), eVarD0.isNull(r58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(r59) ? null : eVarD0.n0(iD59), eVarD0.isNull(r60) ? null : eVarD0.n0(iD60), eVarD0.isNull(r61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(r62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(r63) ? null : eVarD0.n0(iD63), eVarD0.isNull(r64) ? null : eVarD0.n0(iD64), eVarD0.isNull(r65) ? null : eVarD0.n0(iD65), eVarD0.isNull(r66) ? null : eVarD0.n0(iD66), eVarD0.isNull(r67) ? null : eVarD0.n0(iD67), eVarD0.isNull(r68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(r69) ? null : eVarD0.n0(iD69), eVarD0.isNull(r70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(r71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(r72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(r73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(r74) ? null : eVarD0.n0(iD74), eVarD0.isNull(r75) ? null : eVarD0.n0(iD75), eVarD0.isNull(r76) ? null : eVarD0.n0(iD76), eVarD0.isNull(r77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(r79) ? null : eVarD0.n0(iD79), eVarD0.isNull(r170) ? null : eVarD0.n0(iD80));
            }
            return downloadBean;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List C0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE kidId = ? AND status = 5 AND fileType == 1 ORDER BY updateTimeStamp DESC");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                String strN15 = eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43);
                int i61 = (int) eVarD0.getLong(iD44);
                int i62 = iD45;
                String strN16 = eVarD0.isNull(i62) ? null : eVarD0.n0(i62);
                int i63 = iD48;
                int i64 = iD50;
                int i65 = iD75;
                int i66 = iD78;
                arrayList.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, strN15, i61, strN16, eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i64) ? null : eVarD0.n0(i64), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD20 = i33;
                iD33 = i53;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i63;
                iD47 = iD47;
                iD49 = iD49;
                iD51 = iD51;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD52 = iD52;
                iD53 = iD53;
                iD70 = iD70;
                iD69 = iD69;
                iD71 = iD71;
                iD68 = iD68;
                iD74 = iD74;
                iD75 = i65;
                iD2 = i11;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD10 = i28;
                iD12 = i32;
                iD23 = i42;
                iD25 = i46;
                iD26 = i48;
                iD27 = i50;
                iD35 = i57;
                iD42 = i60;
                iD45 = i62;
                iD34 = i55;
                iD18 = i25;
                iD19 = i29;
                iD73 = iD73;
                iD72 = iD72;
                iD6 = i22;
                iD13 = i38;
                iD21 = i37;
                iD22 = i40;
                iD17 = i21;
                iD78 = i66;
                iD8 = i24;
                iD14 = i36;
                iD24 = i44;
                iD28 = i52;
                iD50 = i64;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List D0(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE (kidId IS NULL OR kidId = '') AND status = 5 AND fileType == 1 ORDER BY updateTimeStamp DESC");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                ArrayList arrayList2 = arrayList;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                int i61 = iD45;
                int i62 = iD48;
                int i63 = iD50;
                int i64 = iD73;
                int i65 = iD78;
                arrayList2.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(i61) ? null : eVarD0.n0(i61), eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i63) ? null : eVarD0.n0(i63), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD13 = i38;
                iD21 = i37;
                iD23 = i42;
                iD24 = i44;
                iD26 = i48;
                iD27 = i50;
                iD33 = i53;
                iD34 = i55;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i62;
                iD49 = iD49;
                iD47 = iD47;
                iD52 = iD52;
                iD53 = iD53;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD51 = iD51;
                iD70 = iD70;
                iD71 = iD71;
                iD68 = iD68;
                iD72 = iD72;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD12 = i32;
                iD22 = i40;
                iD25 = i46;
                iD35 = i57;
                iD42 = i60;
                iD45 = i61;
                iD18 = i25;
                iD19 = i29;
                iD20 = i33;
                iD74 = iD74;
                iD75 = iD75;
                iD6 = i22;
                iD17 = i21;
                iD8 = i24;
                iD10 = i28;
                iD14 = i36;
                iD28 = i52;
                arrayList = arrayList2;
                iD2 = i11;
                iD78 = i65;
                iD50 = i63;
                iD69 = iD69;
                iD73 = i64;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List E0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE kidId = ? AND status != 5 AND fileType == 1 ORDER BY createAt ASC");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                String strN15 = eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43);
                int i61 = (int) eVarD0.getLong(iD44);
                int i62 = iD45;
                String strN16 = eVarD0.isNull(i62) ? null : eVarD0.n0(i62);
                int i63 = iD48;
                int i64 = iD50;
                int i65 = iD75;
                int i66 = iD78;
                arrayList.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, strN15, i61, strN16, eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i64) ? null : eVarD0.n0(i64), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD20 = i33;
                iD33 = i53;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i63;
                iD47 = iD47;
                iD49 = iD49;
                iD51 = iD51;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD52 = iD52;
                iD53 = iD53;
                iD70 = iD70;
                iD69 = iD69;
                iD71 = iD71;
                iD68 = iD68;
                iD74 = iD74;
                iD75 = i65;
                iD2 = i11;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD10 = i28;
                iD12 = i32;
                iD23 = i42;
                iD25 = i46;
                iD26 = i48;
                iD27 = i50;
                iD35 = i57;
                iD42 = i60;
                iD45 = i62;
                iD34 = i55;
                iD18 = i25;
                iD19 = i29;
                iD73 = iD73;
                iD72 = iD72;
                iD6 = i22;
                iD13 = i38;
                iD21 = i37;
                iD22 = i40;
                iD17 = i21;
                iD78 = i66;
                iD8 = i24;
                iD14 = i36;
                iD24 = i44;
                iD28 = i52;
                iD50 = i64;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List F0(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE (kidId IS NULL OR kidId = '') AND status != 5 AND fileType == 1 ORDER BY createAt ASC");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                ArrayList arrayList2 = arrayList;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                int i61 = iD45;
                int i62 = iD48;
                int i63 = iD50;
                int i64 = iD73;
                int i65 = iD78;
                arrayList2.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(i61) ? null : eVarD0.n0(i61), eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i63) ? null : eVarD0.n0(i63), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD13 = i38;
                iD21 = i37;
                iD23 = i42;
                iD24 = i44;
                iD26 = i48;
                iD27 = i50;
                iD33 = i53;
                iD34 = i55;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i62;
                iD49 = iD49;
                iD47 = iD47;
                iD52 = iD52;
                iD53 = iD53;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD51 = iD51;
                iD70 = iD70;
                iD71 = iD71;
                iD68 = iD68;
                iD72 = iD72;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD12 = i32;
                iD22 = i40;
                iD25 = i46;
                iD35 = i57;
                iD42 = i60;
                iD45 = i61;
                iD18 = i25;
                iD19 = i29;
                iD20 = i33;
                iD74 = iD74;
                iD75 = iD75;
                iD6 = i22;
                iD17 = i21;
                iD8 = i24;
                iD10 = i28;
                iD14 = i36;
                iD28 = i52;
                arrayList = arrayList2;
                iD2 = i11;
                iD78 = i65;
                iD50 = i63;
                iD69 = iD69;
                iD73 = i64;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DownloadBean G0(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE status = 5 AND fileType == 1 Limit 1 ");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarD0.A0()) {
                downloadBean = new DownloadBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5)), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.getLong(iD15), eVarD0.getLong(iD16), (int) eVarD0.getLong(iD17), (int) eVarD0.getLong(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20), (int) eVarD0.getLong(iD21), (int) eVarD0.getLong(iD22), (int) eVarD0.getLong(iD23), (int) eVarD0.getLong(iD24), (int) eVarD0.getLong(iD25), (int) eVarD0.getLong(iD26), (int) eVarD0.getLong(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(r29) ? null : eVarD0.n0(iD29), eVarD0.isNull(r30) ? null : eVarD0.n0(iD30), eVarD0.isNull(r31) ? null : eVarD0.n0(iD31), eVarD0.getLong(iD32), (int) eVarD0.getLong(iD33), (int) eVarD0.getLong(iD34), eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35), eVarD0.isNull(r36) ? null : eVarD0.n0(iD36), eVarD0.getLong(iD37), eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38), eVarD0.isNull(r39) ? null : eVarD0.n0(iD39), eVarD0.getLong(iD40), (int) eVarD0.getLong(iD41), eVarD0.getLong(iD42), eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(iD45) ? null : eVarD0.n0(iD45), eVarD0.isNull(r46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(iD50) ? null : eVarD0.n0(iD50), eVarD0.isNull(r51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(r52) ? null : eVarD0.n0(iD52), eVarD0.isNull(r53) ? null : eVarD0.n0(iD53), eVarD0.isNull(r54) ? null : eVarD0.n0(iD54), eVarD0.isNull(r55) ? null : eVarD0.n0(iD55), eVarD0.isNull(r56) ? null : eVarD0.n0(iD56), eVarD0.isNull(r57) ? null : eVarD0.n0(iD57), eVarD0.isNull(r58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(r59) ? null : eVarD0.n0(iD59), eVarD0.isNull(r60) ? null : eVarD0.n0(iD60), eVarD0.isNull(r61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(r62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(r63) ? null : eVarD0.n0(iD63), eVarD0.isNull(r64) ? null : eVarD0.n0(iD64), eVarD0.isNull(r65) ? null : eVarD0.n0(iD65), eVarD0.isNull(r66) ? null : eVarD0.n0(iD66), eVarD0.isNull(r67) ? null : eVarD0.n0(iD67), eVarD0.isNull(r68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(r69) ? null : eVarD0.n0(iD69), eVarD0.isNull(r70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(r71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(r72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(r73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(r74) ? null : eVarD0.n0(iD74), eVarD0.isNull(r75) ? null : eVarD0.n0(iD75), eVarD0.isNull(r76) ? null : eVarD0.n0(iD76), eVarD0.isNull(r77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(r79) ? null : eVarD0.n0(iD79), eVarD0.isNull(r170) ? null : eVarD0.n0(iD80));
            }
            return downloadBean;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DownloadBean H0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE type = 2 AND fileType = 2 AND path = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarD0.A0()) {
                downloadBean = new DownloadBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5)), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.getLong(iD15), eVarD0.getLong(iD16), (int) eVarD0.getLong(iD17), (int) eVarD0.getLong(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20), (int) eVarD0.getLong(iD21), (int) eVarD0.getLong(iD22), (int) eVarD0.getLong(iD23), (int) eVarD0.getLong(iD24), (int) eVarD0.getLong(iD25), (int) eVarD0.getLong(iD26), (int) eVarD0.getLong(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(r29) ? null : eVarD0.n0(iD29), eVarD0.isNull(r30) ? null : eVarD0.n0(iD30), eVarD0.isNull(r31) ? null : eVarD0.n0(iD31), eVarD0.getLong(iD32), (int) eVarD0.getLong(iD33), (int) eVarD0.getLong(iD34), eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35), eVarD0.isNull(r36) ? null : eVarD0.n0(iD36), eVarD0.getLong(iD37), eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38), eVarD0.isNull(r39) ? null : eVarD0.n0(iD39), eVarD0.getLong(iD40), (int) eVarD0.getLong(iD41), eVarD0.getLong(iD42), eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(iD45) ? null : eVarD0.n0(iD45), eVarD0.isNull(r46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(iD50) ? null : eVarD0.n0(iD50), eVarD0.isNull(r51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(r52) ? null : eVarD0.n0(iD52), eVarD0.isNull(r53) ? null : eVarD0.n0(iD53), eVarD0.isNull(r54) ? null : eVarD0.n0(iD54), eVarD0.isNull(r55) ? null : eVarD0.n0(iD55), eVarD0.isNull(r56) ? null : eVarD0.n0(iD56), eVarD0.isNull(r57) ? null : eVarD0.n0(iD57), eVarD0.isNull(r58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(r59) ? null : eVarD0.n0(iD59), eVarD0.isNull(r60) ? null : eVarD0.n0(iD60), eVarD0.isNull(r61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(r62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(r63) ? null : eVarD0.n0(iD63), eVarD0.isNull(r64) ? null : eVarD0.n0(iD64), eVarD0.isNull(r65) ? null : eVarD0.n0(iD65), eVarD0.isNull(r66) ? null : eVarD0.n0(iD66), eVarD0.isNull(r67) ? null : eVarD0.n0(iD67), eVarD0.isNull(r68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(r69) ? null : eVarD0.n0(iD69), eVarD0.isNull(r70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(r71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(r72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(r73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(r74) ? null : eVarD0.n0(iD74), eVarD0.isNull(r75) ? null : eVarD0.n0(iD75), eVarD0.isNull(r76) ? null : eVarD0.n0(iD76), eVarD0.isNull(r77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(r79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80));
            }
            eVarD0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List I0(int i11, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE fileType == 1 ORDER BY updateTimeStamp DESC Limit ?");
        try {
            eVarD0.c(1, i11);
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i12 = iD;
                int i13 = iD2;
                int i14 = (int) eVarD0.getLong(iD12);
                int i15 = iD3;
                int i16 = (int) eVarD0.getLong(iD13);
                int i17 = iD4;
                int i18 = (int) eVarD0.getLong(iD14);
                long j12 = eVarD0.getLong(iD15);
                int i19 = iD16;
                long j13 = eVarD0.getLong(i19);
                iD16 = i19;
                int i20 = iD6;
                int i21 = iD17;
                int i22 = iD5;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                String strN15 = eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43);
                int i61 = (int) eVarD0.getLong(iD44);
                int i62 = iD45;
                String strN16 = eVarD0.isNull(i62) ? null : eVarD0.n0(i62);
                int i63 = iD48;
                int i64 = iD50;
                int i65 = iD75;
                int i66 = iD78;
                arrayList.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i14, i16, i18, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, strN15, i61, strN16, eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i64) ? null : eVarD0.n0(i64), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD79 = iD79;
                iD80 = iD80;
                iD5 = i22;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD20 = i33;
                iD17 = i21;
                iD33 = i53;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i63;
                iD47 = iD47;
                iD49 = iD49;
                iD51 = iD51;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD52 = iD52;
                iD53 = iD53;
                iD70 = iD70;
                iD69 = iD69;
                iD71 = iD71;
                iD68 = iD68;
                iD74 = iD74;
                iD75 = i65;
                iD = i12;
                iD2 = i13;
                iD3 = i15;
                iD4 = i17;
                iD10 = i28;
                iD12 = i32;
                iD23 = i42;
                iD25 = i46;
                iD26 = i48;
                iD28 = i52;
                iD27 = i50;
                iD35 = i57;
                iD42 = i60;
                iD45 = i62;
                iD34 = i55;
                iD18 = i25;
                iD19 = i29;
                iD73 = iD73;
                iD72 = iD72;
                iD13 = i38;
                iD21 = i37;
                iD22 = i40;
                iD78 = i66;
                iD6 = i20;
                iD8 = i24;
                iD14 = i36;
                iD24 = i44;
                iD50 = i64;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List J0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ?  ORDER BY episode ASC ");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                String strN15 = eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43);
                int i61 = (int) eVarD0.getLong(iD44);
                int i62 = iD45;
                String strN16 = eVarD0.isNull(i62) ? null : eVarD0.n0(i62);
                int i63 = iD48;
                int i64 = iD50;
                int i65 = iD75;
                int i66 = iD78;
                arrayList.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, strN15, i61, strN16, eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i64) ? null : eVarD0.n0(i64), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD20 = i33;
                iD33 = i53;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i63;
                iD47 = iD47;
                iD49 = iD49;
                iD51 = iD51;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD52 = iD52;
                iD53 = iD53;
                iD70 = iD70;
                iD69 = iD69;
                iD71 = iD71;
                iD68 = iD68;
                iD74 = iD74;
                iD75 = i65;
                iD2 = i11;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD10 = i28;
                iD12 = i32;
                iD23 = i42;
                iD25 = i46;
                iD26 = i48;
                iD27 = i50;
                iD35 = i57;
                iD42 = i60;
                iD45 = i62;
                iD34 = i55;
                iD18 = i25;
                iD19 = i29;
                iD73 = iD73;
                iD72 = iD72;
                iD6 = i22;
                iD13 = i38;
                iD21 = i37;
                iD22 = i40;
                iD17 = i21;
                iD78 = i66;
                iD8 = i24;
                iD14 = i36;
                iD24 = i44;
                iD28 = i52;
                iD50 = i64;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List K0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? AND status = 5  ORDER BY episode ASC ");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                String strN15 = eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43);
                int i61 = (int) eVarD0.getLong(iD44);
                int i62 = iD45;
                String strN16 = eVarD0.isNull(i62) ? null : eVarD0.n0(i62);
                int i63 = iD48;
                int i64 = iD50;
                int i65 = iD75;
                int i66 = iD78;
                arrayList.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, strN15, i61, strN16, eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i64) ? null : eVarD0.n0(i64), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD20 = i33;
                iD33 = i53;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i63;
                iD47 = iD47;
                iD49 = iD49;
                iD51 = iD51;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD52 = iD52;
                iD53 = iD53;
                iD70 = iD70;
                iD69 = iD69;
                iD71 = iD71;
                iD68 = iD68;
                iD74 = iD74;
                iD75 = i65;
                iD2 = i11;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD10 = i28;
                iD12 = i32;
                iD23 = i42;
                iD25 = i46;
                iD26 = i48;
                iD27 = i50;
                iD35 = i57;
                iD42 = i60;
                iD45 = i62;
                iD34 = i55;
                iD18 = i25;
                iD19 = i29;
                iD73 = iD73;
                iD72 = iD72;
                iD6 = i22;
                iD13 = i38;
                iD21 = i37;
                iD22 = i40;
                iD17 = i21;
                iD78 = i66;
                iD8 = i24;
                iD14 = i36;
                iD24 = i44;
                iD28 = i52;
                iD50 = i64;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DownloadBean L0(String str, int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ?  AND se =? AND ep =? ORDER BY resolution DESC LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.c(2, i11);
            eVarD0.c(3, i12);
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarD0.A0()) {
                downloadBean = new DownloadBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5)), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.getLong(iD15), eVarD0.getLong(iD16), (int) eVarD0.getLong(iD17), (int) eVarD0.getLong(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20), (int) eVarD0.getLong(iD21), (int) eVarD0.getLong(iD22), (int) eVarD0.getLong(iD23), (int) eVarD0.getLong(iD24), (int) eVarD0.getLong(iD25), (int) eVarD0.getLong(iD26), (int) eVarD0.getLong(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(r27) ? null : eVarD0.n0(iD29), eVarD0.isNull(r28) ? null : eVarD0.n0(iD30), eVarD0.isNull(r29) ? null : eVarD0.n0(iD31), eVarD0.getLong(iD32), (int) eVarD0.getLong(iD33), (int) eVarD0.getLong(iD34), eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35), eVarD0.isNull(r34) ? null : eVarD0.n0(iD36), eVarD0.getLong(iD37), eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38), eVarD0.isNull(r37) ? null : eVarD0.n0(iD39), eVarD0.getLong(iD40), (int) eVarD0.getLong(iD41), eVarD0.getLong(iD42), eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(iD45) ? null : eVarD0.n0(iD45), eVarD0.isNull(r44) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(iD50) ? null : eVarD0.n0(iD50), eVarD0.isNull(r49) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(r50) ? null : eVarD0.n0(iD52), eVarD0.isNull(r51) ? null : eVarD0.n0(iD53), eVarD0.isNull(r52) ? null : eVarD0.n0(iD54), eVarD0.isNull(r53) ? null : eVarD0.n0(iD55), eVarD0.isNull(r54) ? null : eVarD0.n0(iD56), eVarD0.isNull(r55) ? null : eVarD0.n0(iD57), eVarD0.isNull(r56) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(r57) ? null : eVarD0.n0(iD59), eVarD0.isNull(r58) ? null : eVarD0.n0(iD60), eVarD0.isNull(r59) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(r60) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(r61) ? null : eVarD0.n0(iD63), eVarD0.isNull(r62) ? null : eVarD0.n0(iD64), eVarD0.isNull(r63) ? null : eVarD0.n0(iD65), eVarD0.isNull(r64) ? null : eVarD0.n0(iD66), eVarD0.isNull(r65) ? null : eVarD0.n0(iD67), eVarD0.isNull(r66) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(r67) ? null : eVarD0.n0(iD69), eVarD0.isNull(r68) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(r69) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(r70) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(r71) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(r72) ? null : eVarD0.n0(iD74), eVarD0.isNull(r73) ? null : eVarD0.n0(iD75), eVarD0.isNull(r74) ? null : eVarD0.n0(iD76), eVarD0.isNull(r75) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(r77) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80));
            }
            eVarD0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List M0(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE fileType == 1");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                ArrayList arrayList2 = arrayList;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                int i61 = iD45;
                int i62 = iD48;
                int i63 = iD50;
                int i64 = iD73;
                int i65 = iD78;
                arrayList2.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(i61) ? null : eVarD0.n0(i61), eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i63) ? null : eVarD0.n0(i63), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD13 = i38;
                iD21 = i37;
                iD23 = i42;
                iD24 = i44;
                iD26 = i48;
                iD27 = i50;
                iD33 = i53;
                iD34 = i55;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i62;
                iD49 = iD49;
                iD47 = iD47;
                iD52 = iD52;
                iD53 = iD53;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD51 = iD51;
                iD70 = iD70;
                iD71 = iD71;
                iD68 = iD68;
                iD72 = iD72;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD12 = i32;
                iD22 = i40;
                iD25 = i46;
                iD35 = i57;
                iD42 = i60;
                iD45 = i61;
                iD18 = i25;
                iD19 = i29;
                iD20 = i33;
                iD74 = iD74;
                iD75 = iD75;
                iD6 = i22;
                iD17 = i21;
                iD8 = i24;
                iD10 = i28;
                iD14 = i36;
                iD28 = i52;
                arrayList = arrayList2;
                iD2 = i11;
                iD78 = i65;
                iD50 = i63;
                iD69 = iD69;
                iD73 = i64;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List N0(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE fileType = 3 ORDER BY updateTimeStamp DESC ");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                ArrayList arrayList2 = arrayList;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                int i61 = iD45;
                int i62 = iD48;
                int i63 = iD50;
                int i64 = iD73;
                int i65 = iD78;
                arrayList2.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(i61) ? null : eVarD0.n0(i61), eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i63) ? null : eVarD0.n0(i63), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD13 = i38;
                iD21 = i37;
                iD23 = i42;
                iD24 = i44;
                iD26 = i48;
                iD27 = i50;
                iD33 = i53;
                iD34 = i55;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i62;
                iD49 = iD49;
                iD47 = iD47;
                iD52 = iD52;
                iD53 = iD53;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD51 = iD51;
                iD70 = iD70;
                iD71 = iD71;
                iD68 = iD68;
                iD72 = iD72;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD12 = i32;
                iD22 = i40;
                iD25 = i46;
                iD35 = i57;
                iD42 = i60;
                iD45 = i61;
                iD18 = i25;
                iD19 = i29;
                iD20 = i33;
                iD74 = iD74;
                iD75 = iD75;
                iD6 = i22;
                iD17 = i21;
                iD8 = i24;
                iD10 = i28;
                iD14 = i36;
                iD28 = i52;
                arrayList = arrayList2;
                iD2 = i11;
                iD78 = i65;
                iD50 = i63;
                iD69 = iD69;
                iD73 = i64;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List O0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE ugcVideoCollectionId = ? ORDER BY ugcVideoPosition ASC");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                String strN15 = eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43);
                int i61 = (int) eVarD0.getLong(iD44);
                int i62 = iD45;
                String strN16 = eVarD0.isNull(i62) ? null : eVarD0.n0(i62);
                int i63 = iD48;
                int i64 = iD50;
                int i65 = iD75;
                int i66 = iD78;
                arrayList.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, strN15, i61, strN16, eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i64) ? null : eVarD0.n0(i64), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD20 = i33;
                iD33 = i53;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i63;
                iD47 = iD47;
                iD49 = iD49;
                iD51 = iD51;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD52 = iD52;
                iD53 = iD53;
                iD70 = iD70;
                iD69 = iD69;
                iD71 = iD71;
                iD68 = iD68;
                iD74 = iD74;
                iD75 = i65;
                iD2 = i11;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD10 = i28;
                iD12 = i32;
                iD23 = i42;
                iD25 = i46;
                iD26 = i48;
                iD27 = i50;
                iD35 = i57;
                iD42 = i60;
                iD45 = i62;
                iD34 = i55;
                iD18 = i25;
                iD19 = i29;
                iD73 = iD73;
                iD72 = iD72;
                iD6 = i22;
                iD13 = i38;
                iD21 = i37;
                iD22 = i40;
                iD17 = i21;
                iD78 = i66;
                iD8 = i24;
                iD14 = i36;
                iD24 = i44;
                iD28 = i52;
                iD50 = i64;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DownloadBean P0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE ugcVideoId = ?  ORDER BY resolution DESC LIMIT 1");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarD0.A0()) {
                downloadBean = new DownloadBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5)), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.getLong(iD15), eVarD0.getLong(iD16), (int) eVarD0.getLong(iD17), (int) eVarD0.getLong(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20), (int) eVarD0.getLong(iD21), (int) eVarD0.getLong(iD22), (int) eVarD0.getLong(iD23), (int) eVarD0.getLong(iD24), (int) eVarD0.getLong(iD25), (int) eVarD0.getLong(iD26), (int) eVarD0.getLong(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(r29) ? null : eVarD0.n0(iD29), eVarD0.isNull(r30) ? null : eVarD0.n0(iD30), eVarD0.isNull(r31) ? null : eVarD0.n0(iD31), eVarD0.getLong(iD32), (int) eVarD0.getLong(iD33), (int) eVarD0.getLong(iD34), eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35), eVarD0.isNull(r36) ? null : eVarD0.n0(iD36), eVarD0.getLong(iD37), eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38), eVarD0.isNull(r39) ? null : eVarD0.n0(iD39), eVarD0.getLong(iD40), (int) eVarD0.getLong(iD41), eVarD0.getLong(iD42), eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(iD45) ? null : eVarD0.n0(iD45), eVarD0.isNull(r46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(iD50) ? null : eVarD0.n0(iD50), eVarD0.isNull(r51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(r52) ? null : eVarD0.n0(iD52), eVarD0.isNull(r53) ? null : eVarD0.n0(iD53), eVarD0.isNull(r54) ? null : eVarD0.n0(iD54), eVarD0.isNull(r55) ? null : eVarD0.n0(iD55), eVarD0.isNull(r56) ? null : eVarD0.n0(iD56), eVarD0.isNull(r57) ? null : eVarD0.n0(iD57), eVarD0.isNull(r58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(r59) ? null : eVarD0.n0(iD59), eVarD0.isNull(r60) ? null : eVarD0.n0(iD60), eVarD0.isNull(r61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(r62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(r63) ? null : eVarD0.n0(iD63), eVarD0.isNull(r64) ? null : eVarD0.n0(iD64), eVarD0.isNull(r65) ? null : eVarD0.n0(iD65), eVarD0.isNull(r66) ? null : eVarD0.n0(iD66), eVarD0.isNull(r67) ? null : eVarD0.n0(iD67), eVarD0.isNull(r68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(r69) ? null : eVarD0.n0(iD69), eVarD0.isNull(r70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(r71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(r72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(r73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(r74) ? null : eVarD0.n0(iD74), eVarD0.isNull(r75) ? null : eVarD0.n0(iD75), eVarD0.isNull(r76) ? null : eVarD0.n0(iD76), eVarD0.isNull(r77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(r79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80));
            }
            eVarD0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit Q0(DownloadBean downloadBean, z3.b bVar) throws Exception {
        this.f68908b.d(bVar, downloadBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit R0(DownloadBean downloadBean, z3.b bVar) throws Exception {
        this.f68910d.c(bVar, downloadBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit S0(long j11, String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE DOWNLOAD_TABLE SET duration = ? WHERE resourceId = ? ");
        try {
            eVarD0.c(1, j11);
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit T0(long j11, String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE DOWNLOAD_TABLE SET lastPlayTimeStamp = ? WHERE resourceId = ? ");
        try {
            eVarD0.c(1, j11);
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit U0(long j11, String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE DOWNLOAD_TABLE SET readProgress = ? WHERE resourceId = ? ");
        try {
            eVarD0.c(1, j11);
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit V0(int i11, String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE DOWNLOAD_TABLE SET status = ? WHERE resourceId = ? ");
        try {
            eVarD0.c(1, i11);
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit W0(String str, String str2, String str3, String str4, Integer num, String str5, String str6, String str7, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE DOWNLOAD_TABLE SET restrictLevel = ?, releaseDate = ?, countryName = ?, subtitles = ?, seNum = ?, genre = ?, imdbRate = ? WHERE resourceId = ?");
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
            if (str4 == null) {
                eVarD0.g(4);
            } else {
                eVarD0.j(4, str4);
            }
            if (num == null) {
                eVarD0.g(5);
            } else {
                eVarD0.c(5, num.intValue());
            }
            if (str5 == null) {
                eVarD0.g(6);
            } else {
                eVarD0.j(6, str5);
            }
            if (str6 == null) {
                eVarD0.g(7);
            } else {
                eVarD0.j(7, str6);
            }
            if (str7 == null) {
                eVarD0.g(8);
            } else {
                eVarD0.j(8, str7);
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
    public static /* synthetic */ Unit X0(String str, String str2, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE DOWNLOAD_TABLE SET subtitleSelectId = ? WHERE resourceId = ? ");
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
    public static /* synthetic */ Unit Y0(int i11, int i12, String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("UPDATE DOWNLOAD_TABLE SET videoWidth = ?, videoHeight = ? WHERE resourceId = ? ");
        try {
            eVarD0.c(1, i11);
            eVarD0.c(2, i12);
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

    public static List q0() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit r0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM DOWNLOAD_TABLE WHERE url=?");
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
    public static /* synthetic */ Unit s0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM DOWNLOAD_TABLE WHERE resourceId=?");
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
    public static /* synthetic */ Unit t0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM DOWNLOAD_TABLE WHERE resourceId=? AND fileType =  3 ");
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
    public static /* synthetic */ List u0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? ORDER BY createAt DESC");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                String strN15 = eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43);
                int i61 = (int) eVarD0.getLong(iD44);
                int i62 = iD45;
                String strN16 = eVarD0.isNull(i62) ? null : eVarD0.n0(i62);
                int i63 = iD48;
                int i64 = iD50;
                int i65 = iD75;
                int i66 = iD78;
                arrayList.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, strN15, i61, strN16, eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i64) ? null : eVarD0.n0(i64), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD20 = i33;
                iD33 = i53;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i63;
                iD47 = iD47;
                iD49 = iD49;
                iD51 = iD51;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD52 = iD52;
                iD53 = iD53;
                iD70 = iD70;
                iD69 = iD69;
                iD71 = iD71;
                iD68 = iD68;
                iD74 = iD74;
                iD75 = i65;
                iD2 = i11;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD10 = i28;
                iD12 = i32;
                iD23 = i42;
                iD25 = i46;
                iD26 = i48;
                iD27 = i50;
                iD35 = i57;
                iD42 = i60;
                iD45 = i62;
                iD34 = i55;
                iD18 = i25;
                iD19 = i29;
                iD73 = iD73;
                iD72 = iD72;
                iD6 = i22;
                iD13 = i38;
                iD21 = i37;
                iD22 = i40;
                iD17 = i21;
                iD78 = i66;
                iD8 = i24;
                iD14 = i36;
                iD24 = i44;
                iD28 = i52;
                iD50 = i64;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DownloadBean v0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE resourceId = ? ORDER BY createAt DESC");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarD0.A0()) {
                downloadBean = new DownloadBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5)), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.getLong(iD15), eVarD0.getLong(iD16), (int) eVarD0.getLong(iD17), (int) eVarD0.getLong(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20), (int) eVarD0.getLong(iD21), (int) eVarD0.getLong(iD22), (int) eVarD0.getLong(iD23), (int) eVarD0.getLong(iD24), (int) eVarD0.getLong(iD25), (int) eVarD0.getLong(iD26), (int) eVarD0.getLong(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(r29) ? null : eVarD0.n0(iD29), eVarD0.isNull(r30) ? null : eVarD0.n0(iD30), eVarD0.isNull(r31) ? null : eVarD0.n0(iD31), eVarD0.getLong(iD32), (int) eVarD0.getLong(iD33), (int) eVarD0.getLong(iD34), eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35), eVarD0.isNull(r36) ? null : eVarD0.n0(iD36), eVarD0.getLong(iD37), eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38), eVarD0.isNull(r39) ? null : eVarD0.n0(iD39), eVarD0.getLong(iD40), (int) eVarD0.getLong(iD41), eVarD0.getLong(iD42), eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(iD45) ? null : eVarD0.n0(iD45), eVarD0.isNull(r46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(iD50) ? null : eVarD0.n0(iD50), eVarD0.isNull(r51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(r52) ? null : eVarD0.n0(iD52), eVarD0.isNull(r53) ? null : eVarD0.n0(iD53), eVarD0.isNull(r54) ? null : eVarD0.n0(iD54), eVarD0.isNull(r55) ? null : eVarD0.n0(iD55), eVarD0.isNull(r56) ? null : eVarD0.n0(iD56), eVarD0.isNull(r57) ? null : eVarD0.n0(iD57), eVarD0.isNull(r58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(r59) ? null : eVarD0.n0(iD59), eVarD0.isNull(r60) ? null : eVarD0.n0(iD60), eVarD0.isNull(r61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(r62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(r63) ? null : eVarD0.n0(iD63), eVarD0.isNull(r64) ? null : eVarD0.n0(iD64), eVarD0.isNull(r65) ? null : eVarD0.n0(iD65), eVarD0.isNull(r66) ? null : eVarD0.n0(iD66), eVarD0.isNull(r67) ? null : eVarD0.n0(iD67), eVarD0.isNull(r68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(r69) ? null : eVarD0.n0(iD69), eVarD0.isNull(r70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(r71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(r72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(r73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(r74) ? null : eVarD0.n0(iD74), eVarD0.isNull(r75) ? null : eVarD0.n0(iD75), eVarD0.isNull(r76) ? null : eVarD0.n0(iD76), eVarD0.isNull(r77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(r79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80));
            }
            eVarD0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DownloadBean w0(String str, int i11, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? AND ep = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.c(2, i11);
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarD0.A0()) {
                downloadBean = new DownloadBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5)), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.getLong(iD15), eVarD0.getLong(iD16), (int) eVarD0.getLong(iD17), (int) eVarD0.getLong(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20), (int) eVarD0.getLong(iD21), (int) eVarD0.getLong(iD22), (int) eVarD0.getLong(iD23), (int) eVarD0.getLong(iD24), (int) eVarD0.getLong(iD25), (int) eVarD0.getLong(iD26), (int) eVarD0.getLong(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(r28) ? null : eVarD0.n0(iD29), eVarD0.isNull(r29) ? null : eVarD0.n0(iD30), eVarD0.isNull(r30) ? null : eVarD0.n0(iD31), eVarD0.getLong(iD32), (int) eVarD0.getLong(iD33), (int) eVarD0.getLong(iD34), eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35), eVarD0.isNull(r35) ? null : eVarD0.n0(iD36), eVarD0.getLong(iD37), eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38), eVarD0.isNull(r38) ? null : eVarD0.n0(iD39), eVarD0.getLong(iD40), (int) eVarD0.getLong(iD41), eVarD0.getLong(iD42), eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(iD45) ? null : eVarD0.n0(iD45), eVarD0.isNull(r45) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(iD50) ? null : eVarD0.n0(iD50), eVarD0.isNull(r50) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(r51) ? null : eVarD0.n0(iD52), eVarD0.isNull(r52) ? null : eVarD0.n0(iD53), eVarD0.isNull(r53) ? null : eVarD0.n0(iD54), eVarD0.isNull(r54) ? null : eVarD0.n0(iD55), eVarD0.isNull(r55) ? null : eVarD0.n0(iD56), eVarD0.isNull(r56) ? null : eVarD0.n0(iD57), eVarD0.isNull(r57) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(r58) ? null : eVarD0.n0(iD59), eVarD0.isNull(r59) ? null : eVarD0.n0(iD60), eVarD0.isNull(r60) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(r61) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(r62) ? null : eVarD0.n0(iD63), eVarD0.isNull(r63) ? null : eVarD0.n0(iD64), eVarD0.isNull(r64) ? null : eVarD0.n0(iD65), eVarD0.isNull(r65) ? null : eVarD0.n0(iD66), eVarD0.isNull(r66) ? null : eVarD0.n0(iD67), eVarD0.isNull(r67) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(r68) ? null : eVarD0.n0(iD69), eVarD0.isNull(r69) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(r70) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(r71) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(r72) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(r73) ? null : eVarD0.n0(iD74), eVarD0.isNull(r74) ? null : eVarD0.n0(iD75), eVarD0.isNull(r75) ? null : eVarD0.n0(iD76), eVarD0.isNull(r76) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(r78) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80));
            }
            eVarD0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DownloadBean x0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarD0.A0()) {
                downloadBean = new DownloadBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5)), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.getLong(iD15), eVarD0.getLong(iD16), (int) eVarD0.getLong(iD17), (int) eVarD0.getLong(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20), (int) eVarD0.getLong(iD21), (int) eVarD0.getLong(iD22), (int) eVarD0.getLong(iD23), (int) eVarD0.getLong(iD24), (int) eVarD0.getLong(iD25), (int) eVarD0.getLong(iD26), (int) eVarD0.getLong(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(r29) ? null : eVarD0.n0(iD29), eVarD0.isNull(r30) ? null : eVarD0.n0(iD30), eVarD0.isNull(r31) ? null : eVarD0.n0(iD31), eVarD0.getLong(iD32), (int) eVarD0.getLong(iD33), (int) eVarD0.getLong(iD34), eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35), eVarD0.isNull(r36) ? null : eVarD0.n0(iD36), eVarD0.getLong(iD37), eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38), eVarD0.isNull(r39) ? null : eVarD0.n0(iD39), eVarD0.getLong(iD40), (int) eVarD0.getLong(iD41), eVarD0.getLong(iD42), eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(iD45) ? null : eVarD0.n0(iD45), eVarD0.isNull(r46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(iD50) ? null : eVarD0.n0(iD50), eVarD0.isNull(r51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(r52) ? null : eVarD0.n0(iD52), eVarD0.isNull(r53) ? null : eVarD0.n0(iD53), eVarD0.isNull(r54) ? null : eVarD0.n0(iD54), eVarD0.isNull(r55) ? null : eVarD0.n0(iD55), eVarD0.isNull(r56) ? null : eVarD0.n0(iD56), eVarD0.isNull(r57) ? null : eVarD0.n0(iD57), eVarD0.isNull(r58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(r59) ? null : eVarD0.n0(iD59), eVarD0.isNull(r60) ? null : eVarD0.n0(iD60), eVarD0.isNull(r61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(r62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(r63) ? null : eVarD0.n0(iD63), eVarD0.isNull(r64) ? null : eVarD0.n0(iD64), eVarD0.isNull(r65) ? null : eVarD0.n0(iD65), eVarD0.isNull(r66) ? null : eVarD0.n0(iD66), eVarD0.isNull(r67) ? null : eVarD0.n0(iD67), eVarD0.isNull(r68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(r69) ? null : eVarD0.n0(iD69), eVarD0.isNull(r70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(r71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(r72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(r73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(r74) ? null : eVarD0.n0(iD74), eVarD0.isNull(r75) ? null : eVarD0.n0(iD75), eVarD0.isNull(r76) ? null : eVarD0.n0(iD76), eVarD0.isNull(r77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(r79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80));
            }
            eVarD0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List y0(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? ORDER BY ep ASC ");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                Long lValueOf = eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5));
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN5 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                String strN6 = eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8);
                Long lValueOf2 = eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9));
                Long lValueOf3 = eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10));
                long j11 = eVarD0.getLong(iD11);
                int i11 = iD2;
                int i12 = iD3;
                int i13 = (int) eVarD0.getLong(iD12);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD13);
                int i16 = iD5;
                int i17 = (int) eVarD0.getLong(iD14);
                int i18 = iD15;
                long j12 = eVarD0.getLong(i18);
                int i19 = iD;
                int i20 = iD16;
                long j13 = eVarD0.getLong(i20);
                iD16 = i20;
                int i21 = iD17;
                int i22 = iD6;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD8;
                int i25 = iD18;
                int i26 = iD7;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD10;
                int i29 = iD19;
                int i30 = iD9;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD12;
                int i33 = iD20;
                int i34 = iD11;
                int i35 = (int) eVarD0.getLong(i33);
                int i36 = iD14;
                int i37 = iD21;
                int i38 = iD13;
                int i39 = (int) eVarD0.getLong(i37);
                int i40 = iD22;
                int i41 = (int) eVarD0.getLong(i40);
                int i42 = iD23;
                int i43 = (int) eVarD0.getLong(i42);
                int i44 = iD24;
                int i45 = (int) eVarD0.getLong(i44);
                int i46 = iD25;
                int i47 = (int) eVarD0.getLong(i46);
                int i48 = iD26;
                int i49 = (int) eVarD0.getLong(i48);
                int i50 = iD27;
                int i51 = (int) eVarD0.getLong(i50);
                int i52 = iD28;
                String strN7 = eVarD0.isNull(i52) ? null : eVarD0.n0(i52);
                String strN8 = eVarD0.isNull(iD29) ? null : eVarD0.n0(iD29);
                String strN9 = eVarD0.isNull(iD30) ? null : eVarD0.n0(iD30);
                String strN10 = eVarD0.isNull(iD31) ? null : eVarD0.n0(iD31);
                long j14 = eVarD0.getLong(iD32);
                iD32 = iD32;
                int i53 = iD33;
                int i54 = (int) eVarD0.getLong(i53);
                int i55 = iD34;
                int i56 = (int) eVarD0.getLong(i55);
                int i57 = iD35;
                String strN11 = eVarD0.isNull(i57) ? null : eVarD0.n0(i57);
                String strN12 = eVarD0.isNull(iD36) ? null : eVarD0.n0(iD36);
                long j15 = eVarD0.getLong(iD37);
                iD37 = iD37;
                iD38 = iD38;
                String strN13 = eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38);
                String strN14 = eVarD0.isNull(iD39) ? null : eVarD0.n0(iD39);
                long j16 = eVarD0.getLong(iD40);
                iD40 = iD40;
                int i58 = iD41;
                int i59 = (int) eVarD0.getLong(i58);
                int i60 = iD42;
                long j17 = eVarD0.getLong(i60);
                iD43 = iD43;
                String strN15 = eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43);
                int i61 = (int) eVarD0.getLong(iD44);
                int i62 = iD45;
                String strN16 = eVarD0.isNull(i62) ? null : eVarD0.n0(i62);
                int i63 = iD48;
                int i64 = iD50;
                int i65 = iD75;
                int i66 = iD78;
                arrayList.add(new DownloadBean(strN0, strN1, strN2, strN3, lValueOf, strN4, strN5, strN6, lValueOf2, lValueOf3, j11, i13, i15, i17, j12, j13, i23, i27, i31, i35, i39, i41, i43, i45, i47, i49, i51, strN7, strN8, strN9, strN10, j14, i54, i56, strN11, strN12, j15, strN13, strN14, j16, i59, j17, strN15, i61, strN16, eVarD0.isNull(iD46) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(i64) ? null : eVarD0.n0(i64), eVarD0.isNull(iD51) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(iD52) ? null : eVarD0.n0(iD52), eVarD0.isNull(iD53) ? null : eVarD0.n0(iD53), eVarD0.isNull(iD54) ? null : eVarD0.n0(iD54), eVarD0.isNull(iD55) ? null : eVarD0.n0(iD55), eVarD0.isNull(iD56) ? null : eVarD0.n0(iD56), eVarD0.isNull(iD57) ? null : eVarD0.n0(iD57), eVarD0.isNull(iD58) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(iD59) ? null : eVarD0.n0(iD59), eVarD0.isNull(iD60) ? null : eVarD0.n0(iD60), eVarD0.isNull(iD61) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(iD62) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(iD63) ? null : eVarD0.n0(iD63), eVarD0.isNull(iD64) ? null : eVarD0.n0(iD64), eVarD0.isNull(iD65) ? null : eVarD0.n0(iD65), eVarD0.isNull(iD66) ? null : eVarD0.n0(iD66), eVarD0.isNull(iD67) ? null : eVarD0.n0(iD67), eVarD0.isNull(iD68) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(iD69) ? null : eVarD0.n0(iD69), eVarD0.isNull(iD70) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(iD71) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(iD72) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(iD73) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(iD74) ? null : eVarD0.n0(iD74), eVarD0.isNull(iD75) ? null : eVarD0.n0(iD75), eVarD0.isNull(iD76) ? null : eVarD0.n0(iD76), eVarD0.isNull(iD77) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(iD79) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80)));
                iD = i19;
                iD79 = iD79;
                iD80 = iD80;
                iD7 = i26;
                iD9 = i30;
                iD11 = i34;
                iD20 = i33;
                iD33 = i53;
                iD41 = i58;
                iD44 = iD44;
                iD48 = i63;
                iD47 = iD47;
                iD49 = iD49;
                iD51 = iD51;
                iD58 = iD58;
                iD59 = iD59;
                iD60 = iD60;
                iD52 = iD52;
                iD53 = iD53;
                iD70 = iD70;
                iD69 = iD69;
                iD71 = iD71;
                iD68 = iD68;
                iD74 = iD74;
                iD75 = i65;
                iD2 = i11;
                iD3 = i12;
                iD4 = i14;
                iD5 = i16;
                iD15 = i18;
                iD10 = i28;
                iD12 = i32;
                iD23 = i42;
                iD25 = i46;
                iD26 = i48;
                iD27 = i50;
                iD35 = i57;
                iD42 = i60;
                iD45 = i62;
                iD34 = i55;
                iD18 = i25;
                iD19 = i29;
                iD73 = iD73;
                iD72 = iD72;
                iD6 = i22;
                iD13 = i38;
                iD21 = i37;
                iD22 = i40;
                iD17 = i21;
                iD78 = i66;
                iD8 = i24;
                iD14 = i36;
                iD24 = i44;
                iD28 = i52;
                iD50 = i64;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ DownloadBean z0(String str, int i11, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? AND ep =? ");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.c(2, i11);
            int iD = androidx.room.util.k.d(eVarD0, "url");
            int iD2 = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD3 = androidx.room.util.k.d(eVarD0, "name");
            int iD4 = androidx.room.util.k.d(eVarD0, "cover");
            int iD5 = androidx.room.util.k.d(eVarD0, "size");
            int iD6 = androidx.room.util.k.d(eVarD0, "postId");
            int iD7 = androidx.room.util.k.d(eVarD0, "sizeFormat");
            int iD8 = androidx.room.util.k.d(eVarD0, "path");
            int iD9 = androidx.room.util.k.d(eVarD0, "duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "updateTimeStamp");
            int iD11 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_PROGRESS);
            int iD12 = androidx.room.util.k.d(eVarD0, "supportRanges");
            int iD13 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD14 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD15 = androidx.room.util.k.d(eVarD0, "readProgress");
            int iD16 = androidx.room.util.k.d(eVarD0, "createAt");
            int iD17 = androidx.room.util.k.d(eVarD0, "isRead");
            int iD18 = androidx.room.util.k.d(eVarD0, "episode");
            int iD19 = androidx.room.util.k.d(eVarD0, "ep");
            int iD20 = androidx.room.util.k.d(eVarD0, "se");
            int iD21 = androidx.room.util.k.d(eVarD0, "resolution");
            int iD22 = androidx.room.util.k.d(eVarD0, "resourcePosition");
            int iD23 = androidx.room.util.k.d(eVarD0, "multiresolution");
            int iD24 = androidx.room.util.k.d(eVarD0, "videoWidth");
            int iD25 = androidx.room.util.k.d(eVarD0, "videoHeight");
            int iD26 = androidx.room.util.k.d(eVarD0, "downloadErrorCount");
            int iD27 = androidx.room.util.k.d(eVarD0, "subtitleStarted");
            int iD28 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD29 = androidx.room.util.k.d(eVarD0, "pageFrom");
            int iD30 = androidx.room.util.k.d(eVarD0, "lastPageFrom");
            int iD31 = androidx.room.util.k.d(eVarD0, "subjectName");
            int iD32 = androidx.room.util.k.d(eVarD0, "lastPlayTimeStamp");
            int iD33 = androidx.room.util.k.d(eVarD0, "fileType");
            int iD34 = androidx.room.util.k.d(eVarD0, "totalEpisode");
            int iD35 = androidx.room.util.k.d(eVarD0, "uploadBy");
            int iD36 = androidx.room.util.k.d(eVarD0, "sourceUrl");
            int iD37 = androidx.room.util.k.d(eVarD0, "urlCreateAt");
            int iD38 = androidx.room.util.k.d(eVarD0, "subtitleSelectId");
            int iD39 = androidx.room.util.k.d(eVarD0, "taskId");
            int iD40 = androidx.room.util.k.d(eVarD0, "sessionTime");
            int iD41 = androidx.room.util.k.d(eVarD0, "reportStatus");
            int iD42 = androidx.room.util.k.d(eVarD0, "downloadHeaderSize");
            int iD43 = androidx.room.util.k.d(eVarD0, "rootPath");
            int iD44 = androidx.room.util.k.d(eVarD0, "rootPathType");
            int iD45 = androidx.room.util.k.d(eVarD0, "thumbnail");
            int iD46 = androidx.room.util.k.d(eVarD0, "averageHueLight");
            int iD47 = androidx.room.util.k.d(eVarD0, "isTransferFailed");
            int iD48 = androidx.room.util.k.d(eVarD0, "isClosedTransferFailed");
            int iD49 = androidx.room.util.k.d(eVarD0, "subjectType");
            int iD50 = androidx.room.util.k.d(eVarD0, "genre");
            int iD51 = androidx.room.util.k.d(eVarD0, "subjectDurationSeconds");
            int iD52 = androidx.room.util.k.d(eVarD0, "currentDubLanName");
            int iD53 = androidx.room.util.k.d(eVarD0, "currentDubLanCode");
            int iD54 = androidx.room.util.k.d(eVarD0, "ops");
            int iD55 = androidx.room.util.k.d(eVarD0, "restrictLevel");
            int iD56 = androidx.room.util.k.d(eVarD0, "releaseDate");
            int iD57 = androidx.room.util.k.d(eVarD0, "countryName");
            int iD58 = androidx.room.util.k.d(eVarD0, "seNum");
            int iD59 = androidx.room.util.k.d(eVarD0, "subtitles");
            int iD60 = androidx.room.util.k.d(eVarD0, "imdbRate");
            int iD61 = androidx.room.util.k.d(eVarD0, "lastAdStartTimeStamp");
            int iD62 = androidx.room.util.k.d(eVarD0, "lastAdEndTimeStamp");
            int iD63 = androidx.room.util.k.d(eVarD0, "subtitleIdType");
            int iD64 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionId");
            int iD65 = androidx.room.util.k.d(eVarD0, "ugcVideoId");
            int iD66 = androidx.room.util.k.d(eVarD0, "ugcVideoName");
            int iD67 = androidx.room.util.k.d(eVarD0, "ugcVideoCollectionName");
            int iD68 = androidx.room.util.k.d(eVarD0, "ugcVideoPosition");
            int iD69 = androidx.room.util.k.d(eVarD0, "ugcVideoType");
            int iD70 = androidx.room.util.k.d(eVarD0, "ugcCateLev1Id");
            int iD71 = androidx.room.util.k.d(eVarD0, "ugcCateLev2Id");
            int iD72 = androidx.room.util.k.d(eVarD0, "ugcCateLev3Id");
            int iD73 = androidx.room.util.k.d(eVarD0, "ugcCateLev4Id");
            int iD74 = androidx.room.util.k.d(eVarD0, "ugcVideoTrackId");
            int iD75 = androidx.room.util.k.d(eVarD0, "ugcVideoParentVideoId");
            int iD76 = androidx.room.util.k.d(eVarD0, "ugcVideoParentTrackId");
            int iD77 = androidx.room.util.k.d(eVarD0, "ugcVideoEpTitle");
            int iD78 = androidx.room.util.k.d(eVarD0, "ugcVideoIsVertical");
            int iD79 = androidx.room.util.k.d(eVarD0, "originData");
            int iD80 = androidx.room.util.k.d(eVarD0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarD0.A0()) {
                downloadBean = new DownloadBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : Long.valueOf(eVarD0.getLong(iD5)), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), eVarD0.isNull(iD10) ? null : Long.valueOf(eVarD0.getLong(iD10)), eVarD0.getLong(iD11), (int) eVarD0.getLong(iD12), (int) eVarD0.getLong(iD13), (int) eVarD0.getLong(iD14), eVarD0.getLong(iD15), eVarD0.getLong(iD16), (int) eVarD0.getLong(iD17), (int) eVarD0.getLong(iD18), (int) eVarD0.getLong(iD19), (int) eVarD0.getLong(iD20), (int) eVarD0.getLong(iD21), (int) eVarD0.getLong(iD22), (int) eVarD0.getLong(iD23), (int) eVarD0.getLong(iD24), (int) eVarD0.getLong(iD25), (int) eVarD0.getLong(iD26), (int) eVarD0.getLong(iD27), eVarD0.isNull(iD28) ? null : eVarD0.n0(iD28), eVarD0.isNull(r28) ? null : eVarD0.n0(iD29), eVarD0.isNull(r29) ? null : eVarD0.n0(iD30), eVarD0.isNull(r30) ? null : eVarD0.n0(iD31), eVarD0.getLong(iD32), (int) eVarD0.getLong(iD33), (int) eVarD0.getLong(iD34), eVarD0.isNull(iD35) ? null : eVarD0.n0(iD35), eVarD0.isNull(r35) ? null : eVarD0.n0(iD36), eVarD0.getLong(iD37), eVarD0.isNull(iD38) ? null : eVarD0.n0(iD38), eVarD0.isNull(r38) ? null : eVarD0.n0(iD39), eVarD0.getLong(iD40), (int) eVarD0.getLong(iD41), eVarD0.getLong(iD42), eVarD0.isNull(iD43) ? null : eVarD0.n0(iD43), (int) eVarD0.getLong(iD44), eVarD0.isNull(iD45) ? null : eVarD0.n0(iD45), eVarD0.isNull(r45) ? null : eVarD0.n0(iD46), ((int) eVarD0.getLong(iD47)) != 0, ((int) eVarD0.getLong(iD48)) != 0, (int) eVarD0.getLong(iD49), eVarD0.isNull(iD50) ? null : eVarD0.n0(iD50), eVarD0.isNull(r50) ? null : Integer.valueOf((int) eVarD0.getLong(iD51)), eVarD0.isNull(r51) ? null : eVarD0.n0(iD52), eVarD0.isNull(r52) ? null : eVarD0.n0(iD53), eVarD0.isNull(r53) ? null : eVarD0.n0(iD54), eVarD0.isNull(r54) ? null : eVarD0.n0(iD55), eVarD0.isNull(r55) ? null : eVarD0.n0(iD56), eVarD0.isNull(r56) ? null : eVarD0.n0(iD57), eVarD0.isNull(r57) ? null : Integer.valueOf((int) eVarD0.getLong(iD58)), eVarD0.isNull(r58) ? null : eVarD0.n0(iD59), eVarD0.isNull(r59) ? null : eVarD0.n0(iD60), eVarD0.isNull(r60) ? null : Long.valueOf(eVarD0.getLong(iD61)), eVarD0.isNull(r61) ? null : Long.valueOf(eVarD0.getLong(iD62)), eVarD0.isNull(r62) ? null : eVarD0.n0(iD63), eVarD0.isNull(r63) ? null : eVarD0.n0(iD64), eVarD0.isNull(r64) ? null : eVarD0.n0(iD65), eVarD0.isNull(r65) ? null : eVarD0.n0(iD66), eVarD0.isNull(r66) ? null : eVarD0.n0(iD67), eVarD0.isNull(r67) ? null : Integer.valueOf((int) eVarD0.getLong(iD68)), eVarD0.isNull(r68) ? null : eVarD0.n0(iD69), eVarD0.isNull(r69) ? null : Integer.valueOf((int) eVarD0.getLong(iD70)), eVarD0.isNull(r70) ? null : Integer.valueOf((int) eVarD0.getLong(iD71)), eVarD0.isNull(r71) ? null : Integer.valueOf((int) eVarD0.getLong(iD72)), eVarD0.isNull(r72) ? null : Integer.valueOf((int) eVarD0.getLong(iD73)), eVarD0.isNull(r73) ? null : eVarD0.n0(iD74), eVarD0.isNull(r74) ? null : eVarD0.n0(iD75), eVarD0.isNull(r75) ? null : eVarD0.n0(iD76), eVarD0.isNull(r76) ? null : eVarD0.n0(iD77), ((int) eVarD0.getLong(iD78)) != 0, eVarD0.isNull(r78) ? null : eVarD0.n0(iD79), eVarD0.isNull(iD80) ? null : eVarD0.n0(iD80));
            }
            eVarD0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    @Override // lj.c
    public Object A(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.O0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object B(final String str, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.w0(str, i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object C(Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.G0((z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object D(final String str, final long j11, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.S0(j11, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object E(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.x0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object F(final String str, final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.L0(str, i11, i12, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object G(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.H0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object H(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.y0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object I(final String str, final String str2, final String str3, final String str4, final Integer num, final String str5, final String str6, final String str7, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.W0(str2, str3, str4, str6, num, str5, str7, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object b(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.X0(str2, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object c(final String str, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.V0(i11, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.s0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object e(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.J0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object f(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.v0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object g(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.K0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object h(final String str, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.z0(str, i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object i(Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.D0((z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object j(final String str, final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.Y0(i11, i12, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object k(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.P0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object l(Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.N0((z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object m(Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.F0((z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object n(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.t0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object o(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.r0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object p(Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.M0((z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object q(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.u0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object r(final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.I0(i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object s(Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.A0((z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object t(final String str, final long j11, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.U0(j11, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object u(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.C0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object v(final DownloadBean downloadBean, Continuation continuation) {
        downloadBean.getClass();
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68888a.Q0(downloadBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object w(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.E0(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object x(final String str, final long j11, Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.k0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.T0(j11, str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object y(Continuation continuation) {
        return androidx.room.util.b.f(this.f68907a, true, false, new Function1() { // from class: lj.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return l0.B0((z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.c
    public Object z(final DownloadBean downloadBean, Continuation continuation) {
        downloadBean.getClass();
        return androidx.room.util.b.f(this.f68907a, false, true, new Function1() { // from class: lj.i0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68900a.R0(downloadBean, (z3.b) obj);
            }
        }, continuation);
    }
}
