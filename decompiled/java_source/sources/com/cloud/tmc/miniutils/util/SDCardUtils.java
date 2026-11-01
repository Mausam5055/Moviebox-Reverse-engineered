package com.cloud.tmc.miniutils.util;

import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.text.format.Formatter;
import com.google.android.libraries.places.api.model.PlaceTypes;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SDCardUtils {

    public static class SDCardInfo {
        private long availableSize;
        private boolean isRemovable;
        private String path;
        private String state;
        private long totalSize;

        SDCardInfo(String str, String str2, boolean z10) {
            this.path = str;
            this.state = str2;
            this.isRemovable = z10;
            this.totalSize = UtilsBridge.getFsTotalSize(str);
            this.availableSize = UtilsBridge.getFsAvailableSize(str);
        }

        public long getAvailableSize() {
            return this.availableSize;
        }

        public String getPath() {
            return this.path;
        }

        public String getState() {
            return this.state;
        }

        public long getTotalSize() {
            return this.totalSize;
        }

        public boolean isRemovable() {
            return this.isRemovable;
        }

        public String toString() {
            return "SDCardInfo {path = " + this.path + ", state = " + this.state + ", isRemovable = " + this.isRemovable + ", totalSize = " + Formatter.formatFileSize(Utils.getApp(), this.totalSize) + ", availableSize = " + Formatter.formatFileSize(Utils.getApp(), this.availableSize) + '}';
        }
    }

    private SDCardUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static long getExternalAvailableSize() {
        return UtilsBridge.getFsAvailableSize(getSDCardPathByEnvironment());
    }

    public static long getExternalTotalSize() {
        return UtilsBridge.getFsTotalSize(getSDCardPathByEnvironment());
    }

    public static long getInternalAvailableSize() {
        return UtilsBridge.getFsAvailableSize(Environment.getDataDirectory().getAbsolutePath());
    }

    public static long getInternalTotalSize() {
        return UtilsBridge.getFsTotalSize(Environment.getDataDirectory().getAbsolutePath());
    }

    public static List<String> getMountedSDCardPath() {
        ArrayList arrayList = new ArrayList();
        List<SDCardInfo> sDCardInfo = getSDCardInfo();
        if (sDCardInfo != null && !sDCardInfo.isEmpty()) {
            for (SDCardInfo sDCardInfo2 : sDCardInfo) {
                String str = sDCardInfo2.state;
                if (str != null && "mounted".equals(str.toLowerCase())) {
                    arrayList.add(sDCardInfo2.path);
                }
            }
        }
        return arrayList;
    }

    public static List<SDCardInfo> getSDCardInfo() {
        ArrayList arrayList = new ArrayList();
        StorageManager storageManager = (StorageManager) Utils.getApp().getSystemService(PlaceTypes.STORAGE);
        if (storageManager == null) {
            return arrayList;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            List storageVolumes = storageManager.getStorageVolumes();
            try {
                Method method = h.a().getMethod("getPath", null);
                Iterator it = storageVolumes.iterator();
                while (it.hasNext()) {
                    StorageVolume storageVolumeA = i.a(it.next());
                    arrayList.add(new SDCardInfo((String) method.invoke(storageVolumeA, null), storageVolumeA.getState(), storageVolumeA.isRemovable()));
                }
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
            } catch (NoSuchMethodException e12) {
                e12.printStackTrace();
            } catch (InvocationTargetException e13) {
                e13.printStackTrace();
            }
        } else {
            try {
                Class<?> cls = Class.forName("android.os.storage.StorageVolume");
                Method method2 = cls.getMethod("getPath", null);
                Method method3 = cls.getMethod("isRemovable", null);
                Method method4 = StorageManager.class.getMethod("getVolumeState", String.class);
                Object objInvoke = StorageManager.class.getMethod("getVolumeList", null).invoke(storageManager, null);
                int length = Array.getLength(objInvoke);
                for (int i11 = 0; i11 < length; i11++) {
                    Object obj = Array.get(objInvoke, i11);
                    String str = (String) method2.invoke(obj, null);
                    arrayList.add(new SDCardInfo(str, (String) method4.invoke(storageManager, str), ((Boolean) method3.invoke(obj, null)).booleanValue()));
                }
            } catch (ClassNotFoundException e14) {
                e14.printStackTrace();
            } catch (IllegalAccessException e15) {
                e15.printStackTrace();
            } catch (NoSuchMethodException e16) {
                e16.printStackTrace();
            } catch (InvocationTargetException e17) {
                e17.printStackTrace();
            }
        }
        return arrayList;
    }

    public static String getSDCardPathByEnvironment() {
        return isSDCardEnableByEnvironment() ? Environment.getExternalStorageDirectory().getAbsolutePath() : "";
    }

    public static boolean isSDCardEnableByEnvironment() {
        return "mounted".equals(Environment.getExternalStorageState());
    }
}
