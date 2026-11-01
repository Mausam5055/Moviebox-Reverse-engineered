package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import android.widget.Toast;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.ley;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.kF;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.pgl.ssdk.ces.out.PglSSConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TEQ extends aa {
    static final ArrayList<String> EjP = new ArrayList<>(Arrays.asList("ja", "en", "ko", "zh", "th", "vi", "id", "ru", "ar", "fr", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR, "it", "es", "hi", "pt", "zh-Hant", "ms", "pl", "tr"));
    private Set<String> HiB;
    public boolean TKC;

    public TEQ(aa.Sj sj2) {
        super("tt_sdk_settings_sr.prop", sj2);
        this.HiB = Collections.synchronizedSet(new HashSet());
    }

    public static Set<String> Sj(Set<String> set) {
        try {
            if (set == null) {
                return new HashSet();
            }
            HashSet hashSet = new HashSet();
            for (String str : set) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            return hashSet;
        } catch (Throwable unused) {
            return new HashSet();
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0250  */
    /* JADX WARN: Code duplicated, block: B:104:0x025f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0265  */
    /* JADX WARN: Code duplicated, block: B:113:0x0280  */
    /* JADX WARN: Code duplicated, block: B:116:0x0290  */
    /* JADX WARN: Code duplicated, block: B:119:0x029d  */
    /* JADX WARN: Code duplicated, block: B:122:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:125:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:128:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:12:0x0071  */
    /* JADX WARN: Code duplicated, block: B:138:0x02ef A[Catch: all -> 0x02fb, LOOP:0: B:136:0x02e9->B:138:0x02ef, LOOP_END, TryCatch #2 {all -> 0x02fb, blocks: (B:131:0x02d7, B:133:0x02e2, B:136:0x02e9, B:138:0x02ef, B:141:0x02fd), top: B:371:0x02d7 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x0079  */
    /* JADX WARN: Code duplicated, block: B:146:0x0326  */
    /* JADX WARN: Code duplicated, block: B:149:0x033f  */
    /* JADX WARN: Code duplicated, block: B:151:0x0347  */
    /* JADX WARN: Code duplicated, block: B:152:0x0356  */
    /* JADX WARN: Code duplicated, block: B:155:0x0361  */
    /* JADX WARN: Code duplicated, block: B:158:0x0374  */
    /* JADX WARN: Code duplicated, block: B:161:0x0387  */
    /* JADX WARN: Code duplicated, block: B:164:0x039a  */
    /* JADX WARN: Code duplicated, block: B:167:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:169:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:16:0x008f  */
    /* JADX WARN: Code duplicated, block: B:170:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:173:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:179:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:180:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:184:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:187:0x0408  */
    /* JADX WARN: Code duplicated, block: B:195:0x0422  */
    /* JADX WARN: Code duplicated, block: B:203:0x043c  */
    /* JADX WARN: Code duplicated, block: B:207:0x0446  */
    /* JADX WARN: Code duplicated, block: B:20:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:211:0x0452  */
    /* JADX WARN: Code duplicated, block: B:214:0x0462  */
    /* JADX WARN: Code duplicated, block: B:216:0x046a  */
    /* JADX WARN: Code duplicated, block: B:219:0x047a  */
    /* JADX WARN: Code duplicated, block: B:222:0x048c  */
    /* JADX WARN: Code duplicated, block: B:225:0x049c  */
    /* JADX WARN: Code duplicated, block: B:228:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:231:0x04be  */
    /* JADX WARN: Code duplicated, block: B:234:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:237:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:240:0x04fb  */
    /* JADX WARN: Code duplicated, block: B:243:0x0510  */
    /* JADX WARN: Code duplicated, block: B:246:0x0524  */
    /* JADX WARN: Code duplicated, block: B:249:0x0537  */
    /* JADX WARN: Code duplicated, block: B:24:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:252:0x054b  */
    /* JADX WARN: Code duplicated, block: B:255:0x0560  */
    /* JADX WARN: Code duplicated, block: B:258:0x0570  */
    /* JADX WARN: Code duplicated, block: B:261:0x0581  */
    /* JADX WARN: Code duplicated, block: B:266:0x0599 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:268:0x05a1 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:270:0x05ad A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:275:0x05be A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:277:0x05ca A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:280:0x05d7 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:283:0x05ea A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:286:0x05fd A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:289:0x0610 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:292:0x0624 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:301:0x0651 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:304:0x0665 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:306:0x0671 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:309:0x067e A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:312:0x0692 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:315:0x06a4 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:318:0x06b7 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:321:0x06ca A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:324:0x06dd A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:327:0x06f0 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:330:0x0703 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:333:0x0717 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:336:0x072b A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:339:0x073e A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:342:0x0752 A[Catch: all -> 0x05b3, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:345:0x0766 A[Catch: all -> 0x05b3, TRY_LEAVE, TryCatch #0 {all -> 0x05b3, blocks: (B:264:0x0593, B:266:0x0599, B:268:0x05a1, B:270:0x05ad, B:273:0x05b6, B:275:0x05be, B:277:0x05ca, B:278:0x05cf, B:280:0x05d7, B:281:0x05e2, B:283:0x05ea, B:284:0x05f5, B:286:0x05fd, B:287:0x0608, B:289:0x0610, B:290:0x061c, B:292:0x0624, B:293:0x0630, B:295:0x0638, B:298:0x0644, B:299:0x0649, B:301:0x0651, B:302:0x065d, B:304:0x0665, B:306:0x0671, B:307:0x0676, B:309:0x067e, B:310:0x068a, B:312:0x0692, B:313:0x069c, B:315:0x06a4, B:316:0x06af, B:318:0x06b7, B:319:0x06c2, B:321:0x06ca, B:322:0x06d5, B:324:0x06dd, B:325:0x06e8, B:327:0x06f0, B:328:0x06fb, B:330:0x0703, B:331:0x070f, B:333:0x0717, B:334:0x0723, B:336:0x072b, B:337:0x0736, B:339:0x073e, B:340:0x074a, B:342:0x0752, B:343:0x075e, B:345:0x0766), top: B:367:0x0593 }] */
    /* JADX WARN: Code duplicated, block: B:355:0x07bb  */
    /* JADX WARN: Code duplicated, block: B:358:0x07ce  */
    /* JADX WARN: Code duplicated, block: B:35:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:361:0x07e1  */
    /* JADX WARN: Code duplicated, block: B:363:0x07eb  */
    /* JADX WARN: Code duplicated, block: B:364:0x07ef  */
    /* JADX WARN: Code duplicated, block: B:367:0x0593 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:371:0x02d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:38:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:41:0x0104  */
    /* JADX WARN: Code duplicated, block: B:42:0x010c  */
    /* JADX WARN: Code duplicated, block: B:45:0x0116  */
    /* JADX WARN: Code duplicated, block: B:48:0x0126  */
    /* JADX WARN: Code duplicated, block: B:50:0x012e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0141  */
    /* JADX WARN: Code duplicated, block: B:54:0x014d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0176  */
    /* JADX WARN: Code duplicated, block: B:65:0x0185  */
    /* JADX WARN: Code duplicated, block: B:68:0x0198  */
    /* JADX WARN: Code duplicated, block: B:71:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:74:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:77:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:80:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:83:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:89:0x0214  */
    /* JADX WARN: Code duplicated, block: B:92:0x0224  */
    /* JADX WARN: Code duplicated, block: B:95:0x0234  */
    /* JADX WARN: Code duplicated, block: B:98:0x0241  */
    @Override // com.bytedance.sdk.openadsdk.core.settings.HiB
    public void Sj(JSONObject jSONObject) throws Throwable {
        String str;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        JSONObject jSONObjectOptJSONObject4;
        JSONObject jSONObjectOptJSONObject5;
        JSONObject jSONObjectOptJSONObject6;
        JSONObject jSONObjectOptJSONObject7;
        String strOptString;
        int iOptInt;
        String strOptString2;
        String strOptString3;
        String strOptString4;
        String str2;
        String str3;
        String str4;
        int iOptInt2;
        int iOptInt3;
        int iOptInt4;
        int i11;
        int iOptInt5;
        boolean z10;
        String strOptString5;
        String str5;
        String str6;
        JSONArray jSONArrayOptJSONArray;
        int i12;
        String strOptString6;
        int iOptInt6;
        long jOptLong;
        String str7 = "ad_revenue_enable";
        HiB.Sj Sj = Sj();
        JSONObject jSONObjectHiB = Fmk.gq().HiB();
        JSONObject jSONObjectOptJSONObject8 = jSONObject.optJSONObject("digest");
        try {
            if (jSONObjectOptJSONObject8 != null && jSONObjectHiB != null) {
                str = "gecko_hosts";
                boolean z11 = jSONObjectOptJSONObject8.toString().equals(jSONObjectHiB.toString());
                this.TKC = z11;
                if (jSONObjectOptJSONObject8 != null) {
                    Sj.Sj("digest", jSONObjectOptJSONObject8.toString());
                } else {
                    Sj.Sj("digest");
                }
                Sj.Sj("data_time", jSONObject.optLong("data_time"));
                if (jSONObject.has("req_inter_min")) {
                    jOptLong = jSONObject.optLong("req_inter_min", 10L) * 60000;
                    if (jOptLong >= 0 || jOptLong > 86400000) {
                        jOptLong = 600000;
                    }
                    Sj.Sj("req_inter_min", jOptLong);
                }
                if (jSONObject.has("lp_new_style")) {
                    Sj.Sj("landingpage_new_style", jSONObject.optInt("lp_new_style", Integer.MAX_VALUE));
                }
                if (jSONObject.has("blank_detect_rate")) {
                    iOptInt6 = jSONObject.optInt("blank_detect_rate", 30);
                    if (iOptInt6 >= 0 || iOptInt6 > 100) {
                        iOptInt6 = 30;
                    }
                    Sj.Sj("blank_detect_rate", iOptInt6);
                }
                jSONObjectOptJSONObject = jSONObject.optJSONObject("feq_policy");
                if (jSONObjectOptJSONObject != null) {
                    if (jSONObjectOptJSONObject.has("duration")) {
                        Sj.Sj("duration", jSONObjectOptJSONObject.optLong("duration") * 1000);
                    }
                    if (jSONObjectOptJSONObject.has("max")) {
                        Sj.Sj("max", jSONObjectOptJSONObject.optInt("max"));
                    }
                } else {
                    str7 = "ad_revenue_enable";
                }
                if (jSONObject.has("vbtt")) {
                    Sj.Sj("vbtt", jSONObject.optInt("vbtt", 5));
                }
                jSONObjectOptJSONObject2 = jSONObject.optJSONObject("abtest");
                if (jSONObjectOptJSONObject2 != null) {
                    if (jSONObjectOptJSONObject2.has("version")) {
                        Sj.Sj("ab_test_version", jSONObjectOptJSONObject2.optString("version"));
                    }
                    if (jSONObjectOptJSONObject2.has("param")) {
                        Sj.Sj("ab_test_param", jSONObjectOptJSONObject2.optString("param"));
                    }
                } else {
                    Fmk.gq().Jcg();
                }
                jSONObjectOptJSONObject3 = jSONObject.optJSONObject("log_rate_conf");
                if (jSONObjectOptJSONObject3 != null && jSONObjectOptJSONObject3.has("global_rate")) {
                    Sj.Sj("global_rate", (float) jSONObjectOptJSONObject3.optDouble("global_rate", 1.0d));
                }
                if (jSONObject.has("pyload_h5")) {
                    Sj.Sj("pyload_h5", jSONObject.optString("pyload_h5"));
                }
                if (jSONObject.has("pure_pyload_h5")) {
                    Sj.Sj("playableLoadH5Url", jSONObject.optString("pure_pyload_h5"));
                }
                if (jSONObject.has("ads_url")) {
                    Sj.Sj("ads_url", jSONObject.optString("ads_url"));
                }
                if (jSONObject.has("settings_url")) {
                    Sj.Sj("settings_url", jSONObject.optString("settings_url"));
                }
                if (jSONObject.has("app_log_url")) {
                    Sj.Sj("app_log_url", jSONObject.optString("app_log_url"));
                }
                if (jSONObject.has(CampaignEx.JSON_KEY_PRIVACY_URL)) {
                    Sj.Sj("policy_url", jSONObject.optString(CampaignEx.JSON_KEY_PRIVACY_URL));
                }
                if (jSONObject.has("consent_url")) {
                    Sj.Sj("consent_url", jSONObject.optString("consent_url"));
                }
                if (jSONObject.has("ivrv_downward")) {
                    Sj.Sj("ivrv_downward", jSONObject.optInt("ivrv_downward", 0));
                }
                if (jSONObject.has("dc")) {
                    Sj.Sj("dc", jSONObject.optString("dc"));
                }
                Fmk.gq().Sj(jSONObject, Sj);
                Fmk.gq().sP(jSONObject, Sj);
                if (jSONObject.has("if_both_open")) {
                    Sj.Sj("if_both_open", jSONObject.optInt("if_both_open", 0));
                }
                if (jSONObject.has("support_tnc")) {
                    Sj.Sj("support_tnc", jSONObject.optInt("support_tnc", 1));
                }
                if (jSONObject.has("insert_js_config")) {
                    Sj.Sj("insert_js_config", jSONObject.optString("insert_js_config", ""));
                }
                if (jSONObject.has("max_tpl_cnts")) {
                    Sj.Sj("max_tpl_cnts", jSONObject.optInt("max_tpl_cnts", 100));
                }
                if (jSONObject.has("target_region")) {
                    Sj.Sj("target_region", jSONObject.optString("target_region", ""));
                }
                jSONObjectOptJSONObject4 = jSONObject.optJSONObject("app_common_config");
                if (jSONObjectOptJSONObject4 != null) {
                    if (jSONObjectOptJSONObject4.has("force_language")) {
                        strOptString6 = jSONObjectOptJSONObject4.optString("force_language");
                        if (!TextUtils.isEmpty(strOptString6) && EjP.contains(strOptString6)) {
                            Sj.Sj("force_language", strOptString6);
                        }
                    }
                    if (jSONObjectOptJSONObject4.has("fetch_tpl_timeout_ctrl")) {
                        Sj.Sj("fetch_tpl_timeout_ctrl", jSONObjectOptJSONObject4.optInt("fetch_tpl_timeout_ctrl", AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS));
                    }
                    if (jSONObjectOptJSONObject4.has("fetch_tpl_second")) {
                        Sj.Sj("fetch_tpl_second", jSONObjectOptJSONObject4.optInt("fetch_tpl_second", 0));
                    }
                    if (jSONObjectOptJSONObject4.has("support_gzip")) {
                        Sj.Sj("support_gzip", jSONObjectOptJSONObject4.optBoolean("support_gzip", false));
                    }
                    if (jSONObjectOptJSONObject4.has("aes_key")) {
                        Sj.Sj("aes_key", jSONObjectOptJSONObject4.optString("aes_key"));
                    }
                    if (jSONObjectOptJSONObject4.has("support_rtl")) {
                        Sj.Sj("support_rtl", jSONObjectOptJSONObject4.optBoolean("support_rtl", false));
                    }
                    str5 = str7;
                    if (jSONObjectOptJSONObject4.has(str5)) {
                        Sj.Sj(str5, jSONObjectOptJSONObject4.optBoolean(str5, true));
                    }
                    str6 = str;
                    if (jSONObjectOptJSONObject4.has(str6)) {
                        try {
                            this.HiB.clear();
                            jSONArrayOptJSONArray = jSONObjectOptJSONObject4.optJSONArray(str6);
                            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                                for (i12 = 0; i12 < jSONArrayOptJSONArray.length(); i12++) {
                                    this.HiB.add(jSONArrayOptJSONArray.getString(i12));
                                }
                            }
                            this.HiB = Sj(this.HiB);
                            Sj.Sj(str6, jSONArrayOptJSONArray.toString());
                        } catch (Throwable th2) {
                            sU.sP("GeckoLog: settings json error ".concat(String.valueOf(th2)), new Object[0]);
                        }
                    }
                }
                if (jSONObject.has("read_video_from_cache")) {
                    Sj.Sj("read_video_from_cache", jSONObject.optInt("read_video_from_cache", 1));
                }
                TKC.Sj(jSONObject.optJSONArray("ad_slot_conf_list"));
                jSONObjectOptJSONObject5 = jSONObject.optJSONObject("privacy");
                if (jSONObjectOptJSONObject5 != null) {
                    if (jSONObjectOptJSONObject5.has("ad_enable")) {
                        i11 = Integer.MAX_VALUE;
                        Sj.Sj("privacy_ad_enable", jSONObjectOptJSONObject5.optInt("ad_enable", Integer.MAX_VALUE));
                    } else {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (jSONObjectOptJSONObject5.has("personalized_ad")) {
                        Sj.Sj("privacy_personalized_ad", jSONObjectOptJSONObject5.optInt("personalized_ad", i11));
                    }
                    if (jSONObjectOptJSONObject5.has("sladar_enable")) {
                        Sj.Sj("privacy_sladar_enable", jSONObjectOptJSONObject5.optInt("sladar_enable", i11));
                    }
                    if (jSONObjectOptJSONObject5.has("app_log_enable")) {
                        Sj.Sj("privacy_app_log_enable", jSONObjectOptJSONObject5.optInt("app_log_enable", i11));
                    }
                    if (jSONObjectOptJSONObject5.has("debug_unlock")) {
                        Sj.Sj("privacy_debug_unlock", jSONObjectOptJSONObject5.optInt("debug_unlock", i11));
                    }
                    if (jSONObjectOptJSONObject5.has(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS)) {
                        strOptString5 = jSONObjectOptJSONObject5.optString(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS, "");
                        if (TextUtils.isEmpty(strOptString5)) {
                            Sj.Sj("privacy_fields_allowed");
                        } else {
                            Sj.Sj("privacy_fields_allowed", strOptString5);
                        }
                    }
                    if (jSONObjectOptJSONObject5.has("app_reg")) {
                        iOptInt5 = jSONObjectOptJSONObject5.optInt("app_reg", 1);
                        if (iOptInt5 == 0 && ley.Sj().EjP() == 1) {
                            JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.TEQ.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Toast.makeText(dNu.Sj(), "Appid is not registered on pangle media platform", 1).show();
                                }
                            });
                        }
                        if (iOptInt5 != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        Sj.Sj("privacy_app_reg", z10);
                    }
                }
                if (jSONObject.has("video_cache_config")) {
                    Sj.Sj("video_cache_config", jSONObject.optString("video_cache_config"));
                }
                if (jSONObject.has("loaded_recall_time")) {
                    iOptInt4 = jSONObject.optInt("loaded_recall_time", 0);
                    if (iOptInt4 != 0 && iOptInt4 != 1) {
                        iOptInt4 = 0;
                    }
                    Sj.Sj("loadedCallbackOpportunity", iOptInt4);
                }
                if (jSONObject.has("load_strategy")) {
                    iOptInt3 = jSONObject.optInt("load_strategy", 0);
                    if (iOptInt3 != 0 && iOptInt3 != 1) {
                        iOptInt3 = 0;
                    }
                    Sj.Sj("load_callback_strategy", iOptInt3);
                }
                if (jSONObject.has("splash_video_load_strategy")) {
                    iOptInt2 = jSONObject.optInt("splash_video_load_strategy", 0);
                    if (iOptInt2 >= 0 || iOptInt2 > 3) {
                        iOptInt2 = 0;
                    }
                    Sj.Sj("splash_video_load_strategy", iOptInt2);
                }
                if (jSONObject.has("allow_blind_mode_request_ad")) {
                    Sj.Sj("allow_blind_mode_request_ad", jSONObject.optBoolean("allow_blind_mode_request_ad", false));
                }
                jSONObjectOptJSONObject6 = jSONObject.optJSONObject("bus_con");
                if (jSONObjectOptJSONObject6 != null) {
                    if (jSONObjectOptJSONObject6.has("bus_con_send_log_type")) {
                        Sj.Sj("bus_con_send_log_type", jSONObjectOptJSONObject6.optInt("bus_con_send_log_type", 1));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_sec_type")) {
                        Sj.Sj("bus_con_sec_type", jSONObjectOptJSONObject6.optInt("bus_con_sec_type", Integer.MAX_VALUE));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_dislike_report_raw")) {
                        Sj.Sj("bus_con_dislike_report_raw", jSONObjectOptJSONObject6.optBoolean("bus_con_dislike_report_raw", false));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_adshow_check_enable")) {
                        Sj.Sj("bus_con_adshow_check_enable", jSONObjectOptJSONObject6.optBoolean("bus_con_adshow_check_enable", true));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_tnc_interval")) {
                        Sj.Sj("bus_con_tnc_interval", jSONObjectOptJSONObject6.optLong("bus_con_tnc_interval", 600000L));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_token_thread_count")) {
                        Sj.Sj("bus_con_token_thread_count", jSONObjectOptJSONObject6.optInt("bus_con_token_thread_count", 4));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_video_keep_screen_on")) {
                        Sj.Sj("bus_con_video_keep_screen_on", jSONObjectOptJSONObject6.optInt("bus_con_video_keep_screen_on", 1));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_auto_click_delay")) {
                        Sj.Sj("bus_con_auto_click_delay", jSONObjectOptJSONObject6.optInt("bus_con_auto_click_delay", AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_express_host")) {
                        Sj.Sj("bus_con_express_host", jSONObjectOptJSONObject6.optString("bus_con_express_host", "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/"));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_rewardedfull_link")) {
                        Sj.Sj("bus_con_rewardedfull_link", jSONObjectOptJSONObject6.optInt("bus_con_rewardedfull_link", 0));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_check_clz")) {
                        Sj.Sj("bus_con_check_clz", jSONObjectOptJSONObject6.optString("bus_con_check_clz", ""));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_url_check")) {
                        Sj.Sj("bus_con_url_check", jSONObjectOptJSONObject6.optInt("bus_con_url_check", 1));
                    }
                    if (jSONObjectOptJSONObject6.has("bus_con_behavior_count")) {
                        Sj.Sj("bus_con_behavior_count", jSONObjectOptJSONObject6.optInt("bus_con_behavior_count", 300));
                    }
                    str2 = Fmk.Sj;
                    if (jSONObjectOptJSONObject6.has(str2)) {
                        Sj.Sj(str2, jSONObjectOptJSONObject6.optBoolean(str2, false));
                    }
                    str3 = Fmk.sP;
                    if (jSONObjectOptJSONObject6.has(str3)) {
                        Sj.Sj(str3, jSONObjectOptJSONObject6.optInt(str3, 10000));
                    }
                    str4 = Fmk.TKC;
                    if (jSONObjectOptJSONObject6.has(str4)) {
                        Sj.Sj(str4, (float) jSONObjectOptJSONObject6.optDouble(str4, 1.0d));
                    }
                }
                if (jSONObject.has("perf_con")) {
                    try {
                        jSONObjectOptJSONObject7 = jSONObject.optJSONObject("perf_con");
                        if (jSONObjectOptJSONObject7 != null) {
                            if (jSONObjectOptJSONObject7.has("perf_con_stats_rate")) {
                                strOptString3 = jSONObjectOptJSONObject7.optString("perf_con_stats_rate");
                                if (!TextUtils.isEmpty(strOptString3)) {
                                    Sj.Sj("perf_con_stats_rate", strOptString3);
                                }
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_applog_send")) {
                                strOptString2 = jSONObjectOptJSONObject7.optString("perf_con_applog_send");
                                if (!TextUtils.isEmpty(strOptString2)) {
                                    Sj.Sj("perf_con_applog_send", strOptString2);
                                }
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_apm_native")) {
                                Sj.Sj("perf_con_apm_native", jSONObjectOptJSONObject7.optInt("perf_con_apm_native"));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_webview_preload_cache")) {
                                Sj.Sj("perf_con_webview_preload_cache", jSONObjectOptJSONObject7.optInt("perf_con_webview_preload_cache"));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_webview_preload_cache_v3")) {
                                Sj.Sj("perf_con_webview_preload_cache_v3", jSONObjectOptJSONObject7.optInt("perf_con_webview_preload_cache_v3"));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_webview_cache_count")) {
                                Sj.Sj("perf_con_webview_cache_count", jSONObjectOptJSONObject7.optInt("perf_con_webview_cache_count", 0));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_webview_cache_count_v3")) {
                                Sj.Sj("perf_con_webview_cache_count_v3", jSONObjectOptJSONObject7.optInt("perf_con_webview_cache_count_v3", 0));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_thread_stack_size") && (iOptInt = jSONObjectOptJSONObject7.optInt("perf_con_thread_stack_size")) >= -524288 && iOptInt <= 0) {
                                Sj.Sj("perf_con_thread_stack_size", iOptInt);
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_use_new_thread_pool")) {
                                Sj.Sj("perf_con_use_new_thread_pool", jSONObjectOptJSONObject7.optInt("perf_con_use_new_thread_pool", 0));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_thread_pool_config")) {
                                strOptString = jSONObjectOptJSONObject7.optString("perf_con_thread_pool_config");
                                if (!TextUtils.isEmpty(strOptString)) {
                                    Sj.Sj("perf_con_thread_pool_config", strOptString);
                                }
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_is_new_net_thread")) {
                                Sj.Sj("perf_con_is_new_net_thread", jSONObjectOptJSONObject7.optInt("perf_con_is_new_net_thread", 0));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_use_prop")) {
                                kF.Sj(jSONObjectOptJSONObject7.optInt("perf_con_use_prop", 1));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_adlog_expire_time")) {
                                Sj.Sj("perf_con_adlog_expire_time", jSONObjectOptJSONObject7.optLong("perf_con_adlog_expire_time"));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_adlog_turn_off_retry_ad")) {
                                Sj.Sj("perf_con_adlog_turn_off_retry_ad", jSONObjectOptJSONObject7.optLong("perf_con_adlog_turn_off_retry_ad"));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_adlog_turn_off_retry_stats")) {
                                Sj.Sj("perf_con_adlog_turn_off_retry_stats", jSONObjectOptJSONObject7.optLong("perf_con_adlog_turn_off_retry_stats"));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_applog_rate")) {
                                Sj.Sj("perf_con_applog_rate", jSONObjectOptJSONObject7.optString("perf_con_applog_rate"));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_track_url_strategy")) {
                                Sj.Sj("perf_con_track_url_strategy", jSONObjectOptJSONObject7.optString("perf_con_track_url_strategy"));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_drawable_code")) {
                                Sj.Sj("perf_con_drawable_code", jSONObjectOptJSONObject7.optInt("perf_con_drawable_code", 0));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_close_button_delay_check_time")) {
                                Sj.Sj("perf_con_close_button_delay_check_time", jSONObjectOptJSONObject7.optInt("perf_con_close_button_delay_check_time", -1));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_drop2rt_skip_label_list")) {
                                Sj.Sj("perf_con_drop2rt_skip_label_list", jSONObjectOptJSONObject7.optString("perf_con_drop2rt_skip_label_list"));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_crypt_V4_get_ad")) {
                                Sj.Sj("perf_con_crypt_V4_get_ad", jSONObjectOptJSONObject7.optBoolean("perf_con_crypt_V4_get_ad", false));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_crypt_V4_applog")) {
                                Sj.Sj("perf_con_crypt_V4_applog", jSONObjectOptJSONObject7.optBoolean("perf_con_crypt_V4_applog", false));
                            }
                            if (jSONObjectOptJSONObject7.has("perf_con_crypt_V4")) {
                                Sj.Sj("perf_con_crypt_V4", jSONObjectOptJSONObject7.optBoolean("perf_con_crypt_V4", false));
                            }
                        }
                    } catch (Throwable th3) {
                        sU.sP("SettingsDefaultRepository", th3.getMessage());
                    }
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("app_common_config", jSONObjectOptJSONObject4);
                jSONObject2.put("perf_con", jSONObject.optJSONObject("perf_con"));
                jSONObject2.put("bus_con", jSONObject.optJSONObject("bus_con"));
                Sj.Sj("core_settings", jSONObject2.toString());
                if (jSONObject.has("dual_event_url")) {
                    Sj.Sj("dual_event_url", jSONObject.optString("dual_event_url"));
                }
                if (jSONObject.has("token_enable")) {
                    Sj.Sj("token_enable", jSONObject.optInt("token_enable"));
                }
                if (jSONObject.has("token_adx_ids")) {
                    strOptString4 = jSONObject.optString("token_adx_ids", "");
                    if (TextUtils.isEmpty(strOptString4)) {
                        Sj.Sj("token_adx_ids");
                    } else {
                        Sj.Sj("token_adx_ids", strOptString4);
                    }
                }
                Sj.Sj();
                Fmk.gq().ley();
                EjP();
            }
            str = "gecko_hosts";
            jSONObject2.put("app_common_config", jSONObjectOptJSONObject4);
            jSONObject2.put("perf_con", jSONObject.optJSONObject("perf_con"));
            jSONObject2.put("bus_con", jSONObject.optJSONObject("bus_con"));
        } catch (JSONException e11) {
            sU.sP("SettingsDefaultRepository", "coreSettingJson", e11.getMessage());
        }
        this.TKC = z11;
        if (jSONObjectOptJSONObject8 != null) {
            Sj.Sj("digest", jSONObjectOptJSONObject8.toString());
        } else {
            Sj.Sj("digest");
        }
        Sj.Sj("data_time", jSONObject.optLong("data_time"));
        if (jSONObject.has("req_inter_min")) {
            jOptLong = jSONObject.optLong("req_inter_min", 10L) * 60000;
            if (jOptLong >= 0) {
                jOptLong = 600000;
            } else {
                jOptLong = 600000;
            }
            Sj.Sj("req_inter_min", jOptLong);
        }
        if (jSONObject.has("lp_new_style")) {
            Sj.Sj("landingpage_new_style", jSONObject.optInt("lp_new_style", Integer.MAX_VALUE));
        }
        if (jSONObject.has("blank_detect_rate")) {
            iOptInt6 = jSONObject.optInt("blank_detect_rate", 30);
            if (iOptInt6 >= 0) {
                iOptInt6 = 30;
            } else {
                iOptInt6 = 30;
            }
            Sj.Sj("blank_detect_rate", iOptInt6);
        }
        jSONObjectOptJSONObject = jSONObject.optJSONObject("feq_policy");
        if (jSONObjectOptJSONObject != null) {
            if (jSONObjectOptJSONObject.has("duration")) {
                Sj.Sj("duration", jSONObjectOptJSONObject.optLong("duration") * 1000);
            }
            if (jSONObjectOptJSONObject.has("max")) {
                Sj.Sj("max", jSONObjectOptJSONObject.optInt("max"));
            }
        } else {
            str7 = "ad_revenue_enable";
        }
        if (jSONObject.has("vbtt")) {
            Sj.Sj("vbtt", jSONObject.optInt("vbtt", 5));
        }
        jSONObjectOptJSONObject2 = jSONObject.optJSONObject("abtest");
        if (jSONObjectOptJSONObject2 != null) {
            if (jSONObjectOptJSONObject2.has("version")) {
                Sj.Sj("ab_test_version", jSONObjectOptJSONObject2.optString("version"));
            }
            if (jSONObjectOptJSONObject2.has("param")) {
                Sj.Sj("ab_test_param", jSONObjectOptJSONObject2.optString("param"));
            }
        } else {
            Fmk.gq().Jcg();
        }
        jSONObjectOptJSONObject3 = jSONObject.optJSONObject("log_rate_conf");
        if (jSONObjectOptJSONObject3 != null) {
            Sj.Sj("global_rate", (float) jSONObjectOptJSONObject3.optDouble("global_rate", 1.0d));
        }
        if (jSONObject.has("pyload_h5")) {
            Sj.Sj("pyload_h5", jSONObject.optString("pyload_h5"));
        }
        if (jSONObject.has("pure_pyload_h5")) {
            Sj.Sj("playableLoadH5Url", jSONObject.optString("pure_pyload_h5"));
        }
        if (jSONObject.has("ads_url")) {
            Sj.Sj("ads_url", jSONObject.optString("ads_url"));
        }
        if (jSONObject.has("settings_url")) {
            Sj.Sj("settings_url", jSONObject.optString("settings_url"));
        }
        if (jSONObject.has("app_log_url")) {
            Sj.Sj("app_log_url", jSONObject.optString("app_log_url"));
        }
        if (jSONObject.has(CampaignEx.JSON_KEY_PRIVACY_URL)) {
            Sj.Sj("policy_url", jSONObject.optString(CampaignEx.JSON_KEY_PRIVACY_URL));
        }
        if (jSONObject.has("consent_url")) {
            Sj.Sj("consent_url", jSONObject.optString("consent_url"));
        }
        if (jSONObject.has("ivrv_downward")) {
            Sj.Sj("ivrv_downward", jSONObject.optInt("ivrv_downward", 0));
        }
        if (jSONObject.has("dc")) {
            Sj.Sj("dc", jSONObject.optString("dc"));
        }
        Fmk.gq().Sj(jSONObject, Sj);
        Fmk.gq().sP(jSONObject, Sj);
        if (jSONObject.has("if_both_open")) {
            Sj.Sj("if_both_open", jSONObject.optInt("if_both_open", 0));
        }
        if (jSONObject.has("support_tnc")) {
            Sj.Sj("support_tnc", jSONObject.optInt("support_tnc", 1));
        }
        if (jSONObject.has("insert_js_config")) {
            Sj.Sj("insert_js_config", jSONObject.optString("insert_js_config", ""));
        }
        if (jSONObject.has("max_tpl_cnts")) {
            Sj.Sj("max_tpl_cnts", jSONObject.optInt("max_tpl_cnts", 100));
        }
        if (jSONObject.has("target_region")) {
            Sj.Sj("target_region", jSONObject.optString("target_region", ""));
        }
        jSONObjectOptJSONObject4 = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject4 != null) {
            if (jSONObjectOptJSONObject4.has("force_language")) {
                strOptString6 = jSONObjectOptJSONObject4.optString("force_language");
                if (!TextUtils.isEmpty(strOptString6)) {
                    Sj.Sj("force_language", strOptString6);
                }
            }
            if (jSONObjectOptJSONObject4.has("fetch_tpl_timeout_ctrl")) {
                Sj.Sj("fetch_tpl_timeout_ctrl", jSONObjectOptJSONObject4.optInt("fetch_tpl_timeout_ctrl", AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS));
            }
            if (jSONObjectOptJSONObject4.has("fetch_tpl_second")) {
                Sj.Sj("fetch_tpl_second", jSONObjectOptJSONObject4.optInt("fetch_tpl_second", 0));
            }
            if (jSONObjectOptJSONObject4.has("support_gzip")) {
                Sj.Sj("support_gzip", jSONObjectOptJSONObject4.optBoolean("support_gzip", false));
            }
            if (jSONObjectOptJSONObject4.has("aes_key")) {
                Sj.Sj("aes_key", jSONObjectOptJSONObject4.optString("aes_key"));
            }
            if (jSONObjectOptJSONObject4.has("support_rtl")) {
                Sj.Sj("support_rtl", jSONObjectOptJSONObject4.optBoolean("support_rtl", false));
            }
            str5 = str7;
            if (jSONObjectOptJSONObject4.has(str5)) {
                Sj.Sj(str5, jSONObjectOptJSONObject4.optBoolean(str5, true));
            }
            str6 = str;
            if (jSONObjectOptJSONObject4.has(str6)) {
                this.HiB.clear();
                jSONArrayOptJSONArray = jSONObjectOptJSONObject4.optJSONArray(str6);
                if (jSONArrayOptJSONArray != null) {
                    while (i12 < jSONArrayOptJSONArray.length()) {
                        this.HiB.add(jSONArrayOptJSONArray.getString(i12));
                    }
                }
                this.HiB = Sj(this.HiB);
                Sj.Sj(str6, jSONArrayOptJSONArray.toString());
            }
        }
        if (jSONObject.has("read_video_from_cache")) {
            Sj.Sj("read_video_from_cache", jSONObject.optInt("read_video_from_cache", 1));
        }
        TKC.Sj(jSONObject.optJSONArray("ad_slot_conf_list"));
        jSONObjectOptJSONObject5 = jSONObject.optJSONObject("privacy");
        if (jSONObjectOptJSONObject5 != null) {
            if (jSONObjectOptJSONObject5.has("ad_enable")) {
                i11 = Integer.MAX_VALUE;
                Sj.Sj("privacy_ad_enable", jSONObjectOptJSONObject5.optInt("ad_enable", Integer.MAX_VALUE));
            } else {
                i11 = Integer.MAX_VALUE;
            }
            if (jSONObjectOptJSONObject5.has("personalized_ad")) {
                Sj.Sj("privacy_personalized_ad", jSONObjectOptJSONObject5.optInt("personalized_ad", i11));
            }
            if (jSONObjectOptJSONObject5.has("sladar_enable")) {
                Sj.Sj("privacy_sladar_enable", jSONObjectOptJSONObject5.optInt("sladar_enable", i11));
            }
            if (jSONObjectOptJSONObject5.has("app_log_enable")) {
                Sj.Sj("privacy_app_log_enable", jSONObjectOptJSONObject5.optInt("app_log_enable", i11));
            }
            if (jSONObjectOptJSONObject5.has("debug_unlock")) {
                Sj.Sj("privacy_debug_unlock", jSONObjectOptJSONObject5.optInt("debug_unlock", i11));
            }
            if (jSONObjectOptJSONObject5.has(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS)) {
                strOptString5 = jSONObjectOptJSONObject5.optString(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS, "");
                if (TextUtils.isEmpty(strOptString5)) {
                    Sj.Sj("privacy_fields_allowed", strOptString5);
                } else {
                    Sj.Sj("privacy_fields_allowed");
                }
            }
            if (jSONObjectOptJSONObject5.has("app_reg")) {
                iOptInt5 = jSONObjectOptJSONObject5.optInt("app_reg", 1);
                if (iOptInt5 == 0) {
                    JcM.Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.settings.TEQ.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Toast.makeText(dNu.Sj(), "Appid is not registered on pangle media platform", 1).show();
                        }
                    });
                }
                if (iOptInt5 != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                Sj.Sj("privacy_app_reg", z10);
            }
        }
        if (jSONObject.has("video_cache_config")) {
            Sj.Sj("video_cache_config", jSONObject.optString("video_cache_config"));
        }
        if (jSONObject.has("loaded_recall_time")) {
            iOptInt4 = jSONObject.optInt("loaded_recall_time", 0);
            if (iOptInt4 != 0) {
                iOptInt4 = 0;
            }
            Sj.Sj("loadedCallbackOpportunity", iOptInt4);
        }
        if (jSONObject.has("load_strategy")) {
            iOptInt3 = jSONObject.optInt("load_strategy", 0);
            if (iOptInt3 != 0) {
                iOptInt3 = 0;
            }
            Sj.Sj("load_callback_strategy", iOptInt3);
        }
        if (jSONObject.has("splash_video_load_strategy")) {
            iOptInt2 = jSONObject.optInt("splash_video_load_strategy", 0);
            if (iOptInt2 >= 0) {
                iOptInt2 = 0;
            } else {
                iOptInt2 = 0;
            }
            Sj.Sj("splash_video_load_strategy", iOptInt2);
        }
        if (jSONObject.has("allow_blind_mode_request_ad")) {
            Sj.Sj("allow_blind_mode_request_ad", jSONObject.optBoolean("allow_blind_mode_request_ad", false));
        }
        jSONObjectOptJSONObject6 = jSONObject.optJSONObject("bus_con");
        if (jSONObjectOptJSONObject6 != null) {
            if (jSONObjectOptJSONObject6.has("bus_con_send_log_type")) {
                Sj.Sj("bus_con_send_log_type", jSONObjectOptJSONObject6.optInt("bus_con_send_log_type", 1));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_sec_type")) {
                Sj.Sj("bus_con_sec_type", jSONObjectOptJSONObject6.optInt("bus_con_sec_type", Integer.MAX_VALUE));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_dislike_report_raw")) {
                Sj.Sj("bus_con_dislike_report_raw", jSONObjectOptJSONObject6.optBoolean("bus_con_dislike_report_raw", false));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_adshow_check_enable")) {
                Sj.Sj("bus_con_adshow_check_enable", jSONObjectOptJSONObject6.optBoolean("bus_con_adshow_check_enable", true));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_tnc_interval")) {
                Sj.Sj("bus_con_tnc_interval", jSONObjectOptJSONObject6.optLong("bus_con_tnc_interval", 600000L));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_token_thread_count")) {
                Sj.Sj("bus_con_token_thread_count", jSONObjectOptJSONObject6.optInt("bus_con_token_thread_count", 4));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_video_keep_screen_on")) {
                Sj.Sj("bus_con_video_keep_screen_on", jSONObjectOptJSONObject6.optInt("bus_con_video_keep_screen_on", 1));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_auto_click_delay")) {
                Sj.Sj("bus_con_auto_click_delay", jSONObjectOptJSONObject6.optInt("bus_con_auto_click_delay", AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_express_host")) {
                Sj.Sj("bus_con_express_host", jSONObjectOptJSONObject6.optString("bus_con_express_host", "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/"));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_rewardedfull_link")) {
                Sj.Sj("bus_con_rewardedfull_link", jSONObjectOptJSONObject6.optInt("bus_con_rewardedfull_link", 0));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_check_clz")) {
                Sj.Sj("bus_con_check_clz", jSONObjectOptJSONObject6.optString("bus_con_check_clz", ""));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_url_check")) {
                Sj.Sj("bus_con_url_check", jSONObjectOptJSONObject6.optInt("bus_con_url_check", 1));
            }
            if (jSONObjectOptJSONObject6.has("bus_con_behavior_count")) {
                Sj.Sj("bus_con_behavior_count", jSONObjectOptJSONObject6.optInt("bus_con_behavior_count", 300));
            }
            str2 = Fmk.Sj;
            if (jSONObjectOptJSONObject6.has(str2)) {
                Sj.Sj(str2, jSONObjectOptJSONObject6.optBoolean(str2, false));
            }
            str3 = Fmk.sP;
            if (jSONObjectOptJSONObject6.has(str3)) {
                Sj.Sj(str3, jSONObjectOptJSONObject6.optInt(str3, 10000));
            }
            str4 = Fmk.TKC;
            if (jSONObjectOptJSONObject6.has(str4)) {
                Sj.Sj(str4, (float) jSONObjectOptJSONObject6.optDouble(str4, 1.0d));
            }
        }
        if (jSONObject.has("perf_con")) {
            jSONObjectOptJSONObject7 = jSONObject.optJSONObject("perf_con");
            if (jSONObjectOptJSONObject7 != null) {
                if (jSONObjectOptJSONObject7.has("perf_con_stats_rate")) {
                    strOptString3 = jSONObjectOptJSONObject7.optString("perf_con_stats_rate");
                    if (!TextUtils.isEmpty(strOptString3)) {
                        Sj.Sj("perf_con_stats_rate", strOptString3);
                    }
                }
                if (jSONObjectOptJSONObject7.has("perf_con_applog_send")) {
                    strOptString2 = jSONObjectOptJSONObject7.optString("perf_con_applog_send");
                    if (!TextUtils.isEmpty(strOptString2)) {
                        Sj.Sj("perf_con_applog_send", strOptString2);
                    }
                }
                if (jSONObjectOptJSONObject7.has("perf_con_apm_native")) {
                    Sj.Sj("perf_con_apm_native", jSONObjectOptJSONObject7.optInt("perf_con_apm_native"));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_webview_preload_cache")) {
                    Sj.Sj("perf_con_webview_preload_cache", jSONObjectOptJSONObject7.optInt("perf_con_webview_preload_cache"));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_webview_preload_cache_v3")) {
                    Sj.Sj("perf_con_webview_preload_cache_v3", jSONObjectOptJSONObject7.optInt("perf_con_webview_preload_cache_v3"));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_webview_cache_count")) {
                    Sj.Sj("perf_con_webview_cache_count", jSONObjectOptJSONObject7.optInt("perf_con_webview_cache_count", 0));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_webview_cache_count_v3")) {
                    Sj.Sj("perf_con_webview_cache_count_v3", jSONObjectOptJSONObject7.optInt("perf_con_webview_cache_count_v3", 0));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_thread_stack_size")) {
                    Sj.Sj("perf_con_thread_stack_size", iOptInt);
                }
                if (jSONObjectOptJSONObject7.has("perf_con_use_new_thread_pool")) {
                    Sj.Sj("perf_con_use_new_thread_pool", jSONObjectOptJSONObject7.optInt("perf_con_use_new_thread_pool", 0));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_thread_pool_config")) {
                    strOptString = jSONObjectOptJSONObject7.optString("perf_con_thread_pool_config");
                    if (!TextUtils.isEmpty(strOptString)) {
                        Sj.Sj("perf_con_thread_pool_config", strOptString);
                    }
                }
                if (jSONObjectOptJSONObject7.has("perf_con_is_new_net_thread")) {
                    Sj.Sj("perf_con_is_new_net_thread", jSONObjectOptJSONObject7.optInt("perf_con_is_new_net_thread", 0));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_use_prop")) {
                    kF.Sj(jSONObjectOptJSONObject7.optInt("perf_con_use_prop", 1));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_adlog_expire_time")) {
                    Sj.Sj("perf_con_adlog_expire_time", jSONObjectOptJSONObject7.optLong("perf_con_adlog_expire_time"));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_adlog_turn_off_retry_ad")) {
                    Sj.Sj("perf_con_adlog_turn_off_retry_ad", jSONObjectOptJSONObject7.optLong("perf_con_adlog_turn_off_retry_ad"));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_adlog_turn_off_retry_stats")) {
                    Sj.Sj("perf_con_adlog_turn_off_retry_stats", jSONObjectOptJSONObject7.optLong("perf_con_adlog_turn_off_retry_stats"));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_applog_rate")) {
                    Sj.Sj("perf_con_applog_rate", jSONObjectOptJSONObject7.optString("perf_con_applog_rate"));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_track_url_strategy")) {
                    Sj.Sj("perf_con_track_url_strategy", jSONObjectOptJSONObject7.optString("perf_con_track_url_strategy"));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_drawable_code")) {
                    Sj.Sj("perf_con_drawable_code", jSONObjectOptJSONObject7.optInt("perf_con_drawable_code", 0));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_close_button_delay_check_time")) {
                    Sj.Sj("perf_con_close_button_delay_check_time", jSONObjectOptJSONObject7.optInt("perf_con_close_button_delay_check_time", -1));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_drop2rt_skip_label_list")) {
                    Sj.Sj("perf_con_drop2rt_skip_label_list", jSONObjectOptJSONObject7.optString("perf_con_drop2rt_skip_label_list"));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_crypt_V4_get_ad")) {
                    Sj.Sj("perf_con_crypt_V4_get_ad", jSONObjectOptJSONObject7.optBoolean("perf_con_crypt_V4_get_ad", false));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_crypt_V4_applog")) {
                    Sj.Sj("perf_con_crypt_V4_applog", jSONObjectOptJSONObject7.optBoolean("perf_con_crypt_V4_applog", false));
                }
                if (jSONObjectOptJSONObject7.has("perf_con_crypt_V4")) {
                    Sj.Sj("perf_con_crypt_V4", jSONObjectOptJSONObject7.optBoolean("perf_con_crypt_V4", false));
                }
            }
        }
        JSONObject jSONObject3 = new JSONObject();
        Sj.Sj("core_settings", jSONObject3.toString());
        if (jSONObject.has("dual_event_url")) {
            Sj.Sj("dual_event_url", jSONObject.optString("dual_event_url"));
        }
        if (jSONObject.has("token_enable")) {
            Sj.Sj("token_enable", jSONObject.optInt("token_enable"));
        }
        if (jSONObject.has("token_adx_ids")) {
            strOptString4 = jSONObject.optString("token_adx_ids", "");
            if (TextUtils.isEmpty(strOptString4)) {
                Sj.Sj("token_adx_ids", strOptString4);
            } else {
                Sj.Sj("token_adx_ids");
            }
        }
        Sj.Sj();
        Fmk.gq().ley();
        EjP();
    }
}
