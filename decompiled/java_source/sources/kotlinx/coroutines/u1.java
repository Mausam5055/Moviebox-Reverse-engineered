package kotlinx.coroutines;

/* JADX INFO: loaded from: classes7.dex */
public class u1 extends JobSupport implements z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f68001a;

    public u1(t1 t1Var) {
        super(true);
        initParentJob(t1Var);
        this.f68001a = X();
    }

    private final boolean X() {
        JobSupport jobSupportT;
        t parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        u uVar = parentHandle$kotlinx_coroutines_core instanceof u ? (u) parentHandle$kotlinx_coroutines_core : null;
        if (uVar != null && (jobSupportT = uVar.t()) != null) {
            while (!jobSupportT.getHandlesException$kotlinx_coroutines_core()) {
                t parentHandle$kotlinx_coroutines_core2 = jobSupportT.getParentHandle$kotlinx_coroutines_core();
                u uVar2 = parentHandle$kotlinx_coroutines_core2 instanceof u ? (u) parentHandle$kotlinx_coroutines_core2 : null;
                if (uVar2 == null || (jobSupportT = uVar2.t()) == null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.z
    public boolean b(Throwable th2) {
        return makeCompleting$kotlinx_coroutines_core(new b0(th2, false, 2, null));
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getHandlesException$kotlinx_coroutines_core() {
        return this.f68001a;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }
}
