package Abdullah;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.content.res.AssetManager;
import android.util.Base64;
import com.transsion.subroom.app.SubRoomApp;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class hook extends SubRoomApp implements InvocationHandler {
    private static String appPkgName = "";
    private static Signature[] signatures;
    private Object base;
    private File fileStreamPath = null;

    /* JADX INFO: loaded from: classes7.dex */
    public class a {
        static String sig_data = "AQAAA3UwggNxMIICWaADAgECAgQd+BojMA0GCSqGSIb3DQEBCwUAMGgxCzAJBgNVBAYTAkNOMREwDwYDVQQIEwhzaGFuZ2hhaTERMA8GA1UEBxMIc2hhbmdoYWkxCzAJBgNVBAoTAm1pMRIwEAYDVQQLEwl0cmFuc3Npb24xEjAQBgNVBAMTCXRzb25lcm9vbTAgFw0yMjA3MTUwNjEyMzlaGA8yMTIxMDYyMTA2MTIzOVowaDELMAkGA1UEBhMCQ04xETAPBgNVBAgTCHNoYW5naGFpMREwDwYDVQQHEwhzaGFuZ2hhaTELMAkGA1UEChMCbWkxEjAQBgNVBAsTCXRyYW5zc2lvbjESMBAGA1UEAxMJdHNvbmVyb29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk0YZEMSQHs8B1CJYSwU8fIIVuEANfuLz9duIQs0xXsOZ22h1WQhIRdHFZtaq7YIrGe8rUCrlBufnQAkal2QnHoNYQ+0dDOXY5m++V2Z21VGBfQy6Mvu/Ssrg0WUkbJDsoq+ZjV/zKaDeNJqX3OPtJDTJO+6j7HHO/M2XLV/gFkLyylTUsyq5ARQRZJ1ofhvB+LzmaYjhIiOdccTFjdw61D50mkBDTuEphvROn8ZzuHYSv4Ij+scE5V2zuF3A3R1QrsOvWetx+ENvyxVNJ9YaiDptVtAyBcxQfJJhcjqGEQTtbD2Ds0mVUvOCNrCKpCZdTUAUogaQA4urEZzcs7uWJwIDAQABoyEwHzAdBgNVHQ4EFgQU+EX01Mo9LncrLVWkeUn0Dsq2BkgwDQYJKoZIhvcNAQELBQADggEBAFTiCKi/KHxw4svzrhVXISvM42swEoo7JoYJrbPc6o+bV3k3BVa+HE7Vy3/fPqGOEaPka2BQ6ODUiqlU852RJL2tiACyj9EncR3v/T1ZqkpDnV2tyHM5XyoSlWu5DtgfBtxhv15tyJs/Eob7s/0R1fCGfnn9xtn797KpMjDcEZYSAX3cmIdjwTfasB/w6cdlVcQ1rEBUFNJWhqWVUutgN/7rKHVc0VT1IcuHrF3WTjq7zdcgnV7yMK9F2Y98ZmCay9HLDPYIeyDVHpQcU1BiwIM3WK+0BsRZ0EZwwpmkjIzyy0vtjg1fuDbsSGhh6j5xcJtPb2bDJaSsrsGlKvWHxWM=";
        public static Signature[] signatures = null;

        private static void a() {
            try {
                DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(Base64.decode(sig_data, 0)));
                byte[][] bArr = new byte[dataInputStream.read() & 255][];
                for (int i11 = 0; i11 < bArr.length; i11++) {
                    bArr[i11] = new byte[dataInputStream.readInt()];
                    dataInputStream.readFully(bArr[i11]);
                }
                signatures = new Signature[bArr.length];
                int i12 = 0;
                while (true) {
                    Signature[] signatureArr = signatures;
                    if (i12 >= signatureArr.length) {
                        return;
                    }
                    signatureArr[i12] = new Signature(bArr[i12]);
                    i12++;
                }
            } catch (IOException e11) {
                e11.printStackTrace();
            }
        }

        public static Signature[] getApkContentsSigners(SigningInfo signingInfo) {
            Signature[] signatureArr = signatures;
            if (signatureArr != null) {
                return signatureArr;
            }
            a();
            return signatures;
        }

        public static Signature[] getSigningCertificateHistory(SigningInfo signingInfo) {
            if (signingInfo.hasMultipleSigners()) {
                return null;
            }
            Signature[] signatureArr = signatures;
            if (signatureArr != null) {
                return signatureArr;
            }
            a();
            return signatures;
        }
    }

    @Override // com.tencent.tinker.loader.app.TinkerApplication, android.content.ContextWrapper
    protected void attachBaseContext(Context base) {
        try {
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(Base64.decode("AQAAA3UwggNxMIICWaADAgECAgQd+BojMA0GCSqGSIb3DQEBCwUAMGgxCzAJBgNVBAYTAkNOMREwDwYDVQQIEwhzaGFuZ2hhaTERMA8GA1UEBxMIc2hhbmdoYWkxCzAJBgNVBAoTAm1pMRIwEAYDVQQLEwl0cmFuc3Npb24xEjAQBgNVBAMTCXRzb25lcm9vbTAgFw0yMjA3MTUwNjEyMzlaGA8yMTIxMDYyMTA2MTIzOVowaDELMAkGA1UEBhMCQ04xETAPBgNVBAgTCHNoYW5naGFpMREwDwYDVQQHEwhzaGFuZ2hhaTELMAkGA1UEChMCbWkxEjAQBgNVBAsTCXRyYW5zc2lvbjESMBAGA1UEAxMJdHNvbmVyb29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk0YZEMSQHs8B1CJYSwU8fIIVuEANfuLz9duIQs0xXsOZ22h1WQhIRdHFZtaq7YIrGe8rUCrlBufnQAkal2QnHoNYQ+0dDOXY5m++V2Z21VGBfQy6Mvu/Ssrg0WUkbJDsoq+ZjV/zKaDeNJqX3OPtJDTJO+6j7HHO/M2XLV/gFkLyylTUsyq5ARQRZJ1ofhvB+LzmaYjhIiOdccTFjdw61D50mkBDTuEphvROn8ZzuHYSv4Ij+scE5V2zuF3A3R1QrsOvWetx+ENvyxVNJ9YaiDptVtAyBcxQfJJhcjqGEQTtbD2Ds0mVUvOCNrCKpCZdTUAUogaQA4urEZzcs7uWJwIDAQABoyEwHzAdBgNVHQ4EFgQU+EX01Mo9LncrLVWkeUn0Dsq2BkgwDQYJKoZIhvcNAQELBQADggEBAFTiCKi/KHxw4svzrhVXISvM42swEoo7JoYJrbPc6o+bV3k3BVa+HE7Vy3/fPqGOEaPka2BQ6ODUiqlU852RJL2tiACyj9EncR3v/T1ZqkpDnV2tyHM5XyoSlWu5DtgfBtxhv15tyJs/Eob7s/0R1fCGfnn9xtn797KpMjDcEZYSAX3cmIdjwTfasB/w6cdlVcQ1rEBUFNJWhqWVUutgN/7rKHVc0VT1IcuHrF3WTjq7zdcgnV7yMK9F2Y98ZmCay9HLDPYIeyDVHpQcU1BiwIM3WK+0BsRZ0EZwwpmkjIzyy0vtjg1fuDbsSGhh6j5xcJtPb2bDJaSsrsGlKvWHxWM=", 0)));
            int i11 = dataInputStream.read() & 255;
            byte[][] bArr = new byte[i11][];
            for (int i12 = 0; i12 < i11; i12++) {
                bArr[i12] = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr[i12]);
            }
            if (signatures == null) {
                signatures = new Signature[i11];
                int i13 = 0;
                while (true) {
                    Signature[] signatureArr = signatures;
                    if (i13 >= signatureArr.length) {
                        break;
                    }
                    signatureArr[i13] = new Signature(bArr[i13]);
                    i13++;
                }
            }
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getDeclaredMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("sPackageManager");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(objInvoke);
            Class<?> cls2 = Class.forName("android.content.pm.IPackageManager");
            this.base = obj;
            appPkgName = base.getPackageName();
            Object objNewProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, this);
            declaredField.set(objInvoke, objNewProxyInstance);
            PackageManager packageManager = base.getPackageManager();
            Field declaredField2 = packageManager.getClass().getDeclaredField("mPM");
            declaredField2.setAccessible(true);
            declaredField2.set(packageManager, objNewProxyInstance);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        try {
            File file = (File) base.getClass().getMethod("getFileStreamPath", String.class).invoke(base, new File(base.getApplicationInfo().sourceDir).getName());
            if (file.exists()) {
                this.fileStreamPath = file;
            } else {
                AssetManager assetManager = (AssetManager) base.getClass().getMethod("getAssets", null).invoke(base, null);
                InputStream inputStream = (InputStream) assetManager.getClass().getMethod("open", String.class).invoke(assetManager, "injectjavascript/bgm_fixed_min.js");
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                byte[] bArr2 = new byte[1024];
                for (int i14 = 0; i14 != -1; i14 = inputStream.read(bArr2)) {
                    fileOutputStream.write(bArr2, 0, i14);
                    fileOutputStream.flush();
                }
                inputStream.close();
                fileOutputStream.close();
                this.fileStreamPath = file;
            }
            File file2 = this.fileStreamPath;
            if (file2 != null && file2.exists()) {
                String path = this.fileStreamPath.getPath();
                Field declaredField3 = ClassLoader.getSystemClassLoader().loadClass("android.app.ActivityThread").getDeclaredField("sCurrentActivityThread");
                declaredField3.setAccessible(true);
                Object obj2 = declaredField3.get(null);
                Field declaredField4 = obj2.getClass().getDeclaredField("mPackages");
                declaredField4.setAccessible(true);
                Object obj3 = ((WeakReference) ((Map) declaredField4.get(obj2)).get(base.getPackageName())).get();
                Field declaredField5 = obj3.getClass().getDeclaredField("mAppDir");
                declaredField5.setAccessible(true);
                declaredField5.set(obj3, path);
                Field declaredField6 = obj3.getClass().getDeclaredField("mApplicationInfo");
                declaredField6.setAccessible(true);
                ApplicationInfo applicationInfo = (ApplicationInfo) declaredField6.get(obj3);
                applicationInfo.publicSourceDir = path;
                applicationInfo.sourceDir = path;
            }
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
        super.attachBaseContext(base);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        if (method != null && "getPackageInfo".equals(method.getName())) {
            String str = (String) args[0];
            if ((((Number) args[1]).intValue() & 64) != 0 && appPkgName.equals(str)) {
                PackageInfo packageInfo = (PackageInfo) method.invoke(this.base, args);
                packageInfo.signatures = new Signature[signatures.length];
                System.arraycopy(signatures, 0, packageInfo.signatures, 0, signatures.length);
                return packageInfo;
            }
        }
        if (method == null || !"getApplicationInfo".equals(method.getName()) || !appPkgName.equals((String) args[0])) {
            return new String(new byte[]{103, 101, 116, 73, 110, 115, 116, 97, 108, 108, 101, 114, 80, 97, 99, 107, 97, 103, 101, 78, 97, 109, 101}).equals(method.getName()) ? "com.android.vending" : method.invoke(this.base, args);
        }
        ApplicationInfo applicationInfo = (ApplicationInfo) method.invoke(this.base, args);
        File file = this.fileStreamPath;
        if (file != null) {
            applicationInfo.sourceDir = file.getPath();
            applicationInfo.publicSourceDir = this.fileStreamPath.getPath();
        }
        return applicationInfo;
    }
}
