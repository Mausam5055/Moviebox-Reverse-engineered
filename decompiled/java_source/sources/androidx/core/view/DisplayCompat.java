package androidx.core.view;

import android.annotation.SuppressLint;
import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayCompat {
    private static final int DISPLAY_SIZE_4K_HEIGHT = 2160;
    private static final int DISPLAY_SIZE_4K_WIDTH = 3840;

    public static final class ModeCompat {
        private final boolean mIsNative;
        private final Display.Mode mMode;
        private final Point mPhysicalSize;

        static class a {
            static int a(Display.Mode mode) {
                return mode.getPhysicalHeight();
            }

            static int b(Display.Mode mode) {
                return mode.getPhysicalWidth();
            }
        }

        ModeCompat(Point point) {
            androidx.core.util.i.h(point, "physicalSize == null");
            this.mPhysicalSize = point;
            this.mMode = null;
            this.mIsNative = true;
        }

        ModeCompat(Display.Mode mode, Point point) {
            androidx.core.util.i.h(mode, "mode == null, can't wrap a null reference");
            androidx.core.util.i.h(point, "physicalSize == null");
            this.mPhysicalSize = point;
            this.mMode = mode;
            this.mIsNative = true;
        }

        ModeCompat(Display.Mode mode, boolean z10) {
            androidx.core.util.i.h(mode, "mode == null, can't wrap a null reference");
            this.mPhysicalSize = new Point(a.b(mode), a.a(mode));
            this.mMode = mode;
            this.mIsNative = z10;
        }

        public int getPhysicalHeight() {
            return this.mPhysicalSize.y;
        }

        public int getPhysicalWidth() {
            return this.mPhysicalSize.x;
        }

        @Deprecated
        public boolean isNative() {
            return this.mIsNative;
        }

        public Display.Mode toMode() {
            return this.mMode;
        }
    }

    static class a {
        static ModeCompat a(Context context, Display display) {
            Display.Mode mode = display.getMode();
            Point currentDisplaySizeFromWorkarounds = DisplayCompat.getCurrentDisplaySizeFromWorkarounds(context, display);
            return (currentDisplaySizeFromWorkarounds == null || d(mode, currentDisplaySizeFromWorkarounds)) ? new ModeCompat(mode, true) : new ModeCompat(mode, currentDisplaySizeFromWorkarounds);
        }

        public static ModeCompat[] b(Context context, Display display) {
            Display.Mode[] supportedModes = display.getSupportedModes();
            ModeCompat[] modeCompatArr = new ModeCompat[supportedModes.length];
            Display.Mode mode = display.getMode();
            Point currentDisplaySizeFromWorkarounds = DisplayCompat.getCurrentDisplaySizeFromWorkarounds(context, display);
            if (currentDisplaySizeFromWorkarounds == null || d(mode, currentDisplaySizeFromWorkarounds)) {
                for (int i11 = 0; i11 < supportedModes.length; i11++) {
                    modeCompatArr[i11] = new ModeCompat(supportedModes[i11], e(supportedModes[i11], mode));
                }
            } else {
                for (int i12 = 0; i12 < supportedModes.length; i12++) {
                    modeCompatArr[i12] = e(supportedModes[i12], mode) ? new ModeCompat(supportedModes[i12], currentDisplaySizeFromWorkarounds) : new ModeCompat(supportedModes[i12], false);
                }
            }
            return modeCompatArr;
        }

        static boolean c(Display display) {
            Display.Mode mode = display.getMode();
            for (Display.Mode mode2 : display.getSupportedModes()) {
                if (mode.getPhysicalHeight() < mode2.getPhysicalHeight() || mode.getPhysicalWidth() < mode2.getPhysicalWidth()) {
                    return false;
                }
            }
            return true;
        }

        static boolean d(Display.Mode mode, Point point) {
            return (mode.getPhysicalWidth() == point.x && mode.getPhysicalHeight() == point.y) || (mode.getPhysicalWidth() == point.y && mode.getPhysicalHeight() == point.x);
        }

        static boolean e(Display.Mode mode, Display.Mode mode2) {
            return mode.getPhysicalWidth() == mode2.getPhysicalWidth() && mode.getPhysicalHeight() == mode2.getPhysicalHeight();
        }
    }

    private DisplayCompat() {
    }

    static Point getCurrentDisplaySizeFromWorkarounds(Context context, Display display) {
        Point physicalDisplaySizeFromSystemProperties = Build.VERSION.SDK_INT < 28 ? parsePhysicalDisplaySizeFromSystemProperties("sys.display-size", display) : parsePhysicalDisplaySizeFromSystemProperties("vendor.display-size", display);
        if (physicalDisplaySizeFromSystemProperties != null) {
            return physicalDisplaySizeFromSystemProperties;
        }
        if (isSonyBravia4kTv(context) && isCurrentModeTheLargestMode(display)) {
            return new Point(DISPLAY_SIZE_4K_WIDTH, DISPLAY_SIZE_4K_HEIGHT);
        }
        return null;
    }

    private static Point getDisplaySize(Context context, Display display) {
        Point currentDisplaySizeFromWorkarounds = getCurrentDisplaySizeFromWorkarounds(context, display);
        if (currentDisplaySizeFromWorkarounds != null) {
            return currentDisplaySizeFromWorkarounds;
        }
        Point point = new Point();
        display.getRealSize(point);
        return point;
    }

    public static ModeCompat getMode(Context context, Display display) {
        return a.a(context, display);
    }

    @SuppressLint({"ArrayReturn"})
    public static ModeCompat[] getSupportedModes(Context context, Display display) {
        return a.b(context, display);
    }

    private static String getSystemProperty(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception unused) {
            return null;
        }
    }

    static boolean isCurrentModeTheLargestMode(Display display) {
        return a.c(display);
    }

    private static boolean isSonyBravia4kTv(Context context) {
        return isTv(context) && "Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd");
    }

    private static boolean isTv(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    private static Point parseDisplaySize(String str) throws NumberFormatException {
        String[] strArrSplit = str.trim().split("x", -1);
        if (strArrSplit.length == 2) {
            int i11 = Integer.parseInt(strArrSplit[0]);
            int i12 = Integer.parseInt(strArrSplit[1]);
            if (i11 > 0 && i12 > 0) {
                return new Point(i11, i12);
            }
        }
        throw new NumberFormatException();
    }

    private static Point parsePhysicalDisplaySizeFromSystemProperties(String str, Display display) {
        if (display.getDisplayId() != 0) {
            return null;
        }
        String systemProperty = getSystemProperty(str);
        if (!TextUtils.isEmpty(systemProperty) && systemProperty != null) {
            try {
                return parseDisplaySize(systemProperty);
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }
}
