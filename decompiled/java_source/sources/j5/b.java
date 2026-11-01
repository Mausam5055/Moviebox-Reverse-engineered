package j5;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes3.dex */
public class b {
    public k5.d a(String str, String str2, InputStream inputStream) throws IOException {
        boolean z10;
        k5.d dVar = new k5.d();
        k5.b bVar = new k5.b();
        BufferedReader bufferedReader = TextUtils.isEmpty(str2) ? new BufferedReader(new InputStreamReader(inputStream)) : new BufferedReader(new InputStreamReader(inputStream, str2));
        dVar.f66659e = str;
        int i11 = 0;
        for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
            try {
                String strTrim = line.trim();
                int i12 = i11 + 1;
                if (!strTrim.isEmpty()) {
                    i12 = i11 + 2;
                    try {
                        strTrim = bufferedReader.readLine().trim();
                        String strSubstring = strTrim.substring(0, 12);
                        String strSubstring2 = strTrim.substring(strTrim.length() - 12, strTrim.length());
                        bVar.f66651b = new k5.c("hh:mm:ss,ms", strSubstring);
                        bVar.f66652c = new k5.c("hh:mm:ss,ms", strSubstring2);
                        z10 = true;
                    } catch (Exception unused) {
                        dVar.f66664j += "incorrect time format at line " + i12;
                        z10 = false;
                    }
                    if (z10) {
                        int i13 = i11 + 3;
                        String line2 = bufferedReader.readLine();
                        strTrim = line2 != null ? line2.trim() : "";
                        String strSubstring3 = "";
                        while (!strTrim.isEmpty()) {
                            strSubstring3 = strSubstring3 + strTrim + "<br />";
                            String line3 = bufferedReader.readLine();
                            if (line3 != null) {
                                strTrim = line3.trim();
                                i13++;
                            } else {
                                strTrim = "";
                            }
                        }
                        if (strSubstring3.endsWith("<br />")) {
                            strSubstring3 = strSubstring3.substring(0, strSubstring3.length() - 6);
                        }
                        bVar.f66653d = strSubstring3;
                        int i14 = bVar.f66651b.f66654a;
                        while (dVar.f66663i.containsKey(Integer.valueOf(i14))) {
                            i14++;
                        }
                        if (i14 != bVar.f66651b.f66654a) {
                            dVar.f66664j += "caption with same start time found...\n\n";
                        }
                        dVar.f66663i.put(Integer.valueOf(i14), bVar);
                        i12 = i13;
                    }
                    while (!strTrim.isEmpty()) {
                        strTrim = bufferedReader.readLine().trim();
                        i12++;
                    }
                    bVar = new k5.b();
                }
                i11 = i12;
            } catch (Throwable th2) {
                try {
                    dVar.f66664j += "unexpected end of file, maybe last caption is not complete.\n\n";
                    th2.printStackTrace();
                    if (inputStream != null) {
                    }
                } catch (Throwable th3) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th3;
                }
            }
        }
        if (inputStream != null) {
            inputStream.close();
        }
        dVar.f66667m = true;
        return dVar;
    }
}
