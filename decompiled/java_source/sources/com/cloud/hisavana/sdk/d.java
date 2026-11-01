package com.cloud.hisavana.sdk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.util.g;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.json.JSONException;

/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f22322a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Uri f22323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final C0306d f22324c;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", CommonLogUtil.TAG_AD, "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 9, 0})
    static final class a extends Lambda implements Function1<AdsDTO, CharSequence> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f22325a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(AdsDTO ad2) {
            Intrinsics.h(ad2, "ad");
            int iC = g.c(ad2, true);
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String string = com.cloud.sdk.commonutil.util.e.a().getString(com.cloud.sdk.commonutil.R$string.ssp_log_msg2);
            Intrinsics.g(string, "getString(...)");
            String str = String.format(string, Arrays.copyOf(new Object[]{ad2.getAdCreativeId().toString(), Boolean.valueOf(ad2.isOfflineAd()), Integer.valueOf(ad2.getAdRequestVer()), Integer.valueOf(iC), Integer.valueOf(ad2.getMaxShowCount()), ad2.getShowNum(), String.valueOf(ad2.getFirstPrice())}, 7));
            Intrinsics.g(str, "format(...)");
            return str;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "it", "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    static final class b extends Lambda implements Function1<AdsDTO, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f22326a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(AdsDTO it) {
            Intrinsics.h(it, "it");
            return Boolean.valueOf(g.b(it));
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/d$c", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class c extends TypeToken<List<? extends AdsDTO>> {
        c() {
        }
    }

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.d$d, reason: collision with other inner class name */
    @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010'\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u0004J%\u0010\b\u001a\u00020\u00072\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"com/cloud/hisavana/sdk/d$d", "Ljava/util/LinkedHashMap;", "", "", "Lkotlin/collections/LinkedHashMap;", "", "eldest", "", "removeEldestEntry", "(Ljava/util/Map$Entry;)Z", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class C0306d extends LinkedHashMap<String, Integer> {
        C0306d() {
            super(30, 0.9f, true);
        }

        public /* bridge */ Set<Map.Entry<String, Integer>> a() {
            return super.entrySet();
        }

        public /* bridge */ boolean a(Integer num) {
            return super.containsValue(num);
        }

        public /* bridge */ boolean a(String str) {
            return super.containsKey(str);
        }

        public /* bridge */ boolean a(String str, Integer num) {
            return super.remove(str, num);
        }

        public /* bridge */ Set<String> b() {
            return super.keySet();
        }

        public /* bridge */ int c() {
            return super.size();
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (obj instanceof String) {
                return a((String) obj);
            }
            return false;
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (obj instanceof Integer) {
                return a((Integer) obj);
            }
            return false;
        }

        public /* bridge */ Collection<Integer> d() {
            return super.values();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<Map.Entry<String, Integer>> entrySet() {
            return a();
        }

        public /* bridge */ Integer get(String str) {
            return (Integer) super.get((Object) str);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            if (obj instanceof String) {
                return get((String) obj);
            }
            return null;
        }

        public /* bridge */ Integer getOrDefault(String str, Integer num) {
            return (Integer) super.getOrDefault((Object) str, num);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
            return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, (Integer) obj2);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Set<String> keySet() {
            return b();
        }

        public /* bridge */ Integer remove(String str) {
            return (Integer) super.remove((Object) str);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object remove(Object obj) {
            if (obj instanceof String) {
                return remove((String) obj);
            }
            return null;
        }

        @Override // java.util.HashMap, java.util.Map
        public final /* bridge */ boolean remove(Object obj, Object obj2) {
            if ((obj instanceof String) && (obj2 instanceof Integer)) {
                return a((String) obj, (Integer) obj2);
            }
            return false;
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, Integer> eldest) {
            return size() >= 26;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ int size() {
            return c();
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Collection<Integer> values() {
            return d();
        }
    }

    static {
        Uri uri = Uri.parse("content://" + com.cloud.sdk.commonutil.util.e.d() + ".HisavanaContentProvider/ad_data");
        Intrinsics.g(uri, "parse(this)");
        f22323b = uri;
        f22324c = new C0306d();
    }

    private d() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(AdsDTO adsDTO) {
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(f22323b, "DELETE FROM adList_room WHERE codeSeatId = ? AND ad_request_ver < ? AND is_offline_ad = ? ", new String[]{adsDTO.getCodeSeatId(), String.valueOf(adsDTO.getAdRequestVer()), "1"});
        } catch (Exception e11) {
            e4.b().e("AdDbHelper", "delete ad error: " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(List filteredAds) {
        Intrinsics.h(filteredAds, "$filteredAds");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = filteredAds.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (!adsDTO.isOfflineAd()) {
                linkedHashSet.add(adsDTO);
            } else if (g.e(adsDTO, true)) {
                f22322a.z(adsDTO);
            }
        }
        try {
            AdsDTO adsDTO2 = (AdsDTO) CollectionsKt.i0(filteredAds);
            if (adsDTO2.getSource() != 1 || linkedHashSet.isEmpty()) {
                return;
            }
            d dVar = f22322a;
            String codeSeatId = adsDTO2.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            dVar.n(codeSeatId);
            dVar.y(filteredAds);
        } catch (Exception e11) {
            e4.b().e("AdDbHelper", "save to storage error: " + e11.getMessage());
        }
    }

    private final void E(AdsDTO adsDTO) {
        try {
            String adCreativeId = adsDTO.getAdCreativeId();
            if (TextUtils.isEmpty(adCreativeId)) {
                return;
            }
            C0306d c0306d = f22324c;
            if (c0306d.containsKey(adCreativeId)) {
                int iIntValue = ((Number) com.cloud.hisavana.sdk.common.util.b0.a(c0306d.get((Object) adCreativeId), 0)).intValue() + 1;
                Integer numValueOf = Integer.valueOf(iIntValue);
                Intrinsics.e(adCreativeId);
                c0306d.put(adCreativeId, numValueOf);
                adsDTO.setShowNum(Integer.valueOf(iIntValue));
            } else {
                Intrinsics.e(adCreativeId);
                Integer showNum = adsDTO.getShowNum();
                Intrinsics.g(showNum, "getShowNum(...)");
                c0306d.put(adCreativeId, showNum);
            }
        } catch (Exception unused) {
        }
    }

    private final void F(List list) {
        e4.b().d("AdDbHelper", "getAdListByCodeSeatId updateList " + list);
        if (list.isEmpty()) {
            return;
        }
        try {
            String strD = GsonUtil.d(list);
            ContentValues contentValues = new ContentValues();
            contentValues.put("AdsData", strD);
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().update(f22323b, contentValues, null, null);
        } catch (Exception e11) {
            e4.b().e("AdDbHelper", "updateAdsShowTimes error: " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(AdsDTO adsDTO) {
        f22322a.E(adsDTO);
        List listQ = CollectionsKt.q(adsDTO);
        ContentValues contentValues = new ContentValues();
        contentValues.put("AdsData", GsonUtil.d(listQ));
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().update(f22323b, contentValues, null, null);
        } catch (Exception e11) {
            e4.b().e("AdDbHelper", "updateShowTimes " + e11.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r9v5 */
    private final List j(StringBuilder sb2, List list) {
        ?? r11;
        ?? arrayList = new ArrayList();
        try {
            ContentResolver contentResolver = com.cloud.sdk.commonutil.util.e.a().getContentResolver();
            Uri uri = f22323b;
            String string = sb2.toString();
            Cursor cursorQuery = contentResolver.query(uri, null, string, (String[]) list.toArray(new String[0]), null);
            r11 = arrayList;
            if (cursorQuery != null) {
                try {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    while (cursorQuery.moveToNext()) {
                        int columnIndex = cursorQuery.getColumnIndex("ad_bean");
                        int columnIndex2 = cursorQuery.getColumnIndex("_id");
                        if (columnIndex >= 0 && columnIndex2 >= 0) {
                            String string2 = cursorQuery.getString(columnIndex);
                            Intrinsics.e(string2);
                            if (string2.length() > 0) {
                                arrayList3.add(string2);
                                arrayList2.add(Integer.valueOf(cursorQuery.getInt(columnIndex2)));
                            }
                        }
                    }
                    if (arrayList3.isEmpty()) {
                        CloseableKt.a(cursorQuery, null);
                        return arrayList;
                    }
                    String string3 = Arrays.toString(arrayList3.toArray(new String[0]));
                    Intrinsics.g(string3, "toString(...)");
                    Object objB = GsonUtil.b(string3, new c().getType());
                    Intrinsics.g(objB, "fromJson(...)");
                    try {
                        int iMin = Math.min(((List) objB).size(), arrayList2.size());
                        for (int i11 = 0; i11 < iMin; i11++) {
                            AdsDTO adsDTO = (AdsDTO) ((List) objB).get(i11);
                            if (adsDTO != null) {
                                adsDTO.setTableId(((Number) arrayList2.get(i11)).intValue());
                                adsDTO.setSource(adsDTO.isOfflineAd() ? 3 : 2);
                            }
                        }
                        Unit unit = Unit.f67061a;
                        try {
                            CloseableKt.a(cursorQuery, null);
                            r11 = objB;
                        } catch (Exception e11) {
                            e = e11;
                            arrayList = objB;
                            e4.b().e("AdDbHelper", "query by code seat id error: " + e.getMessage());
                            ((List) arrayList).clear();
                            r11 = arrayList;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        arrayList = objB;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    arrayList = arrayList;
                }
                try {
                    throw th;
                } catch (Throwable th4) {
                    CloseableKt.a(cursorQuery, th);
                    throw th4;
                }
            }
        } catch (Exception e12) {
            e = e12;
        }
        return (List) r11;
    }

    private final Pair k(String str, boolean z10, int i11, List list, Map map, ConcurrentHashMap concurrentHashMap) {
        androidx.collection.b bVar = new androidx.collection.b();
        int i12 = 0;
        List<AdsDTO> listI = i(str, z10, list, false);
        if (listI.isEmpty()) {
            bVar.add(100);
            l(bVar, concurrentHashMap);
            return new Pair(new ArrayList(), new ArrayList());
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (AdsDTO adsDTO : CollectionsKt.f0(listI)) {
            boolean zT = t(adsDTO, arrayList2, map, bVar);
            if (i12 < i11 && !zT) {
                if (u(adsDTO, z10)) {
                    arrayList3.add(adsDTO);
                }
                int iC = g.c(adsDTO, z10);
                if (iC == 0) {
                    arrayList.add(adsDTO);
                    i12++;
                } else {
                    String adCreativeId = adsDTO.getAdCreativeId();
                    Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
                    map.put(adCreativeId, Integer.valueOf(iC));
                    bVar.add(Integer.valueOf(iC));
                }
            } else if (i12 >= i11) {
                bVar.add(109);
            }
        }
        F(arrayList3);
        l(bVar, concurrentHashMap);
        if (a7.c.p()) {
            e4 e4VarB = e4.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("get cached ads in db, codeSeatId: ");
            sb2.append(str);
            sb2.append(", all list is: ");
            ArrayList arrayList4 = new ArrayList(CollectionsKt.v(listI, 10));
            for (AdsDTO adsDTO2 : listI) {
                arrayList4.add(adsDTO2 != null ? adsDTO2.getAdCreativeId() : null);
            }
            sb2.append(arrayList4);
            sb2.append(", \n filtered: ");
            sb2.append(map);
            sb2.append(", \n result: ");
            ArrayList arrayList5 = new ArrayList(CollectionsKt.v(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList5.add(((AdsDTO) it.next()).getAdCreativeId());
            }
            sb2.append(arrayList5);
            e4VarB.d("AdDbHelper", sb2.toString());
        }
        return new Pair(arrayList, arrayList2);
    }

    private final void l(androidx.collection.b bVar, ConcurrentHashMap concurrentHashMap) {
        try {
            if (bVar.isEmpty()) {
                return;
            }
            String strD = GsonUtil.d(bVar);
            if (concurrentHashMap != null) {
                com.cloud.hisavana.sdk.common.util.g0.h(concurrentHashMap, "s_offline_return_filter", strD);
            }
        } catch (Throwable unused) {
        }
    }

    private final void n(final String str) {
        e4.b().d("AdDbHelper", "deleteOnLineAdByConfigId codeSeatId = " + str);
        if (str.length() == 0) {
            return;
        }
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.i3
            @Override // java.lang.Runnable
            public final void run() {
                d.w(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(String str, c0.c cVar, boolean z10, int i11, List list, ConcurrentHashMap concurrentHashMap) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        try {
            ConfigCodeSeatDTO configCodeSeatDTOC = P.g().c(str);
            if (configCodeSeatDTOC != null) {
                d dVar = f22322a;
                Pair pairK = dVar.k(str, z10, i11, list, linkedHashMap, concurrentHashMap);
                arrayList.addAll((Collection) pairK.getFirst());
                dVar.s((List) pairK.getSecond());
                P.g().i(configCodeSeatDTOC);
            }
            if (e4.c()) {
                e4.b().d("AdDbHelper", "getAdByCodeSeatId " + arrayList);
            }
            if (cVar != null) {
                cVar.a(arrayList, linkedHashMap.isEmpty() ? "" : linkedHashMap.toString());
            }
        } catch (Exception e11) {
            e4.b().e("AdDbHelper", Log.getStackTraceString(e11));
            if (cVar != null) {
                cVar.a(arrayList, linkedHashMap.isEmpty() ? "" : linkedHashMap.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(String str, List tempList) {
        Intrinsics.h(tempList, "$tempList");
        ContentValues contentValues = new ContentValues();
        contentValues.put("AdsData", GsonUtil.d(tempList));
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().insert(f22323b, contentValues);
            ConfigCodeSeatDTO configCodeSeatDTOC = P.g().c(str);
            if (configCodeSeatDTOC != null) {
                P.g().i(configCodeSeatDTOC);
            }
        } catch (Throwable th2) {
            e4.b().e("AdDbHelper", "insert Throwable exception occurred: " + th2.getMessage());
        }
    }

    private final void s(List list) {
        if (e4.c()) {
            e4.b().d("AdDbHelper", "deleteExpireAds " + list);
        }
        if (list.isEmpty()) {
            return;
        }
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(f22323b, null, (String[]) list.toArray(new String[0]));
        } catch (Throwable th2) {
            e4.b().e("AdDbHelper", "deleteExpireAds Throwable exception occurred: " + th2.getMessage());
        }
    }

    private final boolean t(AdsDTO adsDTO, List list, Map map, androidx.collection.b bVar) {
        int i11;
        if (g.b(adsDTO)) {
            if (bVar != null) {
                bVar.add(1101);
            }
            list.add(String.valueOf(adsDTO.getTableId()));
            String adCreativeId = adsDTO.getAdCreativeId();
            Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
            map.put(adCreativeId, 1101);
            return true;
        }
        Integer pullNewestLive = adsDTO.getPullNewestLive();
        Intrinsics.g(pullNewestLive, "getPullNewestLive(...)");
        int iA = com.cloud.hisavana.sdk.common.util.d0.a(pullNewestLive.intValue(), adsDTO.getPsPackageName(), adsDTO.getPackageName());
        if (iA != 1 && iA != 2) {
            return false;
        }
        list.add(String.valueOf(adsDTO.getTableId()));
        String adCreativeId2 = adsDTO.getAdCreativeId();
        Intrinsics.g(adCreativeId2, "getAdCreativeId(...)");
        if (iA == 1) {
            i11 = 1105;
            if (bVar != null) {
                bVar.add(1105);
            }
        } else {
            i11 = 1106;
            if (bVar != null) {
                bVar.add(1106);
            }
        }
        map.put(adCreativeId2, Integer.valueOf(i11));
        return true;
    }

    private final boolean u(AdsDTO adsDTO, boolean z10) {
        PslinkInfo pslinkInfo;
        adsDTO.setSource(adsDTO.isOfflineAd() ? 3 : 2);
        adsDTO.setUuid(com.cloud.hisavana.sdk.common.util.b.f22148a.e(adsDTO, z10 ? 1 : 0));
        String appInfo = adsDTO.getAppInfo();
        if (appInfo != null && !StringsKt.q0(appInfo) && (pslinkInfo = adsDTO.getPslinkInfo()) != null) {
            pslinkInfo.setShowId(adsDTO.getUuid());
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - adsDTO.getShowDate() < 86400000) {
            return false;
        }
        adsDTO.setShowDate(com.cloud.hisavana.sdk.common.util.l0.c(jCurrentTimeMillis));
        adsDTO.setShowNum(0);
        String strE = v2.f23027a.e(adsDTO);
        C0306d c0306d = f22324c;
        if (!c0306d.containsKey(strE)) {
            return true;
        }
        c0306d.put(strE, 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(AdsDTO adsDTO) {
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(f22323b, "DELETE FROM adList_room WHERE codeSeatId = ? AND ad_creative_id = ?AND is_offline_ad = ?", new String[]{adsDTO.getCodeSeatId(), adsDTO.getAdCreativeId(), "0"});
        } catch (Exception e11) {
            e4.b().e("AdDbHelper", "delete ad error: " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(String codeSeatId) {
        Intrinsics.h(codeSeatId, "$codeSeatId");
        try {
            com.cloud.sdk.commonutil.util.e.a().getContentResolver().delete(f22323b, "DELETE FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = ? ", new String[]{codeSeatId, "0"});
        } catch (Exception e11) {
            e4.b().e("AdDbHelper", "delete online ad err : " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(String str, boolean z10) {
        try {
            List listI = f22322a.i(str, z10, null, false);
            if (listI.isEmpty()) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (AdsDTO adsDTO : CollectionsKt.f0(listI)) {
                if (jCurrentTimeMillis - adsDTO.getShowDate() >= 86400000) {
                    adsDTO.setShowDate(com.cloud.hisavana.sdk.common.util.l0.c(jCurrentTimeMillis));
                    adsDTO.setShowNum(0);
                }
            }
            String strS0 = CollectionsKt.s0(CollectionsKt.f0(listI), "\n", null, null, 0, null, a.f22325a, 30, null);
            e4.b().d("AdDbHelper", "offline ad status is:\n" + strS0);
            if (a7.c.p()) {
                com.cloud.sdk.commonutil.util.q.b(strS0, 4);
            }
        } catch (Exception e11) {
            e4.b().e("AdDbHelper", "check for log error: " + e11.getMessage());
        }
    }

    public final void A(List list) {
        if (list == null || list.isEmpty()) {
            e4.b().e("AdDbHelper", "insertLoadedAd adsDTOList is null or size is 0");
            return;
        }
        final List listU0 = CollectionsKt.U0(CollectionsKt.f0(list));
        if (listU0.isEmpty()) {
            return;
        }
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.e3
            @Override // java.lang.Runnable
            public final void run() {
                d.D(listU0);
            }
        });
    }

    public final boolean B(String path) {
        Intrinsics.h(path, "path");
        if (TextUtils.isEmpty(path)) {
            return false;
        }
        try {
            Cursor cursorQuery = com.cloud.sdk.commonutil.util.e.a().getContentResolver().query(f22323b, null, "SELECT * FROM adList_room WHERE file_path = ?", new String[]{path}, null);
            if (cursorQuery != null) {
                try {
                    boolean z10 = cursorQuery.getCount() > 0;
                    CloseableKt.a(cursorQuery, null);
                    return z10;
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(cursorQuery, th2);
                        throw th3;
                    }
                }
            }
        } catch (Exception e11) {
            e4.b().e("AdDbHelper", "Is file useful err: " + e11.getMessage());
        }
        return false;
    }

    public final int G(AdsDTO adsDTO) {
        try {
            Integer num = (Integer) f22324c.get((Object) v2.f23027a.e(adsDTO));
            if (num == null) {
                num = 0;
            }
            return num.intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public final void H(final AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getSource() == 1) {
            return;
        }
        e4.b().d("AdDbHelper", "updateShowTimes getTableId " + adsDTO.getTableId() + " showNum " + adsDTO.getShowNum());
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.b3
            @Override // java.lang.Runnable
            public final void run() {
                d.I(adsDTO);
            }
        });
    }

    public final List i(String str, boolean z10, List list, boolean z11) {
        List<String> listL;
        if (str == null || StringsKt.q0(str)) {
            e4.b().d("AdDbHelper", "getAdByCodeSeatId code seat id is null");
            return new ArrayList();
        }
        List listQ = CollectionsKt.q(str);
        StringBuilder sb2 = new StringBuilder("SELECT * FROM adList_room WHERE codeSeatId = ? ");
        if (list == null || (listL = CollectionsKt.f0(list)) == null) {
            listL = CollectionsKt.l();
        }
        if (z10) {
            sb2.append("AND is_offline_ad = ? ");
            listQ.add("1");
        } else if (!listL.isEmpty()) {
            sb2.append("AND ad_creative_id NOT IN (");
            for (String str2 : listL) {
                sb2.append("?,");
            }
            sb2.deleteCharAt(sb2.length() - 1);
            sb2.append(")");
            listQ.addAll(listL);
        } else if (z11) {
            sb2.append(" AND ad_request_ver = (SELECT MAX (ad_request_ver) FROM adList_room WHERE codeSeatId = ?)");
            listQ.add(str);
        }
        sb2.append(" ORDER BY ");
        sb2.append(BidResponsed.KEY_PRICE);
        sb2.append(" DESC");
        List listJ = j(sb2, listQ);
        if (e4.c()) {
            e4.b().d("AdDbHelper", "getAdListByCodeSeatId = " + ((Object) sb2) + ", " + str + " , result size: " + listJ.size());
        }
        return listJ;
    }

    public final void m(final AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.c3
            @Override // java.lang.Runnable
            public final void run() {
                d.v(adsDTO);
            }
        });
    }

    public final void o(final String str, final int i11, final boolean z10, final List list, final ConcurrentHashMap concurrentHashMap, final c0.c cVar) {
        if (str == null || str.length() == 0 || i11 <= 0) {
            if (cVar != null) {
                cVar.a(CollectionsKt.l(), "");
                return;
            }
            return;
        }
        if (e4.c()) {
            e4.b().d("AdDbHelper", "loadAdByCodeSeatId " + str + " adCount " + i11);
        }
        HSScopeHelper.f23167a.e(new Runnable() { // from class: com.cloud.hisavana.sdk.d3
            @Override // java.lang.Runnable
            public final void run() {
                d.p(str, cVar, z10, i11, list, concurrentHashMap);
            }
        });
    }

    public final void r(final String str, final boolean z10) {
        e4.b().d("AdDbHelper", "getAdByCodeSeatId " + str);
        if (str == null || StringsKt.q0(str)) {
            return;
        }
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.f3
            @Override // java.lang.Runnable
            public final void run() {
                d.x(str, z10);
            }
        });
    }

    public final void y(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (e4.c()) {
            e4.b().d("AdDbHelper", "insertAdsList size " + list.size());
        }
        final String codeSeatId = ((AdsDTO) list.get(0)).getCodeSeatId();
        final ArrayList arrayList = new ArrayList(list);
        try {
            CollectionsKt.I(arrayList, b.f22326a);
            if (arrayList.isEmpty()) {
                return;
            }
            HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.g3
                @Override // java.lang.Runnable
                public final void run() {
                    d.q(codeSeatId, arrayList);
                }
            });
        } catch (SQLException e11) {
            e4.b().e("AdDbHelper", "insert SQL exception occurred: " + e11.getMessage());
        } catch (JSONException e12) {
            e4.b().e("AdDbHelper", "insert JSON exception occurred: " + e12.getMessage());
        } catch (Exception e13) {
            e4.b().e("AdDbHelper", "insert Unexpected exception occurred: " + e13.getMessage());
        }
    }

    public final void z(final AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getAdRequestVer() <= 0) {
            return;
        }
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.h3
            @Override // java.lang.Runnable
            public final void run() {
                d.C(adsDTO);
            }
        });
    }
}
