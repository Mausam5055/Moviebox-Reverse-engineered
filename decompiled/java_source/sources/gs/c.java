package gs;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes7.dex */
public interface c {

    public static final class a {
        public static int a(c cVar) {
            return 17;
        }

        public static float b(c cVar) {
            return 0.0f;
        }

        public static float c(c cVar) {
            return 0.0f;
        }

        public static int d(c cVar) {
            return 0;
        }

        public static int e(c cVar) {
            return 0;
        }
    }

    View createView(Context context);

    int getGravity();

    float getHorizontalMargin();

    float getVerticalMargin();

    int getXOffset();

    int getYOffset();
}
