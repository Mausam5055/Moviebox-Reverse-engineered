package kotlinx.coroutines.flow;

/* JADX INFO: loaded from: classes7.dex */
final class StartedLazily implements g1 {
    @Override // kotlinx.coroutines.flow.g1
    public b a(i1 i1Var) {
        return d.s(new StartedLazily$command$1(i1Var, null));
    }

    public String toString() {
        return "SharingStarted.Lazily";
    }
}
