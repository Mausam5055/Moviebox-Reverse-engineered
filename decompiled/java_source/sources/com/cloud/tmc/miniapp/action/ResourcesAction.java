package com.cloud.tmc.miniapp.action;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.core.content.b;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface ResourcesAction {

    public static final class DefaultImpls {
        public static int getColor(ResourcesAction resourcesAction, int i11) {
            return b.getColor(resourcesAction.getContext(), i11);
        }

        public static Drawable getDrawable(ResourcesAction resourcesAction, int i11) {
            return b.getDrawable(resourcesAction.getContext(), i11);
        }

        public static Resources getResources(ResourcesAction resourcesAction) {
            Resources resources = resourcesAction.getContext().getResources();
            Intrinsics.g(resources, "getContext().resources");
            return resources;
        }

        public static String getString(ResourcesAction resourcesAction, int i11) {
            return resourcesAction.getContext().getString(i11);
        }

        public static String getString(ResourcesAction resourcesAction, int i11, Object... formatArgs) {
            Intrinsics.h(formatArgs, "formatArgs");
            return resourcesAction.getResources().getString(i11, Arrays.copyOf(formatArgs, formatArgs.length));
        }

        public static <S> S getSystemService(ResourcesAction resourcesAction, Class<S> serviceClass) {
            Intrinsics.h(serviceClass, "serviceClass");
            S s11 = (S) b.getSystemService(resourcesAction.getContext(), serviceClass);
            Intrinsics.e(s11);
            return s11;
        }
    }

    int getColor(int i11);

    Context getContext();

    Drawable getDrawable(int i11);

    Resources getResources();

    String getString(int i11);

    String getString(int i11, Object... objArr);

    <S> S getSystemService(Class<S> cls);
}
