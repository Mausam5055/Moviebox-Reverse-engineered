package com.transsion.mbwidget.data;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {
    public static final ServerMatchItem a(List list) {
        Object next;
        Object next2;
        if (list == null) {
            list = CollectionsKt.l();
        }
        if (list.isEmpty()) {
            return null;
        }
        List list2 = list;
        Iterator it = list2.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (MatchStatus.INSTANCE.a(((ServerMatchItem) next).getStatus()) != MatchStatus.NOT_START);
        ServerMatchItem serverMatchItem = (ServerMatchItem) next;
        if (serverMatchItem != null) {
            return serverMatchItem;
        }
        Iterator it2 = list2.iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (MatchStatus.INSTANCE.a(((ServerMatchItem) next2).getStatus()) != MatchStatus.ING);
        ServerMatchItem serverMatchItem2 = (ServerMatchItem) next2;
        if (serverMatchItem2 != null) {
            return serverMatchItem2;
        }
        return null;
    }

    public static final SportMatch b(ServerMatchItem serverMatchItem) {
        ServerTeam team1;
        ServerTeam team2;
        String abbreviation;
        Long lX;
        Intrinsics.h(serverMatchItem, "<this>");
        SportType sportTypeA = SportType.INSTANCE.a(serverMatchItem.getType());
        SportMatch sportMatch = null;
        if (sportTypeA == null || (team1 = serverMatchItem.getTeam1()) == null || (team2 = serverMatchItem.getTeam2()) == null) {
            return null;
        }
        String abbreviation2 = team1.getAbbreviation();
        if (abbreviation2 != null) {
            String str = !StringsKt.q0(abbreviation2) ? abbreviation2 : null;
            if (str != null && (abbreviation = team2.getAbbreviation()) != null) {
                String str2 = !StringsKt.q0(abbreviation) ? abbreviation : null;
                if (str2 != null) {
                    String id2 = serverMatchItem.getId();
                    if (id2 == null) {
                        return null;
                    }
                    String avatar = team1.getAvatar();
                    String avatar2 = team2.getAvatar();
                    String startTime = serverMatchItem.getStartTime();
                    sportMatch = new SportMatch(id2, sportTypeA, str, avatar, str2, avatar2, (startTime == null || (lX = StringsKt.x(startTime)) == null) ? 0L : lX.longValue(), serverMatchItem.getDeeplink(), MatchStatus.INSTANCE.a(serverMatchItem.getStatus()));
                }
            }
        }
        return sportMatch;
    }
}
