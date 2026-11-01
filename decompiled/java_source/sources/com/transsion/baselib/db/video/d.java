package com.transsion.baselib.db.video;

import androidx.room.RoomDatabase;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements IShortTvFavoriteStateDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f43131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f43132b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f43133c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `ShortTvFavoriteState` (`subjectId`,`favoriteNum`,`hasFavorite`,`favoriteTime`) VALUES (?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, ShortTvFavoriteState shortTvFavoriteState) {
            if (shortTvFavoriteState.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, shortTvFavoriteState.getSubjectId());
            }
            if (shortTvFavoriteState.getFavoriteNum() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, shortTvFavoriteState.getFavoriteNum());
            }
            eVar.c(3, shortTvFavoriteState.getHasFavorite() ? 1L : 0L);
            if (shortTvFavoriteState.getFavoriteTime() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, shortTvFavoriteState.getFavoriteTime());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `ShortTvFavoriteState` SET `subjectId` = ?,`favoriteNum` = ?,`hasFavorite` = ?,`favoriteTime` = ? WHERE `subjectId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, ShortTvFavoriteState shortTvFavoriteState) {
            if (shortTvFavoriteState.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, shortTvFavoriteState.getSubjectId());
            }
            if (shortTvFavoriteState.getFavoriteNum() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, shortTvFavoriteState.getFavoriteNum());
            }
            eVar.c(3, shortTvFavoriteState.getHasFavorite() ? 1L : 0L);
            if (shortTvFavoriteState.getFavoriteTime() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, shortTvFavoriteState.getFavoriteTime());
            }
            if (shortTvFavoriteState.getSubjectId() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, shortTvFavoriteState.getSubjectId());
            }
        }
    }

    public d(RoomDatabase roomDatabase) {
        this.f43131a = roomDatabase;
    }

    public static List h() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit i(ShortTvFavoriteState shortTvFavoriteState, z3.b bVar) throws Exception {
        this.f43132b.d(bVar, shortTvFavoriteState);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ShortTvFavoriteState j(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM ShortTvFavoriteState WHERE subjectId=?");
        boolean z10 = true;
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = androidx.room.util.k.d(eVarD0, "subjectId");
            int iD2 = androidx.room.util.k.d(eVarD0, "favoriteNum");
            int iD3 = androidx.room.util.k.d(eVarD0, "hasFavorite");
            int iD4 = androidx.room.util.k.d(eVarD0, "favoriteTime");
            ShortTvFavoriteState shortTvFavoriteState = null;
            String strN0 = null;
            if (eVarD0.A0()) {
                ShortTvFavoriteState shortTvFavoriteState2 = new ShortTvFavoriteState();
                shortTvFavoriteState2.setSubjectId(eVarD0.isNull(iD) ? null : eVarD0.n0(iD));
                shortTvFavoriteState2.setFavoriteNum(eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2));
                if (((int) eVarD0.getLong(iD3)) == 0) {
                    z10 = false;
                }
                shortTvFavoriteState2.setHasFavorite(z10);
                if (!eVarD0.isNull(iD4)) {
                    strN0 = eVarD0.n0(iD4);
                }
                shortTvFavoriteState2.setFavoriteTime(strN0);
                shortTvFavoriteState = shortTvFavoriteState2;
            }
            eVarD0.close();
            return shortTvFavoriteState;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit k(ShortTvFavoriteState shortTvFavoriteState, z3.b bVar) throws Exception {
        this.f43133c.c(bVar, shortTvFavoriteState);
        return Unit.f67061a;
    }

    @Override // com.transsion.baselib.db.video.IShortTvFavoriteStateDao
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f43131a, true, false, new Function1() { // from class: com.transsion.baselib.db.video.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return d.j(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.IShortTvFavoriteStateDao
    public Object b(final ShortTvFavoriteState shortTvFavoriteState, Continuation continuation) {
        shortTvFavoriteState.getClass();
        return androidx.room.util.b.f(this.f43131a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43117a.k(shortTvFavoriteState, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.IShortTvFavoriteStateDao
    public Object c(final ShortTvFavoriteState shortTvFavoriteState, Continuation continuation) {
        shortTvFavoriteState.getClass();
        return androidx.room.util.b.f(this.f43131a, false, true, new Function1() { // from class: com.transsion.baselib.db.video.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f43126a.i(shortTvFavoriteState, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.baselib.db.video.IShortTvFavoriteStateDao
    public Object d(ShortTvFavoriteState shortTvFavoriteState, Continuation continuation) {
        return IShortTvFavoriteStateDao.DefaultImpls.a(this, shortTvFavoriteState, continuation);
    }
}
