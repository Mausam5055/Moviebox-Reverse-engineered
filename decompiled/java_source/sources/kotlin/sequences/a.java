package kotlin.sequences;

import java.util.HashSet;
import java.util.Iterator;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class a extends AbstractIterator {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Iterator f67470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function1 f67471d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet f67472e;

    public a(Iterator source, Function1 keySelector) {
        Intrinsics.h(source, "source");
        Intrinsics.h(keySelector, "keySelector");
        this.f67470c = source;
        this.f67471d = keySelector;
        this.f67472e = new HashSet();
    }

    @Override // kotlin.collections.AbstractIterator
    protected void a() {
        while (this.f67470c.hasNext()) {
            Object next = this.f67470c.next();
            if (this.f67472e.add(this.f67471d.invoke(next))) {
                e(next);
                return;
            }
        }
        c();
    }
}
