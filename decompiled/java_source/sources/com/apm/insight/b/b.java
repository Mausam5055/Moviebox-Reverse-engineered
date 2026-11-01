package com.apm.insight.b;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.Npth;
import com.apm.insight.entity.Header;
import com.apm.insight.l.m;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.l;
import com.apm.insight.runtime.n;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.location.DeviceOrientationRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static volatile boolean f19325z = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f19326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f19327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f19328c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private JSONObject f19332g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private JSONObject f19333h;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private JSONArray f19338m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private JSONObject f19339n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private JSONArray f19342q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private JSONArray f19343r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private JSONObject f19344s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f19345t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private volatile boolean f19347v;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f19329d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private File f19330e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f19331f = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f19334i = TmcConstants.ROUTE_UNKNOWN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f19335j = TmcConstants.ROUTE_UNKNOWN;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f19336k = TmcConstants.ROUTE_UNKNOWN;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f19337l = "npth_inner_default";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f19340o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f19341p = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Object f19346u = new Object();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f19348w = -1;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f19349x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Runnable f19350y = new Runnable() { // from class: com.apm.insight.b.b.1
        @Override // java.lang.Runnable
        public final void run() {
            try {
                b.this.g();
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
        }
    };
    private int A = 0;
    private List<Pattern> B = null;
    private Pattern C = null;
    private File D = null;

    public b(Context context) {
        this.f19327b = context;
    }

    private static String a(float f11) {
        if (f11 <= 0.0f) {
            return "0%";
        }
        if (f11 <= 0.1f) {
            return "0% - 10%";
        }
        if (f11 <= 0.3f) {
            return "10% - 30%";
        }
        if (f11 <= 0.6f) {
            return "30% - 60%";
        }
        return f11 <= 0.9f ? "60% - 90%" : "90% - 100%";
    }

    private static String a(float f11, float f12) {
        if (f12 > 0.0f) {
            return a(f11 / f12);
        }
        return f11 > 0.0f ? "100%" : "0%";
    }

    private JSONObject a(String str, JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArrayB = com.apm.insight.a.b(jSONArray);
        if (jSONArrayB.length() != jSONArray.length()) {
            this.f19340o++;
        }
        try {
            jSONObject.put("thread_name", str);
            jSONObject.put("thread_stack", jSONArrayB);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:104:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:106:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:108:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:110:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:112:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:115:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:116:0x0201  */
    /* JADX WARN: Code duplicated, block: B:117:0x0204  */
    /* JADX WARN: Code duplicated, block: B:118:0x0207  */
    /* JADX WARN: Code duplicated, block: B:119:0x020a  */
    /* JADX WARN: Code duplicated, block: B:121:0x0216  */
    /* JADX WARN: Code duplicated, block: B:124:0x0223  */
    /* JADX WARN: Code duplicated, block: B:125:0x0226 A[PHI: r27
  0x0226: PHI (r27v2 char) = (r3v29 char), (r27v15 char) binds: [B:123:0x0221, B:117:0x0204] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:127:0x0230  */
    /* JADX WARN: Code duplicated, block: B:128:0x0233 A[PHI: r27
  0x0233: PHI (r27v3 char) = (r27v2 char), (r27v16 char) binds: [B:126:0x022e, B:116:0x0201] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:130:0x023d  */
    /* JADX WARN: Code duplicated, block: B:131:0x0240 A[PHI: r27
  0x0240: PHI (r27v4 char) = (r27v3 char), (r27v17 char) binds: [B:129:0x023b, B:115:0x01fe] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:133:0x0248  */
    /* JADX WARN: Code duplicated, block: B:134:0x024a A[PHI: r27
  0x024a: PHI (r27v13 char) = (r27v4 char), (r27v18 char) binds: [B:132:0x0246, B:113:0x01fa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:136:0x0252  */
    /* JADX WARN: Code duplicated, block: B:137:0x0254 A[PHI: r27
  0x0254: PHI (r27v5 char) = (r27v13 char), (r27v18 char) binds: [B:135:0x0250, B:113:0x01fa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:139:0x0259  */
    /* JADX WARN: Code duplicated, block: B:144:0x027c  */
    /* JADX WARN: Code duplicated, block: B:145:0x027f  */
    /* JADX WARN: Code duplicated, block: B:152:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:154:0x02b0 A[LOOP:2: B:100:0x01e4->B:154:0x02b0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:156:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:183:0x0356  */
    /* JADX WARN: Code duplicated, block: B:186:0x0365  */
    /* JADX WARN: Code duplicated, block: B:188:0x0377  */
    /* JADX WARN: Code duplicated, block: B:191:0x037b A[LOOP:4: B:189:0x0378->B:191:0x037b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:194:0x038d  */
    /* JADX WARN: Code duplicated, block: B:202:0x03c6 A[PHI: r15 r22 r23 r24 r25
  0x03c6: PHI (r15v6 java.lang.String) = (r15v5 java.lang.String), (r15v7 java.lang.String), (r15v12 java.lang.String), (r15v26 java.lang.String) binds: [B:200:0x03b8, B:197:0x039a, B:155:0x02b8, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]
  0x03c6: PHI (r22v3 char) = (r22v1 char), (r22v4 char), (r22v7 char), (r22v8 char) binds: [B:200:0x03b8, B:197:0x039a, B:155:0x02b8, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]
  0x03c6: PHI (r23v6 java.lang.String) = (r23v2 java.lang.String), (r23v7 java.lang.String), (r23v11 java.lang.String), (r23v12 java.lang.String) binds: [B:200:0x03b8, B:197:0x039a, B:155:0x02b8, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]
  0x03c6: PHI (r24v8 java.util.HashMap) = (r24v4 java.util.HashMap), (r24v9 java.util.HashMap), (r24v14 java.util.HashMap), (r24v24 java.util.HashMap) binds: [B:200:0x03b8, B:197:0x039a, B:155:0x02b8, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]
  0x03c6: PHI (r25v8 java.util.HashMap) = (r25v4 java.util.HashMap), (r25v9 java.util.HashMap), (r25v14 java.util.HashMap), (r25v23 java.util.HashMap) binds: [B:200:0x03b8, B:197:0x039a, B:155:0x02b8, B:15:0x0061] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:211:0x0420  */
    /* JADX WARN: Code duplicated, block: B:212:0x0426  */
    /* JADX WARN: Code duplicated, block: B:215:0x043d  */
    /* JADX WARN: Code duplicated, block: B:216:0x0443  */
    /* JADX WARN: Code duplicated, block: B:219:0x045a  */
    /* JADX WARN: Code duplicated, block: B:221:0x0460  */
    /* JADX WARN: Code duplicated, block: B:240:0x03cc A[EDGE_INSN: B:240:0x03cc->B:205:0x03cc BREAK  A[LOOP:0: B:3:0x0044->B:207:0x03e2], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:0x03e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x02b8 A[EDGE_INSN: B:244:0x02b8->B:155:0x02b8 BREAK  A[LOOP:2: B:100:0x01e4->B:154:0x02b0], SYNTHETIC] */
    private void a(String str, JSONObject jSONObject) throws JSONException {
        HashMap map;
        String str2;
        char c11;
        char c12;
        String str3;
        char c13;
        boolean z10;
        String str4;
        String str5;
        String strTrim;
        String[] strArrSplit;
        int i11;
        String string;
        HashMap map2;
        String str6;
        int i12;
        char c14;
        String str7;
        String[] strArr;
        float fFloatValue;
        SystemClock.uptimeMillis();
        String[] strArrSplit2 = str.split("\n");
        float[] fArr = new float[3];
        int i13 = 0;
        Float fValueOf = Float.valueOf(-1.0f);
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        fArr[2] = -1.0f;
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        HashMap map5 = new HashMap();
        HashMap map6 = new HashMap();
        HashMap map7 = new HashMap();
        int length = strArrSplit2.length;
        String str8 = TmcConstants.ROUTE_UNKNOWN;
        char c15 = 0;
        boolean z11 = false;
        String strTrim2 = TmcConstants.ROUTE_UNKNOWN;
        String str9 = strTrim2;
        while (true) {
            if (i13 >= length) {
                map = map6;
                map7 = map7;
                break;
            }
            String strTrim3 = strArrSplit2[i13];
            if (!TextUtils.isEmpty(strTrim3)) {
                if (c15 == 0) {
                    c12 = c15;
                    map = map6;
                    map7 = map7;
                    str2 = str8;
                    str3 = strTrim2;
                    String strTrim4 = strTrim3.trim();
                    if (strTrim4.startsWith("tag:")) {
                        strTrim2 = strTrim4.replace("tag:", "").trim();
                        c11 = 1;
                    } else {
                        strTrim2 = str3;
                        c11 = c12;
                    }
                    c13 = 4;
                } else if (c15 == 1) {
                    c12 = c15;
                    map = map6;
                    map7 = map7;
                    str2 = str8;
                    strTrim3 = strTrim3.trim();
                    String lowerCase = strTrim3.toLowerCase();
                    if (lowerCase.startsWith("shortmsg")) {
                        strTrim3.substring(strTrim3.indexOf(58));
                        z10 = false;
                    } else {
                        if (lowerCase.startsWith("reason:")) {
                            strTrim3.substring(strTrim3.indexOf(58));
                            z10 = true;
                        } else {
                            str3 = strTrim2;
                            if (lowerCase.contains("appfreeze")) {
                                str9 = "AppFreeze";
                                c11 = '\n';
                                strTrim2 = str3;
                            } else {
                                strTrim2 = str3;
                                c11 = c12;
                            }
                        }
                        c13 = 4;
                    }
                    if (lowerCase.contains("input dispatch")) {
                        str5 = "Input dispatching timed out";
                    } else {
                        if (lowerCase.contains("broadcast of intent")) {
                            str5 = "Broadcast of Intent";
                        } else if (lowerCase.contains("executing service")) {
                            str4 = strTrim2;
                            if ("null".equalsIgnoreCase(str4)) {
                                strTrim2 = strTrim3.substring(strTrim3.indexOf("service ") + 8).trim();
                                str9 = "executing service";
                            } else {
                                str9 = "executing service";
                                strTrim2 = str4;
                            }
                        } else {
                            str4 = strTrim2;
                            if (lowerCase.contains("service.startforeground")) {
                                str9 = "not call Service.startForeground";
                                strTrim2 = str4;
                            } else {
                                strTrim2 = str4;
                                str9 = str2;
                            }
                        }
                        if (z10) {
                            c11 = 2;
                            c13 = 4;
                        }
                        strTrim = strTrim3.trim();
                        if (strTrim.startsWith("Load:")) {
                            strArrSplit = strTrim.replace("Load:", "").trim().split("/");
                            if (3 == strArrSplit.length) {
                                for (i11 = 0; i11 < strArrSplit.length; i11++) {
                                    fArr[i11] = Float.valueOf(strArrSplit[i11]).floatValue();
                                }
                            }
                            c11 = 3;
                        } else {
                            c11 = c12;
                        }
                        c13 = 4;
                    }
                    str9 = str5;
                    if (z10) {
                        c11 = 2;
                        c13 = 4;
                    }
                    strTrim = strTrim3.trim();
                    if (strTrim.startsWith("Load:")) {
                        strArrSplit = strTrim.replace("Load:", "").trim().split("/");
                        if (3 == strArrSplit.length) {
                            while (i11 < strArrSplit.length) {
                                fArr[i11] = Float.valueOf(strArrSplit[i11]).floatValue();
                            }
                        }
                        c11 = 3;
                    } else {
                        c11 = c12;
                    }
                    c13 = 4;
                } else if (c15 != 2) {
                    if (c15 != 3) {
                        c12 = c15;
                        map = map6;
                        map7 = map7;
                        str2 = str8;
                        str3 = strTrim2;
                    } else {
                        String[] strArrSplit3 = strTrim3.split("\\s");
                        c12 = c15;
                        str2 = str8;
                        if (strArrSplit3.length < 2) {
                            map = map6;
                            map7 = map7;
                        } else {
                            if ("CPU".equalsIgnoreCase(strArrSplit3[0]) && "usage".equalsIgnoreCase(strArrSplit3[1])) {
                                if (strTrim3.contains("ago")) {
                                    z11 = true;
                                }
                                if (map3.isEmpty() && map4.isEmpty() && map5.isEmpty() && map7.isEmpty() && map6.isEmpty()) {
                                    map = map6;
                                    map7 = map7;
                                    c11 = c12;
                                }
                                c13 = 4;
                            } else if (map3.isEmpty() || map4.isEmpty() || map5.isEmpty() || map7.isEmpty() || map6.isEmpty()) {
                                if (map3.isEmpty() && strArrSplit3[1].equalsIgnoreCase("TOTAL:")) {
                                    string = "";
                                    map2 = map3;
                                } else if (strTrim3.contains(this.f19327b.getPackageName())) {
                                    string = "";
                                    int i14 = 0;
                                    while (i14 < strArrSplit3.length) {
                                        if (strArrSplit3[i14].contains(this.f19327b.getPackageName())) {
                                            StringBuilder sb2 = new StringBuilder();
                                            String str10 = strArrSplit3[i14];
                                            sb2.append(str10.substring(str10.indexOf(47) + 1, strArrSplit3[i14].length() - 1));
                                            sb2.append('_');
                                            string = sb2.toString();
                                        }
                                        i14++;
                                        this = this;
                                    }
                                    map2 = map5;
                                } else if (map4.isEmpty() && strTrim3.contains("system_server:")) {
                                    string = "";
                                    map2 = map4;
                                } else if (map7.isEmpty() && strTrim3.contains("kswapd")) {
                                    string = "";
                                    map2 = map7;
                                } else if (map6.isEmpty() && strTrim3.contains("dex2oat")) {
                                    string = "";
                                    map2 = map6;
                                } else {
                                    string = "";
                                    map2 = null;
                                }
                                if (map2 != null) {
                                    int i15 = 0;
                                    do {
                                        str6 = "%";
                                        if (strArrSplit3[i15].contains("%")) {
                                            break;
                                        } else {
                                            i15++;
                                        }
                                    } while (i15 < strArrSplit3.length);
                                    try {
                                        float fFloatValue2 = Float.valueOf(strArrSplit3[i15].replace("%", "")).floatValue();
                                        map = map6;
                                        try {
                                            String str11 = string + "total";
                                            if (map2 != map3) {
                                                fFloatValue2 /= com.apm.insight.l.d.d();
                                            }
                                            try {
                                                map2.put(str11, Float.valueOf(fFloatValue2));
                                            } catch (Throwable unused) {
                                                map2.put(string + "total", fValueOf);
                                            }
                                        } catch (Throwable unused2) {
                                            map7 = map7;
                                            map2.put(string + "total", fValueOf);
                                            i12 = i15 + 3;
                                            c14 = 0;
                                            while (i12 < strArrSplit3.length) {
                                                str7 = "softirq";
                                                if (c14 != 0) {
                                                    if ("user".equalsIgnoreCase(strArrSplit3[i12])) {
                                                        str7 = "user";
                                                        c14 = 1;
                                                    }
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str12 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str12, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c14 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i12 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                } else {
                                                    if (c14 != 1) {
                                                        if (c14 != 2) {
                                                            c14 = c14;
                                                            if ("iowait".equalsIgnoreCase(strArrSplit3[i12])) {
                                                                str7 = "iowait";
                                                                c14 = 3;
                                                            } else if ("irq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                                str7 = "irq";
                                                                c14 = 4;
                                                            } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                                c14 = 5;
                                                            } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                                c14 = 6;
                                                            }
                                                            if (str7 != null) {
                                                                fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                                strArr = strArrSplit3;
                                                                String str13 = string + str7;
                                                                if (map2 == map3) {
                                                                    fFloatValue /= com.apm.insight.l.d.d();
                                                                }
                                                                map2.put(str13, Float.valueOf(fFloatValue));
                                                            } else {
                                                                strArr = strArrSplit3;
                                                                str6 = str6;
                                                            }
                                                            if (c14 < 6) {
                                                                break;
                                                                break;
                                                            } else {
                                                                i12 += 3;
                                                                strArrSplit3 = strArr;
                                                                str6 = str6;
                                                            }
                                                        } else if (c14 != 3) {
                                                            c14 = c14;
                                                            if ("irq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                                str7 = "irq";
                                                                c14 = 4;
                                                            } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                                c14 = 5;
                                                            } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                                c14 = 6;
                                                            }
                                                            if (str7 != null) {
                                                                fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                                strArr = strArrSplit3;
                                                                String str14 = string + str7;
                                                                if (map2 == map3) {
                                                                    fFloatValue /= com.apm.insight.l.d.d();
                                                                }
                                                                map2.put(str14, Float.valueOf(fFloatValue));
                                                            } else {
                                                                strArr = strArrSplit3;
                                                                str6 = str6;
                                                            }
                                                            if (c14 < 6) {
                                                                break;
                                                                break;
                                                            } else {
                                                                i12 += 3;
                                                                strArrSplit3 = strArr;
                                                                str6 = str6;
                                                            }
                                                        } else if (c14 != 4) {
                                                            c14 = c14;
                                                            if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                                c14 = 5;
                                                            } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                                c14 = 6;
                                                            }
                                                            if (str7 != null) {
                                                                fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                                strArr = strArrSplit3;
                                                                String str15 = string + str7;
                                                                if (map2 == map3) {
                                                                    fFloatValue /= com.apm.insight.l.d.d();
                                                                }
                                                                map2.put(str15, Float.valueOf(fFloatValue));
                                                            } else {
                                                                strArr = strArrSplit3;
                                                                str6 = str6;
                                                            }
                                                            if (c14 < 6) {
                                                                break;
                                                                break;
                                                            } else {
                                                                i12 += 3;
                                                                strArrSplit3 = strArr;
                                                                str6 = str6;
                                                            }
                                                        } else {
                                                            c14 = c14;
                                                            if (c14 != 5) {
                                                                if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                                    c14 = 6;
                                                                }
                                                            }
                                                            if (str7 != null) {
                                                                try {
                                                                    fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                                    strArr = strArrSplit3;
                                                                    try {
                                                                        String str16 = string + str7;
                                                                        if (map2 == map3) {
                                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                                        }
                                                                        try {
                                                                            map2.put(str16, Float.valueOf(fFloatValue));
                                                                        } catch (Throwable unused3) {
                                                                            map2.put(string + str7, fValueOf);
                                                                        }
                                                                    } catch (Throwable unused4) {
                                                                        str6 = str6;
                                                                        map2.put(string + str7, fValueOf);
                                                                        if (c14 < 6) {
                                                                            i12 += 3;
                                                                            strArrSplit3 = strArr;
                                                                            str6 = str6;
                                                                        } else {
                                                                            break;
                                                                            str3 = strTrim2;
                                                                            strTrim2 = str3;
                                                                            c11 = c12;
                                                                            c13 = 4;
                                                                            if (c11 >= c13) {
                                                                                break;
                                                                                String str17 = str9;
                                                                                jSONObject.put("anr_tag", strTrim2);
                                                                                jSONObject.put("anr_has_ago", String.valueOf(z11));
                                                                                jSONObject.put("anr_reason", str17);
                                                                                a(map5, jSONObject, "app");
                                                                                a(map3, jSONObject, "total");
                                                                                if (map4.isEmpty()) {
                                                                                    jSONObject.put("npth_anr_systemserver_total", "not found");
                                                                                } else {
                                                                                    jSONObject.put("npth_anr_systemserver_total", b(com.apm.insight.l.c.AnonymousClass1.a(map4).floatValue()));
                                                                                }
                                                                                if (map7.isEmpty()) {
                                                                                    jSONObject.put("npth_anr_kswapd_total", "not found");
                                                                                } else {
                                                                                    jSONObject.put("npth_anr_kswapd_total", b(com.apm.insight.l.c.AnonymousClass1.a(map7).floatValue()));
                                                                                }
                                                                                if (map.isEmpty()) {
                                                                                    jSONObject.put("npth_anr_dex2oat_total", "not found");
                                                                                } else {
                                                                                    jSONObject.put("npth_anr_dex2oat_total", b(com.apm.insight.l.c.AnonymousClass1.a(map).floatValue()));
                                                                                }
                                                                            }
                                                                            i13++;
                                                                            c15 = c11;
                                                                            strArrSplit2 = strArrSplit2;
                                                                            length = length;
                                                                            str8 = str2;
                                                                            map6 = map;
                                                                            map7 = map7;
                                                                        }
                                                                    }
                                                                } catch (Throwable unused5) {
                                                                    strArr = strArrSplit3;
                                                                }
                                                            } else {
                                                                strArr = strArrSplit3;
                                                                str6 = str6;
                                                            }
                                                            if (c14 < 6) {
                                                                break;
                                                            }
                                                            i12 += 3;
                                                            strArrSplit3 = strArr;
                                                            str6 = str6;
                                                        }
                                                    }
                                                    c14 = c14;
                                                    str7 = null;
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str18 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str18, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c14 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i12 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                }
                                                if ("kernel".equalsIgnoreCase(strArrSplit3[i12])) {
                                                    str7 = "kernel";
                                                    c14 = 2;
                                                } else if ("iowait".equalsIgnoreCase(strArrSplit3[i12])) {
                                                    str7 = "iowait";
                                                    c14 = 3;
                                                } else if ("irq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                    str7 = "irq";
                                                    c14 = 4;
                                                } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                    c14 = 5;
                                                } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                    c14 = 6;
                                                } else {
                                                    c14 = c14;
                                                    str7 = null;
                                                }
                                                if (str7 != null) {
                                                    fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                    strArr = strArrSplit3;
                                                    String str19 = string + str7;
                                                    if (map2 == map3) {
                                                        fFloatValue /= com.apm.insight.l.d.d();
                                                    }
                                                    map2.put(str19, Float.valueOf(fFloatValue));
                                                } else {
                                                    strArr = strArrSplit3;
                                                    str6 = str6;
                                                }
                                                if (c14 < 6) {
                                                    break;
                                                    break;
                                                } else {
                                                    i12 += 3;
                                                    strArrSplit3 = strArr;
                                                    str6 = str6;
                                                }
                                            }
                                            str3 = strTrim2;
                                            strTrim2 = str3;
                                            c11 = c12;
                                            c13 = 4;
                                            if (c11 >= c13) {
                                                break;
                                                String str110 = str9;
                                                jSONObject.put("anr_tag", strTrim2);
                                                jSONObject.put("anr_has_ago", String.valueOf(z11));
                                                jSONObject.put("anr_reason", str110);
                                                a(map5, jSONObject, "app");
                                                a(map3, jSONObject, "total");
                                                if (map4.isEmpty()) {
                                                    jSONObject.put("npth_anr_systemserver_total", "not found");
                                                } else {
                                                    jSONObject.put("npth_anr_systemserver_total", b(com.apm.insight.l.c.AnonymousClass1.a(map4).floatValue()));
                                                }
                                                if (map7.isEmpty()) {
                                                    jSONObject.put("npth_anr_kswapd_total", "not found");
                                                } else {
                                                    jSONObject.put("npth_anr_kswapd_total", b(com.apm.insight.l.c.AnonymousClass1.a(map7).floatValue()));
                                                }
                                                if (map.isEmpty()) {
                                                    jSONObject.put("npth_anr_dex2oat_total", "not found");
                                                } else {
                                                    jSONObject.put("npth_anr_dex2oat_total", b(com.apm.insight.l.c.AnonymousClass1.a(map).floatValue()));
                                                }
                                            }
                                            i13++;
                                            c15 = c11;
                                            strArrSplit2 = strArrSplit2;
                                            length = length;
                                            str8 = str2;
                                            map6 = map;
                                            map7 = map7;
                                        }
                                    } catch (Throwable unused6) {
                                        map = map6;
                                    }
                                    i12 = i15 + 3;
                                    c14 = 0;
                                    while (i12 < strArrSplit3.length) {
                                        str7 = "softirq";
                                        if (c14 != 0) {
                                            if ("user".equalsIgnoreCase(strArrSplit3[i12])) {
                                                str7 = "user";
                                                c14 = 1;
                                            }
                                            if (str7 != null) {
                                                fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                strArr = strArrSplit3;
                                                String str111 = string + str7;
                                                if (map2 == map3) {
                                                    fFloatValue /= com.apm.insight.l.d.d();
                                                }
                                                map2.put(str111, Float.valueOf(fFloatValue));
                                            } else {
                                                strArr = strArrSplit3;
                                                str6 = str6;
                                            }
                                            if (c14 < 6) {
                                                break;
                                                break;
                                            } else {
                                                i12 += 3;
                                                strArrSplit3 = strArr;
                                                str6 = str6;
                                            }
                                        } else {
                                            if (c14 != 1) {
                                                if (c14 != 2) {
                                                    c14 = c14;
                                                    if ("iowait".equalsIgnoreCase(strArrSplit3[i12])) {
                                                        str7 = "iowait";
                                                        c14 = 3;
                                                    } else if ("irq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                        str7 = "irq";
                                                        c14 = 4;
                                                    } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                        c14 = 5;
                                                    } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                        c14 = 6;
                                                    }
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str112 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str112, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c14 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i12 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                } else if (c14 != 3) {
                                                    c14 = c14;
                                                    if ("irq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                        str7 = "irq";
                                                        c14 = 4;
                                                    } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                        c14 = 5;
                                                    } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                        c14 = 6;
                                                    }
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str113 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str113, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c14 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i12 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                } else if (c14 != 4) {
                                                    c14 = c14;
                                                    if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                        c14 = 5;
                                                    } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                        c14 = 6;
                                                    }
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str114 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str114, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c14 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i12 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                } else {
                                                    c14 = c14;
                                                    if (c14 != 5) {
                                                        if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                                            c14 = 6;
                                                        }
                                                    }
                                                    if (str7 != null) {
                                                        fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                        strArr = strArrSplit3;
                                                        String str115 = string + str7;
                                                        if (map2 == map3) {
                                                            fFloatValue /= com.apm.insight.l.d.d();
                                                        }
                                                        map2.put(str115, Float.valueOf(fFloatValue));
                                                    } else {
                                                        strArr = strArrSplit3;
                                                        str6 = str6;
                                                    }
                                                    if (c14 < 6) {
                                                        break;
                                                        break;
                                                    } else {
                                                        i12 += 3;
                                                        strArrSplit3 = strArr;
                                                        str6 = str6;
                                                    }
                                                }
                                            }
                                            c14 = c14;
                                            str7 = null;
                                            if (str7 != null) {
                                                fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                                strArr = strArrSplit3;
                                                String str116 = string + str7;
                                                if (map2 == map3) {
                                                    fFloatValue /= com.apm.insight.l.d.d();
                                                }
                                                map2.put(str116, Float.valueOf(fFloatValue));
                                            } else {
                                                strArr = strArrSplit3;
                                                str6 = str6;
                                            }
                                            if (c14 < 6) {
                                                break;
                                                break;
                                            } else {
                                                i12 += 3;
                                                strArrSplit3 = strArr;
                                                str6 = str6;
                                            }
                                        }
                                        if ("kernel".equalsIgnoreCase(strArrSplit3[i12])) {
                                            str7 = "kernel";
                                            c14 = 2;
                                        } else if ("iowait".equalsIgnoreCase(strArrSplit3[i12])) {
                                            str7 = "iowait";
                                            c14 = 3;
                                        } else if ("irq".equalsIgnoreCase(strArrSplit3[i12])) {
                                            str7 = "irq";
                                            c14 = 4;
                                        } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                            c14 = 5;
                                        } else if ("softirq".equalsIgnoreCase(strArrSplit3[i12])) {
                                            c14 = 6;
                                        } else {
                                            c14 = c14;
                                            str7 = null;
                                        }
                                        if (str7 != null) {
                                            fFloatValue = Float.valueOf(strArrSplit3[i12 - 1].replace(str6, "")).floatValue();
                                            strArr = strArrSplit3;
                                            String str117 = string + str7;
                                            if (map2 == map3) {
                                                fFloatValue /= com.apm.insight.l.d.d();
                                            }
                                            map2.put(str117, Float.valueOf(fFloatValue));
                                        } else {
                                            strArr = strArrSplit3;
                                            str6 = str6;
                                        }
                                        if (c14 < 6) {
                                            break;
                                            break;
                                        } else {
                                            i12 += 3;
                                            strArrSplit3 = strArr;
                                            str6 = str6;
                                        }
                                    }
                                } else {
                                    map = map6;
                                    map7 = map7;
                                }
                            }
                            map = map6;
                            map7 = map7;
                            c11 = 4;
                            c13 = 4;
                        }
                        str3 = strTrim2;
                    }
                    strTrim2 = str3;
                    c11 = c12;
                    c13 = 4;
                } else {
                    c12 = c15;
                    map = map6;
                    map7 = map7;
                    str2 = str8;
                    strTrim = strTrim3.trim();
                    if (strTrim.startsWith("Load:")) {
                        strArrSplit = strTrim.replace("Load:", "").trim().split("/");
                        if (3 == strArrSplit.length) {
                            while (i11 < strArrSplit.length) {
                                fArr[i11] = Float.valueOf(strArrSplit[i11]).floatValue();
                            }
                        }
                        c11 = 3;
                    } else {
                        c11 = c12;
                    }
                    c13 = 4;
                }
                if (c11 >= c13) {
                    break;
                }
            } else {
                map = map6;
                map7 = map7;
                str2 = str8;
                c11 = c15;
            }
            i13++;
            c15 = c11;
            strArrSplit2 = strArrSplit2;
            length = length;
            str8 = str2;
            map6 = map;
            map7 = map7;
        }
        String str118 = str9;
        jSONObject.put("anr_tag", strTrim2);
        jSONObject.put("anr_has_ago", String.valueOf(z11));
        jSONObject.put("anr_reason", str118);
        a(map5, jSONObject, "app");
        a(map3, jSONObject, "total");
        if (map4.isEmpty()) {
            jSONObject.put("npth_anr_systemserver_total", "not found");
        } else {
            jSONObject.put("npth_anr_systemserver_total", b(com.apm.insight.l.c.AnonymousClass1.a(map4).floatValue()));
        }
        if (map7.isEmpty()) {
            jSONObject.put("npth_anr_kswapd_total", "not found");
        } else {
            jSONObject.put("npth_anr_kswapd_total", b(com.apm.insight.l.c.AnonymousClass1.a(map7).floatValue()));
        }
        if (map.isEmpty()) {
            jSONObject.put("npth_anr_dex2oat_total", "not found");
        } else {
            jSONObject.put("npth_anr_dex2oat_total", b(com.apm.insight.l.c.AnonymousClass1.a(map).floatValue()));
        }
    }

    private static void a(HashMap<String, Float> map, JSONObject jSONObject, String str) throws JSONException {
        String strConcat = "npth_anr_".concat(String.valueOf(str));
        if (map.isEmpty()) {
            jSONObject.put(strConcat + "_total", "not found");
            return;
        }
        float fFloatValue = 0.0f;
        float fFloatValue2 = 0.0f;
        float fFloatValue3 = 0.0f;
        float fFloatValue4 = 0.0f;
        float fFloatValue5 = 0.0f;
        for (Map.Entry<String, Float> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key.endsWith("user")) {
                fFloatValue += entry.getValue().floatValue();
            } else if (key.endsWith("kernel")) {
                fFloatValue2 += entry.getValue().floatValue();
            } else if (key.endsWith("iowait")) {
                fFloatValue3 += entry.getValue().floatValue();
            } else if (key.endsWith("irq")) {
                fFloatValue4 += entry.getValue().floatValue();
            } else if (key.endsWith("softirq")) {
                fFloatValue5 += entry.getValue().floatValue();
            }
        }
        float f11 = fFloatValue + fFloatValue2 + fFloatValue3 + fFloatValue4 + fFloatValue5;
        jSONObject.put(strConcat + "_total", b(f11));
        jSONObject.put(strConcat + "_kernel_user_ratio", a(fFloatValue2, f11));
        jSONObject.put(strConcat + "_iowait_user_ratio", a(fFloatValue3, f11));
    }

    private void a(JSONArray jSONArray) {
        char c11;
        int[] iArrB;
        int[] iArrB2;
        if (jSONArray == null) {
            return;
        }
        this.f19332g = null;
        this.f19339n = null;
        this.f19340o = 0;
        JSONArray jSONArray2 = new JSONArray();
        JSONArray jSONArray3 = new JSONArray();
        JSONArray jSONArray4 = new JSONArray();
        this.f19334i = TmcConstants.ROUTE_UNKNOWN;
        this.f19335j = TmcConstants.ROUTE_UNKNOWN;
        this.f19336k = TmcConstants.ROUTE_UNKNOWN;
        int[] iArr = {0, 0, 0};
        JSONArray jSONArray5 = jSONArray4;
        String string = null;
        boolean z10 = false;
        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
            String strOptString = jSONArray.optString(i11);
            if (TextUtils.isEmpty(strOptString)) {
                if (jSONArray5.length() > 0 && !TextUtils.isEmpty(string)) {
                    if (this.f19332g == null && "main".equals(string)) {
                        this.f19332g = c(jSONArray5);
                    } else {
                        jSONArray2.put(a(string, jSONArray5));
                    }
                    try {
                        if (!"main".equals(string)) {
                            string = string.substring(0, string.indexOf(40)).trim();
                        }
                    } catch (Throwable unused) {
                    }
                    String str = string;
                    if (!a(str)) {
                        try {
                            iArrB2 = b(jSONArray5);
                        } catch (IllegalArgumentException e11) {
                            com.apm.insight.c.a();
                            com.apm.insight.runtime.j.a(e11, "NPTH_CATCH");
                            iArrB2 = null;
                        } catch (Throwable unused2) {
                            iArrB2 = null;
                        }
                        if (iArrB2 != null) {
                            int i12 = iArrB2[0];
                            if (i12 > iArr[0]) {
                                iArr[0] = i12;
                                this.f19334i = str;
                            }
                            int i13 = iArrB2[1];
                            if (i13 > iArr[1]) {
                                iArr[1] = i13;
                                this.f19335j = str;
                            }
                            int i14 = iArrB2[2];
                            if (i14 > iArr[2]) {
                                iArr[2] = i14;
                                this.f19336k = str;
                            }
                        }
                    }
                }
                if (jSONArray5.length() > 0) {
                    jSONArray5 = new JSONArray();
                }
                string = null;
            } else {
                if (!z10) {
                    c11 = 2;
                    if (strOptString.startsWith("DALVIK THREADS") || strOptString.startsWith("suspend") || strOptString.startsWith("\"")) {
                        z10 = true;
                    }
                    jSONArray3.put(strOptString);
                } else if (z10) {
                    if (strOptString.contains(" prio=")) {
                        if (jSONArray5.length() > 0 && !TextUtils.isEmpty(string)) {
                            if (this.f19332g == null && "main".equals(string)) {
                                this.f19332g = c(jSONArray5);
                            } else {
                                jSONArray2.put(a(string, jSONArray5));
                            }
                            try {
                                if (!"main".equals(string)) {
                                    string = string.substring(0, string.indexOf(40)).trim();
                                }
                            } catch (Throwable unused3) {
                            }
                            String str2 = string;
                            if (!a(str2)) {
                                try {
                                    iArrB = b(jSONArray5);
                                } catch (IllegalArgumentException e12) {
                                    com.apm.insight.c.a();
                                    com.apm.insight.runtime.j.a(e12, "NPTH_CATCH");
                                    iArrB = null;
                                } catch (Throwable unused4) {
                                    iArrB = null;
                                }
                                if (iArrB != null) {
                                    int i15 = iArrB[0];
                                    if (i15 > iArr[0]) {
                                        iArr[0] = i15;
                                        this.f19334i = str2;
                                    }
                                    int i16 = iArrB[1];
                                    if (i16 > iArr[1]) {
                                        iArr[1] = i16;
                                        this.f19335j = str2;
                                    }
                                    int i17 = iArrB[2];
                                    if (i17 > iArr[2]) {
                                        iArr[2] = i17;
                                        this.f19336k = str2;
                                    }
                                }
                            }
                        }
                        String strSubstring = strOptString.substring(1, strOptString.indexOf(34, 1));
                        if ("main".equals(strSubstring)) {
                            c11 = 2;
                            string = strSubstring;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(strSubstring);
                            sb2.append("  (");
                            c11 = 2;
                            sb2.append(strOptString.substring(strOptString.indexOf(34, 2) + 1));
                            sb2.append(" )");
                            string = sb2.toString();
                        }
                        if (jSONArray5.length() > 0) {
                            jSONArray5 = new JSONArray();
                        }
                        jSONArray5.put(strOptString);
                    } else {
                        c11 = 2;
                        if (TextUtils.isEmpty(string)) {
                            jSONArray3.put(strOptString);
                        } else {
                            jSONArray5.put(strOptString);
                        }
                    }
                }
            }
            c11 = 2;
        }
        if (jSONArray2.length() > 0) {
            this.f19338m = jSONArray3;
            try {
                JSONObject jSONObject = new JSONObject();
                this.f19339n = jSONObject;
                jSONObject.put("thread_all_count", jSONArray2.length());
                this.f19339n.put("thread_stacks", jSONArray2);
            } catch (JSONException e13) {
                e13.printStackTrace();
            }
        }
    }

    private boolean a(long j11) {
        if (this.f19347v) {
            this.f19347v = false;
            b(j11);
        }
        return false;
    }

    private boolean a(String str) {
        if (this.B == null) {
            JSONArray jSONArrayB = com.apm.insight.runtime.a.b();
            if (jSONArrayB != null) {
                this.B = new LinkedList();
                this.f19337l = jSONArrayB.optString(0);
                for (int i11 = 1; i11 < jSONArrayB.length(); i11++) {
                    try {
                        this.B.add(Pattern.compile(jSONArrayB.optString(i11)));
                    } catch (Throwable unused) {
                    }
                }
            }
            if (this.B == null) {
                LinkedList linkedList = new LinkedList();
                this.B = linkedList;
                linkedList.add(Pattern.compile("^main$"));
                this.B.add(Pattern.compile("^default_npth_thread$"));
                this.B.add(Pattern.compile("^RenderThread$"));
                this.B.add(Pattern.compile("^Jit thread pool worker thread.*$"));
            }
        }
        Iterator<Pattern> it = this.B.iterator();
        while (it.hasNext()) {
            if (it.next().matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    private static String b(float f11) {
        return a(f11 / 100.0f);
    }

    private void b(long j11) {
        if (this.f19349x != this.f19348w) {
            try {
                this.f19341p = System.currentTimeMillis();
                if (com.apm.insight.e.x()) {
                    this.f19343r = f.b().b();
                    this.f19342q = j.a(j11);
                    this.f19333h = f.b().a(j11).a();
                }
                JSONObject jSONObject = new JSONObject();
                this.f19344s = jSONObject;
                com.apm.insight.l.a.a(this.f19327b, jSONObject);
                this.f19345t = h();
                this.f19331f = !Npth.hasCrash();
            } catch (Throwable unused) {
            }
            try {
                this.f19329d = this.f19341p;
                String strB = com.apm.insight.l.j.b();
                File file = new File(new File(com.apm.insight.l.j.f(this.f19327b), strB), "trace_" + com.apm.insight.l.a.b().replace(':', '_') + ".txt");
                file.getParentFile().mkdirs();
                com.apm.insight.l.f.a(file, com.apm.insight.l.b.a().format(new Date(System.currentTimeMillis())) + "\n", false);
                n.a("anr_trace", strB);
                NativeImpl.i(file.getAbsolutePath());
                try {
                    JSONArray jSONArrayA = com.apm.insight.l.f.a(file.getAbsolutePath());
                    this.f19338m = jSONArrayA;
                    a(jSONArrayA);
                } catch (IOException unused2) {
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
                if (this.f19332g == null) {
                    this.f19332g = d.a();
                }
            } catch (Throwable th3) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th3, "NPTH_CATCH");
            }
            com.apm.insight.a.d();
        } else {
            try {
                this.f19329d = this.f19341p;
                String strB2 = com.apm.insight.l.j.b();
                File file2 = new File(new File(com.apm.insight.l.j.f(this.f19327b), strB2), "trace" + com.apm.insight.l.a.b().replace(':', '_') + ".txt");
                file2.getParentFile().mkdirs();
                com.apm.insight.l.f.a(file2, com.apm.insight.l.b.a().format(new Date(System.currentTimeMillis())) + "\n", false);
                n.a("anr_trace", strB2);
                NativeImpl.i(file2.getAbsolutePath());
                try {
                    JSONArray jSONArrayA2 = com.apm.insight.l.f.a(file2.getAbsolutePath());
                    this.f19338m = jSONArrayA2;
                    a(jSONArrayA2);
                } catch (IOException unused3) {
                } catch (Throwable th4) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th4, "NPTH_CATCH");
                }
                if (this.f19332g == null) {
                    this.f19332g = d.a();
                }
            } catch (Throwable th5) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th5, "NPTH_CATCH");
            }
        }
        long j12 = this.f19348w;
        this.f19349x = j12;
        this.f19348w = -1L;
        if (j12 == -1) {
            this.f19349x = (-1) - 1;
        }
    }

    private static void b(String str, JSONArray jSONArray) {
        for (ICrashCallback iCrashCallback : l.a().e()) {
            try {
                if (iCrashCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iCrashCallback).a(CrashType.ANR, str, (Thread) null, jSONArray);
                } else {
                    iCrashCallback.onCrash(CrashType.ANR, str, null);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
        }
    }

    @Nullable
    private int[] b(@NonNull JSONArray jSONArray) throws IllegalArgumentException {
        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
            String strOptString = jSONArray.optString(i11);
            int iIndexOf = (strOptString == null || strOptString.isEmpty()) ? -1 : strOptString.indexOf("utm=");
            if (iIndexOf > 0) {
                if (this.C == null) {
                    this.C = Pattern.compile("[^0-9]+");
                }
                String[] strArrSplit = this.C.split(strOptString.substring(iIndexOf));
                if (strArrSplit == null || strArrSplit.length < 2) {
                    return null;
                }
                try {
                    int iIntValue = Integer.decode(strArrSplit[1]).intValue();
                    int iIntValue2 = Integer.decode(strArrSplit[2]).intValue();
                    return new int[]{iIntValue, iIntValue2, iIntValue + iIntValue2};
                } catch (Throwable unused) {
                    throw new IllegalArgumentException("Err stack line: ".concat(strOptString));
                }
            }
        }
        return null;
    }

    private JSONObject c(@NonNull JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArrayB = com.apm.insight.a.b(jSONArray);
        if (jSONArrayB.length() != jSONArray.length()) {
            this.f19340o++;
        }
        try {
            jSONObject.put("thread_number", 1);
            StringBuilder sb2 = new StringBuilder();
            for (int i11 = 0; i11 < jSONArrayB.length(); i11++) {
                sb2.append(jSONArrayB.getString(i11));
                sb2.append('\n');
            }
            jSONObject.put("mainStackFromTrace", sb2.toString());
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private static boolean h() {
        boolean zA = com.apm.insight.l.a.a();
        boolean z10 = !zA;
        if (zA || com.apm.insight.runtime.a.b.d().e() > 2000) {
            return z10;
        }
        return false;
    }

    private File i() {
        if (this.D == null) {
            this.D = new File(this.f19327b.getFilesDir(), "has_anr_signal_" + com.apm.insight.l.a.b().replaceAll(":", "_"));
        }
        return this.D;
    }

    public final void a() {
        if (this.f19328c) {
            return;
        }
        this.f19326a = new c(this);
        this.f19329d = com.apm.insight.e.j();
        this.f19328c = true;
    }

    public final void b() {
        if (this.f19328c) {
            this.f19328c = false;
            c cVar = this.f19326a;
            if (cVar != null) {
                cVar.b();
            }
            this.f19326a = null;
        }
    }

    public final void c() {
        c cVar = this.f19326a;
        if (cVar != null) {
            cVar.a();
        }
    }

    public final void d() {
        synchronized (this.f19346u) {
        }
        this.f19350y.run();
    }

    public final void e() {
        if (NativeImpl.h()) {
            try {
                com.apm.insight.l.f.a(i(), String.valueOf(this.A + 1), false);
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
        }
        this.f19348w = SystemClock.uptimeMillis();
        this.f19347v = true;
    }

    public final void f() {
        File fileI = i();
        try {
            int iIntValue = Integer.decode(com.apm.insight.l.f.a(fileI.getAbsolutePath(), "\n")).intValue();
            this.A = iIntValue;
            if (iIntValue >= 2) {
                NativeImpl.a(false);
            } else {
                NativeImpl.a(true);
            }
        } catch (IOException unused) {
            NativeImpl.a(true);
        } catch (Throwable unused2) {
            com.apm.insight.l.f.a(fileI);
        }
    }

    final boolean g() {
        String str;
        String str2;
        JSONArray jSONArrayB;
        JSONArray jSONArrayA;
        JSONObject jSONObject;
        boolean z10;
        JSONObject jSONObjectA;
        boolean z11;
        String str3;
        String str4;
        JSONArray jSONArray;
        final long j11;
        JSONObject jSONObjectA2;
        JSONObject jSONObject2;
        String str5;
        JSONObject jSONObject3;
        boolean zB = com.apm.insight.runtime.i.a().b();
        long jUptimeMillis = SystemClock.uptimeMillis();
        a(jUptimeMillis);
        String strA = d.a(this.f19327b);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str6 = "normal";
        TextUtils.isEmpty(strA);
        if (TextUtils.isEmpty(strA)) {
            str = TmcConstants.ROUTE_UNKNOWN;
            str2 = TmcConstants.ROUTE_UNKNOWN;
            jSONArrayB = null;
            jSONArrayA = null;
            jSONObject = null;
            z10 = false;
            jSONObjectA = null;
            z11 = false;
            str3 = "normal";
            str4 = TmcConstants.ROUTE_UNKNOWN;
            jSONArray = null;
            j11 = jCurrentTimeMillis;
            jSONObjectA2 = null;
        } else {
            synchronized (this.f19346u) {
            }
            if (this.f19332g == null || System.currentTimeMillis() - this.f19329d > DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT) {
                if (this.f19347v) {
                    this.f19347v = false;
                    str6 = "trace_after";
                }
                b(jUptimeMillis);
            } else {
                str6 = "trace_last";
            }
            JSONObject jSONObject4 = this.f19332g;
            String str7 = this.f19334i;
            String str8 = this.f19335j;
            String str9 = this.f19336k;
            JSONArray jSONArray2 = this.f19338m;
            JSONArray jSONArray3 = this.f19343r;
            JSONArray jSONArray4 = this.f19342q;
            JSONObject jSONObject5 = this.f19344s;
            JSONObject jSONObject6 = this.f19333h;
            z11 = this.f19345t;
            long j12 = this.f19341p;
            this.f19332g = null;
            this.f19338m = null;
            this.f19342q = null;
            this.f19333h = null;
            this.f19343r = null;
            this.f19334i = TmcConstants.ROUTE_UNKNOWN;
            this.f19335j = TmcConstants.ROUTE_UNKNOWN;
            this.f19336k = TmcConstants.ROUTE_UNKNOWN;
            this.f19340o = 0;
            jSONArrayA = jSONArray4;
            str2 = str9;
            str4 = str7;
            jSONArray = jSONArray2;
            jSONObjectA = jSONObject6;
            jSONObject = jSONObject5;
            jSONArrayB = jSONArray3;
            str = str8;
            str3 = str6;
            j11 = j12;
            jSONObjectA2 = jSONObject4;
            z10 = true;
        }
        if (TextUtils.isEmpty(strA)) {
            if (this.f19332g == null || System.currentTimeMillis() - this.f19329d <= DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT) {
                if (this.f19332g == null || System.currentTimeMillis() - this.f19329d <= 2000 || !NativeImpl.h()) {
                    return false;
                }
                com.apm.insight.l.f.a(i());
                return false;
            }
            this.f19332g = null;
            this.f19338m = null;
            this.f19342q = null;
            this.f19333h = null;
            this.f19343r = null;
            this.f19334i = TmcConstants.ROUTE_UNKNOWN;
            this.f19335j = TmcConstants.ROUTE_UNKNOWN;
            this.f19336k = TmcConstants.ROUTE_UNKNOWN;
            this.f19340o = 0;
            this.f19330e = null;
            return false;
        }
        if (jSONObjectA2 == null) {
            if (jSONArrayA == null) {
                try {
                    jSONArrayB = f.b().b();
                    jSONArrayA = j.a(jUptimeMillis);
                    jSONObject3 = jSONObjectA2;
                    try {
                        jSONObjectA = f.b().a(jUptimeMillis).a();
                        JSONObject jSONObject7 = new JSONObject();
                        try {
                            com.apm.insight.l.a.a(this.f19327b, jSONObject7);
                            jSONObject = jSONObject7;
                        } catch (Throwable unused) {
                            jSONObject = jSONObject7;
                            jSONObjectA2 = jSONObject3;
                        }
                    } catch (Throwable unused2) {
                    }
                } catch (Throwable unused3) {
                    jSONObject3 = jSONObjectA2;
                }
            } else {
                jSONObject3 = jSONObjectA2;
            }
            jSONObjectA2 = d.a();
        }
        JSONObject jSONObject8 = jSONObjectA;
        if (jSONObjectA2 != null && jSONObjectA2.length() > 0) {
            try {
                jSONObjectA2.put("pid", Process.myPid());
                jSONObjectA2.put("package", this.f19327b.getPackageName());
                jSONObjectA2.put("is_remote_process", 0);
                jSONObjectA2.put("is_new_stack", 10);
                com.apm.insight.entity.a aVar = new com.apm.insight.entity.a(new JSONObject());
                String str10 = str2;
                aVar.a("data", (Object) jSONObjectA2.toString());
                JSONObject jSONObject9 = jSONObjectA2;
                aVar.a("is_anr", (Object) 1);
                aVar.a("anrType", (Object) str3);
                if (com.apm.insight.e.x()) {
                    aVar.a("history_message", (Object) jSONArrayB);
                    aVar.a("current_message", jSONObject8);
                    aVar.a("pending_messages", (Object) jSONArrayA);
                }
                aVar.a("anr_time", Long.valueOf(System.currentTimeMillis()));
                aVar.a("crash_time", Long.valueOf(j11));
                com.apm.insight.c.a.b();
                aVar.c(jSONObject);
                aVar.a("anr_info", (Object) strA);
                if (jSONArray != null) {
                    aVar.a("dump_trace", (Object) jSONArray);
                }
                JSONObject jSONObject10 = this.f19339n;
                aVar.a("all_thread_stacks", (jSONObject10 == null || jSONObject10.length() == 0) ? m.b((String) null) : this.f19339n);
                com.apm.insight.runtime.a.f fVarA = com.apm.insight.runtime.a.f.a();
                CrashType crashType = CrashType.ANR;
                com.apm.insight.entity.a aVarA = fVarA.a(crashType, aVar);
                aVarA.a("is_background", Boolean.valueOf(z11));
                aVarA.a("logcat", (Object) com.apm.insight.runtime.h.a(com.apm.insight.e.f()));
                aVarA.a("has_dump", (Object) "true");
                aVarA.a("crash_uuid", (Object) com.apm.insight.e.a(j11, crashType, false, false));
                JSONObject jSONObjectOptJSONObject = aVarA.c().optJSONObject("filters");
                com.apm.insight.entity.d.b(aVarA.c());
                if (jSONObjectOptJSONObject == null) {
                    try {
                        jSONObject2 = new JSONObject();
                        try {
                            aVarA.a("filters", jSONObject2);
                        } catch (Throwable unused4) {
                            jSONObjectOptJSONObject = jSONObject2;
                            jSONObject2 = jSONObjectOptJSONObject;
                        }
                    } catch (Throwable unused5) {
                        jSONObject2 = jSONObjectOptJSONObject;
                    }
                } else {
                    jSONObject2 = jSONObjectOptJSONObject;
                }
                jSONObject2.put("anrType", str3);
                jSONObject2.put("max_utm_thread", str4);
                jSONObject2.put("max_stm_thread", str);
                jSONObject2.put("max_utm_stm_thread", str10);
                jSONObject2.put("max_utm_thread_version", this.f19337l);
                long j13 = j11 - com.apm.insight.e.j();
                if (j13 < 30000) {
                    str5 = "0 - 30s";
                } else if (j13 < 60000) {
                    str5 = "30s - 1min";
                } else if (j13 < TmcConstants.DEBUG_REQUEST_TIME_INTERVAL) {
                    str5 = "1min - 2min";
                } else if (j13 < 300000) {
                    str5 = "2min - 5min";
                } else if (j13 < 600000) {
                    str5 = "5min - 10min";
                } else if (j13 < 1800000) {
                    str5 = "10min - 30min";
                } else {
                    str5 = j13 < 3600000 ? "30min - 1h" : "1h - ";
                }
                jSONObject2.put("crash_length", str5);
                jSONObject2.put("disable_looper_monitor", String.valueOf(com.apm.insight.runtime.a.c()));
                jSONObject2.put("npth_force_apm_crash", String.valueOf(com.apm.insight.c.a.b()));
                jSONObject2.put("sdk_version", "2008-20250701130429");
                jSONObject2.put("has_logcat", String.valueOf(aVarA.a()));
                jSONObject2.put("memory_leak", String.valueOf(com.apm.insight.entity.a.a(com.apm.insight.e.f())));
                jSONObject2.put("fd_leak", String.valueOf(com.apm.insight.entity.a.b(com.apm.insight.e.f())));
                jSONObject2.put("threads_leak", String.valueOf(com.apm.insight.entity.a.c(com.apm.insight.e.f())));
                jSONObject2.put("is_64_devices", String.valueOf(Header.a()));
                jSONObject2.put("is_64_runtime", String.valueOf(NativeImpl.f()));
                jSONObject2.put("is_x86_devices", String.valueOf(Header.b()));
                jSONObject2.put("has_meminfo_file", String.valueOf(com.apm.insight.l.j.d(com.apm.insight.e.f()).exists()));
                jSONObject2.put("is_root", com.apm.insight.nativecrash.a.k() ? "true" : "false");
                jSONObject2.put("anr_normal_trace", String.valueOf(!this.f19347v));
                jSONObject2.put("anr_no_run", String.valueOf(zB));
                jSONObject2.put("crash_after_crash", Npth.hasCrash() ? "true" : "false");
                jSONObject2.put("from_file", String.valueOf(d.b()));
                jSONObject2.put("has_dump", "true");
                jSONObject2.put("from_kill", "false");
                jSONObject2.put("last_resume_activity", com.apm.insight.runtime.a.b.d().h());
                int i11 = this.f19340o;
                if (i11 > 0) {
                    jSONObject2.put("may_have_stack_overflow", String.valueOf(i11));
                }
                try {
                    a(strA, jSONObject2);
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
                com.apm.insight.a.a.a();
                CrashType crashType2 = CrashType.LAUNCH;
                com.apm.insight.e.e();
                try {
                    if (com.apm.insight.a.e().length() > 1024) {
                        aVarA.a("has_system_traces", "true");
                    }
                } catch (Throwable unused6) {
                }
                try {
                    JSONArray jSONArrayA2 = com.apm.insight.nativecrash.b.a(com.apm.insight.l.j.e(com.apm.insight.e.f()), com.apm.insight.l.j.f(com.apm.insight.e.f()));
                    jSONObject2.put("leak_threads_count", String.valueOf(jSONArrayA2.length()));
                    if (jSONArrayA2.length() > 0) {
                        com.apm.insight.l.f.a(com.apm.insight.l.j.g(com.apm.insight.e.f()), jSONArrayA2);
                    }
                } catch (Throwable unused7) {
                }
                String strOptString = jSONObject9.optString("mainStackFromTrace");
                JSONArray jSONArrayA3 = com.apm.insight.entity.b.a(strOptString);
                com.apm.insight.entity.b.a(aVarA.c(), jSONArrayA3, new com.apm.insight.entity.b.a() { // from class: com.apm.insight.b.b.2
                    @Override // com.apm.insight.entity.b.a
                    public final void a(JSONObject jSONObject11) {
                        com.apm.insight.k.d.a().a(jSONObject11, j11, b.this.f19331f);
                    }
                });
                b(strOptString, jSONArrayA3);
            } catch (Throwable th3) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th3, "NPTH_CATCH");
            }
        }
        return z10;
    }
}
