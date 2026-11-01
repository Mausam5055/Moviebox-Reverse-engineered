package v6;

import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final class n extends androidx.room.h {
    public n(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override // androidx.room.j0
    public final String e() {
        return "INSERT OR REPLACE INTO `hisavana_local_ab_room` (`local_ab_version_code`,`local_ab_json`) VALUES (?,?)";
    }

    @Override // androidx.room.h
    public final void j(a4.h hVar, Object obj) {
        r rVar = (r) obj;
        hVar.c(1, rVar.f77071a);
        String str = rVar.f77072b;
        if (str == null) {
            hVar.g(2);
        } else {
            hVar.y(2, str);
        }
    }
}
