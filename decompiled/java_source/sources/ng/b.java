package ng;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements z7.b {
    @Override // s7.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String a(Thread thread) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Thread: name: ");
        sb2.append(thread != null ? thread.getName() : null);
        sb2.append(" , threadId: ");
        sb2.append(thread != null ? Long.valueOf(thread.getId()) : null);
        return sb2.toString();
    }
}
