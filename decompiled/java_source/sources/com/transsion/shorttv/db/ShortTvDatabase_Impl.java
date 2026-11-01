package com.transsion.shorttv.db;

import androidx.room.InvalidationTracker;
import androidx.room.d0;
import androidx.room.util.o;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvDatabase_Impl extends ShortTvDatabase {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile ShortTvFavoriteDao f53010s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private volatile ShortTvAdUnlockDao f53011t;

    class a extends d0 {
        a(int i11, String str, String str2) {
            super(i11, str, str2);
        }

        @Override // androidx.room.d0
        public void a(z3.b bVar) throws Exception {
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `short_tv_favorite_state` (`subjectId` TEXT NOT NULL, `favoriteNum` TEXT, `hasFavorite` INTEGER NOT NULL, `favoriteTime` TEXT, PRIMARY KEY(`subjectId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `short_tv_ad_unlock_state` (`subjectId` TEXT NOT NULL, `unlockedEps` TEXT NOT NULL, PRIMARY KEY(`subjectId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            z3.a.a(bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '7d0cc9a2b371c1f7329d0d00d8bd31c1')");
        }

        @Override // androidx.room.d0
        public void b(z3.b bVar) throws Exception {
            z3.a.a(bVar, "DROP TABLE IF EXISTS `short_tv_favorite_state`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `short_tv_ad_unlock_state`");
        }

        @Override // androidx.room.d0
        public void f(z3.b bVar) {
        }

        @Override // androidx.room.d0
        public void g(z3.b bVar) {
            ShortTvDatabase_Impl.this.Q(bVar);
        }

        @Override // androidx.room.d0
        public void h(z3.b bVar) {
        }

        @Override // androidx.room.d0
        public void i(z3.b bVar) {
            androidx.room.util.b.b(bVar);
        }

        @Override // androidx.room.d0
        public d0.a j(z3.b bVar) {
            HashMap map = new HashMap(4);
            map.put("subjectId", new o.a("subjectId", "TEXT", true, 1, null, 1));
            map.put("favoriteNum", new o.a("favoriteNum", "TEXT", false, 0, null, 1));
            map.put("hasFavorite", new o.a("hasFavorite", "INTEGER", true, 0, null, 1));
            map.put("favoriteTime", new o.a("favoriteTime", "TEXT", false, 0, null, 1));
            o oVar = new o("short_tv_favorite_state", map, new HashSet(0), new HashSet(0));
            o oVarB = o.b(bVar, "short_tv_favorite_state");
            if (!oVar.equals(oVarB)) {
                return new d0.a(false, "short_tv_favorite_state(com.transsion.shorttv.db.ShortTvFavoriteStateBean).\n Expected:\n" + oVar + "\n Found:\n" + oVarB);
            }
            HashMap map2 = new HashMap(2);
            map2.put("subjectId", new o.a("subjectId", "TEXT", true, 1, null, 1));
            map2.put("unlockedEps", new o.a("unlockedEps", "TEXT", true, 0, null, 1));
            o oVar2 = new o("short_tv_ad_unlock_state", map2, new HashSet(0), new HashSet(0));
            o oVarB2 = o.b(bVar, "short_tv_ad_unlock_state");
            if (oVar2.equals(oVarB2)) {
                return new d0.a(true, null);
            }
            return new d0.a(false, "short_tv_ad_unlock_state(com.transsion.shorttv.db.ShortTvAdUnlockStateBean).\n Expected:\n" + oVar2 + "\n Found:\n" + oVarB2);
        }
    }

    @Override // androidx.room.RoomDatabase
    public Set C() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    protected Map F() {
        HashMap map = new HashMap();
        map.put(ShortTvFavoriteDao.class, i.h());
        map.put(ShortTvAdUnlockDao.class, d.h());
        return map;
    }

    @Override // com.transsion.shorttv.db.ShortTvDatabase
    public ShortTvAdUnlockDao j0() {
        ShortTvAdUnlockDao shortTvAdUnlockDao;
        if (this.f53011t != null) {
            return this.f53011t;
        }
        synchronized (this) {
            try {
                if (this.f53011t == null) {
                    this.f53011t = new d(this);
                }
                shortTvAdUnlockDao = this.f53011t;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return shortTvAdUnlockDao;
    }

    @Override // com.transsion.shorttv.db.ShortTvDatabase
    public ShortTvFavoriteDao k0() {
        ShortTvFavoriteDao shortTvFavoriteDao;
        if (this.f53010s != null) {
            return this.f53010s;
        }
        synchronized (this) {
            try {
                if (this.f53010s == null) {
                    this.f53010s = new i(this);
                }
                shortTvFavoriteDao = this.f53010s;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return shortTvFavoriteDao;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public d0 r() {
        return new a(2, "7d0cc9a2b371c1f7329d0d00d8bd31c1", "8d7f57b404f63d2b99b6f547f57644e9");
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "short_tv_favorite_state", "short_tv_ad_unlock_state");
    }

    @Override // androidx.room.RoomDatabase
    public List v(Map map) {
        return new ArrayList();
    }
}
