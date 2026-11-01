package androidx.core.view;

import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class HapticFeedbackConstantsCompat {
    public static final int CLOCK_TICK = 4;
    public static final int CONFIRM = 16;
    public static final int CONTEXT_CLICK = 6;
    public static final int DRAG_START = 25;
    static final int FIRST_CONSTANT_INT = 0;
    public static final int FLAG_IGNORE_VIEW_SETTING = 1;
    public static final int GESTURE_END = 13;
    public static final int GESTURE_START = 12;
    public static final int GESTURE_THRESHOLD_ACTIVATE = 23;
    public static final int GESTURE_THRESHOLD_DEACTIVATE = 24;
    public static final int KEYBOARD_PRESS = 3;
    public static final int KEYBOARD_RELEASE = 7;
    public static final int KEYBOARD_TAP = 3;
    static final int LAST_CONSTANT_INT = 27;
    public static final int LONG_PRESS = 0;
    public static final int NO_HAPTICS = -1;
    public static final int REJECT = 17;
    public static final int SEGMENT_FREQUENT_TICK = 27;
    public static final int SEGMENT_TICK = 26;
    public static final int TEXT_HANDLE_MOVE = 9;
    public static final int TOGGLE_OFF = 22;
    public static final int TOGGLE_ON = 21;
    public static final int VIRTUAL_KEY = 1;
    public static final int VIRTUAL_KEY_RELEASE = 8;

    @Retention(RetentionPolicy.SOURCE)
    public @interface HapticFeedbackFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface HapticFeedbackType {
    }

    private HapticFeedbackConstantsCompat() {
    }

    /* JADX WARN: Code duplicated, block: B:24:0x002c  */
    /* JADX WARN: Code duplicated, block: B:25:0x002e  */
    static int getFeedbackConstantOrFallback(int i11) {
        if (i11 == -1) {
            return -1;
        }
        int i12 = Build.VERSION.SDK_INT;
        int i13 = 6;
        if (i12 < 34) {
            switch (i11) {
                case 21:
                case 23:
                case 26:
                    i11 = 6;
                    break;
                case 22:
                case 24:
                case 27:
                    i11 = 4;
                    break;
                case 25:
                    i11 = 0;
                    break;
            }
        }
        if (i12 >= 30) {
            i13 = i11;
        } else if (i11 == 12) {
            i13 = 1;
        } else if (i11 != 13) {
            if (i11 == 16) {
                i13 = 1;
            } else if (i11 != 17) {
                i13 = i11;
            } else {
                i13 = 0;
            }
        }
        if (i12 >= 27 || !(i13 == 7 || i13 == 8 || i13 == 9)) {
            return i13;
        }
        return -1;
    }
}
