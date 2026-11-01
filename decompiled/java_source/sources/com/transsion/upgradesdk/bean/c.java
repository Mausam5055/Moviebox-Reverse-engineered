package com.transsion.upgradesdk.bean;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v2 com.transsion.upgradesdk.bean.c[], still in use, count: 1, list:
  (r5v2 com.transsion.upgradesdk.bean.c[]) from 0x0029: INVOKE (r5v2 com.transsion.upgradesdk.bean.c[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m)]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(Unknown Source)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes6.dex */
public final class c {
    STATUS_DEFAULT(0),
    DEFAULT(1),
    CUSTOM(2);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f56592a;

    static {
        EnumEntriesKt.a(cVarArr);
    }

    public c(int i11) {
        super(str, i);
        this.f56592a = i11;
    }

    public static c valueOf(String str) {
        return (c) Enum.valueOf(c.class, str);
    }

    public static c[] values() {
        return (c[]) f56591e.clone();
    }
}
