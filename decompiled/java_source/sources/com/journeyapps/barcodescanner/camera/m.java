package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import java.util.List;
import xe.q;

/* JADX INFO: loaded from: classes4.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private q f34003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f34004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f34005c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PreviewScalingStrategy f34006d = new n();

    public m(int i11, q qVar) {
        this.f34004b = i11;
        this.f34003a = qVar;
    }

    public q a(List list, boolean z10) {
        return this.f34006d.b(list, b(z10));
    }

    public q b(boolean z10) {
        q qVar = this.f34003a;
        if (qVar == null) {
            return null;
        }
        return z10 ? qVar.d() : qVar;
    }

    public int c() {
        return this.f34004b;
    }

    public Rect d(q qVar) {
        return this.f34006d.d(qVar, this.f34003a);
    }

    public void e(PreviewScalingStrategy previewScalingStrategy) {
        this.f34006d = previewScalingStrategy;
    }
}
