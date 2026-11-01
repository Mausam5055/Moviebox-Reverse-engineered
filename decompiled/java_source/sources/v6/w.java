package v6;

import androidx.room.j0;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final class w extends j0 {
    public w(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override // androidx.room.j0
    public final String e() {
        return "DELETE FROM hisavana_ab_room";
    }
}
