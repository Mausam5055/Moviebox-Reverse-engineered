package com.transsion.member;

import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c0 f46429a = new c0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f46430b = LazyKt.b(new Function0() { // from class: com.transsion.member.b0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return c0.c();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f46431c = 8;

    private c0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV c() {
        return MMKV.I("member_kv");
    }

    public final MMKV b() {
        return (MMKV) f46430b.getValue();
    }
}
