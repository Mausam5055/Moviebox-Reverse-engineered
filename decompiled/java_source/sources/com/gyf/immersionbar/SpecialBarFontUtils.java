package com.gyf.immersionbar;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
class SpecialBarFontUtils {
    private static int SYSTEM_UI_FLAG_LIGHT_STATUS_BAR;
    private static Method mSetStatusBarColorIcon;
    private static Method mSetStatusBarDarkIcon;
    private static Field mStatusBarColorFiled;

    static {
        try {
            mSetStatusBarColorIcon = Activity.class.getMethod("setStatusBarDarkIcon", Integer.TYPE);
        } catch (NoSuchMethodException unused) {
        }
        try {
            mSetStatusBarDarkIcon = Activity.class.getMethod("setStatusBarDarkIcon", Boolean.TYPE);
        } catch (NoSuchMethodException unused2) {
        }
        try {
            mStatusBarColorFiled = WindowManager.LayoutParams.class.getField("statusBarColor");
        } catch (NoSuchFieldException unused3) {
        }
        try {
            SYSTEM_UI_FLAG_LIGHT_STATUS_BAR = View.class.getField("SYSTEM_UI_FLAG_LIGHT_STATUS_BAR").getInt(null);
        } catch (IllegalAccessException | NoSuchFieldException unused4) {
        }
    }

    SpecialBarFontUtils() {
    }

    private static boolean changeMeizuFlag(WindowManager.LayoutParams layoutParams, String str, boolean z10) {
        try {
            Field declaredField = layoutParams.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            int i11 = declaredField.getInt(layoutParams);
            Field declaredField2 = layoutParams.getClass().getDeclaredField("meizuFlags");
            declaredField2.setAccessible(true);
            int i12 = declaredField2.getInt(layoutParams);
            int i13 = z10 ? i11 | i12 : (~i11) & i12;
            if (i12 == i13) {
                return false;
            }
            declaredField2.setInt(layoutParams, i13);
            return true;
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
            return false;
        } catch (IllegalArgumentException e12) {
            e12.printStackTrace();
            return false;
        } catch (NoSuchFieldException e13) {
            e13.printStackTrace();
            return false;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    static boolean isBlackColor(int i11, int i12) {
        return toGrey(i11) < i12;
    }

    @SuppressLint({"PrivateApi"})
    static void setMIUIBarDark(Window window, String str, boolean z10) {
        if (window != null) {
            Class<?> cls = window.getClass();
            try {
                Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i11 = cls2.getField(str).getInt(cls2);
                Class<?> cls3 = Integer.TYPE;
                Method method = cls.getMethod("setExtraFlags", cls3, cls3);
                if (z10) {
                    method.invoke(window, Integer.valueOf(i11), Integer.valueOf(i11));
                } else {
                    method.invoke(window, 0, Integer.valueOf(i11));
                }
            } catch (Exception unused) {
            }
        }
    }

    private static void setStatusBarColor(Window window, int i11) {
        WindowManager.LayoutParams attributes = window.getAttributes();
        Field field = mStatusBarColorFiled;
        if (field != null) {
            try {
                if (field.getInt(attributes) != i11) {
                    mStatusBarColorFiled.set(attributes, Integer.valueOf(i11));
                    window.setAttributes(attributes);
                }
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
            }
        }
    }

    public static void setStatusBarDarkIcon(Activity activity, int i11) {
        Method method = mSetStatusBarColorIcon;
        if (method == null) {
            boolean zIsBlackColor = isBlackColor(i11, 50);
            if (mStatusBarColorFiled == null) {
                setStatusBarDarkIcon(activity, zIsBlackColor);
                return;
            } else {
                setStatusBarDarkIcon(activity, zIsBlackColor, zIsBlackColor);
                setStatusBarDarkIcon(activity.getWindow(), i11);
                return;
            }
        }
        try {
            method.invoke(activity, Integer.valueOf(i11));
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (InvocationTargetException e12) {
            e12.printStackTrace();
        }
    }

    public static void setStatusBarDarkIcon(Activity activity, boolean z10) {
        setStatusBarDarkIcon(activity, z10, true);
    }

    private static void setStatusBarDarkIcon(Activity activity, boolean z10, boolean z11) {
        Method method = mSetStatusBarDarkIcon;
        if (method == null) {
            if (z11) {
                setStatusBarDarkIcon(activity.getWindow(), z10);
                return;
            }
            return;
        }
        try {
            method.invoke(activity, Boolean.valueOf(z10));
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (InvocationTargetException e12) {
            e12.printStackTrace();
        }
    }

    private static void setStatusBarDarkIcon(View view, boolean z10) {
        int systemUiVisibility = view.getSystemUiVisibility();
        int i11 = z10 ? SYSTEM_UI_FLAG_LIGHT_STATUS_BAR | systemUiVisibility : (~SYSTEM_UI_FLAG_LIGHT_STATUS_BAR) & systemUiVisibility;
        if (i11 != systemUiVisibility) {
            view.setSystemUiVisibility(i11);
        }
    }

    public static void setStatusBarDarkIcon(Window window, int i11) {
        try {
            setStatusBarColor(window, i11);
            setStatusBarDarkIcon(window.getDecorView(), true);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static void setStatusBarDarkIcon(Window window, boolean z10) {
        setStatusBarDarkIcon(window.getDecorView(), z10);
        setStatusBarColor(window, 0);
    }

    static int toGrey(int i11) {
        return (((((i11 & 16711680) >> 16) * 38) + (((65280 & i11) >> 8) * 75)) + ((i11 & 255) * 15)) >> 7;
    }
}
