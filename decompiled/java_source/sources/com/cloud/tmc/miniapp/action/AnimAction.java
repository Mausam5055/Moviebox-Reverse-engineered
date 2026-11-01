package com.cloud.tmc.miniapp.action;

import com.cloud.tmc.miniapp.R;

/* JADX INFO: loaded from: classes3.dex */
public interface AnimAction {
    public static final int ANIM_DEFAULT = -1;
    public static final int ANIM_EMPTY = 0;
    public static final int ANIM_TOAST = 16973828;
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        public static final int ANIM_DEFAULT = -1;
        public static final int ANIM_EMPTY = 0;
        public static final int ANIM_TOAST = 16973828;
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final int ANIM_SCALE = R.style.ScaleAnimStyle;
        private static final int ANIM_TOP = R.style.TopAnimStyle;
        private static final int ANIM_BOTTOM = R.style.BottomAnimStyle;
        private static final int ANIM_LEFT = R.style.LeftAnimStyle;
        private static final int ANIM_RIGHT = R.style.RightAnimStyle;

        private Companion() {
        }

        public final int getANIM_BOTTOM() {
            return ANIM_BOTTOM;
        }

        public final int getANIM_LEFT() {
            return ANIM_LEFT;
        }

        public final int getANIM_RIGHT() {
            return ANIM_RIGHT;
        }

        public final int getANIM_SCALE() {
            return ANIM_SCALE;
        }

        public final int getANIM_TOP() {
            return ANIM_TOP;
        }
    }
}
