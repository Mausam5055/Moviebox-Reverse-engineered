package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes7.dex */
final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LockFreeLinkedListNode f67885a;

    public t(LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.f67885a = lockFreeLinkedListNode;
    }

    public String toString() {
        return "Removed[" + this.f67885a + ']';
    }
}
