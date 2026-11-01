package androidx.compose.foundation.gestures;

import androidx.compose.ui.node.m1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class l extends androidx.compose.ui.f.c implements m1 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final a f2724p = new a(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f2725q = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Object f2726n = f2724p;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f2727o;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public l(boolean z10) {
        this.f2727o = z10;
    }

    @Override // androidx.compose.ui.node.m1
    public Object D() {
        return this.f2726n;
    }

    public final boolean D1() {
        return this.f2727o;
    }

    public final void E1(boolean z10) {
        this.f2727o = z10;
    }
}
