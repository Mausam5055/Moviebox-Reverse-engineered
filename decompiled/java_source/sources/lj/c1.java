package lj;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.baselib.db.download.SubtitleBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class c1 implements v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f68873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f68874b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f68875c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `download_subtitle_table` (`resourceId`,`postId`,`url`,`path`,`lan`,`lanName`,`subtitleName`,`size`,`delayDuration`,`status`,`type`,`fileCharsetName`,`subjectId`,`ep`,`se`,`resolution`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, SubtitleBean subtitleBean) {
            if (subtitleBean.getResourceId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, subtitleBean.getResourceId());
            }
            if (subtitleBean.getPostId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, subtitleBean.getPostId());
            }
            if (subtitleBean.getUrl() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, subtitleBean.getUrl());
            }
            if (subtitleBean.getPath() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, subtitleBean.getPath());
            }
            if (subtitleBean.getLan() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, subtitleBean.getLan());
            }
            if (subtitleBean.getLanName() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, subtitleBean.getLanName());
            }
            if (subtitleBean.getSubtitleName() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, subtitleBean.getSubtitleName());
            }
            if (subtitleBean.getSize() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, subtitleBean.getSize().longValue());
            }
            if (subtitleBean.getDelayDuration() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, subtitleBean.getDelayDuration().longValue());
            }
            eVar.c(10, subtitleBean.getStatus());
            eVar.c(11, subtitleBean.getType());
            if (subtitleBean.getFileCharsetName() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, subtitleBean.getFileCharsetName());
            }
            if (subtitleBean.getSubjectId() == null) {
                eVar.g(13);
            } else {
                eVar.j(13, subtitleBean.getSubjectId());
            }
            eVar.c(14, subtitleBean.getEp());
            eVar.c(15, subtitleBean.getSe());
            eVar.c(16, subtitleBean.getResolution());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `download_subtitle_table` SET `resourceId` = ?,`postId` = ?,`url` = ?,`path` = ?,`lan` = ?,`lanName` = ?,`subtitleName` = ?,`size` = ?,`delayDuration` = ?,`status` = ?,`type` = ?,`fileCharsetName` = ?,`subjectId` = ?,`ep` = ?,`se` = ?,`resolution` = ? WHERE `resourceId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, SubtitleBean subtitleBean) {
            if (subtitleBean.getResourceId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, subtitleBean.getResourceId());
            }
            if (subtitleBean.getPostId() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, subtitleBean.getPostId());
            }
            if (subtitleBean.getUrl() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, subtitleBean.getUrl());
            }
            if (subtitleBean.getPath() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, subtitleBean.getPath());
            }
            if (subtitleBean.getLan() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, subtitleBean.getLan());
            }
            if (subtitleBean.getLanName() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, subtitleBean.getLanName());
            }
            if (subtitleBean.getSubtitleName() == null) {
                eVar.g(7);
            } else {
                eVar.j(7, subtitleBean.getSubtitleName());
            }
            if (subtitleBean.getSize() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, subtitleBean.getSize().longValue());
            }
            if (subtitleBean.getDelayDuration() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, subtitleBean.getDelayDuration().longValue());
            }
            eVar.c(10, subtitleBean.getStatus());
            eVar.c(11, subtitleBean.getType());
            if (subtitleBean.getFileCharsetName() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, subtitleBean.getFileCharsetName());
            }
            if (subtitleBean.getSubjectId() == null) {
                eVar.g(13);
            } else {
                eVar.j(13, subtitleBean.getSubjectId());
            }
            eVar.c(14, subtitleBean.getEp());
            eVar.c(15, subtitleBean.getSe());
            eVar.c(16, subtitleBean.getResolution());
            if (subtitleBean.getResourceId() == null) {
                eVar.g(17);
            } else {
                eVar.j(17, subtitleBean.getResourceId());
            }
        }
    }

    public c1(RoomDatabase roomDatabase) {
        this.f68873a = roomDatabase;
    }

    public static List m() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit n(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM DOWNLOAD_SUBTITLE_TABLE WHERE postId=?");
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
    public static /* synthetic */ List o(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_SUBTITLE_TABLE");
        try {
            int iD = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD2 = androidx.room.util.k.d(eVarD0, "postId");
            int iD3 = androidx.room.util.k.d(eVarD0, "url");
            int iD4 = androidx.room.util.k.d(eVarD0, "path");
            int iD5 = androidx.room.util.k.d(eVarD0, "lan");
            int iD6 = androidx.room.util.k.d(eVarD0, "lanName");
            int iD7 = androidx.room.util.k.d(eVarD0, "subtitleName");
            int iD8 = androidx.room.util.k.d(eVarD0, "size");
            int iD9 = androidx.room.util.k.d(eVarD0, "delayDuration");
            int iD10 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD11 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD12 = androidx.room.util.k.d(eVarD0, "fileCharsetName");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD14 = androidx.room.util.k.d(eVarD0, "ep");
            int iD15 = androidx.room.util.k.d(eVarD0, "se");
            int iD16 = androidx.room.util.k.d(eVarD0, "resolution");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN4 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN5 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN6 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                int i11 = iD4;
                int i12 = iD5;
                int i13 = iD15;
                int i14 = iD6;
                int i15 = iD7;
                int i16 = iD9;
                int i17 = iD16;
                int i18 = iD8;
                arrayList.add(new SubtitleBean(strN0, strN1, strN2, strN3, strN4, strN5, strN6, eVarD0.isNull(iD8) ? null : Long.valueOf(eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), (int) eVarD0.getLong(iD10), (int) eVarD0.getLong(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13), (int) eVarD0.getLong(iD14), (int) eVarD0.getLong(i13), (int) eVarD0.getLong(i17)));
                iD6 = i14;
                iD15 = i13;
                iD8 = i18;
                iD2 = iD2;
                iD5 = i12;
                iD3 = iD3;
                iD4 = i11;
                iD9 = i16;
                iD16 = i17;
                iD7 = i15;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List p(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE postId = ? ");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD2 = androidx.room.util.k.d(eVarD0, "postId");
            int iD3 = androidx.room.util.k.d(eVarD0, "url");
            int iD4 = androidx.room.util.k.d(eVarD0, "path");
            int iD5 = androidx.room.util.k.d(eVarD0, "lan");
            int iD6 = androidx.room.util.k.d(eVarD0, "lanName");
            int iD7 = androidx.room.util.k.d(eVarD0, "subtitleName");
            int iD8 = androidx.room.util.k.d(eVarD0, "size");
            int iD9 = androidx.room.util.k.d(eVarD0, "delayDuration");
            int iD10 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD11 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD12 = androidx.room.util.k.d(eVarD0, "fileCharsetName");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD14 = androidx.room.util.k.d(eVarD0, "ep");
            int iD15 = androidx.room.util.k.d(eVarD0, "se");
            int iD16 = androidx.room.util.k.d(eVarD0, "resolution");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN4 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN5 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN6 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                int i11 = iD4;
                int i12 = iD5;
                int i13 = iD15;
                int i14 = iD6;
                int i15 = iD7;
                int i16 = iD16;
                int i17 = iD8;
                int i18 = iD9;
                arrayList.add(new SubtitleBean(strN0, strN1, strN2, strN3, strN4, strN5, strN6, eVarD0.isNull(iD8) ? null : Long.valueOf(eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), (int) eVarD0.getLong(iD10), (int) eVarD0.getLong(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13), (int) eVarD0.getLong(iD14), (int) eVarD0.getLong(i13), (int) eVarD0.getLong(i16)));
                iD6 = i14;
                iD8 = i17;
                iD15 = i13;
                iD16 = i16;
                iD2 = iD2;
                iD5 = i12;
                iD3 = iD3;
                iD4 = i11;
                iD7 = i15;
                iD9 = i18;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List q(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE subjectId = ? ");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD2 = androidx.room.util.k.d(eVarD0, "postId");
            int iD3 = androidx.room.util.k.d(eVarD0, "url");
            int iD4 = androidx.room.util.k.d(eVarD0, "path");
            int iD5 = androidx.room.util.k.d(eVarD0, "lan");
            int iD6 = androidx.room.util.k.d(eVarD0, "lanName");
            int iD7 = androidx.room.util.k.d(eVarD0, "subtitleName");
            int iD8 = androidx.room.util.k.d(eVarD0, "size");
            int iD9 = androidx.room.util.k.d(eVarD0, "delayDuration");
            int iD10 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD11 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD12 = androidx.room.util.k.d(eVarD0, "fileCharsetName");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD14 = androidx.room.util.k.d(eVarD0, "ep");
            int iD15 = androidx.room.util.k.d(eVarD0, "se");
            int iD16 = androidx.room.util.k.d(eVarD0, "resolution");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN4 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN5 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN6 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                int i11 = iD4;
                int i12 = iD5;
                int i13 = iD15;
                int i14 = iD6;
                int i15 = iD7;
                int i16 = iD16;
                int i17 = iD8;
                int i18 = iD9;
                arrayList.add(new SubtitleBean(strN0, strN1, strN2, strN3, strN4, strN5, strN6, eVarD0.isNull(iD8) ? null : Long.valueOf(eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), (int) eVarD0.getLong(iD10), (int) eVarD0.getLong(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13), (int) eVarD0.getLong(iD14), (int) eVarD0.getLong(i13), (int) eVarD0.getLong(i16)));
                iD6 = i14;
                iD8 = i17;
                iD15 = i13;
                iD16 = i16;
                iD2 = iD2;
                iD5 = i12;
                iD3 = iD3;
                iD4 = i11;
                iD7 = i15;
                iD9 = i18;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List r(String str, int i11, int i12, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE subjectId = ? AND ep = ? AND se = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            eVarD0.c(2, i11);
            eVarD0.c(3, i12);
            int iD = androidx.room.util.k.d(eVarD0, "resourceId");
            int iD2 = androidx.room.util.k.d(eVarD0, "postId");
            int iD3 = androidx.room.util.k.d(eVarD0, "url");
            int iD4 = androidx.room.util.k.d(eVarD0, "path");
            int iD5 = androidx.room.util.k.d(eVarD0, "lan");
            int iD6 = androidx.room.util.k.d(eVarD0, "lanName");
            int iD7 = androidx.room.util.k.d(eVarD0, "subtitleName");
            int iD8 = androidx.room.util.k.d(eVarD0, "size");
            int iD9 = androidx.room.util.k.d(eVarD0, "delayDuration");
            int iD10 = androidx.room.util.k.d(eVarD0, NotificationCompat.CATEGORY_STATUS);
            int iD11 = androidx.room.util.k.d(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iD12 = androidx.room.util.k.d(eVarD0, "fileCharsetName");
            int iD13 = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD14 = androidx.room.util.k.d(eVarD0, "ep");
            int iD15 = androidx.room.util.k.d(eVarD0, "se");
            int iD16 = androidx.room.util.k.d(eVarD0, "resolution");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN1 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                String strN2 = eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3);
                String strN3 = eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4);
                String strN4 = eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5);
                String strN5 = eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6);
                String strN6 = eVarD0.isNull(iD7) ? null : eVarD0.n0(iD7);
                int i13 = iD4;
                int i14 = iD5;
                int i15 = iD15;
                int i16 = iD6;
                int i17 = iD7;
                int i18 = iD16;
                int i19 = iD8;
                int i20 = iD9;
                arrayList.add(new SubtitleBean(strN0, strN1, strN2, strN3, strN4, strN5, strN6, eVarD0.isNull(iD8) ? null : Long.valueOf(eVarD0.getLong(iD8)), eVarD0.isNull(iD9) ? null : Long.valueOf(eVarD0.getLong(iD9)), (int) eVarD0.getLong(iD10), (int) eVarD0.getLong(iD11), eVarD0.isNull(iD12) ? null : eVarD0.n0(iD12), eVarD0.isNull(iD13) ? null : eVarD0.n0(iD13), (int) eVarD0.getLong(iD14), (int) eVarD0.getLong(i15), (int) eVarD0.getLong(i18)));
                iD6 = i16;
                iD8 = i19;
                iD2 = iD2;
                iD3 = iD3;
                iD15 = i15;
                iD16 = i18;
                iD4 = i13;
                iD5 = i14;
                iD7 = i17;
                iD9 = i20;
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit s(SubtitleBean subtitleBean, z3.b bVar) throws Exception {
        this.f68875c.c(bVar, subtitleBean);
        return Unit.f67061a;
    }

    @Override // lj.v0
    public Object a(final SubtitleBean subtitleBean, Continuation continuation) {
        subtitleBean.getClass();
        return androidx.room.util.b.f(this.f68873a, false, true, new Function1() { // from class: lj.z0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f68949a.s(subtitleBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.v0
    public Object b(Continuation continuation) {
        return androidx.room.util.b.f(this.f68873a, true, false, new Function1() { // from class: lj.a1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c1.o((z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.v0
    public Object c(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68873a, true, false, new Function1() { // from class: lj.y0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c1.q(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.v0
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68873a, false, true, new Function1() { // from class: lj.b1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c1.n(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.v0
    public Object e(final String str, final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f68873a, true, false, new Function1() { // from class: lj.w0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c1.r(str, i11, i12, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // lj.v0
    public Object f(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f68873a, true, false, new Function1() { // from class: lj.x0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return c1.p(str, (z3.b) obj);
            }
        }, continuation);
    }
}
