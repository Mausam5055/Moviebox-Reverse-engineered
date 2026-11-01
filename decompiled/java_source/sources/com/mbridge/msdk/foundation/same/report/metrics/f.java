package com.mbridge.msdk.foundation.same.report.metrics;

import android.text.TextUtils;
import com.aliyun.player.BuildConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.tracker.m;
import com.mbridge.msdk.tracker.network.toolbox.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class f {
    private com.mbridge.msdk.tracker.e a(String str, Map<String, String> map) {
        if (map == null || TextUtils.isEmpty(str)) {
            return null;
        }
        com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(str);
        try {
            JSONObject jSONObject = new JSONObject(map);
            Boolean boolA = com.mbridge.msdk.foundation.same.b.b().a();
            if (boolA != null) {
                jSONObject.put("r_v_r", boolA.booleanValue() ? 1 : 0);
            }
            eVar.a(jSONObject);
            eVar.b(0);
            eVar.a(0);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return eVar;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053  */
    /* JADX WARN: Code duplicated, block: B:25:0x0057 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x005d A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0062 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0072 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0078 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0080 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0086 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x008b A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x004e -> B:22:0x0053). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0050 -> B:22:0x0053). Please report as a decompilation issue!!! */
    private List<CampaignEx> a(c cVar, String str) {
        int iIntValue;
        List<CampaignEx> listG;
        List<CampaignEx> listG2;
        ArrayList arrayList = new ArrayList();
        if (cVar != null) {
            try {
                String str2 = cVar.o() + str;
                Map<String, Map<String, String>> mapR = cVar.r();
                if (mapR == null || !mapR.containsKey(str2)) {
                    iIntValue = -1;
                    if (iIntValue == 1) {
                        if (cVar.j() != null) {
                            listG2 = cVar.j();
                        } else {
                            listG2 = cVar.g();
                        }
                        if (listG2 != null && listG2.size() > 0) {
                            arrayList.addAll(listG2);
                        }
                    } else if (cVar.i() != null) {
                        arrayList.add(cVar.i());
                    } else {
                        if (cVar.j() != null) {
                            listG = cVar.j();
                        } else {
                            listG = cVar.g();
                        }
                        if (listG != null && listG.size() > 0) {
                            arrayList.addAll(listG);
                        }
                    }
                } else {
                    try {
                        Object obj = mapR.get(str2).get("resource_type");
                        if (obj instanceof String) {
                            iIntValue = Integer.parseInt((String) obj);
                        } else if (obj instanceof Integer) {
                            iIntValue = ((Integer) obj).intValue();
                        } else {
                            iIntValue = -1;
                        }
                    } catch (NumberFormatException e11) {
                        if (MBridgeConstans.DEBUG) {
                            e11.printStackTrace();
                        }
                    }
                    if (iIntValue == 1) {
                        if (cVar.j() != null) {
                            listG2 = cVar.j();
                        } else {
                            listG2 = cVar.g();
                        }
                        if (listG2 != null) {
                            arrayList.addAll(listG2);
                        }
                    } else if (cVar.i() != null) {
                        arrayList.add(cVar.i());
                    } else {
                        if (cVar.j() != null) {
                            listG = cVar.j();
                        } else {
                            listG = cVar.g();
                        }
                        if (listG != null) {
                            arrayList.addAll(listG);
                        }
                    }
                }
            } catch (Exception e12) {
                if (MBridgeConstans.DEBUG) {
                    e12.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    private Map<String, String> a(String str, String str2, m mVar) {
        e eVar = new e();
        try {
            g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD == null) {
                gVarD = h.b().a();
            }
            if (!TextUtils.isEmpty(gVarD.k0())) {
                eVar.a("as_rid", gVarD.k0());
            }
            String strJ = gVarD.J();
            JSONArray jSONArrayI = gVarD.I();
            if (jSONArrayI != null) {
                for (int i11 = 0; i11 < jSONArrayI.length(); i11++) {
                    if (str.equals(jSONArrayI.getString(i11))) {
                        strJ = BuildConfig.VERSION_NAME;
                        break;
                    }
                }
            }
            if (TextUtils.isEmpty(strJ)) {
                eVar.a("log_rate", -1);
            } else {
                eVar.a("log_rate", strJ);
            }
            if (!TextUtils.isEmpty(str2)) {
                l lVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), str2);
                if (lVarD != null && !TextUtils.isEmpty(lVarD.I())) {
                    eVar.a("us_rid", lVarD.I());
                }
                if (lVarD != null && !TextUtils.isEmpty(lVarD.a())) {
                    eVar.a("u_stid", lVarD.a());
                }
                e eVarB = d.b().b(str2);
                if (eVarB != null) {
                    if (mVar != null && mVar.c() != null) {
                        try {
                            mVar.c().put("r_stid", eVarB.b("r_stid"));
                            eVarB.c("r_stid");
                        } catch (JSONException unused) {
                        }
                    }
                    eVar.a(eVarB);
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return eVar.a();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0055  */
    /* JADX WARN: Code duplicated, block: B:289:0x0777 A[Catch: Exception -> 0x002c, TryCatch #0 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0032, B:12:0x003e, B:41:0x00a8, B:43:0x00ae, B:50:0x00ca, B:52:0x00d0, B:54:0x00d5, B:57:0x00f4, B:59:0x00fa, B:67:0x0128, B:69:0x012c, B:70:0x012f, B:71:0x0133, B:73:0x0139, B:76:0x0142, B:78:0x018a, B:80:0x01e7, B:82:0x01f1, B:84:0x0204, B:85:0x020d, B:87:0x0220, B:89:0x022f, B:90:0x023c, B:93:0x0244, B:95:0x024a, B:97:0x0250, B:98:0x026e, B:99:0x0279, B:101:0x0283, B:103:0x0289, B:104:0x02a7, B:105:0x02b2, B:107:0x02ba, B:109:0x02c0, B:110:0x02de, B:111:0x02e9, B:113:0x02f1, B:115:0x02f7, B:116:0x0315, B:117:0x0320, B:119:0x0328, B:121:0x032e, B:122:0x034c, B:123:0x0357, B:126:0x036c, B:128:0x0376, B:129:0x037c, B:130:0x0381, B:132:0x0387, B:134:0x0395, B:137:0x03a5, B:139:0x03ab, B:146:0x03f3, B:148:0x03fd, B:151:0x0409, B:153:0x040f, B:154:0x0428, B:155:0x042c, B:157:0x0432, B:158:0x044b, B:159:0x044e, B:161:0x0458, B:163:0x0467, B:164:0x0487, B:165:0x0490, B:168:0x0499, B:170:0x049f, B:176:0x04de, B:180:0x04ea, B:182:0x0500, B:184:0x0525, B:186:0x052b, B:188:0x0550, B:190:0x0554, B:192:0x0564, B:193:0x0569, B:195:0x0573, B:196:0x057c, B:198:0x0582, B:199:0x058f, B:201:0x05b0, B:203:0x05b7, B:204:0x05c4, B:206:0x05ce, B:207:0x05d7, B:209:0x05df, B:211:0x05e6, B:212:0x05f3, B:214:0x05fd, B:215:0x0606, B:216:0x0613, B:218:0x061b, B:222:0x062b, B:225:0x0639, B:227:0x065f, B:229:0x0665, B:231:0x066a, B:230:0x0668, B:232:0x0671, B:234:0x0679, B:236:0x067f, B:238:0x0684, B:237:0x0682, B:239:0x068b, B:242:0x0695, B:244:0x069d, B:245:0x06a5, B:247:0x06b3, B:249:0x06b9, B:251:0x06be, B:253:0x06cd, B:255:0x06d3, B:257:0x06d8, B:261:0x06e9, B:265:0x0709, B:267:0x0712, B:270:0x072f, B:272:0x073b, B:278:0x0749, B:280:0x0755, B:282:0x075f, B:289:0x0777, B:291:0x078a, B:293:0x0790, B:295:0x0795, B:294:0x0793, B:290:0x0781, B:284:0x0769, B:286:0x076f, B:305:0x07d0, B:296:0x079d, B:298:0x07ab, B:300:0x07be, B:302:0x07c4, B:304:0x07c9, B:303:0x07c7, B:299:0x07b5, B:268:0x071d, B:264:0x0705, B:256:0x06d6, B:250:0x06bc, B:187:0x0549, B:183:0x051e, B:171:0x04b8, B:172:0x04bc, B:174:0x04c2, B:175:0x04db, B:140:0x03c6, B:141:0x03cc, B:143:0x03d4, B:144:0x03ed, B:86:0x0217, B:79:0x01c9, B:44:0x00b6, B:46:0x00bc, B:49:0x00c7, B:47:0x00c1, B:22:0x0063, B:26:0x0077, B:29:0x0082, B:31:0x0088, B:34:0x0093, B:36:0x0099, B:32:0x008d, B:38:0x009f, B:21:0x005a, B:13:0x0043, B:15:0x0049, B:61:0x0106, B:63:0x0121), top: B:312:0x001b, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:290:0x0781 A[Catch: Exception -> 0x002c, TryCatch #0 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0032, B:12:0x003e, B:41:0x00a8, B:43:0x00ae, B:50:0x00ca, B:52:0x00d0, B:54:0x00d5, B:57:0x00f4, B:59:0x00fa, B:67:0x0128, B:69:0x012c, B:70:0x012f, B:71:0x0133, B:73:0x0139, B:76:0x0142, B:78:0x018a, B:80:0x01e7, B:82:0x01f1, B:84:0x0204, B:85:0x020d, B:87:0x0220, B:89:0x022f, B:90:0x023c, B:93:0x0244, B:95:0x024a, B:97:0x0250, B:98:0x026e, B:99:0x0279, B:101:0x0283, B:103:0x0289, B:104:0x02a7, B:105:0x02b2, B:107:0x02ba, B:109:0x02c0, B:110:0x02de, B:111:0x02e9, B:113:0x02f1, B:115:0x02f7, B:116:0x0315, B:117:0x0320, B:119:0x0328, B:121:0x032e, B:122:0x034c, B:123:0x0357, B:126:0x036c, B:128:0x0376, B:129:0x037c, B:130:0x0381, B:132:0x0387, B:134:0x0395, B:137:0x03a5, B:139:0x03ab, B:146:0x03f3, B:148:0x03fd, B:151:0x0409, B:153:0x040f, B:154:0x0428, B:155:0x042c, B:157:0x0432, B:158:0x044b, B:159:0x044e, B:161:0x0458, B:163:0x0467, B:164:0x0487, B:165:0x0490, B:168:0x0499, B:170:0x049f, B:176:0x04de, B:180:0x04ea, B:182:0x0500, B:184:0x0525, B:186:0x052b, B:188:0x0550, B:190:0x0554, B:192:0x0564, B:193:0x0569, B:195:0x0573, B:196:0x057c, B:198:0x0582, B:199:0x058f, B:201:0x05b0, B:203:0x05b7, B:204:0x05c4, B:206:0x05ce, B:207:0x05d7, B:209:0x05df, B:211:0x05e6, B:212:0x05f3, B:214:0x05fd, B:215:0x0606, B:216:0x0613, B:218:0x061b, B:222:0x062b, B:225:0x0639, B:227:0x065f, B:229:0x0665, B:231:0x066a, B:230:0x0668, B:232:0x0671, B:234:0x0679, B:236:0x067f, B:238:0x0684, B:237:0x0682, B:239:0x068b, B:242:0x0695, B:244:0x069d, B:245:0x06a5, B:247:0x06b3, B:249:0x06b9, B:251:0x06be, B:253:0x06cd, B:255:0x06d3, B:257:0x06d8, B:261:0x06e9, B:265:0x0709, B:267:0x0712, B:270:0x072f, B:272:0x073b, B:278:0x0749, B:280:0x0755, B:282:0x075f, B:289:0x0777, B:291:0x078a, B:293:0x0790, B:295:0x0795, B:294:0x0793, B:290:0x0781, B:284:0x0769, B:286:0x076f, B:305:0x07d0, B:296:0x079d, B:298:0x07ab, B:300:0x07be, B:302:0x07c4, B:304:0x07c9, B:303:0x07c7, B:299:0x07b5, B:268:0x071d, B:264:0x0705, B:256:0x06d6, B:250:0x06bc, B:187:0x0549, B:183:0x051e, B:171:0x04b8, B:172:0x04bc, B:174:0x04c2, B:175:0x04db, B:140:0x03c6, B:141:0x03cc, B:143:0x03d4, B:144:0x03ed, B:86:0x0217, B:79:0x01c9, B:44:0x00b6, B:46:0x00bc, B:49:0x00c7, B:47:0x00c1, B:22:0x0063, B:26:0x0077, B:29:0x0082, B:31:0x0088, B:34:0x0093, B:36:0x0099, B:32:0x008d, B:38:0x009f, B:21:0x005a, B:13:0x0043, B:15:0x0049, B:61:0x0106, B:63:0x0121), top: B:312:0x001b, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:293:0x0790 A[Catch: Exception -> 0x002c, TryCatch #0 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0032, B:12:0x003e, B:41:0x00a8, B:43:0x00ae, B:50:0x00ca, B:52:0x00d0, B:54:0x00d5, B:57:0x00f4, B:59:0x00fa, B:67:0x0128, B:69:0x012c, B:70:0x012f, B:71:0x0133, B:73:0x0139, B:76:0x0142, B:78:0x018a, B:80:0x01e7, B:82:0x01f1, B:84:0x0204, B:85:0x020d, B:87:0x0220, B:89:0x022f, B:90:0x023c, B:93:0x0244, B:95:0x024a, B:97:0x0250, B:98:0x026e, B:99:0x0279, B:101:0x0283, B:103:0x0289, B:104:0x02a7, B:105:0x02b2, B:107:0x02ba, B:109:0x02c0, B:110:0x02de, B:111:0x02e9, B:113:0x02f1, B:115:0x02f7, B:116:0x0315, B:117:0x0320, B:119:0x0328, B:121:0x032e, B:122:0x034c, B:123:0x0357, B:126:0x036c, B:128:0x0376, B:129:0x037c, B:130:0x0381, B:132:0x0387, B:134:0x0395, B:137:0x03a5, B:139:0x03ab, B:146:0x03f3, B:148:0x03fd, B:151:0x0409, B:153:0x040f, B:154:0x0428, B:155:0x042c, B:157:0x0432, B:158:0x044b, B:159:0x044e, B:161:0x0458, B:163:0x0467, B:164:0x0487, B:165:0x0490, B:168:0x0499, B:170:0x049f, B:176:0x04de, B:180:0x04ea, B:182:0x0500, B:184:0x0525, B:186:0x052b, B:188:0x0550, B:190:0x0554, B:192:0x0564, B:193:0x0569, B:195:0x0573, B:196:0x057c, B:198:0x0582, B:199:0x058f, B:201:0x05b0, B:203:0x05b7, B:204:0x05c4, B:206:0x05ce, B:207:0x05d7, B:209:0x05df, B:211:0x05e6, B:212:0x05f3, B:214:0x05fd, B:215:0x0606, B:216:0x0613, B:218:0x061b, B:222:0x062b, B:225:0x0639, B:227:0x065f, B:229:0x0665, B:231:0x066a, B:230:0x0668, B:232:0x0671, B:234:0x0679, B:236:0x067f, B:238:0x0684, B:237:0x0682, B:239:0x068b, B:242:0x0695, B:244:0x069d, B:245:0x06a5, B:247:0x06b3, B:249:0x06b9, B:251:0x06be, B:253:0x06cd, B:255:0x06d3, B:257:0x06d8, B:261:0x06e9, B:265:0x0709, B:267:0x0712, B:270:0x072f, B:272:0x073b, B:278:0x0749, B:280:0x0755, B:282:0x075f, B:289:0x0777, B:291:0x078a, B:293:0x0790, B:295:0x0795, B:294:0x0793, B:290:0x0781, B:284:0x0769, B:286:0x076f, B:305:0x07d0, B:296:0x079d, B:298:0x07ab, B:300:0x07be, B:302:0x07c4, B:304:0x07c9, B:303:0x07c7, B:299:0x07b5, B:268:0x071d, B:264:0x0705, B:256:0x06d6, B:250:0x06bc, B:187:0x0549, B:183:0x051e, B:171:0x04b8, B:172:0x04bc, B:174:0x04c2, B:175:0x04db, B:140:0x03c6, B:141:0x03cc, B:143:0x03d4, B:144:0x03ed, B:86:0x0217, B:79:0x01c9, B:44:0x00b6, B:46:0x00bc, B:49:0x00c7, B:47:0x00c1, B:22:0x0063, B:26:0x0077, B:29:0x0082, B:31:0x0088, B:34:0x0093, B:36:0x0099, B:32:0x008d, B:38:0x009f, B:21:0x005a, B:13:0x0043, B:15:0x0049, B:61:0x0106, B:63:0x0121), top: B:312:0x001b, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:294:0x0793 A[Catch: Exception -> 0x002c, TryCatch #0 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0032, B:12:0x003e, B:41:0x00a8, B:43:0x00ae, B:50:0x00ca, B:52:0x00d0, B:54:0x00d5, B:57:0x00f4, B:59:0x00fa, B:67:0x0128, B:69:0x012c, B:70:0x012f, B:71:0x0133, B:73:0x0139, B:76:0x0142, B:78:0x018a, B:80:0x01e7, B:82:0x01f1, B:84:0x0204, B:85:0x020d, B:87:0x0220, B:89:0x022f, B:90:0x023c, B:93:0x0244, B:95:0x024a, B:97:0x0250, B:98:0x026e, B:99:0x0279, B:101:0x0283, B:103:0x0289, B:104:0x02a7, B:105:0x02b2, B:107:0x02ba, B:109:0x02c0, B:110:0x02de, B:111:0x02e9, B:113:0x02f1, B:115:0x02f7, B:116:0x0315, B:117:0x0320, B:119:0x0328, B:121:0x032e, B:122:0x034c, B:123:0x0357, B:126:0x036c, B:128:0x0376, B:129:0x037c, B:130:0x0381, B:132:0x0387, B:134:0x0395, B:137:0x03a5, B:139:0x03ab, B:146:0x03f3, B:148:0x03fd, B:151:0x0409, B:153:0x040f, B:154:0x0428, B:155:0x042c, B:157:0x0432, B:158:0x044b, B:159:0x044e, B:161:0x0458, B:163:0x0467, B:164:0x0487, B:165:0x0490, B:168:0x0499, B:170:0x049f, B:176:0x04de, B:180:0x04ea, B:182:0x0500, B:184:0x0525, B:186:0x052b, B:188:0x0550, B:190:0x0554, B:192:0x0564, B:193:0x0569, B:195:0x0573, B:196:0x057c, B:198:0x0582, B:199:0x058f, B:201:0x05b0, B:203:0x05b7, B:204:0x05c4, B:206:0x05ce, B:207:0x05d7, B:209:0x05df, B:211:0x05e6, B:212:0x05f3, B:214:0x05fd, B:215:0x0606, B:216:0x0613, B:218:0x061b, B:222:0x062b, B:225:0x0639, B:227:0x065f, B:229:0x0665, B:231:0x066a, B:230:0x0668, B:232:0x0671, B:234:0x0679, B:236:0x067f, B:238:0x0684, B:237:0x0682, B:239:0x068b, B:242:0x0695, B:244:0x069d, B:245:0x06a5, B:247:0x06b3, B:249:0x06b9, B:251:0x06be, B:253:0x06cd, B:255:0x06d3, B:257:0x06d8, B:261:0x06e9, B:265:0x0709, B:267:0x0712, B:270:0x072f, B:272:0x073b, B:278:0x0749, B:280:0x0755, B:282:0x075f, B:289:0x0777, B:291:0x078a, B:293:0x0790, B:295:0x0795, B:294:0x0793, B:290:0x0781, B:284:0x0769, B:286:0x076f, B:305:0x07d0, B:296:0x079d, B:298:0x07ab, B:300:0x07be, B:302:0x07c4, B:304:0x07c9, B:303:0x07c7, B:299:0x07b5, B:268:0x071d, B:264:0x0705, B:256:0x06d6, B:250:0x06bc, B:187:0x0549, B:183:0x051e, B:171:0x04b8, B:172:0x04bc, B:174:0x04c2, B:175:0x04db, B:140:0x03c6, B:141:0x03cc, B:143:0x03d4, B:144:0x03ed, B:86:0x0217, B:79:0x01c9, B:44:0x00b6, B:46:0x00bc, B:49:0x00c7, B:47:0x00c1, B:22:0x0063, B:26:0x0077, B:29:0x0082, B:31:0x0088, B:34:0x0093, B:36:0x0099, B:32:0x008d, B:38:0x009f, B:21:0x005a, B:13:0x0043, B:15:0x0049, B:61:0x0106, B:63:0x0121), top: B:312:0x001b, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:309:0x0806  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ae A[Catch: Exception -> 0x002c, TryCatch #0 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0032, B:12:0x003e, B:41:0x00a8, B:43:0x00ae, B:50:0x00ca, B:52:0x00d0, B:54:0x00d5, B:57:0x00f4, B:59:0x00fa, B:67:0x0128, B:69:0x012c, B:70:0x012f, B:71:0x0133, B:73:0x0139, B:76:0x0142, B:78:0x018a, B:80:0x01e7, B:82:0x01f1, B:84:0x0204, B:85:0x020d, B:87:0x0220, B:89:0x022f, B:90:0x023c, B:93:0x0244, B:95:0x024a, B:97:0x0250, B:98:0x026e, B:99:0x0279, B:101:0x0283, B:103:0x0289, B:104:0x02a7, B:105:0x02b2, B:107:0x02ba, B:109:0x02c0, B:110:0x02de, B:111:0x02e9, B:113:0x02f1, B:115:0x02f7, B:116:0x0315, B:117:0x0320, B:119:0x0328, B:121:0x032e, B:122:0x034c, B:123:0x0357, B:126:0x036c, B:128:0x0376, B:129:0x037c, B:130:0x0381, B:132:0x0387, B:134:0x0395, B:137:0x03a5, B:139:0x03ab, B:146:0x03f3, B:148:0x03fd, B:151:0x0409, B:153:0x040f, B:154:0x0428, B:155:0x042c, B:157:0x0432, B:158:0x044b, B:159:0x044e, B:161:0x0458, B:163:0x0467, B:164:0x0487, B:165:0x0490, B:168:0x0499, B:170:0x049f, B:176:0x04de, B:180:0x04ea, B:182:0x0500, B:184:0x0525, B:186:0x052b, B:188:0x0550, B:190:0x0554, B:192:0x0564, B:193:0x0569, B:195:0x0573, B:196:0x057c, B:198:0x0582, B:199:0x058f, B:201:0x05b0, B:203:0x05b7, B:204:0x05c4, B:206:0x05ce, B:207:0x05d7, B:209:0x05df, B:211:0x05e6, B:212:0x05f3, B:214:0x05fd, B:215:0x0606, B:216:0x0613, B:218:0x061b, B:222:0x062b, B:225:0x0639, B:227:0x065f, B:229:0x0665, B:231:0x066a, B:230:0x0668, B:232:0x0671, B:234:0x0679, B:236:0x067f, B:238:0x0684, B:237:0x0682, B:239:0x068b, B:242:0x0695, B:244:0x069d, B:245:0x06a5, B:247:0x06b3, B:249:0x06b9, B:251:0x06be, B:253:0x06cd, B:255:0x06d3, B:257:0x06d8, B:261:0x06e9, B:265:0x0709, B:267:0x0712, B:270:0x072f, B:272:0x073b, B:278:0x0749, B:280:0x0755, B:282:0x075f, B:289:0x0777, B:291:0x078a, B:293:0x0790, B:295:0x0795, B:294:0x0793, B:290:0x0781, B:284:0x0769, B:286:0x076f, B:305:0x07d0, B:296:0x079d, B:298:0x07ab, B:300:0x07be, B:302:0x07c4, B:304:0x07c9, B:303:0x07c7, B:299:0x07b5, B:268:0x071d, B:264:0x0705, B:256:0x06d6, B:250:0x06bc, B:187:0x0549, B:183:0x051e, B:171:0x04b8, B:172:0x04bc, B:174:0x04c2, B:175:0x04db, B:140:0x03c6, B:141:0x03cc, B:143:0x03d4, B:144:0x03ed, B:86:0x0217, B:79:0x01c9, B:44:0x00b6, B:46:0x00bc, B:49:0x00c7, B:47:0x00c1, B:22:0x0063, B:26:0x0077, B:29:0x0082, B:31:0x0088, B:34:0x0093, B:36:0x0099, B:32:0x008d, B:38:0x009f, B:21:0x005a, B:13:0x0043, B:15:0x0049, B:61:0x0106, B:63:0x0121), top: B:312:0x001b, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b6 A[Catch: Exception -> 0x002c, TryCatch #0 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0032, B:12:0x003e, B:41:0x00a8, B:43:0x00ae, B:50:0x00ca, B:52:0x00d0, B:54:0x00d5, B:57:0x00f4, B:59:0x00fa, B:67:0x0128, B:69:0x012c, B:70:0x012f, B:71:0x0133, B:73:0x0139, B:76:0x0142, B:78:0x018a, B:80:0x01e7, B:82:0x01f1, B:84:0x0204, B:85:0x020d, B:87:0x0220, B:89:0x022f, B:90:0x023c, B:93:0x0244, B:95:0x024a, B:97:0x0250, B:98:0x026e, B:99:0x0279, B:101:0x0283, B:103:0x0289, B:104:0x02a7, B:105:0x02b2, B:107:0x02ba, B:109:0x02c0, B:110:0x02de, B:111:0x02e9, B:113:0x02f1, B:115:0x02f7, B:116:0x0315, B:117:0x0320, B:119:0x0328, B:121:0x032e, B:122:0x034c, B:123:0x0357, B:126:0x036c, B:128:0x0376, B:129:0x037c, B:130:0x0381, B:132:0x0387, B:134:0x0395, B:137:0x03a5, B:139:0x03ab, B:146:0x03f3, B:148:0x03fd, B:151:0x0409, B:153:0x040f, B:154:0x0428, B:155:0x042c, B:157:0x0432, B:158:0x044b, B:159:0x044e, B:161:0x0458, B:163:0x0467, B:164:0x0487, B:165:0x0490, B:168:0x0499, B:170:0x049f, B:176:0x04de, B:180:0x04ea, B:182:0x0500, B:184:0x0525, B:186:0x052b, B:188:0x0550, B:190:0x0554, B:192:0x0564, B:193:0x0569, B:195:0x0573, B:196:0x057c, B:198:0x0582, B:199:0x058f, B:201:0x05b0, B:203:0x05b7, B:204:0x05c4, B:206:0x05ce, B:207:0x05d7, B:209:0x05df, B:211:0x05e6, B:212:0x05f3, B:214:0x05fd, B:215:0x0606, B:216:0x0613, B:218:0x061b, B:222:0x062b, B:225:0x0639, B:227:0x065f, B:229:0x0665, B:231:0x066a, B:230:0x0668, B:232:0x0671, B:234:0x0679, B:236:0x067f, B:238:0x0684, B:237:0x0682, B:239:0x068b, B:242:0x0695, B:244:0x069d, B:245:0x06a5, B:247:0x06b3, B:249:0x06b9, B:251:0x06be, B:253:0x06cd, B:255:0x06d3, B:257:0x06d8, B:261:0x06e9, B:265:0x0709, B:267:0x0712, B:270:0x072f, B:272:0x073b, B:278:0x0749, B:280:0x0755, B:282:0x075f, B:289:0x0777, B:291:0x078a, B:293:0x0790, B:295:0x0795, B:294:0x0793, B:290:0x0781, B:284:0x0769, B:286:0x076f, B:305:0x07d0, B:296:0x079d, B:298:0x07ab, B:300:0x07be, B:302:0x07c4, B:304:0x07c9, B:303:0x07c7, B:299:0x07b5, B:268:0x071d, B:264:0x0705, B:256:0x06d6, B:250:0x06bc, B:187:0x0549, B:183:0x051e, B:171:0x04b8, B:172:0x04bc, B:174:0x04c2, B:175:0x04db, B:140:0x03c6, B:141:0x03cc, B:143:0x03d4, B:144:0x03ed, B:86:0x0217, B:79:0x01c9, B:44:0x00b6, B:46:0x00bc, B:49:0x00c7, B:47:0x00c1, B:22:0x0063, B:26:0x0077, B:29:0x0082, B:31:0x0088, B:34:0x0093, B:36:0x0099, B:32:0x008d, B:38:0x009f, B:21:0x005a, B:13:0x0043, B:15:0x0049, B:61:0x0106, B:63:0x0121), top: B:312:0x001b, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00bc A[Catch: Exception -> 0x002c, TryCatch #0 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0032, B:12:0x003e, B:41:0x00a8, B:43:0x00ae, B:50:0x00ca, B:52:0x00d0, B:54:0x00d5, B:57:0x00f4, B:59:0x00fa, B:67:0x0128, B:69:0x012c, B:70:0x012f, B:71:0x0133, B:73:0x0139, B:76:0x0142, B:78:0x018a, B:80:0x01e7, B:82:0x01f1, B:84:0x0204, B:85:0x020d, B:87:0x0220, B:89:0x022f, B:90:0x023c, B:93:0x0244, B:95:0x024a, B:97:0x0250, B:98:0x026e, B:99:0x0279, B:101:0x0283, B:103:0x0289, B:104:0x02a7, B:105:0x02b2, B:107:0x02ba, B:109:0x02c0, B:110:0x02de, B:111:0x02e9, B:113:0x02f1, B:115:0x02f7, B:116:0x0315, B:117:0x0320, B:119:0x0328, B:121:0x032e, B:122:0x034c, B:123:0x0357, B:126:0x036c, B:128:0x0376, B:129:0x037c, B:130:0x0381, B:132:0x0387, B:134:0x0395, B:137:0x03a5, B:139:0x03ab, B:146:0x03f3, B:148:0x03fd, B:151:0x0409, B:153:0x040f, B:154:0x0428, B:155:0x042c, B:157:0x0432, B:158:0x044b, B:159:0x044e, B:161:0x0458, B:163:0x0467, B:164:0x0487, B:165:0x0490, B:168:0x0499, B:170:0x049f, B:176:0x04de, B:180:0x04ea, B:182:0x0500, B:184:0x0525, B:186:0x052b, B:188:0x0550, B:190:0x0554, B:192:0x0564, B:193:0x0569, B:195:0x0573, B:196:0x057c, B:198:0x0582, B:199:0x058f, B:201:0x05b0, B:203:0x05b7, B:204:0x05c4, B:206:0x05ce, B:207:0x05d7, B:209:0x05df, B:211:0x05e6, B:212:0x05f3, B:214:0x05fd, B:215:0x0606, B:216:0x0613, B:218:0x061b, B:222:0x062b, B:225:0x0639, B:227:0x065f, B:229:0x0665, B:231:0x066a, B:230:0x0668, B:232:0x0671, B:234:0x0679, B:236:0x067f, B:238:0x0684, B:237:0x0682, B:239:0x068b, B:242:0x0695, B:244:0x069d, B:245:0x06a5, B:247:0x06b3, B:249:0x06b9, B:251:0x06be, B:253:0x06cd, B:255:0x06d3, B:257:0x06d8, B:261:0x06e9, B:265:0x0709, B:267:0x0712, B:270:0x072f, B:272:0x073b, B:278:0x0749, B:280:0x0755, B:282:0x075f, B:289:0x0777, B:291:0x078a, B:293:0x0790, B:295:0x0795, B:294:0x0793, B:290:0x0781, B:284:0x0769, B:286:0x076f, B:305:0x07d0, B:296:0x079d, B:298:0x07ab, B:300:0x07be, B:302:0x07c4, B:304:0x07c9, B:303:0x07c7, B:299:0x07b5, B:268:0x071d, B:264:0x0705, B:256:0x06d6, B:250:0x06bc, B:187:0x0549, B:183:0x051e, B:171:0x04b8, B:172:0x04bc, B:174:0x04c2, B:175:0x04db, B:140:0x03c6, B:141:0x03cc, B:143:0x03d4, B:144:0x03ed, B:86:0x0217, B:79:0x01c9, B:44:0x00b6, B:46:0x00bc, B:49:0x00c7, B:47:0x00c1, B:22:0x0063, B:26:0x0077, B:29:0x0082, B:31:0x0088, B:34:0x0093, B:36:0x0099, B:32:0x008d, B:38:0x009f, B:21:0x005a, B:13:0x0043, B:15:0x0049, B:61:0x0106, B:63:0x0121), top: B:312:0x001b, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00c1 A[Catch: Exception -> 0x002c, TryCatch #0 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0032, B:12:0x003e, B:41:0x00a8, B:43:0x00ae, B:50:0x00ca, B:52:0x00d0, B:54:0x00d5, B:57:0x00f4, B:59:0x00fa, B:67:0x0128, B:69:0x012c, B:70:0x012f, B:71:0x0133, B:73:0x0139, B:76:0x0142, B:78:0x018a, B:80:0x01e7, B:82:0x01f1, B:84:0x0204, B:85:0x020d, B:87:0x0220, B:89:0x022f, B:90:0x023c, B:93:0x0244, B:95:0x024a, B:97:0x0250, B:98:0x026e, B:99:0x0279, B:101:0x0283, B:103:0x0289, B:104:0x02a7, B:105:0x02b2, B:107:0x02ba, B:109:0x02c0, B:110:0x02de, B:111:0x02e9, B:113:0x02f1, B:115:0x02f7, B:116:0x0315, B:117:0x0320, B:119:0x0328, B:121:0x032e, B:122:0x034c, B:123:0x0357, B:126:0x036c, B:128:0x0376, B:129:0x037c, B:130:0x0381, B:132:0x0387, B:134:0x0395, B:137:0x03a5, B:139:0x03ab, B:146:0x03f3, B:148:0x03fd, B:151:0x0409, B:153:0x040f, B:154:0x0428, B:155:0x042c, B:157:0x0432, B:158:0x044b, B:159:0x044e, B:161:0x0458, B:163:0x0467, B:164:0x0487, B:165:0x0490, B:168:0x0499, B:170:0x049f, B:176:0x04de, B:180:0x04ea, B:182:0x0500, B:184:0x0525, B:186:0x052b, B:188:0x0550, B:190:0x0554, B:192:0x0564, B:193:0x0569, B:195:0x0573, B:196:0x057c, B:198:0x0582, B:199:0x058f, B:201:0x05b0, B:203:0x05b7, B:204:0x05c4, B:206:0x05ce, B:207:0x05d7, B:209:0x05df, B:211:0x05e6, B:212:0x05f3, B:214:0x05fd, B:215:0x0606, B:216:0x0613, B:218:0x061b, B:222:0x062b, B:225:0x0639, B:227:0x065f, B:229:0x0665, B:231:0x066a, B:230:0x0668, B:232:0x0671, B:234:0x0679, B:236:0x067f, B:238:0x0684, B:237:0x0682, B:239:0x068b, B:242:0x0695, B:244:0x069d, B:245:0x06a5, B:247:0x06b3, B:249:0x06b9, B:251:0x06be, B:253:0x06cd, B:255:0x06d3, B:257:0x06d8, B:261:0x06e9, B:265:0x0709, B:267:0x0712, B:270:0x072f, B:272:0x073b, B:278:0x0749, B:280:0x0755, B:282:0x075f, B:289:0x0777, B:291:0x078a, B:293:0x0790, B:295:0x0795, B:294:0x0793, B:290:0x0781, B:284:0x0769, B:286:0x076f, B:305:0x07d0, B:296:0x079d, B:298:0x07ab, B:300:0x07be, B:302:0x07c4, B:304:0x07c9, B:303:0x07c7, B:299:0x07b5, B:268:0x071d, B:264:0x0705, B:256:0x06d6, B:250:0x06bc, B:187:0x0549, B:183:0x051e, B:171:0x04b8, B:172:0x04bc, B:174:0x04c2, B:175:0x04db, B:140:0x03c6, B:141:0x03cc, B:143:0x03d4, B:144:0x03ed, B:86:0x0217, B:79:0x01c9, B:44:0x00b6, B:46:0x00bc, B:49:0x00c7, B:47:0x00c1, B:22:0x0063, B:26:0x0077, B:29:0x0082, B:31:0x0088, B:34:0x0093, B:36:0x0099, B:32:0x008d, B:38:0x009f, B:21:0x005a, B:13:0x0043, B:15:0x0049, B:61:0x0106, B:63:0x0121), top: B:312:0x001b, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c7 A[Catch: Exception -> 0x002c, TryCatch #0 {Exception -> 0x002c, blocks: (B:3:0x001b, B:5:0x0027, B:10:0x0032, B:12:0x003e, B:41:0x00a8, B:43:0x00ae, B:50:0x00ca, B:52:0x00d0, B:54:0x00d5, B:57:0x00f4, B:59:0x00fa, B:67:0x0128, B:69:0x012c, B:70:0x012f, B:71:0x0133, B:73:0x0139, B:76:0x0142, B:78:0x018a, B:80:0x01e7, B:82:0x01f1, B:84:0x0204, B:85:0x020d, B:87:0x0220, B:89:0x022f, B:90:0x023c, B:93:0x0244, B:95:0x024a, B:97:0x0250, B:98:0x026e, B:99:0x0279, B:101:0x0283, B:103:0x0289, B:104:0x02a7, B:105:0x02b2, B:107:0x02ba, B:109:0x02c0, B:110:0x02de, B:111:0x02e9, B:113:0x02f1, B:115:0x02f7, B:116:0x0315, B:117:0x0320, B:119:0x0328, B:121:0x032e, B:122:0x034c, B:123:0x0357, B:126:0x036c, B:128:0x0376, B:129:0x037c, B:130:0x0381, B:132:0x0387, B:134:0x0395, B:137:0x03a5, B:139:0x03ab, B:146:0x03f3, B:148:0x03fd, B:151:0x0409, B:153:0x040f, B:154:0x0428, B:155:0x042c, B:157:0x0432, B:158:0x044b, B:159:0x044e, B:161:0x0458, B:163:0x0467, B:164:0x0487, B:165:0x0490, B:168:0x0499, B:170:0x049f, B:176:0x04de, B:180:0x04ea, B:182:0x0500, B:184:0x0525, B:186:0x052b, B:188:0x0550, B:190:0x0554, B:192:0x0564, B:193:0x0569, B:195:0x0573, B:196:0x057c, B:198:0x0582, B:199:0x058f, B:201:0x05b0, B:203:0x05b7, B:204:0x05c4, B:206:0x05ce, B:207:0x05d7, B:209:0x05df, B:211:0x05e6, B:212:0x05f3, B:214:0x05fd, B:215:0x0606, B:216:0x0613, B:218:0x061b, B:222:0x062b, B:225:0x0639, B:227:0x065f, B:229:0x0665, B:231:0x066a, B:230:0x0668, B:232:0x0671, B:234:0x0679, B:236:0x067f, B:238:0x0684, B:237:0x0682, B:239:0x068b, B:242:0x0695, B:244:0x069d, B:245:0x06a5, B:247:0x06b3, B:249:0x06b9, B:251:0x06be, B:253:0x06cd, B:255:0x06d3, B:257:0x06d8, B:261:0x06e9, B:265:0x0709, B:267:0x0712, B:270:0x072f, B:272:0x073b, B:278:0x0749, B:280:0x0755, B:282:0x075f, B:289:0x0777, B:291:0x078a, B:293:0x0790, B:295:0x0795, B:294:0x0793, B:290:0x0781, B:284:0x0769, B:286:0x076f, B:305:0x07d0, B:296:0x079d, B:298:0x07ab, B:300:0x07be, B:302:0x07c4, B:304:0x07c9, B:303:0x07c7, B:299:0x07b5, B:268:0x071d, B:264:0x0705, B:256:0x06d6, B:250:0x06bc, B:187:0x0549, B:183:0x051e, B:171:0x04b8, B:172:0x04bc, B:174:0x04c2, B:175:0x04db, B:140:0x03c6, B:141:0x03cc, B:143:0x03d4, B:144:0x03ed, B:86:0x0217, B:79:0x01c9, B:44:0x00b6, B:46:0x00bc, B:49:0x00c7, B:47:0x00c1, B:22:0x0063, B:26:0x0077, B:29:0x0082, B:31:0x0088, B:34:0x0093, B:36:0x0099, B:32:0x008d, B:38:0x009f, B:21:0x005a, B:13:0x0043, B:15:0x0049, B:61:0x0106, B:63:0x0121), top: B:312:0x001b, inners: #1, #2 }] */
    private Map<String, String> b(String str, c cVar) {
        Exception exc;
        String str2;
        String str3;
        String str4;
        boolean z10;
        boolean zContains;
        int i11;
        List<CampaignEx> listG;
        String str5 = "rid_n";
        String str6 = BidResponsedEx.KEY_CID;
        String str7 = CampaignEx.JSON_KEY_EC_TEMP_ID;
        e eVar = new e();
        try {
            if (Arrays.asList(b.f35587g).contains(str)) {
                return eVar.a();
            }
            if (cVar == null) {
                eVar.a("metrics_data_reason", "metrics 上报时意外为空");
                return eVar.a();
            }
            List arrayList = new ArrayList();
            try {
                if (cVar.i() == null || cVar.i().getAdType() != 295) {
                    if (Arrays.asList(b.f35586f).contains(str)) {
                        try {
                            if ("m_download_start".equals(str) || "m_download_end".equals(str)) {
                                arrayList = a(cVar, str);
                            } else {
                                List<CampaignEx> listJ = cVar.j() != null ? cVar.j() : cVar.g();
                                if (listJ != null && listJ.size() > 0) {
                                    arrayList.addAll(listJ);
                                }
                            }
                        } catch (Exception e11) {
                            e = e11;
                            exc = e;
                            if (MBridgeConstans.DEBUG) {
                                exc.printStackTrace();
                            }
                        }
                    } else if (cVar.i() != null) {
                        arrayList.add(cVar.i());
                    } else {
                        if (cVar.j() != null) {
                            listG = cVar.j();
                        } else {
                            listG = cVar.g();
                        }
                        if (listG != null) {
                            arrayList.addAll(listG);
                        }
                    }
                } else if (cVar.i() != null) {
                    arrayList.add(cVar.i());
                } else {
                    if (cVar.j() != null) {
                        listG = cVar.j();
                    } else {
                        listG = cVar.g();
                    }
                    if (listG != null) {
                        arrayList.addAll(listG);
                    }
                }
            } catch (Throwable th2) {
                o0.b("SameMetricsReport", th2.getMessage());
            }
            if (arrayList.isEmpty()) {
                return eVar.a();
            }
            Map<String, Map<String, String>> mapR = cVar.r();
            String str8 = cVar.o() + str;
            Object obj = "1";
            if (mapR.containsKey(str8) && mapR.get(str8) != null && mapR.get(str8).containsKey("126_exclude")) {
                try {
                    String str9 = mapR.get(str8).get("126_exclude");
                    mapR.get(str8).remove("126_exclude");
                    if ("1".equals(str9)) {
                        return eVar.a();
                    }
                } catch (Exception e12) {
                    if (MBridgeConstans.DEBUG) {
                        e12.printStackTrace();
                    }
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                CampaignEx campaignEx = (CampaignEx) it.next();
                if (campaignEx != null) {
                    eVar.a(CampaignEx.KEY_SECOND_REQUEST_CALLBACK_STATE, Integer.valueOf(campaignEx.getFilterCallBackState()));
                    eVar.a("r_index", Integer.valueOf(campaignEx.getSecondRequestIndex()));
                    eVar.a("s_show_index", Integer.valueOf(campaignEx.getSecondShowIndex()));
                    eVar.a(CampaignEx.KEY_SECOND_FILTER_AD_VIDEO_CALL_STATE, Integer.valueOf(campaignEx.getFilterAdsVideoCallState()));
                    eVar.a(CampaignEx.KEY_SECOND_FILTER_AD_SHOW_CALL_STATE, Integer.valueOf(campaignEx.getFilterAdsShowCallState()));
                    ArrayList<Integer> rsIgnoreCheckRule = campaignEx.getRsIgnoreCheckRule();
                    if (rsIgnoreCheckRule != null) {
                        eVar.a("ignore_video", Integer.valueOf(!rsIgnoreCheckRule.contains(0) ? 1 : 0));
                        eVar.a("ignore_template", Integer.valueOf(!rsIgnoreCheckRule.contains(1) ? 1 : 0));
                        eVar.a("ignore_ec", Integer.valueOf(!rsIgnoreCheckRule.contains(2) ? 1 : 0));
                    } else {
                        eVar.a("ignore_video", 1);
                        eVar.a("ignore_template", 1);
                        eVar.a("ignore_ec", 1);
                    }
                    if (TextUtils.isEmpty(campaignEx.getNLRid())) {
                        eVar.a("lrid", campaignEx.getLocalRequestId());
                    } else {
                        eVar.a("n_lrid", campaignEx.getNLRid());
                        if (!TextUtils.isEmpty(campaignEx.getNRid())) {
                            eVar.a("n_rid", campaignEx.getNRid());
                        }
                        eVar.a("lrid", campaignEx.getLocalRequestId());
                    }
                    eVar.a("rid", campaignEx.getRequestId());
                    if (campaignEx.getMof_tplid() != 0) {
                        eVar.a("stid", Integer.valueOf(campaignEx.getMof_tplid()));
                    }
                    CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
                    if (rewardTemplateMode != null && rewardTemplateMode.f() != 0) {
                        if (eVar.a("vtid")) {
                            eVar.a("vtid", eVar.b("vtid") + "," + rewardTemplateMode.f());
                        } else {
                            eVar.a("vtid", Integer.valueOf(rewardTemplateMode.f()));
                        }
                    }
                    if (campaignEx.getCreativeId() != 0) {
                        if (eVar.a("crid")) {
                            eVar.a("crid", eVar.b("crid") + "," + campaignEx.getCreativeId());
                        } else {
                            eVar.a("crid", Long.valueOf(campaignEx.getCreativeId()));
                        }
                    }
                    if (campaignEx.getVidCrtvId() != 0) {
                        if (eVar.a("video_crid")) {
                            eVar.a("video_crid", eVar.b("video_crid") + "," + campaignEx.getVidCrtvId());
                        } else {
                            eVar.a("video_crid", Long.valueOf(campaignEx.getVidCrtvId()));
                        }
                    }
                    if (campaignEx.getEcCrtvId() != 0) {
                        if (eVar.a("endcard_crid")) {
                            eVar.a("endcard_crid", eVar.b("endcard_crid") + "," + campaignEx.getEcCrtvId());
                        } else {
                            eVar.a("endcard_crid", Long.valueOf(campaignEx.getEcCrtvId()));
                        }
                    }
                    if (campaignEx.getEcTemplateId() != 0) {
                        if (eVar.a(str7)) {
                            eVar.a(str7, eVar.b(str7) + "," + campaignEx.getEcTemplateId());
                        } else {
                            eVar.a(str7, Long.valueOf(campaignEx.getEcTemplateId()));
                        }
                    }
                    eVar.a("bid_tk", campaignEx.getBidToken());
                    if (!TextUtils.isEmpty(campaignEx.getMof_template_url())) {
                        if (t0.i(campaignEx.getMof_template_url())) {
                            eVar.a("sdyv", obj);
                        } else {
                            eVar.a("sdyv", "2");
                        }
                    }
                    if (campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        str2 = str7;
                    } else if (!t0.i(campaignEx.getRewardTemplateMode().e())) {
                        str2 = str7;
                        if (eVar.a("vdyv")) {
                            eVar.a("vdyv", eVar.b("vdyv") + ",2");
                        } else {
                            eVar.a("vdyv", "2");
                        }
                    } else if (eVar.a("vdyv")) {
                        StringBuilder sb2 = new StringBuilder();
                        str2 = str7;
                        sb2.append(eVar.b("vdyv"));
                        sb2.append(",1");
                        eVar.a("vdyv", sb2.toString());
                    } else {
                        str2 = str7;
                        eVar.a("vdyv", obj);
                    }
                    if (!TextUtils.isEmpty(campaignEx.getendcard_url())) {
                        if (t0.i(campaignEx.getendcard_url())) {
                            if (eVar.a("edyv")) {
                                eVar.a("edyv", eVar.b("edyv") + ",1");
                            } else {
                                eVar.a("edyv", obj);
                            }
                        } else if (eVar.a("edyv")) {
                            eVar.a("edyv", eVar.b("edyv") + ",2");
                        } else {
                            eVar.a("edyv", "2");
                        }
                    }
                    if (!TextUtils.isEmpty(campaignEx.getExt_data())) {
                        JSONObject jSONObject = new JSONObject(campaignEx.getExt_data());
                        if (eVar.a("dspid")) {
                            eVar.a("dspid", eVar.b("dspid") + "," + jSONObject.optString("par_dspid"));
                        } else {
                            eVar.a("dspid", jSONObject.optString("par_dspid"));
                        }
                    }
                    if (campaignEx.getPlayable_ads_without_video() == 2) {
                        if (eVar.a("only_ec")) {
                            eVar.a("only_ec", eVar.b("only_ec") + ",2");
                        } else {
                            eVar.a("only_ec", "2");
                        }
                    } else if (eVar.a("only_ec")) {
                        eVar.a("only_ec", eVar.b("only_ec") + ",1");
                    } else {
                        eVar.a("only_ec", obj);
                    }
                    eVar.a(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? obj : "0");
                    eVar.a(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, Integer.valueOf(campaignEx.getAdSpaceT()));
                    if (eVar.a(str6)) {
                        eVar.a(str6, eVar.b(str6) + "," + campaignEx.getId());
                    } else {
                        eVar.a(str6, campaignEx.getId());
                    }
                    if (eVar.a(str5)) {
                        eVar.a(str5, eVar.b(str5) + "," + campaignEx.getRequestIdNotice());
                    } else {
                        eVar.a(str5, campaignEx.getRequestIdNotice());
                    }
                    HashMap<String, String> map = com.mbridge.msdk.foundation.controller.a.f34994r;
                    if (map != null) {
                        String str10 = map.get(campaignEx.getCampaignUnitId());
                        if (!TextUtils.isEmpty(str10)) {
                            eVar.a("u_stid", str10);
                        }
                    }
                    if (!TextUtils.isEmpty(campaignEx.getCampaignUnitId())) {
                        eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, campaignEx.getCampaignUnitId());
                    }
                    if (campaignEx.getAdType() != 0) {
                        eVar.a("adtp", Integer.valueOf(campaignEx.getAdType()));
                    }
                    eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(campaignEx.isBidCampaign() ? 1 : 0));
                    eVar.a(CampaignEx.URL_KEY_EXP_IDS, campaignEx.getExpIds());
                    Object obj2 = obj;
                    if ("2000047".contains(str)) {
                        if (campaignEx.getTyped() != -1) {
                            eVar.a("type_d", Integer.valueOf(campaignEx.getTyped()));
                        }
                        if (!TextUtils.isEmpty(campaignEx.getReasond())) {
                            eVar.a("reason_d", campaignEx.getReasond());
                        }
                    }
                    if ("2000048".contains(str)) {
                        if (campaignEx.getTyped() != -1) {
                            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(campaignEx.getTyped()));
                        }
                        if (!TextUtils.isEmpty(campaignEx.getReasond())) {
                            eVar.a("reason", campaignEx.getReasond());
                        }
                        eVar.a(CampaignEx.JSON_KEY_RETARGET_TYPE, Integer.valueOf(campaignEx.getRtinsType()));
                    }
                    if (campaignEx.getAdType() == 94 || campaignEx.getAdType() == 287) {
                        if (Arrays.asList(b.f35590j).contains(str)) {
                            eVar.a(CampaignEx.KEY_SHOW_INDEX, Integer.valueOf(campaignEx.getShowIndex()));
                            eVar.a("trigger_show_type", Integer.valueOf(campaignEx.getShowType()));
                            if (Arrays.asList(b.f35592l).contains(str)) {
                                eVar.a("temp_display_type", Integer.valueOf(campaignEx.isTemplateRenderSucc() ? a.f35577e : a.f35578f));
                            }
                            if (str.equals("2000147")) {
                                eVar.a("temp_display_type", Integer.valueOf(campaignEx.isECTemplateRenderSucc() ? a.f35577e : a.f35578f));
                            }
                        }
                        if (TextUtils.equals(str, "2000130")) {
                            String strE = campaignEx.getRewardTemplateMode() != null ? campaignEx.getRewardTemplateMode().e() : "";
                            String str11 = campaignEx.getendcard_url();
                            str3 = str5;
                            eVar.a("ec_full_screen_click", Integer.valueOf((TextUtils.isEmpty(str11) || !str11.contains("alecfc=1")) ? a.f35580h : a.f35579g));
                            eVar.a("temp_full_screen_click", Integer.valueOf((TextUtils.isEmpty(strE) || !strE.contains("alecfc=1")) ? a.f35580h : a.f35579g));
                            boolean z11 = campaignEx.getPlayable_ads_without_video() == 2;
                            str4 = str6;
                            com.mbridge.msdk.videocommon.setting.c cVarC = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), cVar.w());
                            eVar.a("video_skip_result", Integer.valueOf(cVarC == null ? 2 : cVarC.E()));
                            if (z11) {
                                eVar.a(CampaignEx.VIDEO_END_TYPE, 2);
                            } else {
                                eVar.a(CampaignEx.VIDEO_END_TYPE, Integer.valueOf(campaignEx.getVideo_end_type()));
                            }
                        } else {
                            str3 = str5;
                            str4 = str6;
                        }
                        if (Arrays.asList(b.f35591k).contains(str)) {
                            int clickTempSource = campaignEx.getClickTempSource();
                            if (clickTempSource == 1) {
                                if (campaignEx.getRewardTemplateMode().e().contains("alecfc=1")) {
                                    eVar.a("full_screen_click", Integer.valueOf(a.f35579g));
                                } else {
                                    eVar.a("full_screen_click", Integer.valueOf(a.f35580h));
                                }
                                eVar.a("temp_display_type", Integer.valueOf(campaignEx.isTemplateRenderSucc() ? a.f35577e : a.f35578f));
                            } else if (clickTempSource == 2) {
                                String str12 = campaignEx.getendcard_url();
                                if (campaignEx.getMof_tplid() != 501 || TextUtils.isEmpty(campaignEx.getMof_template_url())) {
                                    if (TextUtils.isEmpty(str12)) {
                                        z10 = false;
                                    } else {
                                        zContains = str12.contains("alecfc=1");
                                    }
                                    if (z10) {
                                        eVar.a("full_screen_click", Integer.valueOf(a.f35579g));
                                    } else {
                                        eVar.a("full_screen_click", Integer.valueOf(a.f35580h));
                                    }
                                    if (campaignEx.isECTemplateRenderSucc()) {
                                        i11 = a.f35577e;
                                    } else {
                                        i11 = a.f35578f;
                                    }
                                    eVar.a("temp_display_type", Integer.valueOf(i11));
                                } else {
                                    zContains = campaignEx.getMof_template_url().contains("alecfc=1");
                                }
                                z10 = zContains;
                                if (z10) {
                                    eVar.a("full_screen_click", Integer.valueOf(a.f35579g));
                                } else {
                                    eVar.a("full_screen_click", Integer.valueOf(a.f35580h));
                                }
                                if (campaignEx.isECTemplateRenderSucc()) {
                                    i11 = a.f35577e;
                                } else {
                                    i11 = a.f35578f;
                                }
                                eVar.a("temp_display_type", Integer.valueOf(i11));
                            }
                            eVar.a(CampaignEx.KEY_CLICK_TEMP_SOURCE, Integer.valueOf(campaignEx.getClickTempSource()));
                            eVar.a("trigger_click_type", Integer.valueOf(campaignEx.getClickType()));
                            eVar.a(CampaignEx.KEY_TRIGGER_CLICK_SOURCE, Integer.valueOf(campaignEx.getTriggerClickSource()));
                        }
                        obj = obj2;
                        it = it;
                        str7 = str2;
                        str5 = str3;
                        str6 = str4;
                    } else {
                        obj = obj2;
                        it = it;
                        str7 = str2;
                    }
                }
            }
            return eVar.a();
        } catch (Exception e13) {
            e = e13;
        }
        exc = e;
        if (MBridgeConstans.DEBUG) {
            exc.printStackTrace();
        }
        return eVar.a();
    }

    private Map<String, String> c(String str, c cVar) {
        return (cVar == null || TextUtils.isEmpty(str)) ? new HashMap() : cVar.b(str);
    }

    private Map<String, String> d(String str, c cVar) {
        e eVar = new e();
        try {
            if (str.equals("2000125")) {
                eVar.a("duration", Long.valueOf(cVar.a("2000123")));
            } else if (str.equals("2000126")) {
                eVar.a("duration", Long.valueOf(cVar.a("2000125")));
            } else if (str.equals("2000127")) {
                eVar.a("duration", Long.valueOf(cVar.a("2000123")));
            } else if (str.equals("2000154")) {
                eVar.a("duration", Long.valueOf(cVar.a("2000126")));
            } else if (str.equals("2000047") || str.equals("2000048")) {
                eVar.a("duration", Long.valueOf(cVar.a("2000123")));
            } else if (str.equals("2000155")) {
                eVar.a("duration", Long.valueOf(cVar.a("2000154")));
            } else if (str.equals("2000146")) {
                eVar.a("duration", Long.valueOf(cVar.a("2000130")));
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return eVar.a();
    }

    public Map<String, String> a(String str, c cVar) {
        HashMap map = new HashMap();
        try {
            if (Arrays.asList(b.f35585e).contains(str)) {
                map.put("auto_load", cVar != null ? cVar.c() : "");
            }
            if (cVar != null) {
                Map<String, Map<String, String>> mapR = cVar.r();
                String str2 = cVar.o() + str;
                if (mapR.containsKey(str2) && mapR.get(str2) != null) {
                    map.putAll(mapR.get(str2));
                }
                try {
                    Map<String, Map<String, String>> mapQ = cVar.q();
                    String str3 = cVar.o() + "_" + cVar.l() + "_" + str;
                    if (mapQ.containsKey(str3) && mapQ.get(str3) != null) {
                        map.putAll(mapQ.get(str3));
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        } catch (Exception e12) {
            if (MBridgeConstans.DEBUG) {
                e12.printStackTrace();
            }
        }
        return map;
    }

    public void a(String str, m mVar, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        Map<String, String> mapD;
        HashMap map = new HashMap();
        if (cVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            cVar.i(str);
            Map<String, String> mapB = b(str, cVar);
            if (mapB != null) {
                map.putAll(mapB);
            }
            Map<String, String> mapA = a(str, cVar.w(), mVar);
            if (mapA != null) {
                map.putAll(mapA);
            }
            if (Arrays.asList(b.f35584d).contains(str) && (mapD = d(str, cVar)) != null) {
                map.putAll(mapD);
            }
            Map<String, String> mapA2 = a(str, cVar);
            if (mapA2 != null) {
                map.putAll(mapA2);
            }
            if (!map.containsKey("lrid") || TextUtils.isEmpty(map.get("lrid"))) {
                map.put("lrid", cVar.o());
            }
            if (map.containsKey("lrid")) {
                String str2 = map.get("lrid");
                if (!TextUtils.isEmpty(str2) && str2.contains("label_second")) {
                    map.put("lrid", str2.replace("label_second", ""));
                }
            }
            if (map.containsKey("n_lrid")) {
                String str3 = map.get("n_lrid");
                if (!TextUtils.isEmpty(str3) && str3.contains("label_second")) {
                    map.put("n_lrid", str3.replace("n_lrid", ""));
                }
            }
            Map<String, String> mapC = c(str, cVar);
            if (mapC != null) {
                map.putAll(mapC);
            }
            String str4 = "1";
            if (cVar.c() == null || !cVar.c().equals("1") || !Arrays.asList(b.f35582b).contains(str) || cVar.a() == 296) {
                if (Arrays.asList(b.f35593m).contains(str)) {
                    map.put("use_local_dns", i.b().e() ? "1" : "0");
                    if (!i.b().d()) {
                        str4 = "0";
                    }
                    map.put("local_dns_available", str4);
                }
                com.mbridge.msdk.tracker.e eVarA = a(str, map);
                if (mVar != null && eVarA != null) {
                    mVar.d(eVarA);
                }
                if (aVar != null) {
                    aVar.a();
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void b(String str, m mVar, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        if (cVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            HashMap map = new HashMap();
            cVar.i(str);
            Map<String, String> mapA = a(str, cVar.w(), mVar);
            if (mapA != null) {
                map.putAll(mapA);
            }
            Map<String, String> mapA2 = a(str, cVar);
            if (mapA2 != null) {
                map.putAll(mapA2);
            }
            Map<String, String> mapC = c(str, cVar);
            if (mapC != null) {
                map.putAll(mapC);
            }
            com.mbridge.msdk.tracker.e eVarA = a(str, map);
            if (mVar != null && eVarA != null) {
                mVar.d(eVarA);
            }
            if (aVar != null) {
                aVar.a();
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }
}
