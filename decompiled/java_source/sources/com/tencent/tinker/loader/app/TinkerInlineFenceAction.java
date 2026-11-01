package com.tencent.tinker.loader.app;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes5.dex */
public final class TinkerInlineFenceAction {
    static AssetManager callGetAssets(Handler handler, AssetManager assetManager) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 9, assetManager);
            try {
                handler.handleMessage(messageObtain);
                AssetManager assetManager2 = (AssetManager) messageObtain.obj;
                messageObtain.recycle();
                return assetManager2;
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static Context callGetBaseContext(Handler handler, Context context) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 8, context);
            try {
                handler.handleMessage(messageObtain);
                Context context2 = (Context) messageObtain.obj;
                messageObtain.recycle();
                return context2;
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static ClassLoader callGetClassLoader(Handler handler, ClassLoader classLoader) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 7, classLoader);
            try {
                handler.handleMessage(messageObtain);
                ClassLoader classLoader2 = (ClassLoader) messageObtain.obj;
                messageObtain.recycle();
                return classLoader2;
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static Resources callGetResources(Handler handler, Resources resources) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 10, resources);
            try {
                handler.handleMessage(messageObtain);
                Resources resources2 = (Resources) messageObtain.obj;
                messageObtain.recycle();
                return resources2;
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static Object callGetSystemService(Handler handler, String str, Object obj) {
        Message messageObtain = null;
        try {
            messageObtain = Message.obtain(handler, 11, new Object[]{str, obj});
            handler.handleMessage(messageObtain);
            return messageObtain.obj;
        } finally {
            messageObtain.recycle();
        }
    }

    static Resources.Theme callGetTheme(Handler handler, Resources.Theme theme) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 13, theme);
            try {
                handler.handleMessage(messageObtain);
                Resources.Theme theme2 = (Resources.Theme) messageObtain.obj;
                messageObtain.recycle();
                return theme2;
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static int callMZNightModeUseOf(Handler handler) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 12);
            try {
                handler.handleMessage(messageObtain);
                int iIntValue = ((Integer) messageObtain.obj).intValue();
                messageObtain.recycle();
                return iIntValue;
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static void callOnBaseContextAttached(Handler handler, Context context) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 1, context);
            try {
                handler.handleMessage(messageObtain);
                messageObtain.recycle();
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static void callOnConfigurationChanged(Handler handler, Configuration configuration) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 3, configuration);
            try {
                handler.handleMessage(messageObtain);
                messageObtain.recycle();
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static void callOnCreate(Handler handler) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 2);
            try {
                handler.handleMessage(messageObtain);
                messageObtain.recycle();
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static void callOnLowMemory(Handler handler) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 5);
            try {
                handler.handleMessage(messageObtain);
                messageObtain.recycle();
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static void callOnTerminate(Handler handler) throws Throwable {
        Message messageObtain;
        try {
            messageObtain = Message.obtain(handler, 6);
            try {
                handler.handleMessage(messageObtain);
                messageObtain.recycle();
            } catch (Throwable th2) {
                th = th2;
                messageObtain.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            messageObtain = null;
        }
    }

    static void callOnTrimMemory(Handler handler, int i11) {
        Message messageObtain = null;
        try {
            messageObtain = Message.obtain(handler, 4, Integer.valueOf(i11));
            handler.handleMessage(messageObtain);
        } finally {
            messageObtain.recycle();
        }
    }
}
