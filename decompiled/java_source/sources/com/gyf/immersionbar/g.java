package com.gyf.immersionbar;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;

/* JADX INFO: loaded from: classes4.dex */
abstract class g {

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f33118a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f33119b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public NavigationBarType f33120c;

        a() {
        }

        public String toString() {
            return "GestureBean{isGesture=" + this.f33118a + ", checkNavigation=" + this.f33119b + ", type=" + this.f33120c + '}';
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x007b A[PHI: r1 r2
  0x007b: PHI (r1v15 com.gyf.immersionbar.NavigationBarType) = (r1v13 com.gyf.immersionbar.NavigationBarType), (r1v26 com.gyf.immersionbar.NavigationBarType) binds: [B:69:0x00d4, B:39:0x0079] A[DONT_GENERATE, DONT_INLINE]
  0x007b: PHI (r2v14 int) = (r2v13 int), (r2v27 int) binds: [B:69:0x00d4, B:39:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:47:0x008e A[PHI: r1 r2
  0x008e: PHI (r1v4 com.gyf.immersionbar.NavigationBarType) = 
  (r1v2 com.gyf.immersionbar.NavigationBarType)
  (r1v13 com.gyf.immersionbar.NavigationBarType)
  (r1v16 com.gyf.immersionbar.NavigationBarType)
  (r1v17 com.gyf.immersionbar.NavigationBarType)
  (r1v19 com.gyf.immersionbar.NavigationBarType)
  (r1v21 com.gyf.immersionbar.NavigationBarType)
  (r1v26 com.gyf.immersionbar.NavigationBarType)
 binds: [B:78:0x00f0, B:69:0x00d4, B:63:0x00bc, B:61:0x00b7, B:56:0x00a7, B:46:0x008c, B:39:0x0079] A[DONT_GENERATE, DONT_INLINE]
  0x008e: PHI (r2v5 int) = (r2v3 int), (r2v13 int), (r2v18 int), (r2v18 int), (r2v22 int), (r2v29 int), (r2v27 int) binds: [B:78:0x00f0, B:69:0x00d4, B:63:0x00bc, B:61:0x00b7, B:56:0x00a7, B:46:0x008c, B:39:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:88:0x010c  */
    public static a a(Context context) {
        int i11;
        boolean z10;
        boolean z11;
        a aVar = new a();
        if (context != null && context.getContentResolver() != null) {
            ContentResolver contentResolver = context.getContentResolver();
            NavigationBarType navigationBarType = NavigationBarType.UNKNOWN;
            boolean z12 = false;
            boolean z13 = true;
            if (OSUtils.isHuaWei() || OSUtils.isEMUI()) {
                i11 = !OSUtils.isEMUI3_x() ? Settings.Global.getInt(contentResolver, "navigationbar_is_min", -1) : Settings.System.getInt(contentResolver, "navigationbar_is_min", -1);
                if (i11 == 0) {
                    navigationBarType = NavigationBarType.CLASSIC;
                } else if (i11 == 1) {
                    navigationBarType = NavigationBarType.GESTURES;
                    z10 = false;
                    z11 = true;
                }
                z10 = false;
                z11 = false;
            } else if (OSUtils.isXiaoMi() || OSUtils.isMIUI()) {
                i11 = Settings.Global.getInt(contentResolver, "force_fsg_nav_bar", -1);
                if (i11 == 0) {
                    navigationBarType = NavigationBarType.CLASSIC;
                } else if (i11 == 1) {
                    navigationBarType = NavigationBarType.GESTURES;
                    if (Settings.Global.getInt(contentResolver, "hide_gesture_line", -1) != 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = true;
                }
                z10 = false;
                z11 = false;
            } else if (OSUtils.isVivo() || OSUtils.isFuntouchOrOriginOs()) {
                i11 = Settings.Secure.getInt(contentResolver, "navigation_gesture_on", -1);
                if (i11 == 0) {
                    navigationBarType = NavigationBarType.CLASSIC;
                } else {
                    if (i11 == 1) {
                        navigationBarType = NavigationBarType.GESTURES_THREE_STAGE;
                    } else if (i11 == 2) {
                        navigationBarType = NavigationBarType.GESTURES;
                    }
                    z10 = false;
                    z11 = true;
                }
                z10 = false;
                z11 = false;
            } else if (OSUtils.isOppo() || OSUtils.isColorOs()) {
                i11 = Settings.Secure.getInt(contentResolver, "hide_navigationbar_enable", -1);
                if (i11 == 0) {
                    navigationBarType = NavigationBarType.CLASSIC;
                } else if (i11 == 1 || i11 == 2 || i11 == 3) {
                    navigationBarType = NavigationBarType.GESTURES;
                    z10 = false;
                    z11 = true;
                }
                z10 = false;
                z11 = false;
            } else if (OSUtils.isSamsung()) {
                i11 = Settings.Global.getInt(contentResolver, "navigation_bar_gesture_while_hidden", -1);
                if (i11 != -1) {
                    if (i11 == 0) {
                        navigationBarType = NavigationBarType.CLASSIC;
                    } else if (i11 == 1) {
                        navigationBarType = Settings.Global.getInt(contentResolver, "navigation_bar_gesture_detail_type", 1) == 1 ? NavigationBarType.GESTURES : NavigationBarType.GESTURES_THREE_STAGE;
                        if (Settings.Global.getInt(contentResolver, "navigation_bar_gesture_hint", 1) == 1) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = true;
                    }
                    z10 = false;
                    z11 = false;
                } else {
                    i11 = Settings.Global.getInt(contentResolver, "navigationbar_hide_bar_enabled", -1);
                    if (i11 == 0) {
                        navigationBarType = NavigationBarType.CLASSIC;
                    } else if (i11 == 1) {
                        navigationBarType = NavigationBarType.GESTURES;
                        z10 = false;
                        z11 = true;
                    }
                    z10 = false;
                    z11 = false;
                }
            } else {
                z10 = false;
                z11 = false;
                i11 = -1;
            }
            if (i11 != -1) {
                z13 = z10;
                z12 = z11;
            } else {
                int i12 = Settings.Secure.getInt(contentResolver, "navigation_mode", -1);
                if (i12 == 0) {
                    navigationBarType = NavigationBarType.CLASSIC;
                } else if (i12 == 1) {
                    navigationBarType = NavigationBarType.DOUBLE;
                } else if (i12 == 2) {
                    navigationBarType = NavigationBarType.GESTURES;
                    z12 = true;
                } else {
                    z13 = z10;
                    z12 = z11;
                }
                z13 = z10;
            }
            aVar.f33118a = z12;
            aVar.f33119b = z13;
            aVar.f33120c = navigationBarType;
        }
        return aVar;
    }
}
