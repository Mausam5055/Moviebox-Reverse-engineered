package oh;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class f extends LinkMovementMethod {
    public f(e eVar) {
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView widget, Spannable buffer, MotionEvent event) {
        Intrinsics.h(widget, "widget");
        Intrinsics.h(buffer, "buffer");
        Intrinsics.h(event, "event");
        int action = event.getAction();
        if (action == 0 || action == 1) {
            int x10 = (int) event.getX();
            int y10 = (int) event.getY();
            int totalPaddingLeft = x10 - widget.getTotalPaddingLeft();
            int totalPaddingTop = y10 - widget.getTotalPaddingTop();
            int scrollX = totalPaddingLeft + widget.getScrollX();
            int scrollY = totalPaddingTop + widget.getScrollY();
            Layout layout = widget.getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) buffer.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            if (clickableSpanArr.length != 0) {
                if (action == 0) {
                    Selection.setSelection(buffer, buffer.getSpanStart(clickableSpanArr[0]), buffer.getSpanEnd(clickableSpanArr[0]));
                } else if (action == 1) {
                    ClickableSpan clickableSpan = clickableSpanArr[0];
                    if (clickableSpan instanceof URLSpan) {
                        Intrinsics.f(clickableSpan, "null cannot be cast to non-null type android.text.style.URLSpan");
                        clickableSpanArr[0].onClick(widget);
                    }
                }
                return true;
            }
            Selection.removeSelection(buffer);
        }
        return super.onTouchEvent(widget, buffer, event);
    }
}
