package androidx.compose.ui.viewinterop;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidView_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Function1 f6513a = new Function1<View, Unit>() { // from class: androidx.compose.ui.viewinterop.AndroidView_androidKt$NoOpUpdate$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((View) obj);
            return Unit.f67061a;
        }

        public final void invoke(View view) {
        }
    };

    public static final Function1 a() {
        return f6513a;
    }
}
