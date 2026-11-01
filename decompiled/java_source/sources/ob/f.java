package ob;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f70950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f70951b = null;

    private class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f70952a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f70953b;

        private b() {
            int iP = CommonUtils.p(f.this.f70950a, "com.google.firebase.crashlytics.unity_version", "string");
            if (iP == 0) {
                if (!f.this.c("flutter_assets/NOTICES.Z")) {
                    this.f70952a = null;
                    this.f70953b = null;
                    return;
                } else {
                    this.f70952a = "Flutter";
                    this.f70953b = null;
                    g.f().i("Development platform is: Flutter");
                    return;
                }
            }
            this.f70952a = "Unity";
            String string = f.this.f70950a.getResources().getString(iP);
            this.f70953b = string;
            g.f().i("Unity Editor version is: " + string);
        }
    }

    public f(Context context) {
        this.f70950a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str) {
        if (this.f70950a.getAssets() == null) {
            return false;
        }
        try {
            InputStream inputStreamOpen = this.f70950a.getAssets().open(str);
            if (inputStreamOpen == null) {
                return true;
            }
            inputStreamOpen.close();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private b f() {
        if (this.f70951b == null) {
            this.f70951b = new b();
        }
        return this.f70951b;
    }

    public static boolean g(Context context) {
        return CommonUtils.p(context, "com.google.firebase.crashlytics.unity_version", "string") != 0;
    }

    public String d() {
        return f().f70952a;
    }

    public String e() {
        return f().f70953b;
    }
}
