package androidx.compose.ui.text.font;

import androidx.compose.runtime.a3;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public interface e0 extends a3 {

    public static final class a implements e0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f6122a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f6123b;

        public a(Object obj, boolean z10) {
            this.f6122a = obj;
            this.f6123b = z10;
        }

        public /* synthetic */ a(Object obj, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i11 & 2) != 0 ? true : z10);
        }

        @Override // androidx.compose.ui.text.font.e0
        public boolean a() {
            return this.f6123b;
        }

        @Override // androidx.compose.runtime.a3
        public Object getValue() {
            return this.f6122a;
        }
    }

    boolean a();
}
