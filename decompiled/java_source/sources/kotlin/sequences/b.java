package kotlin.sequences;

import java.util.Iterator;
import kotlin.collections.EmptyIterator;

/* JADX INFO: loaded from: classes7.dex */
final class b implements Sequence, DropTakeSequence {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f67473a = new b();

    private b() {
    }

    @Override // kotlin.sequences.DropTakeSequence
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b a(int i11) {
        return f67473a;
    }

    @Override // kotlin.sequences.DropTakeSequence
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public b b(int i11) {
        return f67473a;
    }

    @Override // kotlin.sequences.Sequence
    public Iterator iterator() {
        return EmptyIterator.f67120a;
    }
}
