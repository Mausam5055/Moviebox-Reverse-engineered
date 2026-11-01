package v6;

import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final class t extends androidx.room.h {
    public t(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override // androidx.room.j0
    public final String e() {
        return "INSERT OR REPLACE INTO `hisavana_ab_room` (`layer_id`,`request_time`,`ab_info`) VALUES (?,?,?)";
    }

    @Override // androidx.room.h
    public final void j(a4.h hVar, Object obj) {
        z zVar = (z) obj;
        hVar.c(1, zVar.getLayerId());
        hVar.c(2, zVar.getRequestTime());
        if (zVar.getInfo() == null) {
            hVar.g(3);
        } else {
            hVar.y(3, zVar.getInfo());
        }
    }
}
