package com.cloud.tmc.miniapp.utils.toast.config;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public interface IToastStyle<V extends View> {

    public static final class DefaultImpls {
        public static <V extends View> int getGravity(IToastStyle<V> iToastStyle) {
            return 17;
        }

        public static <V extends View> float getHorizontalMargin(IToastStyle<V> iToastStyle) {
            return 0.0f;
        }

        public static <V extends View> float getVerticalMargin(IToastStyle<V> iToastStyle) {
            return 0.0f;
        }

        public static <V extends View> int getXOffset(IToastStyle<V> iToastStyle) {
            return 0;
        }

        public static <V extends View> int getYOffset(IToastStyle<V> iToastStyle) {
            return 0;
        }
    }

    V createView(Context context);

    int getGravity();

    float getHorizontalMargin();

    ToastType getToastType();

    float getVerticalMargin();

    int getXOffset();

    int getYOffset();
}
