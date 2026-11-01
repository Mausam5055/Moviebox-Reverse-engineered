package com.transsion.shorttv.db;

import androidx.room.RoomDatabase;
import androidx.room.util.k;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements ShortTvFavoriteDao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f53030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f53031b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f53032c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR REPLACE INTO `short_tv_favorite_state` (`subjectId`,`favoriteNum`,`hasFavorite`,`favoriteTime`) VALUES (?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, ShortTvFavoriteStateBean shortTvFavoriteStateBean) {
            if (shortTvFavoriteStateBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, shortTvFavoriteStateBean.getSubjectId());
            }
            if (shortTvFavoriteStateBean.getFavoriteNum() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, shortTvFavoriteStateBean.getFavoriteNum());
            }
            eVar.c(3, shortTvFavoriteStateBean.getHasFavorite() ? 1L : 0L);
            if (shortTvFavoriteStateBean.getFavoriteTime() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, shortTvFavoriteStateBean.getFavoriteTime());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `short_tv_favorite_state` SET `subjectId` = ?,`favoriteNum` = ?,`hasFavorite` = ?,`favoriteTime` = ? WHERE `subjectId` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e eVar, ShortTvFavoriteStateBean shortTvFavoriteStateBean) {
            if (shortTvFavoriteStateBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.j(1, shortTvFavoriteStateBean.getSubjectId());
            }
            if (shortTvFavoriteStateBean.getFavoriteNum() == null) {
                eVar.g(2);
            } else {
                eVar.j(2, shortTvFavoriteStateBean.getFavoriteNum());
            }
            eVar.c(3, shortTvFavoriteStateBean.getHasFavorite() ? 1L : 0L);
            if (shortTvFavoriteStateBean.getFavoriteTime() == null) {
                eVar.g(4);
            } else {
                eVar.j(4, shortTvFavoriteStateBean.getFavoriteTime());
            }
            if (shortTvFavoriteStateBean.getSubjectId() == null) {
                eVar.g(5);
            } else {
                eVar.j(5, shortTvFavoriteStateBean.getSubjectId());
            }
        }
    }

    public i(RoomDatabase roomDatabase) {
        this.f53030a = roomDatabase;
    }

    public static List h() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit i(ShortTvFavoriteStateBean shortTvFavoriteStateBean, z3.b bVar) throws Exception {
        this.f53031b.d(bVar, shortTvFavoriteStateBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ShortTvFavoriteStateBean j(String str, z3.b bVar) {
        z3.e eVarD0 = bVar.D0("SELECT * FROM short_tv_favorite_state WHERE subjectId=?");
        boolean z10 = true;
        try {
            if (str == null) {
                eVarD0.g(1);
            } else {
                eVarD0.j(1, str);
            }
            int iD = k.d(eVarD0, "subjectId");
            int iD2 = k.d(eVarD0, "favoriteNum");
            int iD3 = k.d(eVarD0, "hasFavorite");
            int iD4 = k.d(eVarD0, "favoriteTime");
            ShortTvFavoriteStateBean shortTvFavoriteStateBean = null;
            String strN0 = null;
            if (eVarD0.A0()) {
                String strN1 = eVarD0.isNull(iD) ? null : eVarD0.n0(iD);
                String strN2 = eVarD0.isNull(iD2) ? null : eVarD0.n0(iD2);
                if (((int) eVarD0.getLong(iD3)) == 0) {
                    z10 = false;
                }
                if (!eVarD0.isNull(iD4)) {
                    strN0 = eVarD0.n0(iD4);
                }
                shortTvFavoriteStateBean = new ShortTvFavoriteStateBean(strN1, strN2, z10, strN0);
            }
            eVarD0.close();
            return shortTvFavoriteStateBean;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit k(ShortTvFavoriteStateBean shortTvFavoriteStateBean, z3.b bVar) throws Exception {
        this.f53032c.c(bVar, shortTvFavoriteStateBean);
        return Unit.f67061a;
    }

    @Override // com.transsion.shorttv.db.ShortTvFavoriteDao
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f53030a, true, false, new Function1() { // from class: com.transsion.shorttv.db.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return i.j(str, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.shorttv.db.ShortTvFavoriteDao
    public Object b(final ShortTvFavoriteStateBean shortTvFavoriteStateBean, Continuation continuation) {
        shortTvFavoriteStateBean.getClass();
        return androidx.room.util.b.f(this.f53030a, false, true, new Function1() { // from class: com.transsion.shorttv.db.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f53026a.k(shortTvFavoriteStateBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.shorttv.db.ShortTvFavoriteDao
    public Object c(final ShortTvFavoriteStateBean shortTvFavoriteStateBean, Continuation continuation) {
        shortTvFavoriteStateBean.getClass();
        return androidx.room.util.b.f(this.f53030a, false, true, new Function1() { // from class: com.transsion.shorttv.db.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f53028a.i(shortTvFavoriteStateBean, (z3.b) obj);
            }
        }, continuation);
    }

    @Override // com.transsion.shorttv.db.ShortTvFavoriteDao
    public Object d(ShortTvFavoriteStateBean shortTvFavoriteStateBean, Continuation continuation) {
        return ShortTvFavoriteDao.DefaultImpls.a(this, shortTvFavoriteStateBean, continuation);
    }
}
