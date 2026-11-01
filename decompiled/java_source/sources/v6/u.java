package v6;

import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final class u extends androidx.room.f {
    public u(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override // androidx.room.j0
    public final String e() {
        return "DELETE FROM `hisavana_ab_room` WHERE `layer_id` = ?";
    }

    @Override // androidx.room.f
    public final void j(a4.h hVar, Object obj) {
        hVar.c(1, ((z) obj).getLayerId());
    }
}
