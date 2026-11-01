package com.cloud.tmc.miniapp.action;

import android.view.View;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface ClickAction extends View.OnClickListener {

    public static final class DefaultImpls {
        public static void onClick(ClickAction clickAction, View view) {
            Intrinsics.h(view, "view");
        }

        public static void setOnClickListener(ClickAction clickAction, View.OnClickListener onClickListener, int... ids) {
            Intrinsics.h(ids, "ids");
            for (int i11 : ids) {
                View viewFindViewById = clickAction.findViewById(i11);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(onClickListener);
                }
            }
        }

        public static void setOnClickListener(ClickAction clickAction, View.OnClickListener onClickListener, View... views) {
            Intrinsics.h(views, "views");
            for (View view : views) {
                if (view != null) {
                    view.setOnClickListener(onClickListener);
                }
            }
        }

        public static void setOnClickListener(ClickAction clickAction, int... ids) {
            Intrinsics.h(ids, "ids");
            clickAction.setOnClickListener(clickAction, Arrays.copyOf(ids, ids.length));
        }

        public static void setOnClickListener(ClickAction clickAction, View... views) {
            Intrinsics.h(views, "views");
            clickAction.setOnClickListener(clickAction, (View[]) Arrays.copyOf(views, views.length));
        }
    }

    <V extends View> V findViewById(int i11);

    @Override // android.view.View.OnClickListener
    void onClick(View view);

    void setOnClickListener(View.OnClickListener onClickListener, int... iArr);

    void setOnClickListener(View.OnClickListener onClickListener, View... viewArr);

    void setOnClickListener(int... iArr);

    void setOnClickListener(View... viewArr);
}
