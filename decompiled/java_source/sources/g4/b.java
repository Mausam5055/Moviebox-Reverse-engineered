package g4;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static View a(View view, int i11) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View viewFindViewById = viewGroup.getChildAt(i12).findViewById(i11);
            if (viewFindViewById != null) {
                return viewFindViewById;
            }
        }
        return null;
    }
}
