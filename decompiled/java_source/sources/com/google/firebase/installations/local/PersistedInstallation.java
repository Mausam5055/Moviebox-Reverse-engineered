package com.google.firebase.installations.local;

import com.google.firebase.f;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PersistedInstallation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private File f31908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f31909b;

    public enum RegistrationStatus {
        ATTEMPT_MIGRATION,
        NOT_GENERATED,
        UNREGISTERED,
        REGISTERED,
        REGISTER_ERROR
    }

    public PersistedInstallation(f fVar) {
        this.f31909b = fVar;
    }

    private File a() {
        if (this.f31908a == null) {
            synchronized (this) {
                try {
                    if (this.f31908a == null) {
                        this.f31908a = new File(this.f31909b.k().getFilesDir(), "PersistedInstallation." + this.f31909b.o() + ".json");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f31908a;
    }

    private JSONObject c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(a());
            while (true) {
                try {
                    int i11 = fileInputStream.read(bArr, 0, 16384);
                    if (i11 < 0) {
                        JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                        fileInputStream.close();
                        return jSONObject;
                    }
                    byteArrayOutputStream.write(bArr, 0, i11);
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException | JSONException unused) {
            return new JSONObject();
        }
    }

    public b b(b bVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", bVar.d());
            jSONObject.put("Status", bVar.g().ordinal());
            jSONObject.put("AuthToken", bVar.b());
            jSONObject.put("RefreshToken", bVar.f());
            jSONObject.put("TokenCreationEpochInSecs", bVar.h());
            jSONObject.put("ExpiresInSecs", bVar.c());
            jSONObject.put("FisError", bVar.e());
            File fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", this.f31909b.k().getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (!fileCreateTempFile.renameTo(a())) {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
        return bVar;
    }

    public b d() {
        JSONObject jSONObjectC = c();
        String strOptString = jSONObjectC.optString("Fid", null);
        int iOptInt = jSONObjectC.optInt("Status", RegistrationStatus.ATTEMPT_MIGRATION.ordinal());
        String strOptString2 = jSONObjectC.optString("AuthToken", null);
        String strOptString3 = jSONObjectC.optString("RefreshToken", null);
        long jOptLong = jSONObjectC.optLong("TokenCreationEpochInSecs", 0L);
        long jOptLong2 = jSONObjectC.optLong("ExpiresInSecs", 0L);
        return b.a().d(strOptString).g(RegistrationStatus.values()[iOptInt]).b(strOptString2).f(strOptString3).h(jOptLong).c(jOptLong2).e(jSONObjectC.optString("FisError", null)).a();
    }
}
