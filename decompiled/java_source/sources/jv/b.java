package jv;

import androidx.p009lifecycle.b0;
import java.util.LinkedList;
import kotlin.Unit;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends b0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final LinkedList f66301l = new LinkedList();

    @Override // androidx.p009lifecycle.b0, androidx.p009lifecycle.LiveData
    public void n(Object obj) {
        synchronized (this.f66301l) {
            try {
                this.f66301l.add(obj);
                if (this.f66301l.size() == 1) {
                    super.n(obj);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.p009lifecycle.b0, androidx.p009lifecycle.LiveData
    public void q(Object obj) {
        super.q(obj);
        synchronized (this.f66301l) {
            this.f66301l.pollFirst();
            Object objPeekFirst = this.f66301l.peekFirst();
            if (objPeekFirst != null) {
                super.n(objPeekFirst);
                Unit unit = Unit.f67061a;
            }
        }
    }
}
