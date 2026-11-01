package t4;

import android.content.Context;
import android.util.Pair;
import com.airbnb.lottie.h;
import com.airbnb.lottie.network.FileExtension;
import com.airbnb.lottie.q0;
import com.airbnb.lottie.r;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f76061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f76062b;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f76063a;

        static {
            int[] iArr = new int[FileExtension.values().length];
            f76063a = iArr;
            try {
                iArr[FileExtension.ZIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f76063a[FileExtension.GZIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public g(f fVar, e eVar) {
        this.f76061a = fVar;
        this.f76062b = eVar;
    }

    private h a(Context context, String str, String str2) {
        f fVar;
        Pair pairA;
        q0 q0VarC;
        if (str2 == null || (fVar = this.f76061a) == null || (pairA = fVar.a(str)) == null) {
            return null;
        }
        FileExtension fileExtension = (FileExtension) pairA.first;
        InputStream inputStream = (InputStream) pairA.second;
        int i11 = a.f76063a[fileExtension.ordinal()];
        if (i11 == 1) {
            q0VarC = r.C(context, new ZipInputStream(inputStream), str2);
        } else if (i11 != 2) {
            q0VarC = r.q(inputStream, str2);
        } else {
            try {
                q0VarC = r.q(new GZIPInputStream(inputStream), str2);
            } catch (IOException e11) {
                q0VarC = new q0((Throwable) e11);
            }
        }
        if (q0VarC.b() != null) {
            return (h) q0VarC.b();
        }
        return null;
    }

    private q0 b(Context context, String str, String str2) {
        v4.f.a("Fetching " + str);
        Closeable closeable = null;
        try {
            try {
                c cVarA = this.f76062b.a(str);
                if (!cVarA.isSuccessful()) {
                    q0 q0Var = new q0((Throwable) new IllegalArgumentException(cVarA.error()));
                    try {
                        cVarA.close();
                    } catch (IOException e11) {
                        v4.f.d("LottieFetchResult close failed ", e11);
                    }
                    return q0Var;
                }
                q0 q0VarE = e(context, str, cVarA.M(), cVarA.z(), str2);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Completed fetch from network. Success: ");
                sb2.append(q0VarE.b() != null);
                v4.f.a(sb2.toString());
                try {
                    cVarA.close();
                } catch (IOException e12) {
                    v4.f.d("LottieFetchResult close failed ", e12);
                }
                return q0VarE;
            } catch (Exception e13) {
                q0 q0Var2 = new q0((Throwable) e13);
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e14) {
                        v4.f.d("LottieFetchResult close failed ", e14);
                    }
                }
                return q0Var2;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e15) {
                    v4.f.d("LottieFetchResult close failed ", e15);
                }
            }
            throw th2;
        }
    }

    private q0 d(String str, InputStream inputStream, String str2) {
        f fVar;
        return (str2 == null || (fVar = this.f76061a) == null) ? r.q(new GZIPInputStream(inputStream), null) : r.q(new GZIPInputStream(new FileInputStream(fVar.g(str, inputStream, FileExtension.GZIP))), str);
    }

    private q0 e(Context context, String str, InputStream inputStream, String str2, String str3) {
        q0 q0VarG;
        FileExtension fileExtension;
        f fVar;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (str2.contains("application/zip") || str2.contains("application/x-zip") || str2.contains("application/x-zip-compressed") || str.split("\\?")[0].endsWith(".lottie")) {
            v4.f.a("Handling zip response.");
            FileExtension fileExtension2 = FileExtension.ZIP;
            q0VarG = g(context, str, inputStream, str3);
            fileExtension = fileExtension2;
        } else if (str2.contains("application/gzip") || str2.contains("application/x-gzip") || str.split("\\?")[0].endsWith(".tgs")) {
            v4.f.a("Handling gzip response.");
            fileExtension = FileExtension.GZIP;
            q0VarG = d(str, inputStream, str3);
        } else {
            v4.f.a("Received json response.");
            fileExtension = FileExtension.JSON;
            q0VarG = f(str, inputStream, str3);
        }
        if (str3 != null && q0VarG.b() != null && (fVar = this.f76061a) != null) {
            fVar.f(str, fileExtension);
        }
        return q0VarG;
    }

    private q0 f(String str, InputStream inputStream, String str2) {
        f fVar;
        return (str2 == null || (fVar = this.f76061a) == null) ? r.q(inputStream, null) : r.q(new FileInputStream(fVar.g(str, inputStream, FileExtension.JSON).getAbsolutePath()), str);
    }

    private q0 g(Context context, String str, InputStream inputStream, String str2) {
        f fVar;
        return (str2 == null || (fVar = this.f76061a) == null) ? r.C(context, new ZipInputStream(inputStream), null) : r.C(context, new ZipInputStream(new FileInputStream(fVar.g(str, inputStream, FileExtension.ZIP))), str);
    }

    public q0 c(Context context, String str, String str2) {
        h hVarA = a(context, str, str2);
        if (hVarA != null) {
            return new q0(hVarA);
        }
        v4.f.a("Animation for " + str + " not found in cache. Fetching from network.");
        return b(context, str, str2);
    }
}
