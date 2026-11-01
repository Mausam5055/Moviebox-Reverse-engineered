package mu;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import androidx.room.util.k;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
public final class i implements mu.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f70006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f70007b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f70008c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.room.e f70009d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `st_download_table` (`id`,`resourceStreamType`,`resourceId`,`lan`,`lanName`,`url`,`size`,`delay`,`downloads`,`type`,`postId`,`subtitleName`,`subjectId`,`ep`,`se`,`resolution`,`subjectName`,`status`,`fileCharsetName`,`path`,`zipPath`,`taskId`,`failCount`,`ugcVideoId`,`ugcVideoCollectionId`,`ops`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, SubtitleDownloadTable subtitleDownloadTable) {
            if (subtitleDownloadTable.getId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, subtitleDownloadTable.getId());
            }
            eVar.c(2, subtitleDownloadTable.getResourceStreamType());
            if (subtitleDownloadTable.getResourceId() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, subtitleDownloadTable.getResourceId());
            }
            if (subtitleDownloadTable.getLan() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, subtitleDownloadTable.getLan());
            }
            if (subtitleDownloadTable.getLanName() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, subtitleDownloadTable.getLanName());
            }
            if (subtitleDownloadTable.getUrl() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, subtitleDownloadTable.getUrl());
            }
            if (subtitleDownloadTable.getSize() == null) {
                eVar.g(7);
            } else {
                eVar.c(7, subtitleDownloadTable.getSize().longValue());
            }
            if (subtitleDownloadTable.getDelay() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, subtitleDownloadTable.getDelay().longValue());
            }
            if (subtitleDownloadTable.getDownloads() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, subtitleDownloadTable.getDownloads().intValue());
            }
            eVar.c(10, subtitleDownloadTable.getType());
            if (subtitleDownloadTable.getPostId() == null) {
                eVar.g(11);
            } else {
                eVar.j(11, subtitleDownloadTable.getPostId());
            }
            if (subtitleDownloadTable.getSubtitleName() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, subtitleDownloadTable.getSubtitleName());
            }
            if (subtitleDownloadTable.getSubjectId() == null) {
                eVar.g(13);
            } else {
                eVar.j(13, subtitleDownloadTable.getSubjectId());
            }
            eVar.c(14, subtitleDownloadTable.getEp());
            eVar.c(15, subtitleDownloadTable.getSe());
            eVar.c(16, subtitleDownloadTable.getResolution());
            if (subtitleDownloadTable.getSubjectName() == null) {
                eVar.g(17);
            } else {
                eVar.j(17, subtitleDownloadTable.getSubjectName());
            }
            eVar.c(18, subtitleDownloadTable.getStatus());
            if (subtitleDownloadTable.getFileCharsetName() == null) {
                eVar.g(19);
            } else {
                eVar.j(19, subtitleDownloadTable.getFileCharsetName());
            }
            if (subtitleDownloadTable.getPath() == null) {
                eVar.g(20);
            } else {
                eVar.j(20, subtitleDownloadTable.getPath());
            }
            if (subtitleDownloadTable.getZipPath() == null) {
                eVar.g(21);
            } else {
                eVar.j(21, subtitleDownloadTable.getZipPath());
            }
            if (subtitleDownloadTable.getTaskId() == null) {
                eVar.g(22);
            } else {
                eVar.j(22, subtitleDownloadTable.getTaskId());
            }
            eVar.c(23, subtitleDownloadTable.getFailCount());
            if (subtitleDownloadTable.getUgcVideoId() == null) {
                eVar.g(24);
            } else {
                eVar.j(24, subtitleDownloadTable.getUgcVideoId());
            }
            if (subtitleDownloadTable.getUgcVideoCollectionId() == null) {
                eVar.g(25);
            } else {
                eVar.j(25, subtitleDownloadTable.getUgcVideoCollectionId());
            }
            if (subtitleDownloadTable.getOps() == null) {
                eVar.g(26);
            } else {
                eVar.j(26, subtitleDownloadTable.getOps());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "DELETE FROM `st_download_table` WHERE `id` = ? AND `resourceStreamType` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, SubtitleDownloadTable subtitleDownloadTable) {
            if (subtitleDownloadTable.getId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, subtitleDownloadTable.getId());
            }
            eVar.c(2, subtitleDownloadTable.getResourceStreamType());
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `st_download_table` SET `id` = ?,`resourceStreamType` = ?,`resourceId` = ?,`lan` = ?,`lanName` = ?,`url` = ?,`size` = ?,`delay` = ?,`downloads` = ?,`type` = ?,`postId` = ?,`subtitleName` = ?,`subjectId` = ?,`ep` = ?,`se` = ?,`resolution` = ?,`subjectName` = ?,`status` = ?,`fileCharsetName` = ?,`path` = ?,`zipPath` = ?,`taskId` = ?,`failCount` = ?,`ugcVideoId` = ?,`ugcVideoCollectionId` = ?,`ops` = ? WHERE `id` = ? AND `resourceStreamType` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, SubtitleDownloadTable subtitleDownloadTable) {
            if (subtitleDownloadTable.getId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, subtitleDownloadTable.getId());
            }
            eVar.c(2, subtitleDownloadTable.getResourceStreamType());
            if (subtitleDownloadTable.getResourceId() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, subtitleDownloadTable.getResourceId());
            }
            if (subtitleDownloadTable.getLan() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, subtitleDownloadTable.getLan());
            }
            if (subtitleDownloadTable.getLanName() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, subtitleDownloadTable.getLanName());
            }
            if (subtitleDownloadTable.getUrl() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, subtitleDownloadTable.getUrl());
            }
            if (subtitleDownloadTable.getSize() == null) {
                eVar.g(7);
            } else {
                eVar.c(7, subtitleDownloadTable.getSize().longValue());
            }
            if (subtitleDownloadTable.getDelay() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, subtitleDownloadTable.getDelay().longValue());
            }
            if (subtitleDownloadTable.getDownloads() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, subtitleDownloadTable.getDownloads().intValue());
            }
            eVar.c(10, subtitleDownloadTable.getType());
            if (subtitleDownloadTable.getPostId() == null) {
                eVar.g(11);
            } else {
                eVar.j(11, subtitleDownloadTable.getPostId());
            }
            if (subtitleDownloadTable.getSubtitleName() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, subtitleDownloadTable.getSubtitleName());
            }
            if (subtitleDownloadTable.getSubjectId() == null) {
                eVar.g(13);
            } else {
                eVar.j(13, subtitleDownloadTable.getSubjectId());
            }
            eVar.c(14, subtitleDownloadTable.getEp());
            eVar.c(15, subtitleDownloadTable.getSe());
            eVar.c(16, subtitleDownloadTable.getResolution());
            if (subtitleDownloadTable.getSubjectName() == null) {
                eVar.g(17);
            } else {
                eVar.j(17, subtitleDownloadTable.getSubjectName());
            }
            eVar.c(18, subtitleDownloadTable.getStatus());
            if (subtitleDownloadTable.getFileCharsetName() == null) {
                eVar.g(19);
            } else {
                eVar.j(19, subtitleDownloadTable.getFileCharsetName());
            }
            if (subtitleDownloadTable.getPath() == null) {
                eVar.g(20);
            } else {
                eVar.j(20, subtitleDownloadTable.getPath());
            }
            if (subtitleDownloadTable.getZipPath() == null) {
                eVar.g(21);
            } else {
                eVar.j(21, subtitleDownloadTable.getZipPath());
            }
            if (subtitleDownloadTable.getTaskId() == null) {
                eVar.g(22);
            } else {
                eVar.j(22, subtitleDownloadTable.getTaskId());
            }
            eVar.c(23, subtitleDownloadTable.getFailCount());
            if (subtitleDownloadTable.getUgcVideoId() == null) {
                eVar.g(24);
            } else {
                eVar.j(24, subtitleDownloadTable.getUgcVideoId());
            }
            if (subtitleDownloadTable.getUgcVideoCollectionId() == null) {
                eVar.g(25);
            } else {
                eVar.j(25, subtitleDownloadTable.getUgcVideoCollectionId());
            }
            if (subtitleDownloadTable.getOps() == null) {
                eVar.g(26);
            } else {
                eVar.j(26, subtitleDownloadTable.getOps());
            }
            if (subtitleDownloadTable.getId() == null) {
                eVar.g(27);
            } else {
                eVar.j(27, subtitleDownloadTable.getId());
            }
            eVar.c(28, subtitleDownloadTable.getResourceStreamType());
        }
    }

    public i(RoomDatabase roomDatabase) {
        this.f70006a = roomDatabase;
    }

    public static List o() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object p(SubtitleDownloadTable subtitleDownloadTable, z3.b bVar) throws Exception {
        this.f70008c.c(bVar, subtitleDownloadTable);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit q(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM st_download_table WHERE resourceId =?");
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
    public static /* synthetic */ List r(int i11, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM st_download_table WHERE status = ?");
        try {
            eVarD0.c(1, i11);
            int iD = k.d(eVarD0, "id");
            int iD2 = k.d(eVarD0, "resourceStreamType");
            int iD3 = k.d(eVarD0, "resourceId");
            int iD4 = k.d(eVarD0, "lan");
            int iD5 = k.d(eVarD0, "lanName");
            int iD6 = k.d(eVarD0, "url");
            int iD7 = k.d(eVarD0, "size");
            int iD8 = k.d(eVarD0, "delay");
            int iD9 = k.d(eVarD0, "downloads");
            int iD10 = k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD11 = k.d(eVarD0, "postId");
            int iD12 = k.d(eVarD0, "subtitleName");
            int iD13 = k.d(eVarD0, "subjectId");
            int iD14 = k.d(eVarD0, "ep");
            int iD15 = k.d(eVarD0, "se");
            int iD16 = k.d(eVarD0, "resolution");
            int iD17 = k.d(eVarD0, "subjectName");
            int iD18 = k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD19 = k.d(eVarD0, "fileCharsetName");
            int iD20 = k.d(eVarD0, "path");
            int iD21 = k.d(eVarD0, "zipPath");
            int iD22 = k.d(eVarD0, "taskId");
            int iD23 = k.d(eVarD0, "failCount");
            int iD24 = k.d(eVarD0, "ugcVideoId");
            int iD25 = k.d(eVarD0, "ugcVideoCollectionId");
            int iD26 = k.d(eVarD0, "ops");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                int i12 = (int) eVarD0.getLong(iD2);
                String strN1 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN2 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN3 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                Long lValueOf = eVarD0.isNull(iD7) ? null : Long.valueOf(eVarD0.getLong(iD7));
                Long lValueOf2 = eVarD0.isNull(iD8) ? null : Long.valueOf(eVarD0.getLong(iD8));
                Integer numValueOf = eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9));
                int i13 = (int) eVarD0.getLong(iD10);
                String strN5 = eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11);
                String strN6 = eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12);
                String strN7 = eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13);
                int i14 = iD4;
                int i15 = (int) eVarD0.getLong(iD14);
                int i16 = iD15;
                int i17 = iD6;
                int i18 = iD7;
                int i19 = (int) eVarD0.getLong(i16);
                int i20 = iD16;
                int i21 = iD8;
                int i22 = iD9;
                int i23 = (int) eVarD0.getLong(i20);
                int i24 = iD17;
                String strN8 = eVarD0.isNull(i24) ? null : eVarD0.n0(i24);
                int i25 = iD10;
                int i26 = (int) eVarD0.getLong(iD18);
                int i27 = iD19;
                String strN9 = eVarD0.isNull(i27) ? null : eVarD0.n0(i27);
                String strN10 = eVarD0.isNull(iD20) ? null : eVarD0.n0(iD20);
                String strN11 = eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21);
                String strN12 = eVarD0.isNull(iD22) ? null : eVarD0.n0(iD22);
                int i28 = iD11;
                int i29 = (int) eVarD0.getLong(iD23);
                int i30 = iD24;
                String strN13 = eVarD0.isNull(i30) ? null : eVarD0.n0(i30);
                String strN14 = eVarD0.isNull(iD25) ? null : eVarD0.n0(iD25);
                String strN15 = eVarD0.isNull(iD26) ? null : eVarD0.n0(iD26);
                iD26 = iD26;
                SubtitleDownloadTable subtitleDownloadTable = new SubtitleDownloadTable(strN0, i12, strN1, strN2, strN3, strN4, lValueOf, lValueOf2, numValueOf, i13, strN5, strN6, strN7, i15, i19, i23, strN8, i26, strN9, strN10, strN11, strN12, i29, strN13, strN14, strN15);
                ArrayList arrayList2 = arrayList;
                arrayList2.add(subtitleDownloadTable);
                iD6 = i17;
                iD8 = i21;
                iD14 = iD14;
                iD15 = i16;
                iD16 = i20;
                iD = iD;
                iD10 = i25;
                iD18 = iD18;
                iD4 = i14;
                iD3 = iD3;
                iD5 = iD5;
                iD7 = i18;
                iD9 = i22;
                iD17 = i24;
                iD19 = i27;
                arrayList = arrayList2;
                iD2 = iD2;
                iD24 = i30;
                iD11 = i28;
                iD23 = iD23;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List s(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM st_download_table WHERE resourceId = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = k.d(eVarD0, "id");
            int iD2 = k.d(eVarD0, "resourceStreamType");
            int iD3 = k.d(eVarD0, "resourceId");
            int iD4 = k.d(eVarD0, "lan");
            int iD5 = k.d(eVarD0, "lanName");
            int iD6 = k.d(eVarD0, "url");
            int iD7 = k.d(eVarD0, "size");
            int iD8 = k.d(eVarD0, "delay");
            int iD9 = k.d(eVarD0, "downloads");
            int iD10 = k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD11 = k.d(eVarD0, "postId");
            int iD12 = k.d(eVarD0, "subtitleName");
            int iD13 = k.d(eVarD0, "subjectId");
            int iD14 = k.d(eVarD0, "ep");
            int iD15 = k.d(eVarD0, "se");
            int iD16 = k.d(eVarD0, "resolution");
            int iD17 = k.d(eVarD0, "subjectName");
            int iD18 = k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD19 = k.d(eVarD0, "fileCharsetName");
            int iD20 = k.d(eVarD0, "path");
            int iD21 = k.d(eVarD0, "zipPath");
            int iD22 = k.d(eVarD0, "taskId");
            int iD23 = k.d(eVarD0, "failCount");
            int iD24 = k.d(eVarD0, "ugcVideoId");
            int iD25 = k.d(eVarD0, "ugcVideoCollectionId");
            int iD26 = k.d(eVarD0, "ops");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                int i11 = (int) eVarD0.getLong(iD2);
                String strN1 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN2 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN3 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN4 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                Long lValueOf = eVarD0.isNull(iD7) ? null : Long.valueOf(eVarD0.getLong(iD7));
                Long lValueOf2 = eVarD0.isNull(iD8) ? null : Long.valueOf(eVarD0.getLong(iD8));
                Integer numValueOf = eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9));
                int i12 = (int) eVarD0.getLong(iD10);
                String strN5 = eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11);
                String strN6 = eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12);
                String strN7 = eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13);
                int i13 = iD4;
                int i14 = (int) eVarD0.getLong(iD14);
                int i15 = iD15;
                int i16 = iD6;
                int i17 = iD7;
                int i18 = (int) eVarD0.getLong(i15);
                int i19 = iD16;
                int i20 = iD8;
                int i21 = iD9;
                int i22 = (int) eVarD0.getLong(i19);
                int i23 = iD17;
                String strN8 = eVarD0.isNull(i23) ? null : eVarD0.n0(i23);
                int i24 = iD10;
                int i25 = (int) eVarD0.getLong(iD18);
                int i26 = iD19;
                String strN9 = eVarD0.isNull(i26) ? null : eVarD0.n0(i26);
                String strN10 = eVarD0.isNull(iD20) ? null : eVarD0.n0(iD20);
                String strN11 = eVarD0.isNull(iD21) ? null : eVarD0.n0(iD21);
                String strN12 = eVarD0.isNull(iD22) ? null : eVarD0.n0(iD22);
                int i27 = iD11;
                int i28 = (int) eVarD0.getLong(iD23);
                int i29 = iD24;
                String strN13 = eVarD0.isNull(i29) ? null : eVarD0.n0(i29);
                String strN14 = eVarD0.isNull(iD25) ? null : eVarD0.n0(iD25);
                String strN15 = eVarD0.isNull(iD26) ? null : eVarD0.n0(iD26);
                iD26 = iD26;
                SubtitleDownloadTable subtitleDownloadTable = new SubtitleDownloadTable(strN0, i11, strN1, strN2, strN3, strN4, lValueOf, lValueOf2, numValueOf, i12, strN5, strN6, strN7, i14, i18, i22, strN8, i25, strN9, strN10, strN11, strN12, i28, strN13, strN14, strN15);
                ArrayList arrayList2 = arrayList;
                arrayList2.add(subtitleDownloadTable);
                iD6 = i16;
                iD8 = i20;
                iD14 = iD14;
                iD15 = i15;
                iD16 = i19;
                iD = iD;
                iD10 = i24;
                iD18 = iD18;
                iD4 = i13;
                iD3 = iD3;
                iD5 = iD5;
                iD7 = i17;
                iD9 = i21;
                iD17 = i23;
                iD19 = i26;
                arrayList = arrayList2;
                iD2 = iD2;
                iD24 = i29;
                iD11 = i27;
                iD23 = iD23;
            }
            ArrayList arrayList3 = arrayList;
            eVarD0.close();
            return arrayList3;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SubtitleDownloadTable t(String str, int i11, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM st_download_table WHERE id = ? AND resourceStreamType = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.c(2, i11);
            int iD = k.d(eVarD0, "id");
            int iD2 = k.d(eVarD0, "resourceStreamType");
            int iD3 = k.d(eVarD0, "resourceId");
            int iD4 = k.d(eVarD0, "lan");
            int iD5 = k.d(eVarD0, "lanName");
            int iD6 = k.d(eVarD0, "url");
            int iD7 = k.d(eVarD0, "size");
            int iD8 = k.d(eVarD0, "delay");
            int iD9 = k.d(eVarD0, "downloads");
            int iD10 = k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD11 = k.d(eVarD0, "postId");
            int iD12 = k.d(eVarD0, "subtitleName");
            int iD13 = k.d(eVarD0, "subjectId");
            int iD14 = k.d(eVarD0, "ep");
            int iD15 = k.d(eVarD0, "se");
            int iD16 = k.d(eVarD0, "resolution");
            int iD17 = k.d(eVarD0, "subjectName");
            int iD18 = k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD19 = k.d(eVarD0, "fileCharsetName");
            int iD20 = k.d(eVarD0, "path");
            int iD21 = k.d(eVarD0, "zipPath");
            int iD22 = k.d(eVarD0, "taskId");
            int iD23 = k.d(eVarD0, "failCount");
            int iD24 = k.d(eVarD0, "ugcVideoId");
            int iD25 = k.d(eVarD0, "ugcVideoCollectionId");
            int iD26 = k.d(eVarD0, "ops");
            SubtitleDownloadTable subtitleDownloadTable = null;
            if (eVarD0.A0()) {
                subtitleDownloadTable = new SubtitleDownloadTable(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), (int) eVarD0.getLong(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), eVarD0.isNull(iD7) ? null : Long.valueOf(eVarD0.getLong(iD7)), eVarD0.isNull(iD8) ? null : Long.valueOf(eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Integer.valueOf((int) eVarD0.getLong(iD9)), (int) eVarD0.getLong(iD10), eVarD0.isNull(iD11) ? null : eVarD0.n0(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13), (int) eVarD0.getLong(iD14), (int) eVarD0.getLong(iD15), (int) eVarD0.getLong(iD16), eVarD0.isNull(iD17) ? null : eVarD0.n0(iD17), (int) eVarD0.getLong(iD18), eVarD0.isNull(iD19) ? null : eVarD0.n0(iD19), eVarD0.isNull(r18) ? null : eVarD0.n0(iD20), eVarD0.isNull(r19) ? null : eVarD0.n0(iD21), eVarD0.isNull(r20) ? null : eVarD0.n0(iD22), (int) eVarD0.getLong(iD23), eVarD0.isNull(iD24) ? null : eVarD0.n0(iD24), eVarD0.isNull(r23) ? null : eVarD0.n0(iD25), eVarD0.isNull(iD26) ? null : eVarD0.n0(iD26));
            }
            eVarD0.close();
            return subtitleDownloadTable;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit u(SubtitleDownloadTable subtitleDownloadTable, z3.b bVar) throws Exception {
        this.f70007b.d(bVar, subtitleDownloadTable);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object v(SubtitleDownloadTable subtitleDownloadTable, z3.b bVar) throws Exception {
        this.f70009d.c(bVar, subtitleDownloadTable);
        return null;
    }

    @Override // mu.a
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f70006a, true, false, new Function1() { // from class: mu.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.s(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mu.a
    public Object b(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f70006a, false, true, new Function1() { // from class: mu.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.q(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mu.a
    public SubtitleDownloadTable c(final String str, final int i11) {
        return (SubtitleDownloadTable) androidx.room.util.b.d(this.f70006a, true, false, new Function1() { // from class: mu.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.t(str, i11, (z3.b) obj);
            }
        });
    }

    @Override // mu.a
    public Object d(final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f70006a, true, false, new Function1() { // from class: mu.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.r(i11, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mu.a
    public Object e(final SubtitleDownloadTable subtitleDownloadTable, Continuation continuation) {
        subtitleDownloadTable.getClass();
        return androidx.room.util.b.f(this.f70006a, false, true, new Function1() { // from class: mu.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f69996a.u(subtitleDownloadTable, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // mu.a
    public void f(final SubtitleDownloadTable subtitleDownloadTable) {
        subtitleDownloadTable.getClass();
        androidx.room.util.b.d(this.f70006a, false, true, new Function1() { // from class: mu.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f70001a.v(subtitleDownloadTable, (z3.b) obj);
            }
        });
    }

    @Override // mu.a
    public void g(final SubtitleDownloadTable subtitleDownloadTable) {
        subtitleDownloadTable.getClass();
        androidx.room.util.b.d(this.f70006a, false, true, new Function1() { // from class: mu.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f70003a.p(subtitleDownloadTable, (z3.b) obj);
            }
        });
    }
}
