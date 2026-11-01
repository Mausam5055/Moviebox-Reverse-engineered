package lt;

import android.R;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface a {

    /* JADX INFO: renamed from: lt.a$a, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes7.dex */
    public static final class C0833a {
        public static TextView a(a aVar, View view) {
            Intrinsics.h(view, "view");
            if (view instanceof TextView) {
                if (view.getId() == -1) {
                    view.setId(R.id.message);
                } else if (view.getId() != 16908299) {
                    throw new IllegalArgumentException("You must set the ID value of TextView to android.R.id.message");
                }
                return (TextView) view;
            }
            if (!(view.findViewById(R.id.message) instanceof TextView)) {
                throw new IllegalArgumentException("You must include a TextView with an ID value of android.R.id.message");
            }
            View viewFindViewById = view.findViewById(R.id.message);
            Intrinsics.f(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
            return (TextView) viewFindViewById;
        }
    }

    boolean a();

    void cancel();

    int getDuration();

    int getGravity();

    float getHorizontalMargin();

    float getVerticalMargin();

    View getView();

    int getXOffset();

    int getYOffset();

    void setDuration(int i11);

    void setGravity(int i11, int i12, int i13);

    void setMargin(float f11, float f12);

    void setText(CharSequence charSequence);

    void setView(View view);

    void show();
}
