package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.data.bean.inapp.CachedAdInfos;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.PsAppInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e0 f22413a = new e0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ConcurrentHashMap f22414b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f22415c = new AtomicBoolean(false);

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Ljava/lang/String;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    static final class a extends Lambda implements Function1<String, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List<String> f22416a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(List<String> list) {
            super(1);
            this.f22416a = list;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(String it) {
            Intrinsics.h(it, "it");
            return Boolean.valueOf(!this.f22416a.contains(it));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    static final class b extends Lambda implements Function1<DefaultAdDTO, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f22417a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str) {
            super(1);
            this.f22417a = str;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(DefaultAdDTO defaultAdDTO) {
            return Boolean.valueOf(Intrinsics.c(defaultAdDTO.getAdCreativeId(), this.f22417a));
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    static final class c extends Lambda implements Function1<DefaultAdDTO, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f22418a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(int i11) {
            super(1);
            this.f22418a = i11;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(DefaultAdDTO defaultAdDTO) {
            return Boolean.valueOf(defaultAdDTO.getAdRequestVersion() >= this.f22418a);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0})
    static final class d extends Lambda implements Function1<DefaultAdDTO, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f22419a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f22420b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, int i11) {
            super(1);
            this.f22419a = str;
            this.f22420b = i11;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(DefaultAdDTO defaultAdDTO) {
            return Boolean.valueOf(Intrinsics.c(defaultAdDTO.getCodeSeatId(), this.f22419a) && defaultAdDTO.getAdRequestVersion() < this.f22420b);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class e<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t11, T t12) {
            return ComparisonsKt.d(((DefaultAdDTO) ((Pair) t12).getFirst()).getFirstPrice(), ((DefaultAdDTO) ((Pair) t11).getFirst()).getFirstPrice());
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$thenByDescending$1"}, k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class f<T> implements Comparator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Comparator f22421a;

        public f(Comparator comparator) {
            this.f22421a = comparator;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t11, T t12) {
            int iCompare = this.f22421a.compare(t11, t12);
            return iCompare != 0 ? iCompare : ComparisonsKt.d((Comparable) ((Pair) t12).getSecond(), (Comparable) ((Pair) t11).getSecond());
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;", "kotlin.jvm.PlatformType", "it", "", "a", "(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 9, 0})
    static final class g extends Lambda implements Function1<DefaultAdDTO, CharSequence> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f22422a = new g();

        g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(DefaultAdDTO defaultAdDTO) {
            String codeSeatId = defaultAdDTO.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            return codeSeatId;
        }
    }

    private e0() {
    }

    private final void c(int i11) {
        Iterator it = f22414b.entrySet().iterator();
        while (it.hasNext()) {
            CollectionsKt.P((List) ((Map.Entry) it.next()).getValue(), new c(i11));
        }
        x2.f23083a.c(i11);
    }

    private final void d(DefaultAdDTO defaultAdDTO) {
        Object objPutIfAbsent;
        ConcurrentHashMap concurrentHashMap = f22414b;
        String codeSeatId = defaultAdDTO.getCodeSeatId();
        Object copyOnWriteArrayList = concurrentHashMap.get(codeSeatId);
        if (copyOnWriteArrayList == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(codeSeatId, (copyOnWriteArrayList = new CopyOnWriteArrayList()))) != null) {
            copyOnWriteArrayList = objPutIfAbsent;
        }
        CopyOnWriteArrayList copyOnWriteArrayList2 = (CopyOnWriteArrayList) copyOnWriteArrayList;
        Intrinsics.e(copyOnWriteArrayList2);
        ArrayList arrayList = new ArrayList();
        for (Object obj : copyOnWriteArrayList2) {
            DefaultAdDTO defaultAdDTO2 = (DefaultAdDTO) obj;
            if (Intrinsics.c(defaultAdDTO2.getCodeSeatId(), defaultAdDTO.getCodeSeatId()) && Intrinsics.c(defaultAdDTO2.getAdCreativeId(), defaultAdDTO.getAdCreativeId())) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            copyOnWriteArrayList2.add(defaultAdDTO);
            return;
        }
        copyOnWriteArrayList2.removeAll(CollectionsKt.W0(arrayList));
        DefaultAdDTO defaultAdDTO3 = (DefaultAdDTO) CollectionsKt.i0(arrayList);
        defaultAdDTO.setDisplayedDate(defaultAdDTO3.getDisplayedDate());
        defaultAdDTO.setDisplayedTimes(defaultAdDTO3.getDisplayedTimes());
        copyOnWriteArrayList2.add(defaultAdDTO);
    }

    private final void f(String str, String str2) {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f22414b.get(str2);
        if (copyOnWriteArrayList != null) {
            CollectionsKt.I(copyOnWriteArrayList, new b(str));
        }
        x2.f23083a.f(str, str2);
    }

    private final void j(ConcurrentHashMap concurrentHashMap, androidx.collection.b bVar) {
        if (concurrentHashMap != null) {
            try {
                com.cloud.hisavana.sdk.common.util.g0.h(concurrentHashMap, "s_default_return_filter", GsonUtil.d(bVar));
            } catch (Throwable unused) {
            }
        }
    }

    public final CachedAdInfos a(int i11, String codeSeatId, int i12, boolean z10, int i13, ConcurrentHashMap concurrentHashMap) {
        ArrayList arrayList;
        Object objA;
        String str;
        Intrinsics.h(codeSeatId, "codeSeatId");
        String str2 = "DefaultMemoryCacheHelper";
        e4.b().d("DefaultMemoryCacheHelper", "take local default ad, code seat id is " + codeSeatId);
        b();
        c5 c5Var = new c5();
        androidx.collection.b bVar = new androidx.collection.b();
        ArrayList arrayList2 = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f22414b.get(codeSeatId);
        List listU0 = copyOnWriteArrayList != null ? CollectionsKt.U0(copyOnWriteArrayList) : null;
        if (listU0 == null || listU0.isEmpty()) {
            bVar.add(101);
            j(concurrentHashMap, bVar);
            return new CachedAdInfos(arrayList2, c5Var.toString());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = listU0.iterator();
        while (true) {
            String str3 = "Success";
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            DefaultAdDTO defaultAdDTO = (DefaultAdDTO) next;
            if (defaultAdDTO.getAdType() != i11) {
                bVar.add(102);
                str3 = "adType";
            } else if (Intrinsics.c(defaultAdDTO.getCodeSeatId(), codeSeatId)) {
                String filePath = defaultAdDTO.getFilePath();
                if (filePath == null || filePath.length() == 0) {
                    bVar.add(104);
                    str3 = NativeRequestBridge.KEY_FILE_PATH;
                }
            } else {
                bVar.add(103);
                str3 = "codeSeatId";
            }
            Object arrayList3 = linkedHashMap.get(str3);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap.put(str3, arrayList3);
            }
            ((List) arrayList3).add(next);
        }
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            String str4 = (String) entry.getKey();
            List list = (List) entry.getValue();
            if (!Intrinsics.c(str4, "Success")) {
                String strS0 = CollectionsKt.s0(list, ", ", null, null, 0, null, g.f22422a, 30, null);
                e4.b().w("DefaultDBManager", "有 " + list.size() + " 个广告过滤失败, " + str4 + ". 广告位ID: [" + strS0 + ']');
                it2 = it2;
            }
        }
        List listL = (List) linkedHashMap.get("Success");
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        try {
            ArrayList arrayList4 = new ArrayList(CollectionsKt.v(listL, 10));
            Iterator it3 = listL.iterator();
            while (it3.hasNext()) {
                arrayList4.add(TuplesKt.a((DefaultAdDTO) it3.next(), Double.valueOf(Random.INSTANCE.nextDouble())));
            }
            List listI0 = CollectionsKt.I0(arrayList4, new f(new e()));
            arrayList = new ArrayList(CollectionsKt.v(listI0, 10));
            Iterator it4 = listI0.iterator();
            while (it4.hasNext()) {
                arrayList.add((DefaultAdDTO) ((Pair) it4.next()).getFirst());
            }
        } catch (Exception e11) {
            e4.b().w("DefaultDBManager", "filter default ad error: " + e11.getMessage());
            arrayList = null;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            j(concurrentHashMap, bVar);
            return new CachedAdInfos(arrayList2, c5Var.toString());
        }
        ArrayList<Pair> arrayList5 = new ArrayList();
        String strK = j7.a.e().k("ad_internal_black_brands", "itel,tecno,oraimo,infinix");
        String strD = b0.f21683a.d();
        Iterator it5 = arrayList.iterator();
        int i14 = 0;
        while (it5.hasNext()) {
            DefaultAdDTO defaultAdDTO2 = (DefaultAdDTO) it5.next();
            try {
                objA = GsonUtil.a(defaultAdDTO2.getAdBeanJson(), AdsDTO.class);
            } catch (Exception e12) {
                e4.b().w(str2, "parse ad error: " + e12.getMessage());
                objA = null;
            }
            if (objA == null) {
                str = str2;
            } else if (i13 != 1 || ((AdsDTO) objA).getDefaultAdSupportNetType() == 0) {
                b0 b0Var = b0.f21683a;
                AdsDTO adsDTO = (AdsDTO) objA;
                str = str2;
                int iB = b0Var.b(strD, defaultAdDTO2, adsDTO.getPackageName(), null);
                if (iB > 0) {
                    bVar.add(Integer.valueOf(iB));
                    c5Var.put(defaultAdDTO2.getAdCreativeId(), Integer.valueOf(iB));
                    if (iB != 1102 && iB != 1103 && iB != 1110) {
                        arrayList5.add(new Pair(defaultAdDTO2.getAdCreativeId(), codeSeatId));
                    }
                } else if (new File(defaultAdDTO2.getFilePath()).exists()) {
                    boolean zG = b0Var.g(adsDTO.getCampaignname(), strK);
                    if (z10 && zG) {
                        bVar.add(107);
                        c5Var.put(defaultAdDTO2.getAdCreativeId(), 1110);
                    } else if (i14 >= i12) {
                        bVar.add(Integer.valueOf(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY));
                    } else {
                        adsDTO.setMatchVulgarBrand(zG);
                        adsDTO.setSource(4);
                        adsDTO.setUuid(com.cloud.hisavana.sdk.common.util.b.f22148a.e(adsDTO, i13));
                        PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
                        if (pslinkInfo != null) {
                            Intrinsics.e(pslinkInfo);
                            pslinkInfo.setShowId(adsDTO.getUuid());
                        }
                        arrayList2.add(objA);
                        i14++;
                    }
                } else {
                    bVar.add(106);
                    c5Var.put(defaultAdDTO2.getAdCreativeId(), 1104);
                    if (adsDTO.isFromLocal()) {
                        arrayList5.add(new Pair(defaultAdDTO2.getAdCreativeId(), codeSeatId));
                    }
                }
            } else {
                bVar.add(105);
                c5Var.put(defaultAdDTO2.getAdCreativeId(), 1113);
                str = str2;
            }
            it5 = it5;
            str2 = str;
        }
        if (!arrayList5.isEmpty()) {
            for (Pair pair : arrayList5) {
                f22413a.f((String) pair.getFirst(), (String) pair.getSecond());
            }
        }
        j(concurrentHashMap, bVar);
        return new CachedAdInfos(arrayList2, c5Var.toString());
    }

    public final void b() {
        Object objPutIfAbsent;
        if (f22415c.get()) {
            return;
        }
        List<g2> listB = x2.f23083a.b();
        f22414b.clear();
        if (listB == null || listB.isEmpty()) {
            f22415c.set(false);
            return;
        }
        for (g2 g2Var : listB) {
            DefaultAdDTO defaultAdDTO = new DefaultAdDTO();
            defaultAdDTO.setAdCreativeId(g2Var.b());
            defaultAdDTO.setCodeSeatId(g2Var.e());
            defaultAdDTO.setAdType(Integer.valueOf(g2Var.d()));
            defaultAdDTO.setFirstPrice(g2Var.o());
            defaultAdDTO.setAdRequestVersion(g2Var.c());
            defaultAdDTO.setDisplayedTimes(g2Var.l());
            defaultAdDTO.setDisplayedDate(g2Var.k());
            defaultAdDTO.setStartDate(g2Var.p());
            defaultAdDTO.setEndDate(g2Var.m());
            defaultAdDTO.setShowMaxOfDay(g2Var.j());
            defaultAdDTO.setFilePath(g2Var.n());
            defaultAdDTO.setCountryWhite(g2Var.i());
            defaultAdDTO.setCountryBlack(g2Var.h());
            defaultAdDTO.setBrandWhite(g2Var.g());
            defaultAdDTO.setBrandBlack(g2Var.f());
            defaultAdDTO.setAdBeanJson(g2Var.a());
            ConcurrentHashMap concurrentHashMap = f22414b;
            String codeSeatId = defaultAdDTO.getCodeSeatId();
            Object copyOnWriteArrayList = concurrentHashMap.get(codeSeatId);
            if (copyOnWriteArrayList == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(codeSeatId, (copyOnWriteArrayList = new CopyOnWriteArrayList()))) != null) {
                copyOnWriteArrayList = objPutIfAbsent;
            }
            ((CopyOnWriteArrayList) copyOnWriteArrayList).add(defaultAdDTO);
        }
        f22415c.set(true);
    }

    public final void e(String codeSeatId) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f22414b.get(codeSeatId);
        if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
            Iterator it = copyOnWriteArrayList.iterator();
            if (!it.hasNext()) {
                throw new NoSuchElementException();
            }
            int adRequestVersion = ((DefaultAdDTO) it.next()).getAdRequestVersion();
            while (it.hasNext()) {
                int adRequestVersion2 = ((DefaultAdDTO) it.next()).getAdRequestVersion();
                if (adRequestVersion < adRequestVersion2) {
                    adRequestVersion = adRequestVersion2;
                }
            }
            CollectionsKt.I(copyOnWriteArrayList, new d(codeSeatId, adRequestVersion));
        }
        x2.f23083a.e(codeSeatId);
    }

    public final void g(String adCreativeId, String codeSeatId, String filepath) {
        Intrinsics.h(adCreativeId, "adCreativeId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(filepath, "filepath");
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f22414b.get(codeSeatId);
        if (copyOnWriteArrayList != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                if (Intrinsics.c(((DefaultAdDTO) obj).getAdCreativeId(), adCreativeId)) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                ((DefaultAdDTO) CollectionsKt.i0(arrayList)).setFilePath(filepath);
            }
        }
        x2.f23083a.h(adCreativeId, codeSeatId, filepath);
    }

    public final void h(List codeSeatIds) {
        Intrinsics.h(codeSeatIds, "codeSeatIds");
        Set setKeySet = f22414b.keySet();
        Intrinsics.g(setKeySet, "<get-keys>(...)");
        CollectionsKt.G(setKeySet, new a(codeSeatIds));
        x2.f23083a.i(codeSeatIds);
    }

    public final void i(List defaultAdList, List psAppInfoList, boolean z10, long j11) {
        Object next;
        String appInfo;
        String packageName;
        Intrinsics.h(defaultAdList, "defaultAdList");
        Intrinsics.h(psAppInfoList, "psAppInfoList");
        if (defaultAdList.isEmpty()) {
            return;
        }
        b();
        try {
            ArrayList arrayList = new ArrayList();
            for (Object obj : psAppInfoList) {
                PsAppInfo psAppInfo = (PsAppInfo) obj;
                if (psAppInfo != null && (packageName = psAppInfo.getPackageName()) != null && packageName.length() != 0) {
                    arrayList.add(obj);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(arrayList, 10)), 16));
            Iterator it = arrayList.iterator();
            while (true) {
                String str = "";
                if (!it.hasNext()) {
                    break;
                }
                Object next2 = it.next();
                PsAppInfo psAppInfo2 = (PsAppInfo) next2;
                String packageName2 = psAppInfo2 != null ? psAppInfo2.getPackageName() : null;
                if (packageName2 != null) {
                    Intrinsics.e(packageName2);
                    str = packageName2;
                }
                linkedHashMap.put(str, next2);
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            String strD = b0.f21683a.d();
            Collection collectionValues = f22414b.values();
            Intrinsics.g(collectionValues, "<get-values>(...)");
            Iterator it2 = CollectionsKt.x(collectionValues).iterator();
            if (it2.hasNext()) {
                next = it2.next();
                if (it2.hasNext()) {
                    int adRequestVersion = ((DefaultAdDTO) next).getAdRequestVersion();
                    do {
                        Object next3 = it2.next();
                        int adRequestVersion2 = ((DefaultAdDTO) next3).getAdRequestVersion();
                        if (adRequestVersion < adRequestVersion2) {
                            next = next3;
                            adRequestVersion = adRequestVersion2;
                        }
                    } while (it2.hasNext());
                }
            } else {
                next = null;
            }
            DefaultAdDTO defaultAdDTO = (DefaultAdDTO) next;
            int adRequestVersion3 = (defaultAdDTO != null ? defaultAdDTO.getAdRequestVersion() : 0) + 1;
            Iterator it3 = defaultAdList.iterator();
            while (it3.hasNext()) {
                DefaultAdDTO defaultAdDTO2 = (DefaultAdDTO) it3.next();
                String packageName3 = defaultAdDTO2.getPackageName();
                PsAppInfo psAppInfo3 = (packageName3 == null || packageName3.length() == 0) ? null : (PsAppInfo) linkedHashMap.get(defaultAdDTO2.getPackageName());
                b0 b0Var = b0.f21683a;
                int iB = b0Var.b(strD, defaultAdDTO2, defaultAdDTO2.getPackageName(), psAppInfo3);
                if (iB <= 0 || iB == 1102 || iB == 1103) {
                    if (psAppInfo3 != null && (appInfo = psAppInfo3.getAppInfo()) != null) {
                        Intrinsics.e(appInfo);
                        defaultAdDTO2.setAppInfo(appInfo);
                    }
                    AdsDTO adsDTOC = b0Var.c(defaultAdDTO2, z10);
                    adsDTOC.setFromLocal(z10);
                    defaultAdDTO2.setAdBeanJson(GsonUtil.d(adsDTOC));
                    defaultAdDTO2.setFilePath(z10 ? b0Var.j(adsDTOC) : "");
                    defaultAdDTO2.setAdRequestVersion(adRequestVersion3);
                    f22413a.d(defaultAdDTO2);
                    String codeSeatId = defaultAdDTO2.getCodeSeatId();
                    Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
                    linkedHashSet.add(codeSeatId);
                    x2.f23083a.d(defaultAdDTO2);
                } else {
                    arrayList2.add(Integer.valueOf(iB));
                    arrayList3.add(defaultAdDTO2.getAdCreativeId());
                    e0 e0Var = f22413a;
                    String adCreativeId = defaultAdDTO2.getAdCreativeId();
                    Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
                    String codeSeatId2 = defaultAdDTO2.getCodeSeatId();
                    Intrinsics.g(codeSeatId2, "getCodeSeatId(...)");
                    e0Var.f(adCreativeId, codeSeatId2);
                }
            }
            j7.a.e().q("default_local_version", j11);
            if (!arrayList2.isEmpty() && !arrayList3.isEmpty()) {
                AthenaTracker.x("", "", "", arrayList3, arrayList2, false, 3);
            }
            if (z10) {
                c(adRequestVersion3);
            } else {
                h(CollectionsKt.R0(linkedHashSet));
            }
        } catch (Exception e11) {
            e4.b().w("DefaultMemoryCacheHelper", "save default ad error: " + e11.getMessage());
        }
    }

    public final DefaultAdDTO k(String str, String str2) {
        Object next;
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return null;
        }
        try {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f22414b.get(str);
            if (copyOnWriteArrayList == null) {
                return null;
            }
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                next = it.next();
                if (Intrinsics.c(((DefaultAdDTO) next).getAdCreativeId(), str2)) {
                    return (DefaultAdDTO) next;
                }
            }
            next = null;
            return (DefaultAdDTO) next;
        } catch (Exception unused) {
            return null;
        }
    }

    public final String l(String codeSeatId) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        CopyOnWriteArrayList<DefaultAdDTO> copyOnWriteArrayList = (CopyOnWriteArrayList) f22414b.get(codeSeatId);
        if (copyOnWriteArrayList != null) {
            for (DefaultAdDTO defaultAdDTO : copyOnWriteArrayList) {
                String adBeanJson = defaultAdDTO.getAdBeanJson();
                Intrinsics.g(adBeanJson, "getAdBeanJson(...)");
                if (adBeanJson.length() > 0) {
                    sb2.append(defaultAdDTO.getAdBeanJson() + ',');
                }
            }
        }
        if (sb2.length() > 1) {
            sb2.deleteCharAt(StringsKt.i0(sb2));
            sb2.append("]");
        } else {
            StringsKt.q(sb2);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final List m() {
        Enumeration enumerationKeys = f22414b.keys();
        Intrinsics.g(enumerationKeys, "keys(...)");
        ArrayList list = Collections.list(enumerationKeys);
        Intrinsics.g(list, "list(...)");
        return CollectionsKt.U0(list);
    }

    public final void n(String filePath) {
        Intrinsics.h(filePath, "filePath");
        Iterator it = f22414b.entrySet().iterator();
        while (it.hasNext()) {
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) ((Map.Entry) it.next()).getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                String filePath2 = ((DefaultAdDTO) obj).getFilePath();
                Intrinsics.g(filePath2, "getFilePath(...)");
                if (StringsKt.G(filePath2, filePath + ".0", false, 2, null)) {
                    arrayList.add(obj);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((DefaultAdDTO) it2.next()).setFilePath("");
            }
        }
        x2.f23083a.j(filePath);
    }

    public final void o(String adCreativeId, String codeSeatId) {
        Intrinsics.h(adCreativeId, "adCreativeId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) f22414b.get(codeSeatId);
        if (copyOnWriteArrayList != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                if (Intrinsics.c(((DefaultAdDTO) obj).getAdCreativeId(), adCreativeId)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            DefaultAdDTO defaultAdDTO = (DefaultAdDTO) CollectionsKt.i0(arrayList);
            String strD = b0.f21683a.d();
            String displayedDate = defaultAdDTO.getDisplayedDate();
            if (displayedDate == null || displayedDate.length() == 0 || Intrinsics.c(defaultAdDTO.getDisplayedDate(), strD)) {
                defaultAdDTO.setDisplayedTimes(defaultAdDTO.getDisplayedTimes() + 1);
            } else {
                defaultAdDTO.setDisplayedTimes(1);
            }
            defaultAdDTO.setDisplayedDate(strD);
            x2 x2Var = x2.f23083a;
            int displayedTimes = defaultAdDTO.getDisplayedTimes();
            String displayedDate2 = defaultAdDTO.getDisplayedDate();
            Intrinsics.g(displayedDate2, "getDisplayedDate(...)");
            x2Var.g(adCreativeId, codeSeatId, displayedTimes, displayedDate2);
        }
    }
}
