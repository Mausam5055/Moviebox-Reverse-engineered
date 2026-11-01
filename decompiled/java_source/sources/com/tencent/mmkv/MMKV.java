package com.tencent.mmkv;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.util.Log;
import androidx.annotation.Nullable;
import dalvik.annotation.optimization.FastNative;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class MMKV implements SharedPreferences, SharedPreferences.Editor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final EnumMap f40551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final EnumMap f40552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final MMKVLogLevel[] f40553c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set f40554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f40555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f40556f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final HashMap f40557g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static com.tencent.mmkv.a f40558h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f40559i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f40560j = 0;
    private final long nativeHandle;

    /* JADX INFO: loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f40561a;

        static {
            int[] iArr = new int[MMKVLogLevel.values().length];
            f40561a = iArr;
            try {
                iArr[MMKVLogLevel.LevelDebug.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f40561a[MMKVLogLevel.LevelWarning.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f40561a[MMKVLogLevel.LevelError.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f40561a[MMKVLogLevel.LevelNone.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f40561a[MMKVLogLevel.LevelInfo.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface b {
        void a(String str);
    }

    static {
        EnumMap enumMap = new EnumMap(MMKVRecoverStrategic.class);
        f40551a = enumMap;
        enumMap.put(MMKVRecoverStrategic.OnErrorDiscard, 0);
        enumMap.put(MMKVRecoverStrategic.OnErrorRecover, 1);
        EnumMap enumMap2 = new EnumMap(MMKVLogLevel.class);
        f40552b = enumMap2;
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelDebug;
        enumMap2.put(mMKVLogLevel, 0);
        MMKVLogLevel mMKVLogLevel2 = MMKVLogLevel.LevelInfo;
        enumMap2.put(mMKVLogLevel2, 1);
        MMKVLogLevel mMKVLogLevel3 = MMKVLogLevel.LevelWarning;
        enumMap2.put(mMKVLogLevel3, 2);
        MMKVLogLevel mMKVLogLevel4 = MMKVLogLevel.LevelError;
        enumMap2.put(mMKVLogLevel4, 3);
        MMKVLogLevel mMKVLogLevel5 = MMKVLogLevel.LevelNone;
        enumMap2.put(mMKVLogLevel5, 4);
        f40553c = new MMKVLogLevel[]{mMKVLogLevel, mMKVLogLevel2, mMKVLogLevel3, mMKVLogLevel4, mMKVLogLevel5};
        f40554d = new HashSet();
        f40555e = null;
        f40556f = true;
        f40557g = new HashMap();
        f40559i = false;
    }

    private MMKV(long j11) {
        this.nativeHandle = j11;
    }

    public static String A() {
        return f40555e;
    }

    public static String C(Context context) {
        return E(context, context.getFilesDir().getAbsolutePath() + "/mmkv", null, MMKVLogLevel.LevelInfo, null);
    }

    public static String D(Context context, String str) {
        return E(context, str, null, MMKVLogLevel.LevelInfo, null);
    }

    public static String E(Context context, String str, b bVar, MMKVLogLevel mMKVLogLevel, com.tencent.mmkv.a aVar) {
        if ((context.getApplicationInfo().flags & 2) == 0) {
            p();
        } else {
            r();
        }
        String absolutePath = context.getCacheDir().getAbsolutePath();
        f40558h = aVar;
        if (aVar != null && aVar.c()) {
            f40559i = true;
        }
        String strQ = q(str, absolutePath, bVar, mMKVLogLevel, f40559i);
        if (f40558h != null) {
            setCallbackHandler(f40559i, true);
        }
        return strQ;
    }

    private static int F(MMKVLogLevel mMKVLogLevel) {
        int i11 = a.f40561a[mMKVLogLevel.ordinal()];
        if (i11 == 1) {
            return 0;
        }
        int i12 = 2;
        if (i11 != 2) {
            i12 = 3;
            if (i11 != 3) {
                i12 = 4;
                if (i11 != 4) {
                    return 1;
                }
            }
        }
        return i12;
    }

    public static MMKV G(String str, int i11, int i12, String str2) {
        long mMKVWithAshmemFD = getMMKVWithAshmemFD(str, i11, i12, str2);
        if (mMKVWithAshmemFD != 0) {
            return new MMKV(mMKVWithAshmemFD);
        }
        throw new RuntimeException("Fail to create an ashmem MMKV instance [" + str + "] in JNI");
    }

    public static MMKV H(Context context, String str, int i11, int i12, String str2) {
        MMKV mmkv;
        if (f40555e == null) {
            throw new IllegalStateException("You should Call MMKV.initialize() first.");
        }
        String strB = MMKVContentProvider.b(context, Process.myPid());
        if (strB == null || strB.length() == 0) {
            N(MMKVLogLevel.LevelError, "process name detect fail, try again later");
            throw new IllegalStateException("process name detect fail, try again later");
        }
        if (strB.contains(":")) {
            Uri uriA = MMKVContentProvider.a(context);
            if (uriA == null) {
                N(MMKVLogLevel.LevelError, "MMKVContentProvider has invalid authority");
                throw new IllegalStateException("MMKVContentProvider has invalid authority");
            }
            MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
            N(mMKVLogLevel, "getting parcelable mmkv in process, Uri = " + uriA);
            Bundle bundle = new Bundle();
            bundle.putInt("KEY_SIZE", i11);
            bundle.putInt("KEY_MODE", i12);
            if (str2 != null) {
                bundle.putString("KEY_CRYPT", str2);
            }
            Bundle bundleCall = context.getContentResolver().call(uriA, "mmkvFromAshmemID", str, bundle);
            if (bundleCall != null) {
                bundleCall.setClassLoader(ParcelableMMKV.class.getClassLoader());
                ParcelableMMKV parcelableMMKV = (ParcelableMMKV) bundleCall.getParcelable("KEY");
                if (parcelableMMKV != null && (mmkv = parcelableMMKV.toMMKV()) != null) {
                    N(mMKVLogLevel, mmkv.mmapID() + " fd = " + mmkv.ashmemFD() + ", meta fd = " + mmkv.ashmemMetaFD());
                    return mmkv;
                }
            }
        }
        N(MMKVLogLevel.LevelInfo, "getting mmkv in main process");
        long mMKVWithIDAndSize = getMMKVWithIDAndSize(str, i11, i12 | 8, str2);
        if (mMKVWithIDAndSize != 0) {
            return new MMKV(mMKVWithIDAndSize);
        }
        throw new IllegalStateException("Fail to create an Ashmem MMKV instance [" + str + "]");
    }

    public static MMKV I(String str) {
        if (f40555e != null) {
            return b(getMMKVWithID(str, 1, null, null, 0L), str, 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static MMKV J(String str, int i11) {
        if (f40555e != null) {
            return b(getMMKVWithID(str, i11, null, null, 0L), str, i11);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static MMKV K(String str, int i11, String str2) {
        if (f40555e != null) {
            return b(getMMKVWithID(str, i11, str2, null, 0L), str, i11);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static MMKV L(String str, int i11, String str2, String str3) {
        if (f40555e != null) {
            return b(getMMKVWithID(str, i11, str2, str3, 0L), str, i11);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    private static void N(MMKVLogLevel mMKVLogLevel, String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StackTraceElement stackTraceElement = stackTrace[stackTrace.length - 1];
        Integer num = (Integer) f40552b.get(mMKVLogLevel);
        mmkvLogImp(num == null ? 0 : num.intValue(), stackTraceElement.getFileName(), stackTraceElement.getLineNumber(), stackTraceElement.getMethodName(), str);
    }

    private native long actualSize(long j11);

    private native String[] allKeys(long j11, boolean z10);

    private static MMKV b(long j11, String str, int i11) {
        String str2;
        if (j11 == 0) {
            throw new RuntimeException("Fail to create an MMKV instance [" + str + "] in JNI");
        }
        if (!f40556f) {
            return new MMKV(j11);
        }
        Set set = f40554d;
        synchronized (set) {
            try {
                if (!set.contains(Long.valueOf(j11))) {
                    if (!checkProcessMode(j11)) {
                        if (i11 == 1) {
                            str2 = "Opening a multi-process MMKV instance [" + str + "] with SINGLE_PROCESS_MODE!";
                        } else {
                            str2 = ("Opening an MMKV instance [" + str + "] with MULTI_PROCESS_MODE, ") + "while it's already been opened with SINGLE_PROCESS_MODE by someone somewhere else!";
                        }
                        throw new IllegalArgumentException(str2);
                    }
                    set.add(Long.valueOf(j11));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return new MMKV(j11);
    }

    public static native long backupAllToDirectory(String str);

    public static native boolean backupOneToDirectory(String str, String str2, @Nullable String str3);

    private static native boolean checkProcessMode(long j11);

    private native boolean containsKey(long j11, String str);

    private native long count(long j11, boolean z10);

    private static native long createNB(int i11);

    private native boolean decodeBool(long j11, String str, boolean z10);

    @Nullable
    private native byte[] decodeBytes(long j11, String str);

    private native double decodeDouble(long j11, String str, double d11);

    private native float decodeFloat(long j11, String str, float f11);

    private native int decodeInt(long j11, String str, int i11);

    private native long decodeLong(long j11, String str, long j12);

    @Nullable
    private native String decodeString(long j11, String str, @Nullable String str2);

    @Nullable
    private native String[] decodeStringSet(long j11, String str);

    private static native void destroyNB(long j11, int i11);

    private native boolean encodeBool(long j11, String str, boolean z10);

    private native boolean encodeBool_2(long j11, String str, boolean z10, int i11);

    private native boolean encodeBytes(long j11, String str, @Nullable byte[] bArr);

    private native boolean encodeBytes_2(long j11, String str, @Nullable byte[] bArr, int i11);

    private native boolean encodeDouble(long j11, String str, double d11);

    private native boolean encodeDouble_2(long j11, String str, double d11, int i11);

    private native boolean encodeFloat(long j11, String str, float f11);

    private native boolean encodeFloat_2(long j11, String str, float f11, int i11);

    private native boolean encodeInt(long j11, String str, int i11);

    private native boolean encodeInt_2(long j11, String str, int i11, int i12);

    private native boolean encodeLong(long j11, String str, long j12);

    private native boolean encodeLong_2(long j11, String str, long j12, int i11);

    private native boolean encodeSet(long j11, String str, @Nullable String[] strArr);

    private native boolean encodeSet_2(long j11, String str, @Nullable String[] strArr, int i11);

    private native boolean encodeString(long j11, String str, @Nullable String str2);

    private native boolean encodeString_2(long j11, String str, @Nullable String str2, int i11);

    private static native long getDefaultMMKV(int i11, @Nullable String str);

    private static native long getMMKVWithAshmemFD(String str, int i11, int i12, @Nullable String str2);

    private static native long getMMKVWithID(String str, int i11, @Nullable String str2, @Nullable String str3, long j11);

    private static native long getMMKVWithIDAndSize(String str, int i11, int i12, @Nullable String str2);

    private native boolean isCompareBeforeSetEnabled();

    @FastNative
    private native boolean isEncryptionEnabled();

    @FastNative
    private native boolean isExpirationEnabled();

    public static native boolean isFileValid(String str, @Nullable String str2);

    private static native void jniInitialize(String str, String str2, int i11, boolean z10);

    private static void mmkvLogImp(int i11, String str, int i12, String str2, String str3) {
        com.tencent.mmkv.a aVar = f40558h;
        if (aVar != null && f40559i) {
            aVar.a(f40553c[i11], str, i12, str2, str3);
            return;
        }
        int i13 = a.f40561a[f40553c[i11].ordinal()];
        if (i13 == 2) {
            Log.w("MMKV", str3);
        } else {
            if (i13 != 3) {
                return;
            }
            Log.e("MMKV", str3);
        }
    }

    @FastNative
    private native void nativeEnableCompareBeforeSet();

    public static MMKV o() {
        if (f40555e != null) {
            return b(getDefaultMMKV(1, null), "DefaultMMKV", 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    private static void onContentChangedByOuterProcess(String str) {
    }

    public static native void onExit();

    private static int onMMKVCRCCheckFail(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategicB = MMKVRecoverStrategic.OnErrorDiscard;
        com.tencent.mmkv.a aVar = f40558h;
        if (aVar != null) {
            mMKVRecoverStrategicB = aVar.b(str);
        }
        N(MMKVLogLevel.LevelInfo, "Recover strategic for " + str + " is " + mMKVRecoverStrategicB);
        Integer num = (Integer) f40551a.get(mMKVRecoverStrategicB);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private static int onMMKVFileLengthError(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategicD = MMKVRecoverStrategic.OnErrorDiscard;
        com.tencent.mmkv.a aVar = f40558h;
        if (aVar != null) {
            mMKVRecoverStrategicD = aVar.d(str);
        }
        N(MMKVLogLevel.LevelInfo, "Recover strategic for " + str + " is " + mMKVRecoverStrategicD);
        Integer num = (Integer) f40551a.get(mMKVRecoverStrategicD);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static void p() {
        synchronized (f40554d) {
            f40556f = false;
        }
    }

    public static native int pageSize();

    private static String q(String str, String str2, b bVar, MMKVLogLevel mMKVLogLevel, boolean z10) {
        if (bVar != null) {
            bVar.a("mmkv");
        } else {
            System.loadLibrary("mmkv");
        }
        jniInitialize(str, str2, F(mMKVLogLevel), z10);
        f40555e = str;
        return str;
    }

    public static void r() {
        synchronized (f40554d) {
            f40556f = true;
        }
    }

    public static native boolean removeStorage(String str, @Nullable String str2);

    private native void removeValueForKey(long j11, String str);

    public static native long restoreAllFromDirectory(String str);

    public static native boolean restoreOneMMKVFromDirectory(String str, String str2, @Nullable String str3);

    private static native void setCallbackHandler(boolean z10, boolean z11);

    private static native void setLogLevel(int i11);

    private static native void setWantsContentChangeNotify(boolean z10);

    private native void sync(boolean z10);

    private native long totalSize(long j11);

    private native int valueSize(long j11, String str, boolean z10);

    public static native String version();

    private native int writeValueToNB(long j11, String str, long j12, int i11);

    private byte[] z(Parcelable parcelable) {
        Parcel parcelObtain = Parcel.obtain();
        parcelable.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }

    public int B(String str) {
        return valueSize(this.nativeHandle, str, true);
    }

    public void M(String str) {
        removeValueForKey(this.nativeHandle, str);
    }

    public String[] a() {
        return allKeys(this.nativeHandle, false);
    }

    @Override // android.content.SharedPreferences.Editor
    public void apply() {
        sync(false);
    }

    public native int ashmemFD();

    public native int ashmemMetaFD();

    public boolean c(String str) {
        return containsKey(this.nativeHandle, str);
    }

    public native void checkContentChangedByOuterProcess();

    public native void checkReSetCryptKey(@Nullable String str);

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor clear() {
        clearAll();
        return this;
    }

    public native void clearAll();

    public native void clearAllWithKeepingSpace();

    public native void clearMemoryCache();

    public native void close();

    @Override // android.content.SharedPreferences.Editor
    public boolean commit() {
        sync(true);
        return true;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return c(str);
    }

    @Nullable
    public native String cryptKey();

    public boolean d(String str, boolean z10) {
        return decodeBool(this.nativeHandle, str, z10);
    }

    public native boolean disableAutoKeyExpire();

    public native void disableCompareBeforeSet();

    public byte[] e(String str) {
        return f(str, null);
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this;
    }

    public native boolean enableAutoKeyExpire(int i11);

    public byte[] f(String str, byte[] bArr) {
        byte[] bArrDecodeBytes = decodeBytes(this.nativeHandle, str);
        return bArrDecodeBytes != null ? bArrDecodeBytes : bArr;
    }

    public int g(String str, int i11) {
        return decodeInt(this.nativeHandle, str, i11);
    }

    @Override // android.content.SharedPreferences
    public Map getAll() {
        throw new UnsupportedOperationException("Intentionally Not Supported. Use allKeys() instead, getAll() not implement because type-erasure inside mmkv");
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        return decodeBool(this.nativeHandle, str, z10);
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f11) {
        return decodeFloat(this.nativeHandle, str, f11);
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i11) {
        return decodeInt(this.nativeHandle, str, i11);
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j11) {
        return decodeLong(this.nativeHandle, str, j11);
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    @Override // android.content.SharedPreferences
    public Set getStringSet(String str, Set set) {
        return m(str, set);
    }

    public long h(String str, long j11) {
        return decodeLong(this.nativeHandle, str, j11);
    }

    public Parcelable i(String str, Class cls) {
        return j(str, cls, null);
    }

    public Parcelable j(String str, Class cls, Parcelable parcelable) {
        byte[] bArrDecodeBytes;
        Parcelable.Creator creator;
        if (cls == null || (bArrDecodeBytes = decodeBytes(this.nativeHandle, str)) == null) {
            return parcelable;
        }
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArrDecodeBytes, 0, bArrDecodeBytes.length);
        parcelObtain.setDataPosition(0);
        try {
            try {
                String string = cls.toString();
                HashMap map = f40557g;
                synchronized (map) {
                    try {
                        creator = (Parcelable.Creator) map.get(string);
                        if (creator == null && (creator = (Parcelable.Creator) cls.getField("CREATOR").get(null)) != null) {
                            map.put(string, creator);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (creator != null) {
                    Parcelable parcelable2 = (Parcelable) creator.createFromParcel(parcelObtain);
                    parcelObtain.recycle();
                    return parcelable2;
                }
                throw new Exception("Parcelable protocol requires a non-null static Parcelable.Creator object called CREATOR on class " + string);
            } catch (Exception e11) {
                N(MMKVLogLevel.LevelError, e11.toString());
                parcelObtain.recycle();
                return parcelable;
            }
        } catch (Throwable th3) {
            parcelObtain.recycle();
            throw th3;
        }
    }

    public String k(String str) {
        return decodeString(this.nativeHandle, str, null);
    }

    public String l(String str, String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    public native void lock();

    public Set m(String str, Set set) {
        return n(str, set, HashSet.class);
    }

    public native String mmapID();

    public Set n(String str, Set set, Class cls) {
        String[] strArrDecodeStringSet = decodeStringSet(this.nativeHandle, str);
        if (strArrDecodeStringSet == null) {
            return set;
        }
        try {
            Set set2 = (Set) cls.newInstance();
            set2.addAll(Arrays.asList(strArrDecodeStringSet));
            return set2;
        } catch (IllegalAccessException | InstantiationException unused) {
            return set;
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putBoolean(String str, boolean z10) {
        encodeBool(this.nativeHandle, str, z10);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putFloat(String str, float f11) {
        encodeFloat(this.nativeHandle, str, f11);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putInt(String str, int i11) {
        encodeInt(this.nativeHandle, str, i11);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putLong(String str, long j11) {
        encodeLong(this.nativeHandle, str, j11);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putString(String str, String str2) {
        encodeString(this.nativeHandle, str, str2);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putStringSet(String str, Set set) {
        w(str, set);
        return this;
    }

    public native boolean reKey(@Nullable String str);

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("Intentionally Not implement in MMKV");
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor remove(String str) {
        M(str);
        return this;
    }

    public native void removeValuesForKeys(String[] strArr);

    public boolean s(String str, int i11) {
        return encodeInt(this.nativeHandle, str, i11);
    }

    public boolean t(String str, long j11) {
        return encodeLong(this.nativeHandle, str, j11);
    }

    public native void trim();

    public native boolean tryLock();

    public boolean u(String str, Parcelable parcelable) {
        if (parcelable == null) {
            return encodeBytes(this.nativeHandle, str, null);
        }
        return encodeBytes(this.nativeHandle, str, z(parcelable));
    }

    public native void unlock();

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("Intentionally Not implement in MMKV");
    }

    public boolean v(String str, String str2) {
        return encodeString(this.nativeHandle, str, str2);
    }

    public boolean w(String str, Set set) {
        return encodeSet(this.nativeHandle, str, set == null ? null : (String[]) set.toArray(new String[0]));
    }

    public boolean x(String str, boolean z10) {
        return encodeBool(this.nativeHandle, str, z10);
    }

    public boolean y(String str, byte[] bArr) {
        return encodeBytes(this.nativeHandle, str, bArr);
    }
}
