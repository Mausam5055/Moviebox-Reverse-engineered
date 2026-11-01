package tc;

import com.google.firebase.perf.util.Constants$CounterNames;
import com.google.firebase.perf.v1.i;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class d extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final sc.a f76181b = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f76182a;

    d(i iVar) {
        this.f76182a = iVar;
    }

    private boolean g(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            try {
                e.d((String) entry.getKey(), (String) entry.getValue());
            } catch (IllegalArgumentException e11) {
                f76181b.j(e11.getLocalizedMessage());
                return false;
            }
        }
        return true;
    }

    private boolean h(i iVar) {
        return i(iVar, 0);
    }

    private boolean i(i iVar, int i11) {
        if (iVar == null) {
            return false;
        }
        if (i11 > 1) {
            f76181b.j("Exceed MAX_SUBTRACE_DEEP:1");
            return false;
        }
        for (Map.Entry entry : iVar.y().entrySet()) {
            if (!l((String) entry.getKey())) {
                f76181b.j("invalid CounterId:" + ((String) entry.getKey()));
                return false;
            }
            if (!m((Long) entry.getValue())) {
                f76181b.j("invalid CounterValue:" + entry.getValue());
                return false;
            }
        }
        Iterator it = iVar.G().iterator();
        while (it.hasNext()) {
            if (!i((i) it.next(), i11 + 1)) {
                return false;
            }
        }
        return true;
    }

    private boolean j(i iVar) {
        if (iVar.x() > 0) {
            return true;
        }
        Iterator it = iVar.G().iterator();
        while (it.hasNext()) {
            if (((i) it.next()).x() > 0) {
                return true;
            }
        }
        return false;
    }

    private boolean k(i iVar) {
        return iVar.E().startsWith("_st_");
    }

    private boolean l(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            f76181b.j("counterId is empty");
            return false;
        }
        if (strTrim.length() <= 100) {
            return true;
        }
        f76181b.j("counterId exceeded max length 100");
        return false;
    }

    private boolean m(Long l11) {
        return l11 != null;
    }

    private boolean n(i iVar) {
        Long l11 = (Long) iVar.y().get(Constants$CounterNames.FRAMES_TOTAL.toString());
        return l11 != null && l11.compareTo((Long) 0L) > 0;
    }

    private boolean o(i iVar, int i11) {
        if (iVar == null) {
            f76181b.j("TraceMetric is null");
            return false;
        }
        if (i11 > 1) {
            f76181b.j("Exceed MAX_SUBTRACE_DEEP:1");
            return false;
        }
        if (!q(iVar.E())) {
            f76181b.j("invalid TraceId:" + iVar.E());
            return false;
        }
        if (!p(iVar)) {
            f76181b.j("invalid TraceDuration:" + iVar.B());
            return false;
        }
        if (!iVar.H()) {
            f76181b.j("clientStartTimeUs is null.");
            return false;
        }
        if (!k(iVar) || n(iVar)) {
            Iterator it = iVar.G().iterator();
            while (it.hasNext()) {
                if (!o((i) it.next(), i11 + 1)) {
                    return false;
                }
            }
            return g(iVar.z());
        }
        f76181b.j("non-positive totalFrames in screen trace " + iVar.E());
        return false;
    }

    private boolean p(i iVar) {
        return iVar != null && iVar.B() > 0;
    }

    private boolean q(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        return !strTrim.isEmpty() && strTrim.length() <= 100;
    }

    @Override // tc.e
    public boolean c() {
        if (!o(this.f76182a, 0)) {
            f76181b.j("Invalid Trace:" + this.f76182a.E());
            return false;
        }
        if (!j(this.f76182a) || h(this.f76182a)) {
            return true;
        }
        f76181b.j("Invalid Counters for Trace:" + this.f76182a.E());
        return false;
    }
}
