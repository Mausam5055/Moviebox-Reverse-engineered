package yy;

import android.content.Context;
import com.transsnet.loginapi.bean.Country;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f79095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static JSONArray f79096b;

    public static b b() {
        if (f79095a == null) {
            f79095a = new b();
        }
        return f79095a;
    }

    private String c(InputStream inputStream) throws Throwable {
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        sb2.append(line);
                    } catch (IOException unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return sb2.toString();
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
            } catch (IOException unused3) {
            }
        } catch (IOException unused4) {
        } catch (Throwable th3) {
            th = th3;
        }
        return sb2.toString();
    }

    public ArrayList a(Context context) throws Throwable {
        ArrayList arrayList = new ArrayList();
        if (f79096b == null) {
            d(context);
        }
        JSONArray jSONArray = f79096b;
        if (jSONArray != null) {
            int length = jSONArray.length();
            for (int i11 = 0; i11 < length; i11++) {
                try {
                    JSONObject jSONObject = f79096b.getJSONObject(i11);
                    Country country = new Country();
                    country.setCountry(jSONObject.getString("cn"));
                    country.setCode(jSONObject.getString("pcc"));
                    if (jSONObject.has("mcc")) {
                        country.setMcc(jSONObject.getString("mcc"));
                    }
                    if (jSONObject.has("alpha2")) {
                        country.setCountry_s(jSONObject.getString("alpha2"));
                    }
                    arrayList.add(country);
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    public JSONArray d(Context context) throws Throwable {
        String strC;
        if (f79096b == null) {
            try {
                strC = c(context.getAssets().open("sdk_country_cc_mcc.json"));
            } catch (IOException e11) {
                e11.printStackTrace();
                strC = "";
            }
            try {
                f79096b = new JSONArray(strC);
            } catch (JSONException e12) {
                e12.printStackTrace();
            }
        }
        return f79096b;
    }
}
