package l0;

import android.graphics.Paint;
import android.text.Layout;
import k0.f1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f68412a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            try {
                iArr[Layout.Alignment.ALIGN_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f68412a = iArr;
        }
    }

    public static final float a(Layout layout, int i11, Paint paint) {
        float fAbs;
        float width;
        float lineLeft = layout.getLineLeft(i11);
        if (!f1.m(layout, i11) || layout.getParagraphDirection(i11) != 1 || lineLeft >= 0.0f) {
            return 0.0f;
        }
        float primaryHorizontal = (layout.getPrimaryHorizontal(layout.getLineStart(i11) + layout.getEllipsisStart(i11)) - lineLeft) + paint.measureText("…");
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i11);
        if ((paragraphAlignment == null ? -1 : a.f68412a[paragraphAlignment.ordinal()]) == 1) {
            fAbs = Math.abs(lineLeft);
            width = (layout.getWidth() - primaryHorizontal) / 2.0f;
        } else {
            fAbs = Math.abs(lineLeft);
            width = layout.getWidth() - primaryHorizontal;
        }
        return fAbs + width;
    }

    public static /* synthetic */ float b(Layout layout, int i11, Paint paint, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            paint = layout.getPaint();
        }
        return a(layout, i11, paint);
    }

    public static final float c(Layout layout, int i11, Paint paint) {
        float width;
        float width2;
        if (!f1.m(layout, i11)) {
            return 0.0f;
        }
        if (layout.getParagraphDirection(i11) != -1 || layout.getWidth() >= layout.getLineRight(i11)) {
            return 0.0f;
        }
        float lineRight = (layout.getLineRight(i11) - layout.getPrimaryHorizontal(layout.getLineStart(i11) + layout.getEllipsisStart(i11))) + paint.measureText("…");
        Layout.Alignment paragraphAlignment = layout.getParagraphAlignment(i11);
        if ((paragraphAlignment != null ? a.f68412a[paragraphAlignment.ordinal()] : -1) == 1) {
            width = layout.getWidth() - layout.getLineRight(i11);
            width2 = (layout.getWidth() - lineRight) / 2.0f;
        } else {
            width = layout.getWidth() - layout.getLineRight(i11);
            width2 = layout.getWidth() - lineRight;
        }
        return width - width2;
    }

    public static /* synthetic */ float d(Layout layout, int i11, Paint paint, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            paint = layout.getPaint();
        }
        return c(layout, i11, paint);
    }
}
