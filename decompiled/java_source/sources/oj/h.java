package oj;

import androidx.room.RoomDatabase;
import androidx.room.util.k;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements oj.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f71029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f71030b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f71031c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `music_liked` (`subjectId`,`title`,`coverUrl`,`countryName`,`genre`,`releaseDate`,`durationSeconds`,`singerName`,`singerAvatar`,`path`,`timeStamp`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, MusicLikedDbBean musicLikedDbBean) {
            if (musicLikedDbBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, musicLikedDbBean.getSubjectId());
            }
            if (musicLikedDbBean.getTitle() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, musicLikedDbBean.getTitle());
            }
            if (musicLikedDbBean.getCoverUrl() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, musicLikedDbBean.getCoverUrl());
            }
            if (musicLikedDbBean.getCountryName() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, musicLikedDbBean.getCountryName());
            }
            if (musicLikedDbBean.getGenre() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, musicLikedDbBean.getGenre());
            }
            if (musicLikedDbBean.getReleaseDate() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, musicLikedDbBean.getReleaseDate());
            }
            eVar.c(7, musicLikedDbBean.getDurationSeconds());
            if (musicLikedDbBean.getSingerName() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, musicLikedDbBean.getSingerName());
            }
            if (musicLikedDbBean.getSingerAvatar() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, musicLikedDbBean.getSingerAvatar());
            }
            if (musicLikedDbBean.getPath() == null) {
                eVar.g(10);
            } else {
                eVar.j(10, musicLikedDbBean.getPath());
            }
            eVar.c(11, musicLikedDbBean.getTimeStamp());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `music_liked` SET `subjectId` = ?,`title` = ?,`coverUrl` = ?,`countryName` = ?,`genre` = ?,`releaseDate` = ?,`durationSeconds` = ?,`singerName` = ?,`singerAvatar` = ?,`path` = ?,`timeStamp` = ? WHERE `subjectId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, MusicLikedDbBean musicLikedDbBean) {
            if (musicLikedDbBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, musicLikedDbBean.getSubjectId());
            }
            if (musicLikedDbBean.getTitle() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, musicLikedDbBean.getTitle());
            }
            if (musicLikedDbBean.getCoverUrl() == null) {
                eVar.g(3);
            } else {
                eVar.j(3, musicLikedDbBean.getCoverUrl());
            }
            if (musicLikedDbBean.getCountryName() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, musicLikedDbBean.getCountryName());
            }
            if (musicLikedDbBean.getGenre() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, musicLikedDbBean.getGenre());
            }
            if (musicLikedDbBean.getReleaseDate() == null) {
                eVar.g(6);
            } else {
                eVar.j(6, musicLikedDbBean.getReleaseDate());
            }
            eVar.c(7, musicLikedDbBean.getDurationSeconds());
            if (musicLikedDbBean.getSingerName() == null) {
                eVar.g(8);
            } else {
                eVar.j(8, musicLikedDbBean.getSingerName());
            }
            if (musicLikedDbBean.getSingerAvatar() == null) {
                eVar.g(9);
            } else {
                eVar.j(9, musicLikedDbBean.getSingerAvatar());
            }
            if (musicLikedDbBean.getPath() == null) {
                eVar.g(10);
            } else {
                eVar.j(10, musicLikedDbBean.getPath());
            }
            eVar.c(11, musicLikedDbBean.getTimeStamp());
            if (musicLikedDbBean.getSubjectId() == null) {
                eVar.g(12);
            } else {
                eVar.j(12, musicLikedDbBean.getSubjectId());
            }
        }
    }

    public h(RoomDatabase roomDatabase) {
        this.f71029a = roomDatabase;
    }

    public static List m() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit n(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("DELETE FROM music_liked WHERE subjectId = ?");
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
        z3.e eVarD0 = bVar.D0("SELECT * FROM music_liked ORDER BY timeStamp DESC");
        try {
            int iD = k.d(eVarD0, "subjectId");
            int iD2 = k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD3 = k.d(eVarD0, "coverUrl");
            int iD4 = k.d(eVarD0, "countryName");
            int iD5 = k.d(eVarD0, "genre");
            int iD6 = k.d(eVarD0, "releaseDate");
            int iD7 = k.d(eVarD0, "durationSeconds");
            int iD8 = k.d(eVarD0, "singerName");
            int iD9 = k.d(eVarD0, "singerAvatar");
            int iD10 = k.d(eVarD0, "path");
            int iD11 = k.d(eVarD0, "timeStamp");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                arrayList.add(new MusicLikedDbBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), (int) eVarD0.getLong(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10), eVarD0.getLong(iD11)));
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer p(z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT COUNT(*) FROM music_liked");
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
    public static /* synthetic */ MusicLikedDbBean q(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM music_liked WHERE subjectId = ?");
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = k.d(eVarD0, "subjectId");
            int iD2 = k.d(eVarD0, CampaignEx.JSON_KEY_TITLE);
            int iD3 = k.d(eVarD0, "coverUrl");
            int iD4 = k.d(eVarD0, "countryName");
            int iD5 = k.d(eVarD0, "genre");
            int iD6 = k.d(eVarD0, "releaseDate");
            int iD7 = k.d(eVarD0, "durationSeconds");
            int iD8 = k.d(eVarD0, "singerName");
            int iD9 = k.d(eVarD0, "singerAvatar");
            int iD10 = k.d(eVarD0, "path");
            int iD11 = k.d(eVarD0, "timeStamp");
            MusicLikedDbBean musicLikedDbBean = null;
            if (eVarD0.A0()) {
                musicLikedDbBean = new MusicLikedDbBean(eVarD0.isNull(iD) ? null : eVarD0.n0(iD), eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2), eVarD0.isNull(iD3) ? null : eVarD0.n0(iD3), eVarD0.isNull(iD4) ? null : eVarD0.n0(iD4), eVarD0.isNull(iD5) ? null : eVarD0.n0(iD5), eVarD0.isNull(iD6) ? null : eVarD0.n0(iD6), (int) eVarD0.getLong(iD7), eVarD0.isNull(iD8) ? null : eVarD0.n0(iD8), eVarD0.isNull(iD9) ? null : eVarD0.n0(iD9), eVarD0.isNull(iD10) ? null : eVarD0.n0(iD10), eVarD0.getLong(iD11));
            }
            eVarD0.close();
            return musicLikedDbBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit r(MusicLikedDbBean musicLikedDbBean, z3.b bVar) throws Exception {
        this.f71030b.d(bVar, musicLikedDbBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit s(List list, z3.b bVar) throws Exception {
        this.f71030b.c(bVar, list);
        return Unit.f67061a;
    }

    @Override // oj.a
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f71029a, true, false, new Function1() { // from class: oj.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h.p((z3.b) obj);
            }
        }, continuation);
    }

    @Override // oj.a
    public Object b(final List list, Continuation continuation) {
        list.getClass();
        return androidx.room.util.b.f(this.f71029a, false, true, new Function1() { // from class: oj.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f71026a.s(list, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // oj.a
    public Object c(Continuation continuation) {
        return androidx.room.util.b.f(this.f71029a, true, false, new Function1() { // from class: oj.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h.o((z3.b) obj);
            }
        }, continuation);
    }

    @Override // oj.a
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f71029a, false, true, new Function1() { // from class: oj.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h.n(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // oj.a
    public Object e(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f71029a, true, false, new Function1() { // from class: oj.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h.q(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // oj.a
    public Object f(final MusicLikedDbBean musicLikedDbBean, Continuation continuation) {
        musicLikedDbBean.getClass();
        return androidx.room.util.b.f(this.f71029a, false, true, new Function1() { // from class: oj.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f71024a.r(musicLikedDbBean, (z3.b) obj);
            }
        }, continuation);
    }
}
