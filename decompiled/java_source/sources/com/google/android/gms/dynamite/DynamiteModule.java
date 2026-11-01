package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class DynamiteModule {

    @KeepForSdk
    public static final int LOCAL = -1;

    @KeepForSdk
    public static final int NONE = 0;

    @KeepForSdk
    public static final int NO_SELECTION = 0;

    @KeepForSdk
    public static final int REMOTE = 1;

    @Nullable
    private static Boolean zzb = null;

    @Nullable
    private static String zzc = null;
    private static boolean zzd = false;
    private static int zze = -1;

    @Nullable
    private static Boolean zzf;

    @Nullable
    private static zzq zzk;

    @Nullable
    private static zzr zzl;
    private final Context zzj;
    private static final ThreadLocal zzg = new ThreadLocal();
    private static final ThreadLocal zzh = new zzd();
    private static final VersionPolicy.IVersions zzi = new zze();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE = new zzf();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_LOCAL = new zzg();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new zzh();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new zzi();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new zzj();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new zzk();

    @NonNull
    public static final VersionPolicy zza = new zzl();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {

        @Nullable
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, zzp zzpVar) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th2, zzp zzpVar) {
            super(str, th2);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public interface VersionPolicy {

        @KeepForSdk
        public interface IVersions {
            int zza(@NonNull Context context, @NonNull String str);

            int zzb(@NonNull Context context, @NonNull String str, boolean z10) throws LoadingException;
        }

        @KeepForSdk
        public static class SelectionResult {

            @KeepForSdk
            public int localVersion = 0;

            @KeepForSdk
            public int remoteVersion = 0;

            @KeepForSdk
            public int selection = 0;
        }

        @NonNull
        @KeepForSdk
        SelectionResult selectModule(@NonNull Context context, @NonNull String str, @NonNull IVersions iVersions) throws LoadingException;
    }

    private DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.zzj = context;
    }

    @KeepForSdk
    public static int getLocalVersion(@NonNull Context context, @NonNull String str) {
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (Objects.equal(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'");
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e11) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e11.getMessage())));
            return 0;
        }
    }

    @KeepForSdk
    public static int getRemoteVersion(@NonNull Context context, @NonNull String str) {
        return zza(context, str, false);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0228  */
    /* JADX WARN: Code duplicated, block: B:116:0x022e  */
    /* JADX WARN: Code duplicated, block: B:119:0x0237  */
    /* JADX WARN: Code duplicated, block: B:124:0x0249 A[Catch: all -> 0x0070, TryCatch #0 {all -> 0x0070, blocks: (B:5:0x0029, B:9:0x006a, B:16:0x0078, B:19:0x007e, B:22:0x0088, B:100:0x01d9, B:101:0x01e4, B:104:0x01e7, B:105:0x01e8, B:106:0x01f0, B:124:0x0249, B:125:0x0260, B:107:0x01f1, B:109:0x020f, B:111:0x021e, B:122:0x0240, B:123:0x0248, B:126:0x0261, B:127:0x0291), top: B:139:0x0029, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x00b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:19:0x007e A[Catch: all -> 0x0070, TRY_LEAVE, TryCatch #0 {all -> 0x0070, blocks: (B:5:0x0029, B:9:0x006a, B:16:0x0078, B:19:0x007e, B:22:0x0088, B:100:0x01d9, B:101:0x01e4, B:104:0x01e7, B:105:0x01e8, B:106:0x01f0, B:124:0x0249, B:125:0x0260, B:107:0x01f1, B:109:0x020f, B:111:0x021e, B:122:0x0240, B:123:0x0248, B:126:0x0261, B:127:0x0291), top: B:139:0x0029, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0086 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0093 A[Catch: all -> 0x01cc, TryCatch #7 {, blocks: (B:25:0x008d, B:27:0x0093, B:28:0x0095, B:96:0x01ce, B:97:0x01d6), top: B:145:0x008d }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0098 A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TRY_ENTER, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:32:0x009f A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00bc A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TRY_ENTER, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0133 A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:73:0x013f A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:75:0x015a A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0161 A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0169 A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0178 A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0181 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x0183 A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0193 A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:87:0x01a8 A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01b1 A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01ba A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01c3 A[Catch: all -> 0x00f2, LoadingException -> 0x00f5, RemoteException -> 0x00f8, TryCatch #7 {RemoteException -> 0x00f8, LoadingException -> 0x00f5, all -> 0x00f2, blocks: (B:24:0x008c, B:30:0x0098, B:32:0x009f, B:33:0x00b6, B:37:0x00bc, B:39:0x00c4, B:41:0x00c8, B:42:0x00d3, B:49:0x00de, B:57:0x010e, B:59:0x0116, B:61:0x011e, B:62:0x0126, B:56:0x00fb, B:65:0x0129, B:66:0x012a, B:67:0x0132, B:68:0x0133, B:69:0x013b, B:72:0x013e, B:73:0x013f, B:75:0x015a, B:77:0x0161, B:79:0x0169, B:85:0x01a2, B:87:0x01a8, B:88:0x01b1, B:89:0x01b9, B:80:0x0178, B:81:0x0180, B:83:0x0183, B:84:0x0193, B:90:0x01ba, B:91:0x01c2, B:92:0x01c3, B:93:0x01cb, B:99:0x01d8), top: B:146:0x008c }] */
    /* JADX WARN: Code duplicated, block: B:96:0x01ce A[Catch: all -> 0x01cc, TRY_ENTER, TryCatch #7 {, blocks: (B:25:0x008d, B:27:0x0093, B:28:0x0095, B:96:0x01ce, B:97:0x01d6), top: B:145:0x008d }] */
    /* JADX WARN: Instruction removed from duplicated block: B:124:0x0249, please report this as an issue */
    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static DynamiteModule load(@NonNull Context context, @NonNull VersionPolicy versionPolicy, @NonNull String str) throws LoadingException {
        DynamiteModule dynamiteModuleZzc;
        int i11;
        Boolean bool;
        zzq zzqVarZzg;
        int iZze;
        IObjectWrapper iObjectWrapperZzh;
        Object objUnwrap;
        DynamiteModule dynamiteModule;
        zzn zznVar;
        zzr zzrVar;
        zzn zznVar2;
        boolean z10;
        IObjectWrapper iObjectWrapperZze;
        Cursor cursor;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new LoadingException("null application Context", null);
        }
        ThreadLocal threadLocal = zzg;
        zzn zznVar3 = (zzn) threadLocal.get();
        zzn zznVar4 = new zzn(null);
        threadLocal.set(zznVar4);
        ThreadLocal threadLocal2 = zzh;
        Long l11 = (Long) threadLocal2.get();
        long jLongValue = l11.longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            VersionPolicy.SelectionResult selectionResultSelectModule = versionPolicy.selectModule(context, str, zzi);
            int i12 = selectionResultSelectModule.localVersion;
            int i13 = selectionResultSelectModule.remoteVersion;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Considering local module ");
            sb2.append(str);
            sb2.append(":");
            sb2.append(i12);
            sb2.append(" and remote module ");
            sb2.append(str);
            sb2.append(":");
            sb2.append(i13);
            int i14 = selectionResultSelectModule.selection;
            if (i14 != 0) {
                if (i14 != -1) {
                    if (i14 == 1 || selectionResultSelectModule.remoteVersion != 0) {
                        if (i14 == -1) {
                            dynamiteModuleZzc = zzc(applicationContext, str);
                        } else {
                            if (i14 == 1) {
                                throw new LoadingException("VersionPolicy returned invalid code:" + i14, null);
                            }
                            try {
                                i11 = selectionResultSelectModule.remoteVersion;
                                try {
                                    synchronized (DynamiteModule.class) {
                                        if (zzf(context)) {
                                            throw new LoadingException("Remote loading disabled", null);
                                        }
                                        bool = zzb;
                                    }
                                    if (bool != null) {
                                        throw new LoadingException("Failed to determine which loading route to use.", null);
                                    }
                                    if (bool.booleanValue()) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("Selected remote version of ");
                                        sb3.append(str);
                                        sb3.append(", version >= ");
                                        sb3.append(i11);
                                        synchronized (DynamiteModule.class) {
                                            zzrVar = zzl;
                                        }
                                        if (zzrVar != null) {
                                            throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                        }
                                        zznVar2 = (zzn) threadLocal.get();
                                        if (zznVar2 != null || zznVar2.zza == null) {
                                            throw new LoadingException("No result cursor", null);
                                        }
                                        Context applicationContext2 = context.getApplicationContext();
                                        Cursor cursor2 = zznVar2.zza;
                                        ObjectWrapper.wrap(null);
                                        synchronized (DynamiteModule.class) {
                                            z10 = zze >= 2;
                                        }
                                        if (z10) {
                                            Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                            iObjectWrapperZze = zzrVar.zzf(ObjectWrapper.wrap(applicationContext2), str, i11, ObjectWrapper.wrap(cursor2));
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                            iObjectWrapperZze = zzrVar.zze(ObjectWrapper.wrap(applicationContext2), str, i11, ObjectWrapper.wrap(cursor2));
                                        }
                                        Context context2 = (Context) ObjectWrapper.unwrap(iObjectWrapperZze);
                                        if (context2 == null) {
                                            throw new LoadingException("Failed to get module context", null);
                                        }
                                        dynamiteModule = new DynamiteModule(context2);
                                    } else {
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append("Selected remote version of ");
                                        sb4.append(str);
                                        sb4.append(", version >= ");
                                        sb4.append(i11);
                                        zzqVarZzg = zzg(context);
                                        if (zzqVarZzg != null) {
                                            throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                        }
                                        iZze = zzqVarZzg.zze();
                                        if (iZze >= 3) {
                                            zznVar = (zzn) threadLocal.get();
                                            if (zznVar != null) {
                                                throw new LoadingException("No cached result cursor holder", null);
                                            }
                                            iObjectWrapperZzh = zzqVarZzg.zzi(ObjectWrapper.wrap(context), str, i11, ObjectWrapper.wrap(zznVar.zza));
                                        } else if (iZze == 2) {
                                            Log.w("DynamiteModule", "IDynamite loader version = 2");
                                            iObjectWrapperZzh = zzqVarZzg.zzj(ObjectWrapper.wrap(context), str, i11);
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                            iObjectWrapperZzh = zzqVarZzg.zzh(ObjectWrapper.wrap(context), str, i11);
                                        }
                                        objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZzh);
                                        if (objUnwrap != null) {
                                            throw new LoadingException("Failed to load remote module.", null);
                                        }
                                        dynamiteModule = new DynamiteModule((Context) objUnwrap);
                                    }
                                    dynamiteModuleZzc = dynamiteModule;
                                } catch (RemoteException e11) {
                                    throw new LoadingException("Failed to load remote module.", e11, null);
                                } catch (LoadingException e12) {
                                    throw e12;
                                } catch (Throwable th2) {
                                    CrashUtils.addDynamiteErrorToDropBox(context, th2);
                                    throw new LoadingException("Failed to load remote module.", th2, null);
                                }
                            } catch (LoadingException e13) {
                                Log.w("DynamiteModule", "Failed to load remote module: " + e13.getMessage());
                                int i15 = selectionResultSelectModule.localVersion;
                                if (i15 == 0 || versionPolicy.selectModule(context, str, new zzo(i15, 0)).selection != -1) {
                                    throw new LoadingException("Remote load failed. No local fallback found.", e13, null);
                                }
                                dynamiteModuleZzc = zzc(applicationContext, str);
                            }
                        }
                        if (jLongValue == 0) {
                            zzh.remove();
                        } else {
                            zzh.set(l11);
                        }
                        cursor = zznVar4.zza;
                        if (cursor != null) {
                            cursor.close();
                        }
                        zzg.set(zznVar3);
                        return dynamiteModuleZzc;
                    }
                } else if (selectionResultSelectModule.localVersion != 0) {
                    i14 = -1;
                    if (i14 == 1) {
                    }
                    if (i14 == -1) {
                        dynamiteModuleZzc = zzc(applicationContext, str);
                    } else {
                        if (i14 == 1) {
                            throw new LoadingException("VersionPolicy returned invalid code:" + i14, null);
                        }
                        i11 = selectionResultSelectModule.remoteVersion;
                        synchronized (DynamiteModule.class) {
                            if (zzf(context)) {
                                throw new LoadingException("Remote loading disabled", null);
                            }
                            bool = zzb;
                            if (bool != null) {
                                throw new LoadingException("Failed to determine which loading route to use.", null);
                            }
                            if (bool.booleanValue()) {
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("Selected remote version of ");
                                sb5.append(str);
                                sb5.append(", version >= ");
                                sb5.append(i11);
                                synchronized (DynamiteModule.class) {
                                    zzrVar = zzl;
                                    if (zzrVar != null) {
                                        throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                    }
                                    zznVar2 = (zzn) threadLocal.get();
                                    if (zznVar2 != null) {
                                    }
                                    throw new LoadingException("No result cursor", null);
                                }
                            }
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("Selected remote version of ");
                            sb6.append(str);
                            sb6.append(", version >= ");
                            sb6.append(i11);
                            zzqVarZzg = zzg(context);
                            if (zzqVarZzg != null) {
                                throw new LoadingException("Failed to create IDynamiteLoader.", null);
                            }
                            iZze = zzqVarZzg.zze();
                            if (iZze >= 3) {
                                zznVar = (zzn) threadLocal.get();
                                if (zznVar != null) {
                                    throw new LoadingException("No cached result cursor holder", null);
                                }
                                iObjectWrapperZzh = zzqVarZzg.zzi(ObjectWrapper.wrap(context), str, i11, ObjectWrapper.wrap(zznVar.zza));
                            } else if (iZze == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2");
                                iObjectWrapperZzh = zzqVarZzg.zzj(ObjectWrapper.wrap(context), str, i11);
                            } else {
                                Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                iObjectWrapperZzh = zzqVarZzg.zzh(ObjectWrapper.wrap(context), str, i11);
                            }
                            objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZzh);
                            if (objUnwrap != null) {
                                throw new LoadingException("Failed to load remote module.", null);
                            }
                            dynamiteModule = new DynamiteModule((Context) objUnwrap);
                            dynamiteModuleZzc = dynamiteModule;
                        }
                    }
                    if (jLongValue == 0) {
                        zzh.remove();
                    } else {
                        zzh.set(l11);
                    }
                    cursor = zznVar4.zza;
                    if (cursor != null) {
                        cursor.close();
                    }
                    zzg.set(zznVar3);
                    return dynamiteModuleZzc;
                }
            }
            throw new LoadingException("No acceptable module " + str + " found. Local version is " + selectionResultSelectModule.localVersion + " and remote version is " + selectionResultSelectModule.remoteVersion + ".", null);
        } catch (Throwable th3) {
            if (jLongValue == 0) {
                zzh.remove();
            } else {
                zzh.set(l11);
            }
            Cursor cursor3 = zznVar4.zza;
            if (cursor3 != null) {
                cursor3.close();
            }
            zzg.set(zznVar3);
            throw th3;
        }
    }

    /* JADX INFO: Removed unreachable split cross block B:139:0x01c4 */
    /* JADX WARN: Code duplicated, block: B:105:0x0177 A[Catch: all -> 0x00eb, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x00eb, blocks: (B:3:0x0002, B:64:0x00e0, B:66:0x00e6, B:73:0x010a, B:101:0x0169, B:105:0x0177, B:123:0x01c9, B:124:0x01cc, B:118:0x01c1, B:71:0x00ef, B:126:0x01ce, B:4:0x0003, B:7:0x0009, B:8:0x0025, B:62:0x00dd, B:21:0x0049, B:45:0x00a0, B:48:0x00a3, B:55:0x00bb, B:63:0x00df, B:61:0x00c1), top: B:136:0x0002, inners: #5, #8 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00af A[Catch: all -> 0x0036, TryCatch #10 {, blocks: (B:9:0x0026, B:11:0x0032, B:52:0x00b8, B:16:0x003b, B:18:0x0042, B:20:0x0048, B:25:0x004e, B:27:0x0052, B:31:0x005c, B:33:0x0064, B:36:0x006b, B:43:0x0097, B:44:0x009f, B:39:0x0072, B:41:0x0078, B:42:0x0089, B:47:0x00a2, B:50:0x00a5, B:51:0x00af, B:17:0x003e), top: B:142:0x0026, inners: #12 }] */
    public static int zza(@NonNull Context context, @NonNull String str, boolean z10) {
        Throwable th2;
        RemoteException e11;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = zzb;
                Cursor cursor2 = null;
                int iZzf = 0;
                if (bool == null) {
                    try {
                        Field declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                        synchronized (declaredField.getDeclaringClass()) {
                            ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool = Boolean.FALSE;
                            } else if (classLoader != null) {
                                try {
                                    zzd(classLoader);
                                } catch (LoadingException unused) {
                                }
                                bool = Boolean.TRUE;
                            } else {
                                if (!zzf(context)) {
                                    return 0;
                                }
                                if (zzd) {
                                    declaredField.set(null, ClassLoader.getSystemClassLoader());
                                    bool = Boolean.FALSE;
                                } else {
                                    Boolean bool2 = Boolean.TRUE;
                                    if (bool2.equals(null)) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    } else {
                                        try {
                                            int iZzb = zzb(context, str, z10, true);
                                            String str2 = zzc;
                                            if (str2 != null && !str2.isEmpty()) {
                                                ClassLoader classLoaderZza = zzb.zza();
                                                if (classLoaderZza == null) {
                                                    if (Build.VERSION.SDK_INT >= 29) {
                                                        b.a();
                                                        String str3 = zzc;
                                                        Preconditions.checkNotNull(str3);
                                                        classLoaderZza = a.a(str3, ClassLoader.getSystemClassLoader());
                                                    } else {
                                                        String str4 = zzc;
                                                        Preconditions.checkNotNull(str4);
                                                        classLoaderZza = new zzc(str4, ClassLoader.getSystemClassLoader());
                                                    }
                                                }
                                                zzd(classLoaderZza);
                                                declaredField.set(null, classLoaderZza);
                                                zzb = bool2;
                                                return iZzb;
                                            }
                                            return iZzb;
                                        } catch (LoadingException unused2) {
                                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                                            bool = Boolean.FALSE;
                                        }
                                    }
                                }
                            }
                            zzb = bool;
                        }
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e12) {
                        Log.w("DynamiteModule", "Failed to load module via V2: " + e12.toString());
                        bool = Boolean.FALSE;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return zzb(context, str, z10, false);
                    } catch (LoadingException e13) {
                        Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e13.getMessage());
                        return 0;
                    }
                }
                zzq zzqVarZzg = zzg(context);
                try {
                    if (zzqVarZzg != null) {
                        try {
                            int iZze = zzqVarZzg.zze();
                            if (iZze >= 3) {
                                zzn zznVar = (zzn) zzg.get();
                                if (zznVar == null || (cursor = zznVar.zza) == null) {
                                    Cursor cursor3 = (Cursor) ObjectWrapper.unwrap(zzqVarZzg.zzk(ObjectWrapper.wrap(context), str, z10, ((Long) zzh.get()).longValue()));
                                    if (cursor3 != null) {
                                        try {
                                            if (cursor3.moveToFirst()) {
                                                int i11 = cursor3.getInt(0);
                                                cursor2 = (i11 <= 0 || !zze(cursor3)) ? cursor3 : null;
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                iZzf = i11;
                                            } else {
                                                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                                if (cursor3 != null) {
                                                    cursor3.close();
                                                }
                                            }
                                        } catch (RemoteException e14) {
                                            e11 = e14;
                                            cursor2 = cursor3;
                                            Log.w("DynamiteModule", "Failed to retrieve remote module version: " + e11.getMessage());
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                        } catch (Throwable th3) {
                                            th2 = th3;
                                            cursor2 = cursor3;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th2;
                                        }
                                    } else {
                                        Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                        if (cursor3 != null) {
                                            cursor3.close();
                                        }
                                    }
                                } else {
                                    iZzf = cursor.getInt(0);
                                }
                            } else if (iZze == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                iZzf = zzqVarZzg.zzg(ObjectWrapper.wrap(context), str, z10);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                iZzf = zzqVarZzg.zzf(ObjectWrapper.wrap(context), str, z10);
                            }
                        } catch (RemoteException e15) {
                            e11 = e15;
                        }
                    }
                    return iZzf;
                } catch (Throwable th4) {
                    th2 = th4;
                }
            }
        } catch (Throwable th5) {
            CrashUtils.addDynamiteErrorToDropBox(context, th5);
            throw th5;
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00e0  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    private static int zzb(Context context, String str, boolean z10, boolean z11) throws Throwable {
        Throwable th2;
        Exception e11;
        ?? r11 = 0;
        ?? r12 = 0;
        ?? r13 = 0;
        ?? r14 = 0;
        try {
            try {
                boolean z12 = true;
                Cursor cursorQuery = context.getContentResolver().query(new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z10 ? OfflineConstantsKt.TRIGGER_API : "api_force_staging").appendPath(str).appendQueryParameter("requestStartTime", String.valueOf(((Long) zzh.get()).longValue())).build(), null, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            boolean z13 = false;
                            int i11 = cursorQuery.getInt(0);
                            if (i11 > 0) {
                                synchronized (DynamiteModule.class) {
                                    try {
                                        zzc = cursorQuery.getString(2);
                                        int columnIndex = cursorQuery.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            zze = cursorQuery.getInt(columnIndex);
                                        }
                                        int columnIndex2 = cursorQuery.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            if (cursorQuery.getInt(columnIndex2) == 0) {
                                                z12 = false;
                                            }
                                            zzd = z12;
                                            z13 = z12;
                                        }
                                    } catch (Throwable th3) {
                                        throw th3;
                                    }
                                }
                                if (zze(cursorQuery)) {
                                    cursorQuery = null;
                                }
                            }
                            if (z11 && z13) {
                                throw new LoadingException("forcing fallback to container DynamiteLoader impl", r13 == true ? 1 : 0);
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return i11;
                        }
                    } catch (Exception e12) {
                        e11 = e12;
                        if (e11 instanceof LoadingException) {
                            throw e11;
                        }
                        throw new LoadingException("V2 version check failed: " + e11.getMessage(), e11, r12 == true ? 1 : 0);
                    }
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new LoadingException("Failed to connect to dynamite module ContentResolver.", r14 == true ? 1 : 0);
            } catch (Throwable th4) {
                th2 = th4;
                r11 = context;
                if (r11 != 0) {
                    r11.close();
                }
                throw th2;
            }
        } catch (Exception e13) {
            e11 = e13;
        } catch (Throwable th5) {
            th2 = th5;
            if (r11 != 0) {
                r11.close();
            }
            throw th2;
        }
    }

    private static DynamiteModule zzc(Context context, String str) {
        "Selected local version of ".concat(String.valueOf(str));
        return new DynamiteModule(context);
    }

    private static void zzd(ClassLoader classLoader) throws LoadingException {
        zzr zzrVar;
        zzp zzpVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder == null) {
                zzrVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzrVar = iInterfaceQueryLocalInterface instanceof zzr ? (zzr) iInterfaceQueryLocalInterface : new zzr(iBinder);
            }
            zzl = zzrVar;
        } catch (ClassNotFoundException e11) {
            e = e11;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        } catch (IllegalAccessException e12) {
            e = e12;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        } catch (InstantiationException e13) {
            e = e13;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        } catch (NoSuchMethodException e14) {
            e = e14;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        } catch (InvocationTargetException e15) {
            e = e15;
            throw new LoadingException("Failed to instantiate dynamite loader", e, zzpVar);
        }
    }

    private static boolean zze(Cursor cursor) {
        zzn zznVar = (zzn) zzg.get();
        if (zznVar == null || zznVar.zza != null) {
            return false;
        }
        zznVar.zza = cursor;
        return true;
    }

    private static boolean zzf(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(zzf)) {
            return true;
        }
        boolean z10 = false;
        if (zzf == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 10000000) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                z10 = true;
            }
            zzf = Boolean.valueOf(z10);
            if (z10 && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                zzd = true;
            }
        }
        if (!z10) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z10;
    }

    @Nullable
    private static zzq zzg(Context context) {
        zzq zzqVar;
        synchronized (DynamiteModule.class) {
            zzq zzqVar2 = zzk;
            if (zzqVar2 != null) {
                return zzqVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzqVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    zzqVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzq(iBinder);
                }
                if (zzqVar != null) {
                    zzk = zzqVar;
                    return zzqVar;
                }
            } catch (Exception e11) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e11.getMessage());
            }
            return null;
        }
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public Context getModuleContext() {
        return this.zzj;
    }

    @NonNull
    @KeepForSdk
    public IBinder instantiate(@NonNull String str) throws LoadingException {
        try {
            return (IBinder) this.zzj.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e11) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e11, null);
        }
    }
}
