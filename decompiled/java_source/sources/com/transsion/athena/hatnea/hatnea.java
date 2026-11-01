package com.transsion.athena.hatnea;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.net.UrlKt;
import com.meituan.android.walle.ChannelReader;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.data.AppIdData;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.PushConstants;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class hatnea extends enatha {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f42784c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f42785d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<AppIdData> f42786e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final SparseArray<String> f42787f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f42788g;

    static class athena {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f42789a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f42790b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List<Integer> f42791c;

        private athena(byte[] bArr, int i11, List<Integer> list, int i12) {
            this.f42789a = bArr;
            this.f42790b = i11;
            this.f42791c = list;
        }

        public static athena a(byte[] bArr, int i11, List<Integer> list, int i12) {
            return new athena(bArr, i11, list, i12);
        }
    }

    public hatnea(Handler handler, String str, @NonNull List<AppIdData> list, boolean z10, @NonNull SparseArray<String> sparseArray) {
        super(handler);
        this.f42788g = false;
        this.f42785d = str;
        this.f42786e = list;
        this.f42784c = z10;
        this.f42787f = sparseArray;
    }

    private Pair<String, List<AppIdData>> a(long j11, String str) {
        int i11;
        String string;
        int i12;
        int i13;
        LinkedList linkedList = new LinkedList();
        Iterator<AppIdData> it = this.f42786e.iterator();
        int i14 = 0;
        int i15 = 0;
        loop0: while (true) {
            if (!it.hasNext()) {
                i11 = 0;
                break;
            }
            AppIdData next = it.next();
            if (TextUtils.equals(next.f42647f, this.f42785d)) {
                com.transsion.athena.config.data.model.athena athenaVarB = com.transsion.athena.aethna.athena.c().b(next.f42642a);
                List<TidConfigBean> listJ = athenaVarB != null ? athenaVarB.j() : null;
                if (com.transsion.athena.config.data.model.anehat.b(listJ)) {
                    int i16 = i15;
                    int i17 = i14;
                    for (TidConfigBean tidConfigBean : listJ) {
                        if (tidConfigBean.allowUpload(j11)) {
                            if (this.f42784c) {
                                try {
                                    i13 = i17;
                                    try {
                                        com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(tidConfigBean.getTid(), new com.transsion.athena.data.anateh.aethna.athena() { // from class: com.transsion.athena.hatnea.d
                                            @Override // com.transsion.athena.data.anateh.aethna.athena
                                            public final void a(anateh anatehVar) {
                                                hatnea.a(anatehVar);
                                            }
                                        });
                                    } catch (Exception e11) {
                                        e = e11;
                                        com.transsion.athena.taaneh.aethna.b("Upload 1.x events exception : %s", e.getMessage());
                                        com.transsion.ga.anateh.a("checkUploadFile", e);
                                    }
                                } catch (Exception e12) {
                                    e = e12;
                                    i13 = i17;
                                }
                            } else {
                                i13 = i17;
                            }
                            i12 = i13;
                            com.transsion.athena.data.anehat anehatVarA = com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(tidConfigBean.getTid(), j11, str, 921600 - i16, 2000 - i12);
                            if (anehatVarA != null && (linkedList.contains(next) || linkedList.add(next))) {
                                next.f42646e.add(anehatVarA);
                                i17 = anehatVarA.f42692f + i12;
                                i16 += anehatVarA.f42693g;
                                if (i17 >= 2000 || i16 >= 921600) {
                                    i11 = 0;
                                    com.transsion.athena.taaneh.aethna.c("Packet size out of limit, packetSize [%d], eventCount [%d]", Integer.valueOf(i16), Integer.valueOf(i17));
                                    break loop0;
                                }
                            }
                        } else {
                            i12 = i17;
                        }
                        i17 = i12;
                    }
                    int i18 = i17;
                    i15 = i16;
                    i14 = i18;
                } else {
                    com.transsion.athena.taaneh.aethna.b("Appid [%d] checkUpload tid config is null.", Integer.valueOf(next.f42642a));
                }
                if (com.transsion.athena.config.data.model.anehat.a(next.f42646e)) {
                    com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(Collections.singletonList(next));
                }
            }
        }
        if (TextUtils.isEmpty(str)) {
            Random random = new Random();
            StringBuilder sb2 = new StringBuilder();
            while (i11 < 8) {
                sb2.append("0123456789abcdefghijklmnopqrstuvwxyz".charAt(random.nextInt(36)));
                i11++;
            }
            string = sb2.toString();
            com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(linkedList, string);
        } else {
            string = str;
        }
        return new Pair<>(string, linkedList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(SparseArray sparseArray) {
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            com.transsion.athena.data.enatha enathaVar = (com.transsion.athena.data.enatha) sparseArray.valueAt(i11);
            Bundle bundle = new Bundle();
            bundle.putInt(SafeStringUtils.SP_APPID, enathaVar.f42701a);
            bundle.putString("date", enathaVar.f42702b);
            bundle.putInt("count", enathaVar.f42703c);
            bundle.putInt("packet", enathaVar.f42704d);
            new yi.a("day_up_record", 9999).c(bundle, null).b();
            if (com.transsion.athena.data.athena.b() > 0) {
                new yi.a("day_up_record", com.transsion.athena.data.athena.b()).c(bundle, null).b();
            }
        }
    }

    private void a(com.transsion.athena.config.data.model.athena athenaVar, String str, boolean z10) {
        int iAbs;
        if (z10) {
            try {
                String strA = com.transsion.athena.taaneh.anehat.a();
                if (TextUtils.isEmpty(strA)) {
                    strA = com.transsion.athena.taaneh.athena.b(AthenaAnalytics.J());
                }
                iAbs = (TextUtils.isEmpty(strA) || strA.hashCode() == 0) ? 1800000 : (Math.abs(strA.hashCode()) % 30) * 60000;
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.b("Handle pull config exception after upload : %s", e11.getMessage());
                com.transsion.ga.anateh.a("handlePullConfig", e11);
                return;
            }
        } else {
            iAbs = 0;
        }
        athenaVar.d(str);
        athenaVar.c(0L);
        athenaVar.b(System.currentTimeMillis() + ((long) iAbs));
        com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(athenaVar, false);
    }

    private void a(aatnhe aatnheVar, List<AppIdData> list, long j11, int i11) {
        TidConfigBean tidConfigBeanB;
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone(com.transsion.athena.aethna.athena.c().f()));
        com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(list, j11, calendar.get(1) + "-" + (calendar.get(2) + 1) + "-" + calendar.get(5), new com.transsion.athena.data.anateh.enatha() { // from class: com.transsion.athena.hatnea.e
            @Override // com.transsion.athena.data.anateh.enatha
            public final void a(Object obj) {
                hatnea.a((SparseArray) obj);
            }
        });
        if (com.transsion.athena.taaneh.anehat.b(AthenaAnalytics.J())) {
            k4.a.a(AthenaAnalytics.J()).g("first_launch", "false");
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("requestId", i11);
            jSONObject.put("code", aatnheVar.f42753a);
            jSONObject.put("message", aatnheVar.f42754b);
            jSONObject.put("app", aatnheVar.f42755c);
            JSONArray jSONArray = new JSONArray();
            Iterator<AppIdData> it = list.iterator();
            while (it.hasNext()) {
                for (com.transsion.athena.data.anehat anehatVar : it.next().f42646e) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("tid", anehatVar.f42687a);
                    jSONObject2.put(NotificationCompat.CATEGORY_EVENT, anehatVar.f42688b);
                    jSONObject2.put("count", anehatVar.f42692f);
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("events", jSONArray);
            com.transsion.athena.taaneh.aethna.c("<-- upload success:%s", jSONObject.toString());
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b("exception when print upload events success: ", e11.getMessage());
        }
        if (this.f42788g) {
            Iterator<AppIdData> it2 = list.iterator();
            while (it2.hasNext()) {
                int i12 = it2.next().f42642a;
                if (this.f42787f.indexOfKey(i12) >= 0) {
                    this.f42787f.put(i12, "");
                    k4.a.a(AthenaAnalytics.J()).g("first_page_enter_" + i12, "");
                }
            }
        }
        Iterator<AppIdData> it3 = list.iterator();
        while (it3.hasNext()) {
            for (com.transsion.athena.data.anehat anehatVar2 : it3.next().f42646e) {
                if (anehatVar2.f42694h && (tidConfigBeanB = com.transsion.athena.aethna.athena.c().b(anehatVar2.f42687a)) != null) {
                    tidConfigBeanB.getTidConfig().c(j11);
                    tidConfigBeanB.getTidConfig().a(0);
                }
            }
        }
        List<aatnhe.athena> list2 = aatnheVar.f42755c;
        if (list2 != null) {
            for (aatnhe.athena athenaVar : list2) {
                com.transsion.athena.config.data.model.athena athenaVarB = com.transsion.athena.aethna.athena.c().b(athenaVar.f42757a);
                if (athenaVarB != null && !TextUtils.equals(athenaVarB.f(), athenaVar.a())) {
                    int i13 = athenaVar.f42758b;
                    if (i13 == 1) {
                        String strA = athenaVar.a();
                        try {
                            if (com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(athenaVarB.b())) {
                                athenaVarB.d(strA);
                                athenaVarB.c(0L);
                                athenaVarB.b(-1L);
                                com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(athenaVarB, false);
                            }
                        } catch (Exception e12) {
                            com.transsion.athena.taaneh.aethna.b("Handle cleanup data exception : %s", e12.getMessage());
                            com.transsion.ga.anateh.a("handleCleanupData", e12);
                        }
                    } else if (i13 == 2) {
                        a(athenaVarB, athenaVar.a(), true);
                    } else if (i13 == 3) {
                        a(athenaVarB, athenaVar.a(), false);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(anateh anatehVar) {
        com.transsion.athena.hatnea.athena.a().a(anatehVar);
    }

    /* JADX WARN: Code duplicated, block: B:286:0x0577  */
    /* JADX WARN: Code duplicated, block: B:287:0x057c  */
    /* JADX WARN: Code duplicated, block: B:290:0x058a  */
    /* JADX WARN: Code duplicated, block: B:301:0x05e1 A[Catch: Exception -> 0x0613, TryCatch #6 {Exception -> 0x0613, blocks: (B:298:0x05cf, B:299:0x05db, B:301:0x05e1, B:302:0x05ed, B:304:0x05f3, B:306:0x060a, B:309:0x0616, B:312:0x061d, B:314:0x0623, B:317:0x0634), top: B:372:0x05cf }] */
    /* JADX WARN: Code duplicated, block: B:304:0x05f3 A[Catch: Exception -> 0x0613, TRY_LEAVE, TryCatch #6 {Exception -> 0x0613, blocks: (B:298:0x05cf, B:299:0x05db, B:301:0x05e1, B:302:0x05ed, B:304:0x05f3, B:306:0x060a, B:309:0x0616, B:312:0x061d, B:314:0x0623, B:317:0x0634), top: B:372:0x05cf }] */
    /* JADX WARN: Code duplicated, block: B:312:0x061d A[Catch: Exception -> 0x0613, TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x0613, blocks: (B:298:0x05cf, B:299:0x05db, B:301:0x05e1, B:302:0x05ed, B:304:0x05f3, B:306:0x060a, B:309:0x0616, B:312:0x061d, B:314:0x0623, B:317:0x0634), top: B:372:0x05cf }] */
    /* JADX WARN: Code duplicated, block: B:316:0x0632  */
    /* JADX WARN: Code duplicated, block: B:332:0x0691  */
    /* JADX WARN: Code duplicated, block: B:337:0x06b0  */
    /* JADX WARN: Code duplicated, block: B:342:0x06bf  */
    /* JADX WARN: Code duplicated, block: B:343:0x06c2 A[Catch: Exception -> 0x06df, TryCatch #9 {Exception -> 0x06df, blocks: (B:333:0x069a, B:335:0x06ac, B:338:0x06b2, B:340:0x06b7, B:344:0x06c4, B:346:0x06c9, B:348:0x06d0, B:343:0x06c2), top: B:378:0x069a }] */
    /* JADX WARN: Code duplicated, block: B:376:0x0709 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:378:0x069a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:401:0x0674 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:402:0x0747 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:413:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x010e A[Catch: Exception -> 0x0107, TryCatch #16 {Exception -> 0x0107, blocks: (B:32:0x00d9, B:35:0x00df, B:37:0x00e5, B:40:0x00eb, B:42:0x00f1, B:45:0x00f7, B:48:0x00fe, B:51:0x010e, B:53:0x0114, B:55:0x0120, B:58:0x0126, B:54:0x011a), top: B:392:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0114 A[Catch: Exception -> 0x0107, TryCatch #16 {Exception -> 0x0107, blocks: (B:32:0x00d9, B:35:0x00df, B:37:0x00e5, B:40:0x00eb, B:42:0x00f1, B:45:0x00f7, B:48:0x00fe, B:51:0x010e, B:53:0x0114, B:55:0x0120, B:58:0x0126, B:54:0x011a), top: B:392:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x011a A[Catch: Exception -> 0x0107, TryCatch #16 {Exception -> 0x0107, blocks: (B:32:0x00d9, B:35:0x00df, B:37:0x00e5, B:40:0x00eb, B:42:0x00f1, B:45:0x00f7, B:48:0x00fe, B:51:0x010e, B:53:0x0114, B:55:0x0120, B:58:0x0126, B:54:0x011a), top: B:392:0x00d9 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0124  */
    /* JADX WARN: Code duplicated, block: B:61:0x0134  */
    /* JADX WARN: Code duplicated, block: B:63:0x0139  */
    /* JADX WARN: Code duplicated, block: B:65:0x013e  */
    /* JADX WARN: Code duplicated, block: B:68:0x0144 A[Catch: Exception -> 0x014c, TRY_ENTER, TryCatch #1 {Exception -> 0x014c, blocks: (B:94:0x0193, B:68:0x0144, B:90:0x0174, B:91:0x017c, B:92:0x0184, B:93:0x018c, B:73:0x014f, B:76:0x0157, B:79:0x015f), top: B:362:0x0193 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x014f A[Catch: Exception -> 0x014c, TryCatch #1 {Exception -> 0x014c, blocks: (B:94:0x0193, B:68:0x0144, B:90:0x0174, B:91:0x017c, B:92:0x0184, B:93:0x018c, B:73:0x014f, B:76:0x0157, B:79:0x015f), top: B:362:0x0193 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0155  */
    /* JADX WARN: Code duplicated, block: B:76:0x0157 A[Catch: Exception -> 0x014c, TryCatch #1 {Exception -> 0x014c, blocks: (B:94:0x0193, B:68:0x0144, B:90:0x0174, B:91:0x017c, B:92:0x0184, B:93:0x018c, B:73:0x014f, B:76:0x0157, B:79:0x015f), top: B:362:0x0193 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x015d  */
    /* JADX WARN: Code duplicated, block: B:79:0x015f A[Catch: Exception -> 0x014c, TryCatch #1 {Exception -> 0x014c, blocks: (B:94:0x0193, B:68:0x0144, B:90:0x0174, B:91:0x017c, B:92:0x0184, B:93:0x018c, B:73:0x014f, B:76:0x0157, B:79:0x015f), top: B:362:0x0193 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0165  */
    /* JADX WARN: Code duplicated, block: B:82:0x0167  */
    /* JADX WARN: Code duplicated, block: B:84:0x016b  */
    /* JADX WARN: Code duplicated, block: B:86:0x016e  */
    /* JADX WARN: Code duplicated, block: B:88:0x0171 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x0173  */
    /* JADX WARN: Code duplicated, block: B:90:0x0174 A[Catch: Exception -> 0x014c, TryCatch #1 {Exception -> 0x014c, blocks: (B:94:0x0193, B:68:0x0144, B:90:0x0174, B:91:0x017c, B:92:0x0184, B:93:0x018c, B:73:0x014f, B:76:0x0157, B:79:0x015f), top: B:362:0x0193 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x017c A[Catch: Exception -> 0x014c, TryCatch #1 {Exception -> 0x014c, blocks: (B:94:0x0193, B:68:0x0144, B:90:0x0174, B:91:0x017c, B:92:0x0184, B:93:0x018c, B:73:0x014f, B:76:0x0157, B:79:0x015f), top: B:362:0x0193 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0184 A[Catch: Exception -> 0x014c, TryCatch #1 {Exception -> 0x014c, blocks: (B:94:0x0193, B:68:0x0144, B:90:0x0174, B:91:0x017c, B:92:0x0184, B:93:0x018c, B:73:0x014f, B:76:0x0157, B:79:0x015f), top: B:362:0x0193 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x018c A[Catch: Exception -> 0x014c, TryCatch #1 {Exception -> 0x014c, blocks: (B:94:0x0193, B:68:0x0144, B:90:0x0174, B:91:0x017c, B:92:0x0184, B:93:0x018c, B:73:0x014f, B:76:0x0157, B:79:0x015f), top: B:362:0x0193 }] */
    private void a(List<AppIdData> list, String str, long j11, long j12, int i11) throws Throwable {
        long j13;
        long j14;
        String str2;
        String str3;
        int i12;
        int i13;
        athena athenaVarA;
        Context contextJ;
        String strA;
        ehatna ehatnaVarA;
        String str4;
        ehanat<aatnhe> ehanatVarA;
        aatnhe aatnheVar;
        int i14;
        String str5;
        JSONArray jSONArray;
        Iterator<AppIdData> it;
        String str6;
        int i15;
        boolean z10;
        JSONArray jSONArray2;
        boolean z11;
        boolean z12;
        String str7;
        AppIdData appIdData;
        String str8;
        boolean z13;
        JSONArray jSONArray3;
        JSONObject jSONObject;
        String str9;
        int iHashCode;
        byte b11;
        int i16 = 0;
        int i17 = 1;
        String str10 = "requestId";
        String str11 = "opid";
        String str12 = "app_active";
        long jA = j11;
        long jMin = j12;
        int i18 = i11;
        while (com.transsion.athena.taaneh.aatnhe.c(AthenaAnalytics.J())) {
            boolean zB = com.transsion.athena.taaneh.anehat.b(AthenaAnalytics.J());
            LinkedList linkedList = new LinkedList();
            JSONArray jSONArray4 = new JSONArray();
            Iterator<AppIdData> it2 = list.iterator();
            int i19 = i16;
            while (true) {
                boolean zHasNext = it2.hasNext();
                String str13 = "events";
                String str14 = "net";
                j13 = jMin;
                String str15 = NotificationCompat.CATEGORY_EVENT;
                j14 = jA;
                String str16 = "";
                if (!zHasNext) {
                    break;
                }
                AppIdData next = it2.next();
                String str17 = str10;
                JSONArray jSONArray5 = new JSONArray();
                Iterator<com.transsion.athena.data.anehat> it3 = next.f42646e.iterator();
                int i20 = 0;
                while (true) {
                    i15 = i18;
                    if (!it3.hasNext()) {
                        break;
                    }
                    String str18 = str11;
                    com.transsion.athena.data.anehat next2 = it3.next();
                    for (com.transsion.athena.data.anehat.athena athenaVar : next2.f42689c) {
                        LinkedList linkedList2 = linkedList;
                        try {
                            str7 = str16;
                            appIdData = next;
                            try {
                                JSONObject jSONObjectPut = new JSONObject().put("tid", next2.f42687a);
                                String str19 = athenaVar.f42695a;
                                if (str19 == null) {
                                    str19 = str7;
                                }
                                jSONArray3 = jSONArray4;
                                try {
                                    JSONObject jSONObjectPut2 = jSONObjectPut.put(str15, str19).put("ts", athenaVar.f42696b).put(str14, athenaVar.f42698d);
                                    String str20 = athenaVar.f42697c;
                                    if (str20 == null) {
                                        str20 = str7;
                                    }
                                    String str21 = athenaVar.f42695a;
                                    if (str21 == null) {
                                        str21 = str7;
                                    }
                                    str14 = str14;
                                    str13 = str13;
                                    if (str21.equals(str12)) {
                                        if (TextUtils.isEmpty(str20)) {
                                            jSONObject = new JSONObject();
                                        } else {
                                            jSONObject = new JSONObject(str20);
                                        }
                                        str9 = athenaVar.f42695a;
                                        if (str9 == null) {
                                            str9 = str7;
                                        }
                                        iHashCode = str9.hashCode();
                                        z13 = zB;
                                        str8 = str15;
                                        if (iHashCode != -1801031586) {
                                            if (iHashCode != 753371876) {
                                                if (iHashCode != 1066479505) {
                                                    if (iHashCode != 1616733480) {
                                                        b11 = -1;
                                                    } else {
                                                        b11 = 1;
                                                    }
                                                } else if (str9.equals("app_launch")) {
                                                    b11 = 2;
                                                } else {
                                                    b11 = -1;
                                                }
                                            } else if (str9.equals(str12)) {
                                                b11 = 0;
                                            } else {
                                                b11 = -1;
                                            }
                                        } else if (str9.equals("app_heartbeat")) {
                                            b11 = 3;
                                        } else {
                                            b11 = -1;
                                        }
                                        if (b11 != 0) {
                                            a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.d());
                                        } else if (b11 != 1) {
                                            a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.l());
                                        } else if (b11 != 2) {
                                            a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.f());
                                        } else if (b11 != 3) {
                                            a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.e());
                                        }
                                    } else {
                                        try {
                                            String str22 = athenaVar.f42695a;
                                            if (str22 == null) {
                                                str22 = str7;
                                            }
                                            if (str22.equals("page_enter")) {
                                                if (TextUtils.isEmpty(str20)) {
                                                    jSONObject = new JSONObject();
                                                } else {
                                                    jSONObject = new JSONObject(str20);
                                                }
                                                str9 = athenaVar.f42695a;
                                                if (str9 == null) {
                                                    str9 = str7;
                                                }
                                                iHashCode = str9.hashCode();
                                                z13 = zB;
                                                str8 = str15;
                                                if (iHashCode != -1801031586) {
                                                    if (iHashCode != 753371876) {
                                                        if (iHashCode != 1066479505) {
                                                            if (iHashCode != 1616733480 && str9.equals("page_enter")) {
                                                                b11 = 1;
                                                            } else {
                                                                b11 = -1;
                                                            }
                                                        } else if (str9.equals("app_launch")) {
                                                            b11 = 2;
                                                        } else {
                                                            b11 = -1;
                                                        }
                                                    } else if (str9.equals(str12)) {
                                                        b11 = 0;
                                                    } else {
                                                        b11 = -1;
                                                    }
                                                } else if (str9.equals("app_heartbeat")) {
                                                    b11 = 3;
                                                } else {
                                                    b11 = -1;
                                                }
                                                if (b11 != 0) {
                                                    a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.d());
                                                } else if (b11 != 1) {
                                                    a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.l());
                                                } else if (b11 != 2) {
                                                    a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.f());
                                                } else if (b11 != 3) {
                                                    a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.e());
                                                }
                                            } else {
                                                String str23 = athenaVar.f42695a;
                                                if (str23 == null) {
                                                    str23 = str7;
                                                }
                                                if (str23.equals("app_launch")) {
                                                    if (TextUtils.isEmpty(str20)) {
                                                        jSONObject = new JSONObject();
                                                    } else {
                                                        jSONObject = new JSONObject(str20);
                                                    }
                                                    str9 = athenaVar.f42695a;
                                                    if (str9 == null) {
                                                        str9 = str7;
                                                    }
                                                    iHashCode = str9.hashCode();
                                                    z13 = zB;
                                                    str8 = str15;
                                                    if (iHashCode != -1801031586) {
                                                        if (iHashCode != 753371876) {
                                                            if (iHashCode != 1066479505) {
                                                                if (iHashCode != 1616733480) {
                                                                    b11 = -1;
                                                                } else {
                                                                    b11 = 1;
                                                                }
                                                            } else if (str9.equals("app_launch")) {
                                                                b11 = 2;
                                                            } else {
                                                                b11 = -1;
                                                            }
                                                        } else if (str9.equals(str12)) {
                                                            b11 = 0;
                                                        } else {
                                                            b11 = -1;
                                                        }
                                                    } else if (str9.equals("app_heartbeat")) {
                                                        b11 = 3;
                                                    } else {
                                                        b11 = -1;
                                                    }
                                                    if (b11 != 0) {
                                                        a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.d());
                                                    } else if (b11 != 1) {
                                                        a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.l());
                                                    } else if (b11 != 2) {
                                                        a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.f());
                                                    } else if (b11 != 3) {
                                                        a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.e());
                                                    }
                                                } else {
                                                    String str24 = athenaVar.f42695a;
                                                    if (str24 == null) {
                                                        str24 = str7;
                                                    }
                                                    if (str24.equals("app_heartbeat")) {
                                                        if (TextUtils.isEmpty(str20)) {
                                                            jSONObject = new JSONObject();
                                                        } else {
                                                            jSONObject = new JSONObject(str20);
                                                        }
                                                        str9 = athenaVar.f42695a;
                                                        if (str9 == null) {
                                                            str9 = str7;
                                                        }
                                                        iHashCode = str9.hashCode();
                                                        z13 = zB;
                                                        str8 = str15;
                                                        if (iHashCode != -1801031586) {
                                                            if (iHashCode != 753371876) {
                                                                if (iHashCode != 1066479505) {
                                                                    if (iHashCode != 1616733480) {
                                                                        b11 = -1;
                                                                    } else {
                                                                        b11 = 1;
                                                                    }
                                                                } else if (str9.equals("app_launch")) {
                                                                    b11 = 2;
                                                                } else {
                                                                    b11 = -1;
                                                                }
                                                            } else if (str9.equals(str12)) {
                                                                b11 = 0;
                                                            } else {
                                                                b11 = -1;
                                                            }
                                                        } else if (str9.equals("app_heartbeat")) {
                                                            b11 = 3;
                                                        } else {
                                                            b11 = -1;
                                                        }
                                                        if (b11 != 0) {
                                                            a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.d());
                                                        } else if (b11 != 1) {
                                                            a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.l());
                                                        } else if (b11 != 2) {
                                                            a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.f());
                                                        } else if (b11 != 3) {
                                                            a(jSONObjectPut2, jSONObject, com.transsion.athena.config.data.model.ehanat.e());
                                                        }
                                                    } else {
                                                        jSONObjectPut2.put("eparam", str20);
                                                        str8 = str15;
                                                        z13 = zB;
                                                    }
                                                }
                                            }
                                        } catch (Exception e11) {
                                            e = e11;
                                            str8 = str15;
                                            z13 = zB;
                                            com.transsion.athena.taaneh.aethna.b("Assemble events packet exception : %s", e.getMessage());
                                            linkedList = linkedList2;
                                            str16 = str7;
                                            next = appIdData;
                                            jSONArray4 = jSONArray3;
                                            str14 = str14;
                                            str13 = str13;
                                            zB = z13;
                                            str15 = str8;
                                        }
                                    }
                                    try {
                                        jSONArray5.put(jSONObjectPut2);
                                    } catch (Exception e12) {
                                        e = e12;
                                        com.transsion.athena.taaneh.aethna.b("Assemble events packet exception : %s", e.getMessage());
                                    }
                                } catch (Exception e13) {
                                    e = e13;
                                    str14 = str14;
                                    str13 = str13;
                                }
                            } catch (Exception e14) {
                                e = e14;
                                str8 = str15;
                                z13 = zB;
                                jSONArray3 = jSONArray4;
                                com.transsion.athena.taaneh.aethna.b("Assemble events packet exception : %s", e.getMessage());
                                linkedList = linkedList2;
                                str16 = str7;
                                next = appIdData;
                                jSONArray4 = jSONArray3;
                                str14 = str14;
                                str13 = str13;
                                zB = z13;
                                str15 = str8;
                            }
                        } catch (Exception e15) {
                            e = e15;
                            str7 = str16;
                            appIdData = next;
                        }
                        linkedList = linkedList2;
                        str16 = str7;
                        next = appIdData;
                        jSONArray4 = jSONArray3;
                        str14 = str14;
                        str13 = str13;
                        zB = z13;
                        str15 = str8;
                    }
                    i20 += next2.f42692f;
                    i18 = i15;
                    str11 = str18;
                }
                String str25 = str13;
                String str26 = str11;
                String str27 = str16;
                AppIdData appIdData2 = next;
                String str28 = str15;
                boolean z14 = zB;
                LinkedList linkedList3 = linkedList;
                JSONArray jSONArray6 = jSONArray4;
                String str29 = this.f42787f.get(appIdData2.f42642a, str27);
                if (!TextUtils.isEmpty(str29)) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(str29);
                        String string = jSONObject2.has("eparam") ? jSONObject2.getString("eparam") : str27;
                        a(jSONObject2, TextUtils.isEmpty(string) ? new JSONObject() : new JSONObject(string), com.transsion.athena.config.data.model.ehanat.l());
                        if (jSONObject2.getLong("tid") < 9999) {
                            TidConfigBean tidConfigBeanA = com.transsion.athena.aethna.athena.c().a(appIdData2.f42642a, jSONObject2.getString(str28));
                            if (tidConfigBeanA != null) {
                                jSONObject2.put("tid", tidConfigBeanA.getTid());
                                jSONArray5.put(jSONObject2);
                            } else {
                                JSONObject jSONObject3 = new JSONObject();
                                jSONObject3.put(SafeStringUtils.SP_APPID, appIdData2.f42642a);
                                jSONObject3.put(str28, jSONObject2.getString(str28));
                                com.transsion.athena.taaneh.aethna.b("invalid or not registered:%s", jSONObject3.toString());
                                z10 = true;
                            }
                            this.f42788g = z10;
                        } else {
                            jSONArray5.put(jSONObject2);
                        }
                        z10 = true;
                        i20++;
                    } catch (Exception e16) {
                        z10 = true;
                        com.transsion.athena.taaneh.aethna.b("Insert FPE event exception : %s", e16.getMessage());
                    }
                    this.f42788g = z10;
                }
                int i21 = i20;
                try {
                    JSONObject jSONObject4 = TextUtils.isEmpty(appIdData2.f42643b) ? new JSONObject() : new JSONObject(appIdData2.f42643b);
                    JSONObject jSONObjectPut3 = new JSONObject().put(SafeStringUtils.SP_APPID, appIdData2.f42642a).put("hostid", com.transsion.athena.data.athena.b()).put(PushConstants.PROVIDER_FIELD_PKG, com.transsion.athena.taaneh.athena.h(AthenaAnalytics.J())).put("vn", com.transsion.athena.taaneh.athena.j(AthenaAnalytics.J())).put("vc", String.valueOf(com.transsion.athena.taaneh.athena.i(AthenaAnalytics.J()))).put("sdkv", "3.1.1.4");
                    String strOptString = jSONObject4.optString("installer");
                    if (strOptString == null) {
                        strOptString = str27;
                    }
                    JSONObject jSONObjectPut4 = jSONObjectPut3.put("ins", strOptString);
                    z11 = z14;
                    try {
                        JSONObject jSONObjectPut5 = jSONObjectPut4.put("isfl", z11).put("cnt", i21).put(str25, jSONArray5);
                        jSONArray2 = jSONArray6;
                        try {
                            jSONArray2.put(jSONObjectPut5);
                            z12 = false;
                        } catch (Exception e17) {
                            e = e17;
                            z12 = false;
                            com.transsion.athena.taaneh.aethna.b("Assemble events packet exception : %s", e.getMessage());
                        }
                    } catch (Exception e18) {
                        e = e18;
                        jSONArray2 = jSONArray6;
                    }
                } catch (Exception e19) {
                    e = e19;
                    jSONArray2 = jSONArray6;
                    z11 = z14;
                }
                i19 += i21;
                linkedList3.add(Integer.valueOf(appIdData2.f42642a));
                jMin = j13;
                linkedList = linkedList3;
                jSONArray4 = jSONArray2;
                zB = z11;
                str10 = str17;
                str11 = str26;
                jA = j14;
                i18 = i15;
            }
            String str30 = str10;
            String str31 = str11;
            int i22 = i18;
            LinkedList linkedList4 = linkedList;
            JSONArray jSONArray7 = jSONArray4;
            int i23 = i19;
            String strA2 = com.transsion.athena.taaneh.athena.a(AthenaAnalytics.J(), 0);
            try {
                JSONObject jSONObject5 = new JSONObject();
                String strG = com.transsion.athena.config.data.model.ehanat.g();
                if (strG == null) {
                    strG = "";
                }
                JSONObject jSONObjectPut6 = jSONObject5.put(ChannelReader.CHANNEL_KEY, strG);
                try {
                    String strB = com.transsion.athena.taaneh.anehat.b(AthenaAnalytics.J(), str31);
                    if (strB == null) {
                        strB = "";
                    }
                    JSONObject jSONObjectPut7 = jSONObjectPut6.put(str31, strB);
                    String strB2 = com.transsion.athena.taaneh.anehat.b(AthenaAnalytics.J(), "oneid");
                    if (strB2 == null) {
                        strB2 = "";
                    }
                    JSONObject jSONObjectPut8 = jSONObjectPut7.put("tsid", strB2);
                    AthenaAnalytics.J();
                    String strA3 = com.transsion.athena.taaneh.ehatna.a();
                    if (strA3 == null) {
                        strA3 = "";
                    }
                    JSONObject jSONObjectPut9 = jSONObjectPut8.put(PushConstants.PROVIDER_VAID, strA3);
                    JSONObject jSONObjectH = com.transsion.athena.config.data.model.ehanat.h();
                    jSONObjectH.put("ossv", com.transsion.athena.taaneh.hatnea.a(AthenaAnalytics.J()));
                    if (jSONObjectH.length() > 0) {
                        int length = jSONObjectH.toString().getBytes(StandardCharsets.UTF_8).length;
                        str2 = "";
                        if (length > 2000) {
                            try {
                                str3 = str12;
                                str31 = str31;
                                try {
                                    String str32 = String.format(Locale.getDefault(), "custom param is too long, limit is 2000 bytes(now is %d bytes)", Integer.valueOf(length));
                                    com.transsion.athena.taaneh.aethna.b("%s", str32);
                                    JSONObject jSONObject6 = new JSONObject();
                                    jSONObject6.put("errorMsg", str32);
                                    jSONObjectPut9.put("cparam", jSONObject6.toString());
                                } catch (Exception e20) {
                                    e = e20;
                                    i12 = i22;
                                    i13 = 0;
                                    com.transsion.athena.taaneh.aethna.b("Assemble events packet exception : %s", e.getMessage());
                                    athenaVarA = null;
                                    String str33 = this.f42785d;
                                    byte[] bArr = athenaVarA.f42789a;
                                    int i24 = athenaVarA.f42790b;
                                    List<Integer> list2 = athenaVarA.f42791c;
                                    contextJ = AthenaAnalytics.J();
                                    if (TextUtils.isEmpty(com.transsion.athena.taaneh.athena.a(AthenaAnalytics.J(), i13))) {
                                        strA = com.transsion.athena.taaneh.anehat.a();
                                    } else {
                                        strA = com.transsion.athena.taaneh.athena.a(AthenaAnalytics.J(), i13);
                                    }
                                    if (TextUtils.isEmpty(strA)) {
                                        strA = com.transsion.athena.taaneh.athena.b(contextJ);
                                    }
                                    Locale locale = Locale.getDefault();
                                    Integer numValueOf = Integer.valueOf(com.transsion.athena.data.athena.b());
                                    Object[] objArr = new Object[2];
                                    objArr[i13] = strA;
                                    objArr[1] = numValueOf;
                                    ehatnaVarA = ehatna.a(str33, bArr, i24, list2, str, String.format(locale, "%s_%d", objArr));
                                    JSONObject jSONObject7 = new JSONObject();
                                    jSONObject7.put("host", this.f42785d);
                                    str4 = str30;
                                    jSONObject7.put(str4, ehatnaVarA.hashCode());
                                    try {
                                        jSONObject7.put("packetId", str);
                                        jSONArray = new JSONArray();
                                        it = list.iterator();
                                        while (it.hasNext()) {
                                            for (com.transsion.athena.data.anehat anehatVar : it.next().f42646e) {
                                                JSONObject jSONObject8 = new JSONObject();
                                                jSONObject8.put("tid", anehatVar.f42687a);
                                                jSONObject8.put(NotificationCompat.CATEGORY_EVENT, anehatVar.f42688b);
                                                jSONObject8.put("count", anehatVar.f42692f);
                                                jSONArray.put(jSONObject8);
                                            }
                                        }
                                        jSONObject7.put("events", jSONArray);
                                        if (i12 > 0) {
                                            str6 = String.format(Locale.getDefault(), "--> retry [%d] times upload", Integer.valueOf(i12));
                                        } else {
                                            str6 = "--> upload";
                                        }
                                        com.transsion.athena.taaneh.aethna.c("%s:%s", str6, jSONObject7.toString());
                                    } catch (Exception e21) {
                                        e = e21;
                                        com.transsion.athena.taaneh.aethna.b("exception when print upload events : ", e.getMessage());
                                        ehanatVarA = anehat.a(ehatnaVarA.f42778a, ehatnaVarA.f42779b, ehatnaVarA.f42780c, ehatnaVarA.f42781d, ehatnaVarA.f42782e, ehatnaVarA.f42783f);
                                        if (ehanatVarA.f42776a == 0) {
                                            a(ehanatVarA.f42777b, list, j14, ehatnaVarA.hashCode());
                                            if (this.f42761a.hasMessages(298)) {
                                                return;
                                            }
                                            this.f42761a.sendEmptyMessageDelayed(298, 0L);
                                            return;
                                        }
                                        try {
                                            aatnheVar = ehanatVarA.f42777b;
                                            JSONObject jSONObject9 = new JSONObject();
                                            jSONObject9.put(str4, ehatnaVarA.hashCode());
                                            i14 = aatnheVar.f42753a;
                                            if (i14 == 0) {
                                                i14 = -1;
                                            }
                                            jSONObject9.put("code", i14);
                                            if (TextUtils.isEmpty(aatnheVar.f42754b)) {
                                                str5 = str2;
                                            } else {
                                                str5 = aatnheVar.f42754b;
                                            }
                                            jSONObject9.put("message", str5);
                                            jSONObject9.put("ex", aatnheVar.f42756d);
                                            com.transsion.athena.taaneh.aethna.c("<-- upload failed:%s", jSONObject9.toString());
                                        } catch (Exception e22) {
                                            com.transsion.athena.taaneh.aethna.b("exception when print upload events success: ", e22.getMessage());
                                        }
                                        i18 = i12 + 1;
                                        com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(list, i18);
                                        if (!com.transsion.athena.config.data.model.anehat.c(AthenaAnalytics.J())) {
                                            return;
                                        }
                                        try {
                                            Thread.sleep(j13);
                                            jMin = Math.min((j13 * 2) + 1000, 1800000L);
                                            str10 = str4;
                                            jA = com.transsion.athena.ehatna.aethna.b().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
                                            str12 = str3;
                                            str11 = str31;
                                            i16 = 0;
                                            i17 = 1;
                                        } catch (InterruptedException e23) {
                                            com.transsion.athena.taaneh.aethna.a("Retry upload interrupted!! : %s", e23.getMessage());
                                            return;
                                        }
                                    }
                                    ehanatVarA = anehat.a(ehatnaVarA.f42778a, ehatnaVarA.f42779b, ehatnaVarA.f42780c, ehatnaVarA.f42781d, ehatnaVarA.f42782e, ehatnaVarA.f42783f);
                                    if (ehanatVarA.f42776a == 0) {
                                        a(ehanatVarA.f42777b, list, j14, ehatnaVarA.hashCode());
                                        if (this.f42761a.hasMessages(298)) {
                                            this.f42761a.sendEmptyMessageDelayed(298, 0L);
                                            return;
                                        }
                                        return;
                                    }
                                    aatnheVar = ehanatVarA.f42777b;
                                    JSONObject jSONObject10 = new JSONObject();
                                    jSONObject10.put(str4, ehatnaVarA.hashCode());
                                    i14 = aatnheVar.f42753a;
                                    if (i14 == 0) {
                                        i14 = -1;
                                    }
                                    jSONObject10.put("code", i14);
                                    if (TextUtils.isEmpty(aatnheVar.f42754b)) {
                                        str5 = str2;
                                    } else {
                                        str5 = aatnheVar.f42754b;
                                    }
                                    jSONObject10.put("message", str5);
                                    jSONObject10.put("ex", aatnheVar.f42756d);
                                    com.transsion.athena.taaneh.aethna.c("<-- upload failed:%s", jSONObject10.toString());
                                    i18 = i12 + 1;
                                    com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(list, i18);
                                    if (!com.transsion.athena.config.data.model.anehat.c(AthenaAnalytics.J())) {
                                        return;
                                    }
                                    Thread.sleep(j13);
                                    jMin = Math.min((j13 * 2) + 1000, 1800000L);
                                    str10 = str4;
                                    jA = com.transsion.athena.ehatna.aethna.b().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
                                    str12 = str3;
                                    str11 = str31;
                                    i16 = 0;
                                    i17 = 1;
                                }
                            } catch (Exception e24) {
                                e = e24;
                                str3 = str12;
                                str31 = str31;
                                i12 = i22;
                                i13 = 0;
                                com.transsion.athena.taaneh.aethna.b("Assemble events packet exception : %s", e.getMessage());
                                athenaVarA = null;
                                String str34 = this.f42785d;
                                byte[] bArr2 = athenaVarA.f42789a;
                                int i25 = athenaVarA.f42790b;
                                List<Integer> list3 = athenaVarA.f42791c;
                                contextJ = AthenaAnalytics.J();
                                if (TextUtils.isEmpty(com.transsion.athena.taaneh.athena.a(AthenaAnalytics.J(), i13))) {
                                    strA = com.transsion.athena.taaneh.anehat.a();
                                } else {
                                    strA = com.transsion.athena.taaneh.athena.a(AthenaAnalytics.J(), i13);
                                }
                                if (TextUtils.isEmpty(strA)) {
                                    strA = com.transsion.athena.taaneh.athena.b(contextJ);
                                }
                                Locale locale2 = Locale.getDefault();
                                Integer numValueOf2 = Integer.valueOf(com.transsion.athena.data.athena.b());
                                Object[] objArr2 = new Object[2];
                                objArr2[i13] = strA;
                                objArr2[1] = numValueOf2;
                                ehatnaVarA = ehatna.a(str34, bArr2, i25, list3, str, String.format(locale2, "%s_%d", objArr2));
                                JSONObject jSONObject11 = new JSONObject();
                                jSONObject11.put("host", this.f42785d);
                                str4 = str30;
                                jSONObject11.put(str4, ehatnaVarA.hashCode());
                                jSONObject11.put("packetId", str);
                                jSONArray = new JSONArray();
                                it = list.iterator();
                                while (it.hasNext()) {
                                    while (r8.hasNext()) {
                                        JSONObject jSONObject12 = new JSONObject();
                                        jSONObject12.put("tid", anehatVar.f42687a);
                                        jSONObject12.put(NotificationCompat.CATEGORY_EVENT, anehatVar.f42688b);
                                        jSONObject12.put("count", anehatVar.f42692f);
                                        jSONArray.put(jSONObject12);
                                    }
                                }
                                jSONObject11.put("events", jSONArray);
                                if (i12 > 0) {
                                    str6 = String.format(Locale.getDefault(), "--> retry [%d] times upload", Integer.valueOf(i12));
                                } else {
                                    str6 = "--> upload";
                                }
                                com.transsion.athena.taaneh.aethna.c("%s:%s", str6, jSONObject11.toString());
                                ehanatVarA = anehat.a(ehatnaVarA.f42778a, ehatnaVarA.f42779b, ehatnaVarA.f42780c, ehatnaVarA.f42781d, ehatnaVarA.f42782e, ehatnaVarA.f42783f);
                                if (ehanatVarA.f42776a == 0) {
                                    a(ehanatVarA.f42777b, list, j14, ehatnaVarA.hashCode());
                                    if (this.f42761a.hasMessages(298)) {
                                        this.f42761a.sendEmptyMessageDelayed(298, 0L);
                                        return;
                                    }
                                    return;
                                }
                                aatnheVar = ehanatVarA.f42777b;
                                JSONObject jSONObject13 = new JSONObject();
                                jSONObject13.put(str4, ehatnaVarA.hashCode());
                                i14 = aatnheVar.f42753a;
                                if (i14 == 0) {
                                    i14 = -1;
                                }
                                jSONObject13.put("code", i14);
                                if (TextUtils.isEmpty(aatnheVar.f42754b)) {
                                    str5 = str2;
                                } else {
                                    str5 = aatnheVar.f42754b;
                                }
                                jSONObject13.put("message", str5);
                                jSONObject13.put("ex", aatnheVar.f42756d);
                                com.transsion.athena.taaneh.aethna.c("<-- upload failed:%s", jSONObject13.toString());
                                i18 = i12 + 1;
                                com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(list, i18);
                                if (!com.transsion.athena.config.data.model.anehat.c(AthenaAnalytics.J())) {
                                    return;
                                }
                                Thread.sleep(j13);
                                jMin = Math.min((j13 * 2) + 1000, 1800000L);
                                str10 = str4;
                                jA = com.transsion.athena.ehatna.aethna.b().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
                                str12 = str3;
                                str11 = str31;
                                i16 = 0;
                                i17 = 1;
                            }
                        } else {
                            str3 = str12;
                            str31 = str31;
                            jSONObjectPut9.put("cparam", jSONObjectH.toString());
                        }
                    } else {
                        str2 = "";
                        str3 = str12;
                        str31 = str31;
                    }
                    JSONObject jSONObjectPut10 = new JSONObject().put("actype", (int) com.transsion.athena.config.data.model.ehanat.c());
                    String str35 = Build.VERSION.RELEASE;
                    if (str35 == null) {
                        str35 = str2;
                    }
                    JSONObject jSONObjectPut11 = jSONObjectPut10.put("aver", str35).put("appids", jSONArray7);
                    String str36 = Build.BRAND;
                    if (str36 == null) {
                        str36 = str2;
                    }
                    JSONObject jSONObjectPut12 = jSONObjectPut11.put("brand", str36);
                    String str37 = Build.DISPLAY;
                    if (str37 == null) {
                        str37 = str2;
                    }
                    JSONObject jSONObjectPut13 = jSONObjectPut12.put("build", str37).put("ekey", jSONObjectPut9.toString());
                    String strA4 = com.transsion.athena.taaneh.anehat.a(AthenaAnalytics.J());
                    if (strA4 == null) {
                        strA4 = str2;
                    }
                    JSONObject jSONObjectPut14 = jSONObjectPut13.put(UrlKt.KEY_MINI_GAID, strA4);
                    String language = Locale.getDefault().getLanguage();
                    if (language == null) {
                        language = str2;
                    }
                    JSONObject jSONObjectPut15 = jSONObjectPut14.put("lang", language);
                    String strF = com.transsion.athena.taaneh.athena.f(AthenaAnalytics.J());
                    if (strF == null) {
                        strF = str2;
                    }
                    JSONObject jSONObjectPut16 = jSONObjectPut15.put("mcc", strF);
                    String strG2 = com.transsion.athena.taaneh.athena.g(AthenaAnalytics.J());
                    if (strG2 == null) {
                        strG2 = str2;
                    }
                    JSONObject jSONObjectPut17 = jSONObjectPut16.put("mnc", strG2);
                    String str38 = Build.MODEL;
                    if (str38 == null) {
                        str38 = str2;
                    }
                    JSONObject jSONObjectPut18 = jSONObjectPut17.put("model", str38).put("net", com.transsion.athena.taaneh.aatnhe.b(AthenaAnalytics.J()));
                    String strA5 = com.transsion.athena.taaneh.hatnea.a();
                    if (strA5 == null) {
                        strA5 = str2;
                    }
                    JSONObject jSONObjectPut19 = jSONObjectPut18.put("osver", strA5);
                    String strB3 = com.transsion.athena.config.data.model.ehanat.b();
                    if (strB3 == null) {
                        strB3 = str2;
                    }
                    JSONObject jSONObjectPut20 = jSONObjectPut19.put("tuid", strB3);
                    i12 = i22;
                    try {
                        JSONObject jSONObjectPut21 = jSONObjectPut20.put("try", i12);
                        String strB4 = com.transsion.athena.taaneh.athena.b();
                        if (strB4 == null) {
                            strB4 = str2;
                        }
                        JSONObject jSONObjectPut22 = jSONObjectPut21.put("tz", strB4).put("uts", System.currentTimeMillis());
                        if (AthenaAnalytics.T()) {
                            if (strA2 == null) {
                                strA2 = str2;
                            }
                            jSONObjectPut22.put("iid", strA2);
                        }
                        athenaVarA = athena.a(jSONObjectPut22.toString().getBytes(StandardCharsets.UTF_8), i23, linkedList4, i12);
                        i13 = 0;
                    } catch (Exception e25) {
                        e = e25;
                        i13 = 0;
                        com.transsion.athena.taaneh.aethna.b("Assemble events packet exception : %s", e.getMessage());
                        athenaVarA = null;
                    }
                } catch (Exception e26) {
                    e = e26;
                    str2 = "";
                }
            } catch (Exception e27) {
                e = e27;
                str2 = "";
                str3 = str12;
            }
            String str39 = this.f42785d;
            byte[] bArr3 = athenaVarA.f42789a;
            int i26 = athenaVarA.f42790b;
            List<Integer> list4 = athenaVarA.f42791c;
            contextJ = AthenaAnalytics.J();
            if (TextUtils.isEmpty(com.transsion.athena.taaneh.athena.a(AthenaAnalytics.J(), i13))) {
                strA = com.transsion.athena.taaneh.anehat.a();
            } else {
                strA = com.transsion.athena.taaneh.athena.a(AthenaAnalytics.J(), i13);
            }
            if (TextUtils.isEmpty(strA)) {
                strA = com.transsion.athena.taaneh.athena.b(contextJ);
            }
            Locale locale3 = Locale.getDefault();
            Integer numValueOf3 = Integer.valueOf(com.transsion.athena.data.athena.b());
            Object[] objArr3 = new Object[2];
            objArr3[i13] = strA;
            objArr3[1] = numValueOf3;
            ehatnaVarA = ehatna.a(str39, bArr3, i26, list4, str, String.format(locale3, "%s_%d", objArr3));
            try {
                JSONObject jSONObject14 = new JSONObject();
                jSONObject14.put("host", this.f42785d);
                str4 = str30;
                try {
                    jSONObject14.put(str4, ehatnaVarA.hashCode());
                    jSONObject14.put("packetId", str);
                    jSONArray = new JSONArray();
                    it = list.iterator();
                    while (it.hasNext()) {
                        while (r8.hasNext()) {
                            JSONObject jSONObject15 = new JSONObject();
                            jSONObject15.put("tid", anehatVar.f42687a);
                            jSONObject15.put(NotificationCompat.CATEGORY_EVENT, anehatVar.f42688b);
                            jSONObject15.put("count", anehatVar.f42692f);
                            jSONArray.put(jSONObject15);
                        }
                    }
                    jSONObject14.put("events", jSONArray);
                    if (i12 > 0) {
                        str6 = String.format(Locale.getDefault(), "--> retry [%d] times upload", Integer.valueOf(i12));
                    } else {
                        str6 = "--> upload";
                    }
                    try {
                        com.transsion.athena.taaneh.aethna.c("%s:%s", str6, jSONObject14.toString());
                    } catch (Exception e28) {
                        e = e28;
                        com.transsion.athena.taaneh.aethna.b("exception when print upload events : ", e.getMessage());
                    }
                } catch (Exception e29) {
                    e = e29;
                }
            } catch (Exception e30) {
                e = e30;
                str4 = str30;
            }
            ehanatVarA = anehat.a(ehatnaVarA.f42778a, ehatnaVarA.f42779b, ehatnaVarA.f42780c, ehatnaVarA.f42781d, ehatnaVarA.f42782e, ehatnaVarA.f42783f);
            if (ehanatVarA.f42776a == 0) {
                a(ehanatVarA.f42777b, list, j14, ehatnaVarA.hashCode());
                if (this.f42761a.hasMessages(298)) {
                    this.f42761a.sendEmptyMessageDelayed(298, 0L);
                    return;
                }
                return;
            }
            aatnheVar = ehanatVarA.f42777b;
            JSONObject jSONObject16 = new JSONObject();
            jSONObject16.put(str4, ehatnaVarA.hashCode());
            i14 = aatnheVar.f42753a;
            if (i14 == 0) {
                i14 = -1;
            }
            jSONObject16.put("code", i14);
            if (TextUtils.isEmpty(aatnheVar.f42754b)) {
                str5 = str2;
            } else {
                str5 = aatnheVar.f42754b;
            }
            jSONObject16.put("message", str5);
            jSONObject16.put("ex", aatnheVar.f42756d);
            com.transsion.athena.taaneh.aethna.c("<-- upload failed:%s", jSONObject16.toString());
            i18 = i12 + 1;
            com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(list, i18);
            if (!com.transsion.athena.config.data.model.anehat.c(AthenaAnalytics.J())) {
                return;
            }
            Thread.sleep(j13);
            jMin = Math.min((j13 * 2) + 1000, 1800000L);
            str10 = str4;
            jA = com.transsion.athena.ehatna.aethna.b().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
            str12 = str3;
            str11 = str31;
            i16 = 0;
            i17 = 1;
        }
        Object[] objArr4 = new Object[i17];
        objArr4[i16] = "network unavailable";
        com.transsion.athena.taaneh.aethna.a("tryUploadEvents interrupted : %s", objArr4);
    }

    private void a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        if (jSONObject != null) {
            if (jSONObject3 != null) {
                try {
                    if (jSONObject3.length() > 0) {
                        JSONObject jSONObject4 = new JSONObject();
                        if (jSONObject2.has("_ext")) {
                            jSONObject4 = jSONObject2.getJSONObject("_ext");
                        }
                        Iterator<String> itKeys = jSONObject3.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            String str = "_" + next;
                            Object obj = jSONObject3.get(next);
                            if (!jSONObject4.has(str)) {
                                jSONObject4.putOpt(str, obj);
                            }
                        }
                        int length = jSONObject4.toString().getBytes(StandardCharsets.UTF_8).length;
                        if (length > 2000) {
                            String str2 = String.format(Locale.getDefault(), "custom param is too long,limit is 2000 bytes(now is %d bytes)", Integer.valueOf(length));
                            com.transsion.athena.taaneh.aethna.b(str2);
                            JSONObject jSONObject5 = new JSONObject();
                            jSONObject5.put("errorMsg", str2);
                            jSONObject2.put("_ext", jSONObject5);
                        } else {
                            jSONObject2.put("_ext", jSONObject4);
                        }
                    }
                } catch (Exception e11) {
                    com.transsion.athena.taaneh.aethna.b("Insert common params exception : %s", e11.getMessage());
                    return;
                }
            }
            jSONObject.put("eparam", jSONObject2.toString());
        }
    }

    @Override // com.transsion.athena.hatnea.anateh
    public void a() throws Throwable {
        long jA = com.transsion.athena.ehatna.aethna.b().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
        int i11 = 0;
        AppIdData appIdData = null;
        for (AppIdData appIdData2 : this.f42786e) {
            if (!TextUtils.isEmpty(appIdData2.f42644c) && TextUtils.equals(appIdData2.f42647f, this.f42785d)) {
                if (appIdData != null) {
                    if (!TextUtils.equals(appIdData.f42644c, appIdData2.f42644c)) {
                        i11++;
                        break;
                    }
                } else {
                    i11++;
                    appIdData = appIdData2;
                }
            }
        }
        if (i11 != 1) {
            if (i11 > 1) {
                ArrayList arrayList = new ArrayList();
                for (AppIdData appIdData3 : this.f42786e) {
                    if (!TextUtils.isEmpty(appIdData3.f42644c) && TextUtils.equals(appIdData3.f42647f, this.f42785d)) {
                        arrayList.add(appIdData3);
                    }
                }
                com.transsion.athena.data.anateh.aethna.a(AthenaAnalytics.J()).a(arrayList);
            }
            appIdData = null;
        }
        long jE = ((long) com.transsion.athena.aethna.athena.c().e()) * 1000;
        if (appIdData != null) {
            Pair<String, List<AppIdData>> pairA = a(0L, appIdData.f42644c);
            List<AppIdData> list = (List) pairA.second;
            if (com.transsion.athena.config.data.model.anehat.b(list)) {
                a(list, (String) pairA.first, jA, jE, appIdData.f42645d);
                return;
            }
            return;
        }
        Pair<String, List<AppIdData>> pairA2 = a(jA, null);
        String str = (String) pairA2.first;
        List<AppIdData> list2 = (List) pairA2.second;
        if (com.transsion.athena.config.data.model.anehat.b(list2)) {
            a(list2, str, jA, jE, 0);
        }
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected String c() {
        if (TextUtils.isEmpty(this.f42785d)) {
            return "Default";
        }
        try {
            String[] strArrSplit = this.f42785d.split("//");
            if (strArrSplit.length > 0) {
                return strArrSplit[1].split("\\.")[0];
            }
        } catch (Exception e11) {
            com.transsion.athena.taaneh.aethna.b("get domain exception : %s", e11.getMessage());
        }
        return "Default";
    }
}
