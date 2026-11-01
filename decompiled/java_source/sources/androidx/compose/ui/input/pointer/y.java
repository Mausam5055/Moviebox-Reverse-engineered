package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f5075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final MotionEvent f5076c;

    public y(long j11, List list, MotionEvent motionEvent) {
        this.f5074a = j11;
        this.f5075b = list;
        this.f5076c = motionEvent;
    }

    public final MotionEvent a() {
        return this.f5076c;
    }

    public final List b() {
        return this.f5075b;
    }
}
