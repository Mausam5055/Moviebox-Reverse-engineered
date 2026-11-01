package v6;

import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final class o extends androidx.room.f {
    public o(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override // androidx.room.j0
    public final String e() {
        return "UPDATE OR ABORT `hisavana_local_ab_room` SET `local_ab_version_code` = ?,`local_ab_json` = ? WHERE `local_ab_version_code` = ?";
    }

    @Override // androidx.room.f
    public final void j(a4.h hVar, Object obj) {
        r rVar = (r) obj;
        hVar.c(1, rVar.f77071a);
        String str = rVar.f77072b;
        if (str == null) {
            hVar.g(2);
        } else {
            hVar.y(2, str);
        }
        hVar.c(3, rVar.f77071a);
    }
}
