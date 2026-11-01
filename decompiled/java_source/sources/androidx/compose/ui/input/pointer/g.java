package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.collection.x f4988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y f4989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4990c;

    public g(androidx.collection.x xVar, y yVar) {
        this.f4988a = xVar;
        this.f4989b = yVar;
    }

    public final boolean a(long j11) {
        Object obj;
        List listB = this.f4989b.b();
        int size = listB.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                obj = null;
                break;
            }
            obj = listB.get(i11);
            if (v.d(((z) obj).d(), j11)) {
                break;
            }
            i11++;
        }
        z zVar = (z) obj;
        if (zVar != null) {
            return zVar.a();
        }
        return false;
    }

    public final androidx.collection.x b() {
        return this.f4988a;
    }

    public final MotionEvent c() {
        return this.f4989b.a();
    }

    public final boolean d() {
        return this.f4990c;
    }

    public final void e(boolean z10) {
        this.f4990c = z10;
    }
}
