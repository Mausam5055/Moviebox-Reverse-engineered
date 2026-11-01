package com.cloud.tmc.miniapp.action;

import android.os.Bundle;
import android.os.Parcelable;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface BundleAction {

    public static final class DefaultImpls {
        public static boolean getBoolean(BundleAction bundleAction, String name) {
            Intrinsics.h(name, "name");
            return bundleAction.getBoolean(name, false);
        }

        public static boolean getBoolean(BundleAction bundleAction, String name, boolean z10) {
            Intrinsics.h(name, "name");
            Bundle bundle = bundleAction.getBundle();
            return bundle == null ? z10 : bundle.getBoolean(name, z10);
        }

        public static double getDouble(BundleAction bundleAction, String name) {
            Intrinsics.h(name, "name");
            return bundleAction.getDouble(name, 0.0d);
        }

        public static double getDouble(BundleAction bundleAction, String name, double d11) {
            Intrinsics.h(name, "name");
            Bundle bundle = bundleAction.getBundle();
            return bundle == null ? d11 : bundle.getDouble(name, d11);
        }

        public static float getFloat(BundleAction bundleAction, String name) {
            Intrinsics.h(name, "name");
            return bundleAction.getFloat(name, 0.0f);
        }

        public static float getFloat(BundleAction bundleAction, String name, float f11) {
            Intrinsics.h(name, "name");
            Bundle bundle = bundleAction.getBundle();
            return bundle == null ? f11 : bundle.getFloat(name, f11);
        }

        public static int getInt(BundleAction bundleAction, String name) {
            Intrinsics.h(name, "name");
            return bundleAction.getInt(name, 0);
        }

        public static int getInt(BundleAction bundleAction, String name, int i11) {
            Intrinsics.h(name, "name");
            Bundle bundle = bundleAction.getBundle();
            return bundle == null ? i11 : bundle.getInt(name, i11);
        }

        public static ArrayList<Integer> getIntegerArrayList(BundleAction bundleAction, String name) {
            Intrinsics.h(name, "name");
            Bundle bundle = bundleAction.getBundle();
            if (bundle == null) {
                return null;
            }
            return bundle.getIntegerArrayList(name);
        }

        public static long getLong(BundleAction bundleAction, String name) {
            Intrinsics.h(name, "name");
            return bundleAction.getLong(name, 0L);
        }

        public static long getLong(BundleAction bundleAction, String name, long j11) {
            Intrinsics.h(name, "name");
            Bundle bundle = bundleAction.getBundle();
            return bundle == null ? j11 : bundle.getLong(name, j11);
        }

        public static <P extends Parcelable> P getParcelable(BundleAction bundleAction, String name) {
            Intrinsics.h(name, "name");
            Bundle bundle = bundleAction.getBundle();
            if (bundle == null) {
                return null;
            }
            return (P) bundle.getParcelable(name);
        }

        public static <S extends Serializable> S getSerializable(BundleAction bundleAction, String name) {
            Intrinsics.h(name, "name");
            Bundle bundle = bundleAction.getBundle();
            if (bundle == null) {
                return null;
            }
            return (S) bundle.getSerializable(name);
        }

        public static String getString(BundleAction bundleAction, String name) {
            Intrinsics.h(name, "name");
            Bundle bundle = bundleAction.getBundle();
            if (bundle == null) {
                return null;
            }
            return bundle.getString(name);
        }

        public static ArrayList<String> getStringArrayList(BundleAction bundleAction, String name) {
            Intrinsics.h(name, "name");
            Bundle bundle = bundleAction.getBundle();
            if (bundle == null) {
                return null;
            }
            return bundle.getStringArrayList(name);
        }
    }

    boolean getBoolean(String str);

    boolean getBoolean(String str, boolean z10);

    Bundle getBundle();

    double getDouble(String str);

    double getDouble(String str, double d11);

    float getFloat(String str);

    float getFloat(String str, float f11);

    int getInt(String str);

    int getInt(String str, int i11);

    ArrayList<Integer> getIntegerArrayList(String str);

    long getLong(String str);

    long getLong(String str, long j11);

    <P extends Parcelable> P getParcelable(String str);

    <S extends Serializable> S getSerializable(String str);

    String getString(String str);

    ArrayList<String> getStringArrayList(String str);
}
