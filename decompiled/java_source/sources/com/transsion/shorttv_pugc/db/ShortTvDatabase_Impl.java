package com.transsion.shorttv_pugc.db;

import androidx.room.InvalidationTracker;
import androidx.room.d0;
import androidx.room.util.o;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import z3.b;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvDatabase_Impl extends ShortTvDatabase {

    class a extends d0 {
        a(int i11, String str, String str2) {
            super(i11, str, str2);
        }

        @Override // androidx.room.d0
        public void a(b bVar) throws Exception {
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `short_tv_favorite_state` (`subjectId` TEXT NOT NULL, `favoriteNum` TEXT, `hasFavorite` INTEGER NOT NULL, `favoriteTime` TEXT, PRIMARY KEY(`subjectId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            z3.a.a(bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'e90a38f8313cd010419e55bde1e55126')");
        }

        @Override // androidx.room.d0
        public void b(b bVar) throws Exception {
            z3.a.a(bVar, "DROP TABLE IF EXISTS `short_tv_favorite_state`");
        }

        @Override // androidx.room.d0
        public void f(b bVar) {
        }

        @Override // androidx.room.d0
        public void g(b bVar) {
            ShortTvDatabase_Impl.this.Q(bVar);
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
            HashMap map = new HashMap(4);
            map.put("subjectId", new o.a("subjectId", "TEXT", true, 1, null, 1));
            map.put("favoriteNum", new o.a("favoriteNum", "TEXT", false, 0, null, 1));
            map.put("hasFavorite", new o.a("hasFavorite", "INTEGER", true, 0, null, 1));
            map.put("favoriteTime", new o.a("favoriteTime", "TEXT", false, 0, null, 1));
            o oVar = new o("short_tv_favorite_state", map, new HashSet(0), new HashSet(0));
            o oVarB = o.b(bVar, "short_tv_favorite_state");
            if (oVar.equals(oVarB)) {
                return new d0.a(true, null);
            }
            return new d0.a(false, "short_tv_favorite_state(com.transsion.shorttv_pugc.db.ShortTvFavoriteStateBean).\n Expected:\n" + oVar + "\n Found:\n" + oVarB);
        }
    }

    @Override // androidx.room.RoomDatabase
    public Set C() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    protected Map F() {
        HashMap map = new HashMap();
        map.put(pt.a.class, pt.b.a());
        return map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public d0 r() {
        return new a(1, "e90a38f8313cd010419e55bde1e55126", "0c797eb7adf7787e513fa3e6ff4af75e");
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "short_tv_favorite_state");
    }

    @Override // androidx.room.RoomDatabase
    public List v(Map map) {
        return new ArrayList();
    }
}
