package com.bytedance.sdk.component;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private static ArrayMap<File, Sj> Fmk;
    protected static InterfaceC0216Sj Sj;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private static ArrayMap<String, File> f20866aa;
    private static boolean sP;
    private long Dq;
    private final Object EjP;
    private Properties HiB;
    private int Jcg;
    private final File TEQ;
    private final Object TKC;
    private final File Ym;
    private long uA;
    private volatile boolean vS;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.Sj$Sj, reason: collision with other inner class name */
    public interface InterfaceC0216Sj {
        ExecutorService getExecutorService();

        HandlerThread getSafeHandlerThread(String str, int i11);
    }

    public class TKC implements SharedPreferences.Editor {
        private final Object sP = new Object();
        private final Map<String, Object> TKC = new HashMap();
        private boolean EjP = false;

        public TKC() {
        }

        private sP sP() {
            Properties properties;
            long j11;
            Object obj;
            boolean z10;
            synchronized (Sj.this.TKC) {
                try {
                    if (Sj.this.Jcg > 0) {
                        Properties properties2 = new Properties();
                        properties2.putAll(Sj.this.HiB);
                        Sj.this.HiB = properties2;
                    }
                    properties = Sj.this.HiB;
                    Sj.HiB(Sj.this);
                    synchronized (this.sP) {
                        try {
                            boolean z11 = false;
                            if (this.EjP) {
                                if (properties.isEmpty()) {
                                    z10 = false;
                                } else {
                                    properties.clear();
                                    z10 = true;
                                }
                                this.EjP = false;
                                z11 = z10;
                            }
                            for (Map.Entry<String, Object> entry : this.TKC.entrySet()) {
                                String key = entry.getKey();
                                Object value = entry.getValue();
                                if (value == this || value == null) {
                                    if (properties.containsKey(key)) {
                                        properties.remove(key);
                                        z11 = true;
                                    }
                                } else if (!properties.containsKey(key) || (obj = properties.get(key)) == null || !obj.equals(String.valueOf(value))) {
                                    properties.put(key, String.valueOf(value));
                                    z11 = true;
                                }
                            }
                            this.TKC.clear();
                            if (z11) {
                                Sj.vS(Sj.this);
                            }
                            j11 = Sj.this.Dq;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            return new sP(j11, properties);
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public TKC clear() {
            synchronized (this.sP) {
                this.EjP = true;
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public TKC remove(String str) {
            synchronized (this.sP) {
                this.TKC.put(str, this);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public TKC putFloat(String str, float f11) {
            synchronized (this.sP) {
                this.TKC.put(str, Float.valueOf(f11));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public TKC putInt(String str, int i11) {
            synchronized (this.sP) {
                this.TKC.put(str, Integer.valueOf(i11));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public TKC putLong(String str, long j11) {
            synchronized (this.sP) {
                this.TKC.put(str, Long.valueOf(j11));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public TKC putString(String str, String str2) {
            synchronized (this.sP) {
                this.TKC.put(str, str2);
            }
            return this;
        }

        public TKC Sj(String str, Set<String> set) {
            synchronized (this.sP) {
                this.TKC.put(str, set == null ? null : new HashSet(set));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public TKC putBoolean(String str, boolean z10) {
            synchronized (this.sP) {
                this.TKC.put(str, Boolean.valueOf(z10));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            Sj.this.Sj(sP(), false);
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            long jCurrentTimeMillis = Sj.sP ? System.currentTimeMillis() : 0L;
            sP sPVarSP = sP();
            Sj.this.Sj(sPVarSP, true);
            try {
                sPVarSP.TKC.await();
                return sPVarSP.EjP;
            } catch (InterruptedException unused) {
            } finally {
                if (Sj.sP) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(Sj.this.TEQ.getName());
                    sb2.append(":");
                    sb2.append(sPVarSP.Sj);
                    sb2.append(" committed after ");
                    sb2.append(System.currentTimeMillis() - jCurrentTimeMillis);
                    sb2.append(" ms");
                }
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public /* synthetic */ SharedPreferences.Editor putStringSet(String str, Set set) {
            return Sj(str, (Set<String>) set);
        }
    }

    private static class sP {
        volatile boolean EjP;
        boolean HiB;
        final long Sj;
        final CountDownLatch TKC;
        final Properties sP;

        private sP(long j11, Properties properties) {
            this.TKC = new CountDownLatch(1);
            this.EjP = false;
            this.HiB = false;
            this.Sj = j11;
            this.sP = properties;
        }

        void Sj(boolean z10, boolean z11) {
            this.HiB = z10;
            this.EjP = z11;
            this.TKC.countDown();
        }
    }

    private Sj(File file) {
        Object obj = new Object();
        this.TKC = obj;
        this.EjP = new Object();
        this.HiB = new Properties();
        this.vS = false;
        this.Jcg = 0;
        this.TEQ = file;
        this.Ym = Sj(file);
        synchronized (obj) {
            this.vS = false;
        }
        InterfaceC0216Sj interfaceC0216Sj = Sj;
        if (interfaceC0216Sj == null || interfaceC0216Sj.getExecutorService() == null) {
            new Thread("TTPropHelper") { // from class: com.bytedance.sdk.component.Sj.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Sj.this.Sj();
                }
            }.start();
        } else {
            Sj.getExecutorService().execute(new Runnable() { // from class: com.bytedance.sdk.component.Sj.2
                @Override // java.lang.Runnable
                public void run() {
                    Sj.this.Sj();
                }
            });
        }
    }

    private void EjP() {
        while (!this.vS) {
            try {
                this.TKC.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    static /* synthetic */ int HiB(Sj sj2) {
        int i11 = sj2.Jcg;
        sj2.Jcg = i11 + 1;
        return i11;
    }

    public static Sj Sj(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_prop";
        }
        synchronized (Sj.class) {
            try {
                if (f20866aa == null) {
                    f20866aa = new ArrayMap<>();
                }
                File file = f20866aa.get(str);
                if (file == null) {
                    file = new File(context.getFilesDir(), str);
                    f20866aa.put(str, file);
                }
                if (Fmk == null) {
                    Fmk = new ArrayMap<>();
                }
                Sj sj2 = Fmk.get(file);
                if (sj2 != null) {
                    return sj2;
                }
                Sj sj3 = new Sj(file);
                Fmk.put(file, sj3);
                return sj3;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static File Sj(File file) {
        return new File(file.getPath() + ".bak");
    }

    public static void Sj(InterfaceC0216Sj interfaceC0216Sj) {
        Sj = interfaceC0216Sj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(final sP sPVar, final boolean z10) {
        boolean z11;
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.Sj.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (Sj.this.EjP) {
                    try {
                        Sj.this.sP(sPVar, z10);
                    } catch (OutOfMemoryError unused) {
                    }
                }
                synchronized (Sj.this.TKC) {
                    Sj.uA(Sj.this);
                }
            }
        };
        if (z10) {
            synchronized (this.TKC) {
                z11 = this.Jcg == 1;
            }
            if (z11) {
                runnable.run();
                return;
            }
        }
        com.bytedance.sdk.component.sP.Sj(runnable, true ^ z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:121:0x0104 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0118 A[Catch: all -> 0x011d, TryCatch #9 {all -> 0x011d, blocks: (B:39:0x0090, B:40:0x0092, B:79:0x0114, B:81:0x0118, B:85:0x0121, B:87:0x012a, B:89:0x0132, B:91:0x013e, B:100:0x0181, B:101:0x0182, B:59:0x00de, B:78:0x0113, B:63:0x00e4, B:77:0x010a, B:99:0x0180, B:98:0x0177), top: B:124:0x0090, inners: #2, #10 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x011f  */
    /* JADX WARN: Code duplicated, block: B:87:0x012a A[Catch: all -> 0x011d, TryCatch #9 {all -> 0x011d, blocks: (B:39:0x0090, B:40:0x0092, B:79:0x0114, B:81:0x0118, B:85:0x0121, B:87:0x012a, B:89:0x0132, B:91:0x013e, B:100:0x0181, B:101:0x0182, B:59:0x00de, B:78:0x0113, B:63:0x00e4, B:77:0x010a, B:99:0x0180, B:98:0x0177), top: B:124:0x0090, inners: #2, #10 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0130  */
    /* JADX WARN: Code duplicated, block: B:91:0x013e A[Catch: all -> 0x011d, TRY_LEAVE, TryCatch #9 {all -> 0x011d, blocks: (B:39:0x0090, B:40:0x0092, B:79:0x0114, B:81:0x0118, B:85:0x0121, B:87:0x012a, B:89:0x0132, B:91:0x013e, B:100:0x0181, B:101:0x0182, B:59:0x00de, B:78:0x0113, B:63:0x00e4, B:77:0x010a, B:99:0x0180, B:98:0x0177), top: B:124:0x0090, inners: #2, #10 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r11v32 */
    public void sP(sP sPVar, boolean z10) {
        long jCurrentTimeMillis;
        long jCurrentTimeMillis2;
        Throwable th2;
        long jCurrentTimeMillis3;
        ?? r11;
        FileOutputStream fileOutputStream;
        long jCurrentTimeMillis4;
        long jCurrentTimeMillis5;
        boolean z11;
        long jCurrentTimeMillis6 = sP ? System.currentTimeMillis() : 0L;
        boolean zExists = this.TEQ.exists();
        if (sP) {
            jCurrentTimeMillis = System.currentTimeMillis();
            jCurrentTimeMillis2 = jCurrentTimeMillis;
        } else {
            jCurrentTimeMillis = 0;
            jCurrentTimeMillis2 = 0;
        }
        if (zExists) {
            if (this.uA >= sPVar.Sj) {
                z11 = false;
            } else if (z10) {
                z11 = true;
            } else {
                synchronized (this.TKC) {
                    z11 = this.Dq == sPVar.Sj;
                }
            }
            if (!z11) {
                sPVar.Sj(false, true);
                return;
            }
            boolean zExists2 = this.Ym.exists();
            if (sP) {
                jCurrentTimeMillis2 = System.currentTimeMillis();
            }
            if (zExists2) {
                this.TEQ.delete();
            } else if (!this.TEQ.renameTo(this.Ym)) {
                Log.e("TTPropHelper", "Couldn't rename file " + this.TEQ + " to backup file " + this.Ym);
                sPVar.Sj(false, false);
                return;
            }
        }
        try {
            synchronized (this.EjP) {
                Object obj = null;
                String str = null;
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        FileOutputStream fileOutputStream3 = new FileOutputStream(this.TEQ);
                        try {
                            try {
                                jCurrentTimeMillis3 = sP ? System.currentTimeMillis() : 0L;
                                try {
                                    sPVar.sP.store(fileOutputStream3, (String) null);
                                    if (sP) {
                                        new StringBuilder("save: ").append(sPVar.sP);
                                        StringBuilder sb2 = new StringBuilder("saveToLocal: save to");
                                        sb2.append(this.TEQ.getAbsolutePath());
                                        String str2 = NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;
                                        sb2.append(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
                                        str = str2;
                                    }
                                    try {
                                        fileOutputStream3.close();
                                        obj = str;
                                    } catch (Throwable th3) {
                                        String message = th3.getMessage();
                                        Log.w("TTPropHelper", message);
                                        obj = message;
                                    }
                                } catch (Exception e11) {
                                    e = e11;
                                    fileOutputStream = fileOutputStream3;
                                    Log.e("TTPropHelper", "saveToLocal: ", e);
                                    sPVar.Sj(false, false);
                                    obj = fileOutputStream;
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                            obj = fileOutputStream;
                                        } catch (Throwable th4) {
                                            Log.w("TTPropHelper", th4.getMessage());
                                            obj = fileOutputStream;
                                        }
                                    }
                                }
                            } catch (Throwable th5) {
                                th2 = th5;
                                r11 = fileOutputStream3;
                                if (r11 == 0) {
                                    throw th2;
                                }
                                try {
                                    r11.close();
                                    throw th2;
                                } catch (Throwable th6) {
                                    Log.w("TTPropHelper", th6.getMessage());
                                    throw th2;
                                }
                            }
                        } catch (Exception e12) {
                            e = e12;
                            fileOutputStream2 = fileOutputStream3;
                            jCurrentTimeMillis3 = 0;
                            fileOutputStream = fileOutputStream2;
                            Log.e("TTPropHelper", "saveToLocal: ", e);
                            sPVar.Sj(false, false);
                            obj = fileOutputStream;
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                                obj = fileOutputStream;
                            }
                            if (sP) {
                                jCurrentTimeMillis4 = System.currentTimeMillis();
                            } else {
                                jCurrentTimeMillis4 = 0;
                            }
                            this.Ym.delete();
                            if (sP) {
                                jCurrentTimeMillis5 = System.currentTimeMillis();
                            } else {
                                jCurrentTimeMillis5 = 0;
                            }
                            this.uA = sPVar.Sj;
                            sPVar.Sj(true, true);
                            if (sP) {
                                StringBuilder sb3 = new StringBuilder("write: ");
                                sb3.append(jCurrentTimeMillis - jCurrentTimeMillis6);
                                sb3.append("/");
                                sb3.append(jCurrentTimeMillis2 - jCurrentTimeMillis6);
                                sb3.append("/");
                                sb3.append(jCurrentTimeMillis3 - jCurrentTimeMillis6);
                                sb3.append("/");
                                sb3.append(jCurrentTimeMillis4 - jCurrentTimeMillis6);
                                sb3.append("/");
                                sb3.append(jCurrentTimeMillis5 - jCurrentTimeMillis6);
                            }
                        }
                    } catch (Throwable th7) {
                        th2 = th7;
                        r11 = obj;
                    }
                } catch (Exception e13) {
                    e = e13;
                }
            }
            if (sP) {
                jCurrentTimeMillis4 = System.currentTimeMillis();
            } else {
                jCurrentTimeMillis4 = 0;
            }
            this.Ym.delete();
            if (sP) {
                jCurrentTimeMillis5 = System.currentTimeMillis();
            } else {
                jCurrentTimeMillis5 = 0;
            }
            this.uA = sPVar.Sj;
            sPVar.Sj(true, true);
            if (sP) {
                StringBuilder sb4 = new StringBuilder("write: ");
                sb4.append(jCurrentTimeMillis - jCurrentTimeMillis6);
                sb4.append("/");
                sb4.append(jCurrentTimeMillis2 - jCurrentTimeMillis6);
                sb4.append("/");
                sb4.append(jCurrentTimeMillis3 - jCurrentTimeMillis6);
                sb4.append("/");
                sb4.append(jCurrentTimeMillis4 - jCurrentTimeMillis6);
                sb4.append("/");
                sb4.append(jCurrentTimeMillis5 - jCurrentTimeMillis6);
            }
        } catch (Throwable th8) {
            Log.w("TTPropHelper", "writeToFile: Got exception:", th8);
            if (this.TEQ.exists() && !this.TEQ.delete()) {
                Log.e("TTPropHelper", "Couldn't clean up partially-written file " + this.TEQ);
            }
            sPVar.Sj(false, false);
        }
    }

    static /* synthetic */ int uA(Sj sj2) {
        int i11 = sj2.Jcg;
        sj2.Jcg = i11 - 1;
        return i11;
    }

    static /* synthetic */ long vS(Sj sj2) {
        long j11 = sj2.Dq;
        sj2.Dq = 1 + j11;
        return j11;
    }

    public float Sj(String str, float f11) {
        float f12;
        if (TextUtils.isEmpty(str)) {
            return f11;
        }
        synchronized (this.TKC) {
            try {
                try {
                    EjP();
                    f12 = Float.parseFloat(this.HiB.getProperty(str, String.valueOf(f11)));
                } catch (NumberFormatException e11) {
                    Log.e("TTPropHelper", e11.getMessage());
                    return f11;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f12;
    }

    public int Sj(String str, int i11) {
        int i12;
        if (TextUtils.isEmpty(str)) {
            return i11;
        }
        synchronized (this.TKC) {
            try {
                try {
                    EjP();
                    i12 = Integer.parseInt(this.HiB.getProperty(str, String.valueOf(i11)));
                } catch (NumberFormatException e11) {
                    Log.e("TTPropHelper", e11.getMessage());
                    return i11;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i12;
    }

    public long Sj(String str, long j11) {
        long j12;
        if (TextUtils.isEmpty(str)) {
            return j11;
        }
        synchronized (this.TKC) {
            try {
                try {
                    EjP();
                    j12 = Long.parseLong(this.HiB.getProperty(str, String.valueOf(j11)));
                } catch (NumberFormatException e11) {
                    Log.e("TTPropHelper", e11.getMessage());
                    return j11;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j12;
    }

    public String Sj(String str, String str2) {
        String property;
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        synchronized (this.TKC) {
            EjP();
            property = this.HiB.getProperty(str, str2);
        }
        return property;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00bc A[Catch: all -> 0x00bf, TryCatch #5 {all -> 0x00bf, blocks: (B:47:0x00b6, B:49:0x00bc, B:52:0x00c1, B:53:0x00c9), top: B:68:0x00b6 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public void Sj() {
        FileInputStream fileInputStream;
        Throwable th2;
        synchronized (this.TKC) {
            try {
                if (this.vS) {
                    return;
                }
                if (this.Ym.exists()) {
                    this.TEQ.delete();
                    this.Ym.renameTo(this.TEQ);
                }
                if (sP) {
                    StringBuilder sb2 = new StringBuilder("reload: ");
                    sb2.append(this.TEQ.getAbsolutePath());
                    sb2.append(", exist? ");
                    sb2.append(this.TEQ.exists());
                }
                Properties properties = null;
                if (this.TEQ.exists()) {
                    Properties properties2 = new Properties();
                    try {
                        try {
                            fileInputStream = new FileInputStream(this.TEQ);
                            try {
                                properties2.load(fileInputStream);
                                if (sP) {
                                    StringBuilder sb3 = new StringBuilder("reload: find ");
                                    sb3.append(properties2.size());
                                    sb3.append(" ,items from ");
                                    sb3.append(this.TEQ.getAbsolutePath());
                                }
                                fileInputStream.close();
                            } catch (Throwable th3) {
                                th2 = th3;
                                try {
                                    Log.e("TTPropHelper", "reload: ", th2);
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                    properties = properties2;
                                    synchronized (this.TKC) {
                                        if (properties != null) {
                                            try {
                                                if (!properties.isEmpty()) {
                                                    this.HiB = properties;
                                                }
                                            } catch (Throwable th4) {
                                                throw th4;
                                            }
                                        }
                                        this.vS = true;
                                        this.TKC.notifyAll();
                                    }
                                } catch (Throwable th5) {
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (Throwable th6) {
                                            Log.w("TTPropHelper", th6.getMessage());
                                        }
                                    }
                                    throw th5;
                                }
                            }
                        } catch (Throwable th7) {
                            Log.w("TTPropHelper", th7.getMessage());
                        }
                    } catch (Throwable th8) {
                        fileInputStream = null;
                        th2 = th8;
                    }
                    properties = properties2;
                }
                synchronized (this.TKC) {
                    if (properties != null) {
                        if (!properties.isEmpty()) {
                            this.HiB = properties;
                        }
                    }
                    this.vS = true;
                    this.TKC.notifyAll();
                }
            } catch (Throwable th9) {
                throw th9;
            }
        }
    }

    public boolean Sj(String str) {
        boolean zContainsKey;
        synchronized (this.TKC) {
            try {
                try {
                    EjP();
                    zContainsKey = this.HiB.containsKey(str);
                } catch (NumberFormatException e11) {
                    Log.e("TTPropHelper", e11.getMessage());
                    return false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zContainsKey;
    }

    public boolean Sj(String str, boolean z10) {
        boolean z11;
        if (TextUtils.isEmpty(str)) {
            return z10;
        }
        synchronized (this.TKC) {
            try {
                try {
                    EjP();
                    z11 = Boolean.parseBoolean(this.HiB.getProperty(str, String.valueOf(z10)));
                } catch (NumberFormatException e11) {
                    Log.e("TTPropHelper", e11.getMessage());
                    return z10;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z11;
    }

    public TKC sP() {
        return new TKC();
    }
}
