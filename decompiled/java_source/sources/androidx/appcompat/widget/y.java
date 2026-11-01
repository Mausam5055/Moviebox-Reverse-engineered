package androidx.appcompat.widget;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f2124a = {R.attr.state_checked};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f2125b = new int[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Rect f2126c = new Rect();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final boolean f2127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final Method f2128b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Field f2129c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Field f2130d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Field f2131e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final Field f2132f;

        /* JADX WARN: Code duplicated, block: B:25:0x004a  */
        /* JADX WARN: Code duplicated, block: B:26:0x0057  */
        static {
            Method method;
            Field field;
            Field field2;
            Field field3;
            Field field4;
            boolean z10;
            try {
                Class<?> cls = Class.forName("android.graphics.Insets");
                method = Drawable.class.getMethod("getOpticalInsets", null);
                try {
                    field = cls.getField(TtmlNode.LEFT);
                    try {
                        field2 = cls.getField(IntegrationConstants.TAB_BAR_POSITION_TOP);
                        try {
                            field3 = cls.getField(TtmlNode.RIGHT);
                            try {
                                field4 = cls.getField(IntegrationConstants.TAB_BAR_POSITION_DEFAULT);
                                z10 = true;
                            } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused) {
                                field4 = null;
                                z10 = false;
                            }
                        } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused2) {
                            field3 = null;
                        }
                    } catch (ClassNotFoundException unused3) {
                        field2 = null;
                        field3 = field2;
                        field4 = null;
                        z10 = false;
                        if (z10) {
                            f2128b = method;
                            f2129c = field;
                            f2130d = field2;
                            f2131e = field3;
                            f2132f = field4;
                            f2127a = true;
                            return;
                        }
                        f2128b = null;
                        f2129c = null;
                        f2130d = null;
                        f2131e = null;
                        f2132f = null;
                        f2127a = false;
                    } catch (NoSuchFieldException unused4) {
                        field2 = null;
                        field3 = field2;
                        field4 = null;
                        z10 = false;
                        if (z10) {
                            f2128b = method;
                            f2129c = field;
                            f2130d = field2;
                            f2131e = field3;
                            f2132f = field4;
                            f2127a = true;
                            return;
                        }
                        f2128b = null;
                        f2129c = null;
                        f2130d = null;
                        f2131e = null;
                        f2132f = null;
                        f2127a = false;
                    } catch (NoSuchMethodException unused5) {
                        field2 = null;
                        field3 = field2;
                        field4 = null;
                        z10 = false;
                        if (z10) {
                            f2128b = method;
                            f2129c = field;
                            f2130d = field2;
                            f2131e = field3;
                            f2132f = field4;
                            f2127a = true;
                            return;
                        }
                        f2128b = null;
                        f2129c = null;
                        f2130d = null;
                        f2131e = null;
                        f2132f = null;
                        f2127a = false;
                    }
                } catch (ClassNotFoundException unused6) {
                    field = null;
                    field2 = field;
                    field3 = field2;
                    field4 = null;
                    z10 = false;
                    if (z10) {
                        f2128b = method;
                        f2129c = field;
                        f2130d = field2;
                        f2131e = field3;
                        f2132f = field4;
                        f2127a = true;
                        return;
                    }
                    f2128b = null;
                    f2129c = null;
                    f2130d = null;
                    f2131e = null;
                    f2132f = null;
                    f2127a = false;
                } catch (NoSuchFieldException unused7) {
                    field = null;
                    field2 = field;
                    field3 = field2;
                    field4 = null;
                    z10 = false;
                    if (z10) {
                        f2128b = method;
                        f2129c = field;
                        f2130d = field2;
                        f2131e = field3;
                        f2132f = field4;
                        f2127a = true;
                        return;
                    }
                    f2128b = null;
                    f2129c = null;
                    f2130d = null;
                    f2131e = null;
                    f2132f = null;
                    f2127a = false;
                } catch (NoSuchMethodException unused8) {
                    field = null;
                    field2 = field;
                    field3 = field2;
                    field4 = null;
                    z10 = false;
                    if (z10) {
                        f2128b = method;
                        f2129c = field;
                        f2130d = field2;
                        f2131e = field3;
                        f2132f = field4;
                        f2127a = true;
                        return;
                    }
                    f2128b = null;
                    f2129c = null;
                    f2130d = null;
                    f2131e = null;
                    f2132f = null;
                    f2127a = false;
                }
            } catch (ClassNotFoundException unused9) {
                method = null;
                field = null;
            } catch (NoSuchFieldException unused10) {
                method = null;
                field = null;
            } catch (NoSuchMethodException unused11) {
                method = null;
                field = null;
            }
            if (z10) {
                f2128b = method;
                f2129c = field;
                f2130d = field2;
                f2131e = field3;
                f2132f = field4;
                f2127a = true;
                return;
            }
            f2128b = null;
            f2129c = null;
            f2130d = null;
            f2131e = null;
            f2132f = null;
            f2127a = false;
        }

        static Rect a(Drawable drawable) {
            if (Build.VERSION.SDK_INT < 29 && f2127a) {
                try {
                    Object objInvoke = f2128b.invoke(drawable, null);
                    if (objInvoke != null) {
                        return new Rect(f2129c.getInt(objInvoke), f2130d.getInt(objInvoke), f2131e.getInt(objInvoke), f2132f.getInt(objInvoke));
                    }
                } catch (IllegalAccessException | InvocationTargetException unused) {
                }
            }
            return y.f2126c;
        }
    }

    static class b {
        static Insets a(Drawable drawable) {
            return drawable.getOpticalInsets();
        }
    }

    public static boolean a(Drawable drawable) {
        return true;
    }

    static void b(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 29 || i11 >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        c(drawable);
    }

    private static void c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f2124a);
        } else {
            drawable.setState(f2125b);
        }
        drawable.setState(state);
    }

    public static Rect d(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 29) {
            return a.a(a1.a.q(drawable));
        }
        Insets insetsA = b.a(drawable);
        return new Rect(insetsA.left, insetsA.top, insetsA.right, insetsA.bottom);
    }

    public static PorterDuff.Mode e(int i11, PorterDuff.Mode mode) {
        if (i11 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i11 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i11 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i11) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
