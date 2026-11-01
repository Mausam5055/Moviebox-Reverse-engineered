package com.bytedance.sdk.openadsdk.core.settings;

import android.content.SharedPreferences;
import android.os.SystemClock;
import com.bytedance.sdk.component.utils.dx;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.JcM;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class aa implements HiB {
    private final String Jcg;
    private Sj TEQ;
    private final ConcurrentHashMap<String, Object> TKC = new ConcurrentHashMap<>();
    private final Object EjP = new Object();
    private final Object HiB = new Object();
    private final CountDownLatch vS = new CountDownLatch(1);
    private Properties Dq = new Properties();
    private volatile boolean uA = false;

    public interface Sj {
        void Sj();

        void sP();
    }

    public class sP implements HiB.Sj {
        private final Map<String, Object> sP = new HashMap();
        private final Object TKC = new Object();

        public sP() {
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.HiB.Sj
        public HiB.Sj Sj(String str) {
            synchronized (this.TKC) {
                this.sP.put(str, this);
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.HiB.Sj
        public HiB.Sj Sj(String str, float f11) {
            synchronized (this.TKC) {
                this.sP.put(str, Float.valueOf(f11));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.HiB.Sj
        public HiB.Sj Sj(String str, int i11) {
            synchronized (this.TKC) {
                this.sP.put(str, Integer.valueOf(i11));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.HiB.Sj
        public HiB.Sj Sj(String str, long j11) {
            synchronized (this.TKC) {
                this.sP.put(str, Long.valueOf(j11));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.HiB.Sj
        public HiB.Sj Sj(String str, String str2) {
            synchronized (this.TKC) {
                this.sP.put(str, str2);
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.HiB.Sj
        public HiB.Sj Sj(String str, boolean z10) {
            synchronized (this.TKC) {
                this.sP.put(str, Boolean.valueOf(z10));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.HiB.Sj
        public void Sj() {
            Object obj;
            Properties properties = new Properties();
            synchronized (this.TKC) {
                try {
                    properties.putAll(aa.this.Dq);
                    boolean z10 = false;
                    for (Map.Entry<String, Object> entry : this.sP.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value == this || value == null) {
                            if (properties.containsKey(key)) {
                                properties.remove(key);
                                z10 = true;
                            }
                        } else if (!properties.containsKey(key) || (obj = properties.get(key)) == null || !obj.equals(value)) {
                            properties.put(key, String.valueOf(value));
                            z10 = true;
                        }
                    }
                    this.sP.clear();
                    if (z10) {
                        aa.this.Sj(properties);
                        aa.this.Dq = properties;
                        aa.this.TKC.clear();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public aa(String str, Sj sj2) {
        this.Jcg = str;
        this.TEQ = sj2;
        JcM.Sj(new com.bytedance.sdk.component.Dq.Dq("SetL_".concat(String.valueOf(str))) { // from class: com.bytedance.sdk.openadsdk.core.settings.aa.1
            @Override // java.lang.Runnable
            public void run() {
                aa.this.Sj(false);
            }
        });
    }

    private void HiB() {
        if (this.uA) {
            return;
        }
        try {
            SystemClock.elapsedRealtime();
            this.vS.await(JcM.vS() ? 4 : 8, TimeUnit.SECONDS);
        } catch (InterruptedException e11) {
            sU.Sj("SdkSettings.Prop", "awaitLoadedLocked: ", e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(Properties properties) {
        synchronized (this.HiB) {
            File fileVS = vS();
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(fileVS);
                    try {
                        properties.store(fileOutputStream2, (String) null);
                        fileVS.getAbsolutePath();
                        com.bytedance.sdk.openadsdk.utils.aa.Sj(fileOutputStream2);
                    } catch (Exception e11) {
                        e = e11;
                        fileOutputStream = fileOutputStream2;
                        sU.Sj("SdkSettings.Prop", "saveToLocal: ", e);
                        if (fileOutputStream != null) {
                            com.bytedance.sdk.openadsdk.utils.aa.Sj(fileOutputStream);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            com.bytedance.sdk.openadsdk.utils.aa.Sj(fileOutputStream);
                        }
                        throw th;
                    }
                } catch (Exception e12) {
                    e = e12;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        Fmk.mj();
    }

    private File vS() {
        return new File(dNu.Sj().getFilesDir(), this.Jcg);
    }

    protected void EjP() {
        Sj sj2 = this.TEQ;
        if (sj2 != null) {
            sj2.sP();
        }
    }

    public float Sj(String str, float f11) {
        if (str != null && !str.isEmpty()) {
            HiB();
            try {
                return Float.parseFloat(this.Dq.getProperty(str, String.valueOf(f11)));
            } catch (NumberFormatException e11) {
                sU.Sj("SdkSettings.Prop", "", e11);
            }
        }
        return f11;
    }

    public int Sj(String str, int i11) {
        if (str != null && !str.isEmpty()) {
            HiB();
            try {
                return Integer.parseInt(this.Dq.getProperty(str, String.valueOf(i11)));
            } catch (NumberFormatException e11) {
                sU.Sj("SdkSettings.Prop", "", e11);
            }
        }
        return i11;
    }

    public long Sj(String str, long j11) {
        if (str != null && !str.isEmpty()) {
            HiB();
            try {
                return Long.parseLong(this.Dq.getProperty(str, String.valueOf(j11)));
            } catch (NumberFormatException e11) {
                sU.Sj("SdkSettings.Prop", "", e11);
            }
        }
        return j11;
    }

    public HiB.Sj Sj() {
        return new sP();
    }

    public <T> T Sj(String str, T t11, HiB.sP<T> sPVar) {
        T tSP;
        if (str != null && !str.isEmpty()) {
            if (this.TKC.containsKey(str)) {
                try {
                    return (T) this.TKC.get(str);
                } catch (Exception e11) {
                    sU.Sj("SdkSettings.Prop", "", e11);
                    return t11;
                }
            }
            HiB();
            String property = this.Dq.getProperty(str, null);
            if (property != null && sPVar != null && (tSP = sPVar.sP(property)) != null) {
                this.TKC.put(str, tSP);
                return tSP;
            }
        }
        return t11;
    }

    public String Sj(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return str2;
        }
        HiB();
        return this.Dq.getProperty(str, str2);
    }

    public void Sj(boolean z10) {
        Sj sj2;
        Object obj;
        synchronized (this.EjP) {
            try {
                if (!this.uA || z10) {
                    File fileVS = vS();
                    if (fileVS.exists()) {
                        Properties properties = new Properties();
                        FileInputStream fileInputStream = null;
                        try {
                            try {
                                FileInputStream fileInputStream2 = new FileInputStream(fileVS);
                                try {
                                    properties.load(fileInputStream2);
                                    properties.size();
                                    new StringBuilder("items from ").append(fileVS.getAbsolutePath());
                                    if (!properties.isEmpty()) {
                                        this.Dq = properties;
                                        this.TKC.clear();
                                    }
                                    com.bytedance.sdk.openadsdk.utils.aa.Sj(fileInputStream2);
                                    obj = this.EjP;
                                } catch (OutOfMemoryError unused) {
                                    fileInputStream = fileInputStream2;
                                    try {
                                        com.bytedance.sdk.component.utils.Jcg.TKC(fileVS);
                                    } catch (Throwable th2) {
                                        sU.Sj("SdkSettings.Prop", "delete: ", th2);
                                    }
                                    if (fileInputStream != null) {
                                        com.bytedance.sdk.openadsdk.utils.aa.Sj(fileInputStream);
                                    }
                                    obj = this.EjP;
                                } catch (Throwable th3) {
                                    th = th3;
                                    fileInputStream = fileInputStream2;
                                    sU.Sj("SdkSettings.Prop", "reload: ", th);
                                    if (fileInputStream != null) {
                                        com.bytedance.sdk.openadsdk.utils.aa.Sj(fileInputStream);
                                    }
                                    obj = this.EjP;
                                }
                            } catch (Throwable th4) {
                                if (fileInputStream != null) {
                                    com.bytedance.sdk.openadsdk.utils.aa.Sj(fileInputStream);
                                }
                                this.EjP.notifyAll();
                                throw th4;
                            }
                        } catch (OutOfMemoryError unused2) {
                        } catch (Throwable th5) {
                            th = th5;
                        }
                        obj.notifyAll();
                    } else if (dx.Sj(dNu.Sj()) && "tt_sdk_settings.prop".equals(this.Jcg)) {
                        try {
                            boolean z11 = false;
                            SharedPreferences sharedPreferences = dNu.Sj().getSharedPreferences("tt_sdk_settings", 0);
                            if (!sharedPreferences.getAll().isEmpty()) {
                                HiB.Sj Sj2 = Sj();
                                for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                                    String key = entry.getKey();
                                    Object value = entry.getValue();
                                    if (key != null && !key.isEmpty() && value != null) {
                                        Sj2.Sj(key, value.toString());
                                        z11 = true;
                                    }
                                }
                                if (z11) {
                                    Sj2.Sj();
                                }
                                sharedPreferences.edit().clear().commit();
                            }
                        } catch (Exception unused3) {
                        }
                    }
                    if (!this.uA && (sj2 = this.TEQ) != null) {
                        sj2.Sj();
                    }
                    this.uA = true;
                    this.vS.countDown();
                }
            } catch (Throwable th6) {
                throw th6;
            }
        }
    }

    public boolean Sj(String str, boolean z10) {
        if (str != null && !str.isEmpty()) {
            HiB();
            try {
                return Boolean.parseBoolean(this.Dq.getProperty(str, String.valueOf(z10)));
            } catch (Exception e11) {
                sU.Sj("SdkSettings.Prop", "", e11);
            }
        }
        return z10;
    }

    public void TKC() {
        File fileVS = vS();
        if (fileVS.exists()) {
            fileVS.delete();
        }
    }

    public boolean sP() {
        return this.uA;
    }
}
