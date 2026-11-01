package gz;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f64042a = new f();

    private f() {
    }

    public final String a(File soFile) {
        Intrinsics.h(soFile, "soFile");
        if (!soFile.exists() || !soFile.isFile()) {
            return "SO文件不存在: " + soFile.getAbsolutePath();
        }
        try {
            String absolutePath = soFile.getAbsolutePath();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("开始加载SO: ");
            sb2.append(absolutePath);
            soFile.setReadable(true, false);
            soFile.setExecutable(true, false);
            soFile.setWritable(false);
            System.load(absolutePath);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("SO加载成功: ");
            sb3.append(absolutePath);
            return null;
        } catch (Exception e11) {
            String str = "SO加载异常: " + e11.getMessage();
            lg.a.C0828a.k(lg.a.f68839a, "SoLoader", str, e11, false, 8, null);
            return str;
        } catch (UnsatisfiedLinkError e12) {
            String str2 = "SO加载失败 (UnsatisfiedLinkError): " + e12.getMessage();
            lg.a.C0828a.k(lg.a.f68839a, "SoLoader", str2, e12, false, 8, null);
            return str2;
        }
    }
}
