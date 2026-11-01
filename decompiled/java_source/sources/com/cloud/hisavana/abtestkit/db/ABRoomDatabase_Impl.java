package com.cloud.hisavana.abtestkit.db;

import a4.d;
import a4.e;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.c;
import androidx.room.f0;
import androidx.room.util.b;
import androidx.room.util.o;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.hisavana.common.tracking.TrackingKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import v6.m;
import v6.q;
import v6.s;
import v6.y;

/* JADX INFO: loaded from: classes3.dex */
public final class ABRoomDatabase_Impl extends ABRoomDatabase {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile y f21315q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile q f21316r;

    public class a extends f0.b {
        public a() {
            super(1);
        }

        @Override // androidx.room.f0.b
        public final void a(d dVar) {
            dVar.E("CREATE TABLE IF NOT EXISTS `hisavana_ab_room` (`layer_id` INTEGER NOT NULL, `request_time` INTEGER NOT NULL, `ab_info` TEXT, PRIMARY KEY(`layer_id`))");
            dVar.E("CREATE TABLE IF NOT EXISTS `hisavana_local_ab_room` (`local_ab_version_code` INTEGER NOT NULL, `local_ab_json` TEXT, PRIMARY KEY(`local_ab_version_code`))");
            dVar.E("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            dVar.E("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c3731bb55f7c1b83c5a17ab41e6dc2b1')");
        }

        @Override // androidx.room.f0.b
        public final void b(d dVar) {
            dVar.E("DROP TABLE IF EXISTS `hisavana_ab_room`");
            dVar.E("DROP TABLE IF EXISTS `hisavana_local_ab_room`");
            List list = ((RoomDatabase) ABRoomDatabase_Impl.this).f14499j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).c(dVar);
                }
            }
        }

        @Override // androidx.room.f0.b
        public final void c(d dVar) {
            List list = ((RoomDatabase) ABRoomDatabase_Impl.this).f14499j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).a(dVar);
                }
            }
        }

        @Override // androidx.room.f0.b
        public final void d(d dVar) {
            ((RoomDatabase) ABRoomDatabase_Impl.this).f14490a = dVar;
            ABRoomDatabase_Impl.this.P(dVar);
            List list = ((RoomDatabase) ABRoomDatabase_Impl.this).f14499j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).e(dVar);
                }
            }
        }

        @Override // androidx.room.f0.b
        public final void e(d dVar) {
        }

        @Override // androidx.room.f0.b
        public final void f(d dVar) {
            b.a(dVar);
        }

        @Override // androidx.room.f0.b
        public final f0.c g(d dVar) {
            HashMap map = new HashMap(3);
            map.put(ClientABTestDTOKt.LAYER_ID, new o.a(ClientABTestDTOKt.LAYER_ID, "INTEGER", true, 1, null, 1));
            map.put(TrackingKey.REQUEST_TIME, new o.a(TrackingKey.REQUEST_TIME, "INTEGER", true, 0, null, 1));
            map.put("ab_info", new o.a("ab_info", "TEXT", false, 0, null, 1));
            o oVar = new o("hisavana_ab_room", map, new HashSet(0), new HashSet(0));
            o oVarA = o.a(dVar, "hisavana_ab_room");
            if (!oVar.equals(oVarA)) {
                return new f0.c(false, "hisavana_ab_room(com.cloud.hisavana.abtestkit.db.entities.OnlineABEntity).\n Expected:\n" + oVar + "\n Found:\n" + oVarA);
            }
            HashMap map2 = new HashMap(2);
            map2.put("local_ab_version_code", new o.a("local_ab_version_code", "INTEGER", true, 1, null, 1));
            map2.put("local_ab_json", new o.a("local_ab_json", "TEXT", false, 0, null, 1));
            o oVar2 = new o("hisavana_local_ab_room", map2, new HashSet(0), new HashSet(0));
            o oVarA2 = o.a(dVar, "hisavana_local_ab_room");
            if (oVar2.equals(oVarA2)) {
                return new f0.c(true, null);
            }
            return new f0.c(false, "hisavana_local_ab_room(com.cloud.hisavana.abtestkit.db.entities.LocalABEntity).\n Expected:\n" + oVar2 + "\n Found:\n" + oVarA2);
        }
    }

    @Override // androidx.room.RoomDatabase
    public final Set C() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    public final Map F() {
        HashMap map = new HashMap();
        map.put(s.class, Collections.emptyList());
        map.put(m.class, Collections.emptyList());
        return map;
    }

    @Override // com.cloud.hisavana.abtestkit.db.ABRoomDatabase
    public final m g0() {
        q qVar;
        if (this.f21316r != null) {
            return this.f21316r;
        }
        synchronized (this) {
            try {
                if (this.f21316r == null) {
                    this.f21316r = new q(this);
                }
                qVar = this.f21316r;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return qVar;
    }

    @Override // com.cloud.hisavana.abtestkit.db.ABRoomDatabase
    public final s h0() {
        y yVar;
        if (this.f21315q != null) {
            return this.f21315q;
        }
        synchronized (this) {
            try {
                if (this.f21315q == null) {
                    this.f21315q = new y(this);
                }
                yVar = this.f21315q;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return yVar;
    }

    @Override // androidx.room.RoomDatabase
    public final InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "hisavana_ab_room", "hisavana_local_ab_room");
    }

    @Override // androidx.room.RoomDatabase
    public final e s(c cVar) {
        return cVar.f14572c.a(e.b.a(cVar.f14570a).d(cVar.f14571b).c(new f0(cVar, new a(), "c3731bb55f7c1b83c5a17ab41e6dc2b1", "59a3f677eceb796bf1de1bde197864ae")).b());
    }

    @Override // androidx.room.RoomDatabase
    public final List v(Map map) {
        return new ArrayList();
    }
}
