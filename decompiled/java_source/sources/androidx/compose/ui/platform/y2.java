package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;

/* JADX INFO: loaded from: classes.dex */
public interface y2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f5884a = a.f5885a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f5885a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final y2 f5886b = new y2() { // from class: androidx.compose.ui.platform.x2
            @Override // androidx.compose.ui.platform.y2
            public final Recomposer a(View view) {
                return y2.a.b(view);
            }
        };

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Recomposer b(View view) {
            return WindowRecomposer_androidKt.c(view, null, null, 3, null);
        }

        public final y2 c() {
            return f5886b;
        }
    }

    Recomposer a(View view);
}
