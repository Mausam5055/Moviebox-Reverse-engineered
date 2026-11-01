package com.transsion.mbwidget.data;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f46268a = new d();

    private d() {
    }

    public final boolean a(SportMatch match) {
        Intrinsics.h(match, "match");
        return match.getStatus() == MatchStatus.UNKNOWN || match.getStatus() == MatchStatus.ENDED;
    }

    public final boolean b(SportMatch match) {
        Intrinsics.h(match, "match");
        if (match.getStatus() != MatchStatus.UNKNOWN) {
            return match.getStatus() == MatchStatus.ING;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        return jCurrentTimeMillis >= match.getMatchTime() && jCurrentTimeMillis <= match.getMatchTime() + 7200000;
    }
}
