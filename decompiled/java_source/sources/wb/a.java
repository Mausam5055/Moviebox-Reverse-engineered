package wb;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.json.JSONObject;
import vb.g;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f77638a;

    public a(g gVar) {
        this.f77638a = gVar.g("com.crashlytics.settings.json");
    }

    private File a() {
        return this.f77638a;
    }

    public JSONObject b() throws Throwable {
        Throwable th2;
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        ob.g.f().b("Checking for cached settings...");
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File fileA = a();
                if (fileA.exists()) {
                    fileInputStream = new FileInputStream(fileA);
                    try {
                        jSONObject = new JSONObject(CommonUtils.A(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e11) {
                        e = e11;
                        ob.g.f().e("Failed to fetch cached settings", e);
                        CommonUtils.f(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } else {
                    ob.g.f().i("Settings file does not exist.");
                    jSONObject = null;
                }
                CommonUtils.f(fileInputStream2, "Error while closing settings cache file.");
                return jSONObject;
            } catch (Throwable th3) {
                th2 = th3;
                CommonUtils.f(null, "Error while closing settings cache file.");
                throw th2;
            }
        } catch (Exception e12) {
            e = e12;
            fileInputStream = null;
        } catch (Throwable th4) {
            th2 = th4;
            CommonUtils.f(null, "Error while closing settings cache file.");
            throw th2;
        }
    }

    public void c(long j11, JSONObject jSONObject) throws Throwable {
        ob.g.f().i("Writing settings to cache file...");
        if (jSONObject != null) {
            FileWriter fileWriter = null;
            try {
                try {
                    jSONObject.put("expires_at", j11);
                    FileWriter fileWriter2 = new FileWriter(a());
                    try {
                        fileWriter2.write(jSONObject.toString());
                        fileWriter2.flush();
                        CommonUtils.f(fileWriter2, "Failed to close settings writer.");
                    } catch (Exception e11) {
                        e = e11;
                        fileWriter = fileWriter2;
                        ob.g.f().e("Failed to cache settings", e);
                        CommonUtils.f(fileWriter, "Failed to close settings writer.");
                    } catch (Throwable th2) {
                        th = th2;
                        fileWriter = fileWriter2;
                        CommonUtils.f(fileWriter, "Failed to close settings writer.");
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e12) {
                e = e12;
            }
        }
    }
}
