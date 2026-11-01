package com.vungle.ads.internal.util;

import java.util.HashSet;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    public static final b INSTANCE = new b();

    private b() {
    }

    @JvmStatic
    public static final synchronized void addToSet(HashSet<String> hashset, String set) {
        Intrinsics.h(hashset, "hashset");
        Intrinsics.h(set, "set");
        hashset.add(set);
    }

    @JvmStatic
    public static final synchronized HashSet<String> getNewHashSet(HashSet<String> hashSet) {
        return new HashSet<>(hashSet);
    }
}
