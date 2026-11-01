package v6;

import androidx.room.j0;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final class x extends j0 {
    public x(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override // androidx.room.j0
    public final String e() {
        return "UPDATE hisavana_ab_room SET request_time = ? WHERE layer_id = ?";
    }
}
