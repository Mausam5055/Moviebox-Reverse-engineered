package jk;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.bean.AhaGameAllGames;
import com.transsion.bean.GameLayoutType;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {
    public final void a(AhaGameAllGames game, int i11, long j11, GameLayoutType itemType) {
        Intrinsics.h(game, "game");
        Intrinsics.h(itemType, "itemType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("id", String.valueOf(game.getId()));
        linkedHashMap.put("name", String.valueOf(game.getName()));
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i11));
        linkedHashMap.put("link", String.valueOf(game.getLink()));
        linkedHashMap.put("browse_duration", String.valueOf(j11));
        linkedHashMap.put("item_type", itemType.toString());
        com.transsion.baselib.helper.a.f43262a.e("game_center", linkedHashMap);
    }

    public final void b(AhaGameAllGames game, int i11, GameLayoutType itemType) {
        Intrinsics.h(game, "game");
        Intrinsics.h(itemType, "itemType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("id", String.valueOf(game.getId()));
        linkedHashMap.put("name", String.valueOf(game.getName()));
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i11));
        linkedHashMap.put("link", String.valueOf(game.getLink()));
        linkedHashMap.put("item_type", itemType.toString());
        com.transsion.baselib.helper.a.f43262a.f("game_center", linkedHashMap);
    }

    public final void c(AhaGameAllGames game, long j11) {
        List listK0;
        Intrinsics.h(game, "game");
        List<AhaGameAllGames> peoplePlaying = game.getPeoplePlaying();
        if (peoplePlaying == null || (listK0 = CollectionsKt.K0(peoplePlaying, 4)) == null) {
            return;
        }
        int i11 = 0;
        for (Object obj : listK0) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            a((AhaGameAllGames) obj, i11, j11, game.getGameLayoutType());
            i11 = i12;
        }
    }
}
