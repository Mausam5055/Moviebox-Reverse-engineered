package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class PointerInteropFilter_androidKt {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, final AndroidViewHolder androidViewHolder) {
        PointerInteropFilter pointerInteropFilter = new PointerInteropFilter();
        pointerInteropFilter.k(new Function1<MotionEvent, Boolean>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$pointerInteropFilter$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(MotionEvent motionEvent) {
                boolean zDispatchTouchEvent;
                switch (motionEvent.getActionMasked()) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        zDispatchTouchEvent = androidViewHolder.dispatchTouchEvent(motionEvent);
                        break;
                    default:
                        zDispatchTouchEvent = androidViewHolder.dispatchGenericMotionEvent(motionEvent);
                        break;
                }
                return Boolean.valueOf(zDispatchTouchEvent);
            }
        });
        k0 k0Var = new k0();
        pointerInteropFilter.l(k0Var);
        androidViewHolder.setOnRequestDisallowInterceptTouchEvent$ui_release(k0Var);
        return fVar.e(pointerInteropFilter);
    }
}
