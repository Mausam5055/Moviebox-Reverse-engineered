package com.cloud.hisavana.sdk;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.SQLException;
import android.net.Uri;
import android.util.Log;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.cloud.hisavana.sdk.ext.attr.AttrData;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f23091b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f23093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f23094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f23095f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y f23090a = new y();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f23092c = true;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0005\u001a,\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0018\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlin/Triple;", "", "", "", "", "a", "()Lkotlin/Triple;"}, k = 3, mv = {1, 9, 0})
    static final class a extends Lambda implements Function0<Triple<? extends List<Map<String, Object>>, ? extends String, ? extends String>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f23096a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Triple<List<Map<String, Object>>, String, String> invoke() {
            return y.f23090a.S();
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\b\u001a\u00020\u000726\u0010\u0006\u001a2\u0012.\u0012,\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00010\u0000H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Lcom/cloud/sdk/commonutil/util/f;", "Lkotlin/Triple;", "", "", "", "", "result", "", "a", "(Lcom/cloud/sdk/commonutil/util/f;)V"}, k = 3, mv = {1, 9, 0})
    static final class b extends Lambda implements Function1<com.cloud.sdk.commonutil.util.f, Unit> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f23097a = new b();

        @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, k = 3, mv = {1, 9, 0})
        static final class a extends Lambda implements Function0<Unit> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.cloud.sdk.commonutil.util.f f23098a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(com.cloud.sdk.commonutil.util.f fVar) {
                super(0);
                this.f23098a = fVar;
            }

            public final void a() {
                y.f23090a.r((String) ((Triple) ((com.cloud.sdk.commonutil.util.f.b) this.f23098a).a()).getSecond());
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                a();
                return Unit.f67061a;
            }
        }

        b() {
            super(1);
        }

        public final void a(com.cloud.sdk.commonutil.util.f result) throws JSONException {
            Intrinsics.h(result, "result");
            if (!(result instanceof com.cloud.sdk.commonutil.util.f.b)) {
                if (result instanceof com.cloud.sdk.commonutil.util.f.a) {
                    e4.b().e("AttrDataManager", "cycleClick error: " + ((com.cloud.sdk.commonutil.util.f.a) result).a());
                    return;
                }
                return;
            }
            if (e4.c()) {
                e4.b().i("AttrDataManager", "cycleClick success result value : " + ((com.cloud.sdk.commonutil.util.f.b) result).a());
            }
            com.cloud.sdk.commonutil.util.f.b bVar = (com.cloud.sdk.commonutil.util.f.b) result;
            y.f23090a.q(new com.cloud.sdk.commonutil.util.f.b(new Pair((List) ((Triple) bVar.a()).getFirst(), (String) ((Triple) bVar.a()).getThird())), 1, new a(result));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) throws JSONException {
            a((com.cloud.sdk.commonutil.util.f) obj);
            return Unit.f67061a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "timeInterval", "", "a", "(I)V"}, k = 3, mv = {1, 9, 0})
    static final class c extends Lambda implements Function1<Integer, Unit> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f23099a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(AdsDTO adsDTO) {
            super(1);
            this.f23099a = adsDTO;
        }

        public final void a(int i11) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            y yVar = y.f23090a;
            if (jCurrentTimeMillis - yVar.L() >= ((long) i11) * 3600000) {
                y.f23095f = jCurrentTimeMillis;
                j7.a.e().q("attr_click_time", jCurrentTimeMillis);
                yVar.H();
            }
            yVar.w(this.f23099a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a(((Number) obj).intValue());
            return Unit.f67061a;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, k = 3, mv = {1, 9, 0})
    static final class d extends Lambda implements Function0<Unit> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f23100a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(AdsDTO adsDTO) {
            super(0);
            this.f23100a = adsDTO;
        }

        public final void a() {
            y.f23090a.M(this.f23100a);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.f67061a;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, k = 3, mv = {1, 9, 0})
    static final class e extends Lambda implements Function0<Unit> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e f23101a = new e();

        e() {
            super(0);
        }

        public final void a() {
            y.f23090a.v();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.f67061a;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u0002\u0010\u0004\u001a&\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00000\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlin/Pair;", "", "", "", "a", "()Lkotlin/Pair;"}, k = 3, mv = {1, 9, 0})
    static final class f extends Lambda implements Function0<Pair<? extends List<Pair<? extends String, ? extends Long>>, ? extends List<String>>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f23102a = new f();

        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<List<Pair<String, Long>>, List<String>> invoke() {
            return y.f23090a.T();
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00020\u000620\u0010\u0005\u001a,\u0012(\u0012&\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00010\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lcom/cloud/sdk/commonutil/util/f;", "Lkotlin/Pair;", "", "", "", "result", "", "a", "(Lcom/cloud/sdk/commonutil/util/f;)V"}, k = 3, mv = {1, 9, 0})
    static final class g extends Lambda implements Function1<com.cloud.sdk.commonutil.util.f, Unit> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g f23103a = new g();

        g() {
            super(1);
        }

        public final void a(com.cloud.sdk.commonutil.util.f result) throws JSONException {
            Intrinsics.h(result, "result");
            if (!(result instanceof com.cloud.sdk.commonutil.util.f.b)) {
                if (result instanceof com.cloud.sdk.commonutil.util.f.a) {
                    e4.b().e("AttrDataManager", "postShowData error: " + ((com.cloud.sdk.commonutil.util.f.a) result).a());
                    return;
                }
                return;
            }
            e4 e4VarB = e4.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("success result value : ");
            com.cloud.sdk.commonutil.util.f.b bVar = (com.cloud.sdk.commonutil.util.f.b) result;
            sb2.append(bVar.a());
            e4VarB.i("AttrDataManager", sb2.toString());
            if (((Collection) ((Pair) bVar.a()).getFirst()).isEmpty()) {
                return;
            }
            y.f23090a.s((Pair) bVar.a());
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) throws JSONException {
            a((com.cloud.sdk.commonutil.util.f) obj);
            return Unit.f67061a;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 9, 0})
    static final class h extends Lambda implements Function1<Integer, CharSequence> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final h f23104a = new h();

        h() {
            super(1);
        }

        public final CharSequence a(int i11) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append('\'');
            sb2.append(i11);
            sb2.append('\'');
            return sb2.toString();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return a(((Number) obj).intValue());
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0005\u001a$\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0018\u00010\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlin/Pair;", "", "", "", "", "a", "()Lkotlin/Pair;"}, k = 3, mv = {1, 9, 0})
    static final class i extends Lambda implements Function0<Pair<? extends List<Map<String, Object>>, ? extends String>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f23105a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(AdsDTO adsDTO) {
            super(0);
            this.f23105a = adsDTO;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<List<Map<String, Object>>, String> invoke() {
            return y.f23090a.N(this.f23105a);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\b\u001a\u00020\u00072.\u0010\u0006\u001a*\u0012&\u0012$\u0012\u0018\u0012\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00010\u0000H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Lcom/cloud/sdk/commonutil/util/f;", "Lkotlin/Pair;", "", "", "", "", "result", "", "a", "(Lcom/cloud/sdk/commonutil/util/f;)V"}, k = 3, mv = {1, 9, 0})
    static final class j extends Lambda implements Function1<com.cloud.sdk.commonutil.util.f, Unit> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final j f23106a = new j();

        j() {
            super(1);
        }

        public final void a(com.cloud.sdk.commonutil.util.f result) throws JSONException {
            Intrinsics.h(result, "result");
            if (result instanceof com.cloud.sdk.commonutil.util.f.b) {
                if (e4.c()) {
                    e4.b().i("AttrDataManager", "realClick success result value : " + ((com.cloud.sdk.commonutil.util.f.b) result).a());
                }
                y.n(y.f23090a, (com.cloud.sdk.commonutil.util.f.b) result, 2, null, 4, null);
                return;
            }
            if (result instanceof com.cloud.sdk.commonutil.util.f.a) {
                e4.b().e("AttrDataManager", "realClick error: " + ((com.cloud.sdk.commonutil.util.f.a) result).a());
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) throws JSONException {
            a((com.cloud.sdk.commonutil.util.f) obj);
            return Unit.f67061a;
        }
    }

    private y() {
    }

    private final void B() {
        if (e4.c()) {
            e4.b().i("AttrDataManager", "clear impressions");
        }
        try {
            HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.m5
                @Override // java.lang.Runnable
                public final void run() {
                    y.E();
                }
            });
        } catch (SQLException e11) {
            e4.b().e("AttrDataManager", "SQL error executing delete query: " + e11.getMessage());
        } catch (Exception e12) {
            e4.b().e("AttrDataManager", "Error executing delete query: " + e12.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E() {
        HSRoomDatabase.v0().n0().a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(AdsDTO adsDTO) {
        c6 c6VarN0 = HSRoomDatabase.v0().n0();
        String strD = f23090a.d(adsDTO);
        String adCreativeId = adsDTO.getAdCreativeId();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Intrinsics.e(adCreativeId);
        c6VarN0.a(new com.cloud.hisavana.sdk.h(0, strD, jCurrentTimeMillis, adCreativeId, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H() {
        HSScopeHelper.f23167a.k(a.f23096a, b.f23097a);
    }

    public static final void I(final AdsDTO adsDTO) {
        if (f23090a.P()) {
            return;
        }
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.l5
            @Override // java.lang.Runnable
            public final void run() {
                y.K(adsDTO);
            }
        });
    }

    private final String J() {
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        String strQ = StringsKt.Q(string, "-", "", false, 4, null);
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ew_");
        String strSubstring = strQ.substring(0, 6);
        Intrinsics.g(strSubstring, "substring(...)");
        sb2.append(strSubstring);
        sb2.append("_");
        sb2.append(jCurrentTimeMillis);
        String string2 = sb2.toString();
        Intrinsics.g(string2, "toString(...)");
        return string2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(AdsDTO adsDTO) {
        k5.f22606a.c(new c(adsDTO), new d(adsDTO), e.f23101a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long L() {
        long j11 = f23095f;
        return j11 > 0 ? j11 : j7.a.e().h("attr_click_time");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(AdsDTO adsDTO) {
        HSScopeHelper.f23167a.k(new i(adsDTO), j.f23106a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair N(AdsDTO adsDTO) {
        if (adsDTO == null) {
            e4.b().i("AttrDataManager", "Ad is null.");
            return new Pair(null, null);
        }
        if (u(adsDTO, true)) {
            return new Pair(null, null);
        }
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Integer pullNewestLive = adsDTO.getPullNewestLive();
        Intrinsics.g(pullNewestLive, "getPullNewestLive(...)");
        linkedHashMap.put("action_type", pullNewestLive);
        linkedHashMap.put(TtmlNode.TAG_P, d(adsDTO));
        ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
        Integer pullNewestLive2 = adsDTO.getPullNewestLive();
        Intrinsics.g(pullNewestLive2, "getPullNewestLive(...)");
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, e(storeDeeplink, pullNewestLive2.intValue()));
        String codeSeatId = adsDTO.getCodeSeatId();
        Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
        linkedHashMap.put("adId", codeSeatId);
        linkedHashMap.put(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
        arrayList.add(linkedHashMap);
        return new Pair(arrayList, adsDTO.getAdCreativeId());
    }

    private final boolean P() {
        if (f23091b) {
            return false;
        }
        e4.b().i("AttrDataManager", "Attr func disable.");
        return true;
    }

    private final boolean R() {
        if (!f23091b) {
            e4.b().i("AttrDataManager", "Attr func disable.");
            return true;
        }
        int iD = k5.f22606a.d();
        if (e4.c()) {
            e4.b().i("AttrDataManager", "Attr showConfig : " + iD);
        }
        if (iD < 0) {
            B();
            return true;
        }
        if (iD != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - f23093d < ((long) iD) * 3600000) {
                return true;
            }
            f23093d = jCurrentTimeMillis;
            U();
        } else {
            if (!f23092c) {
                return true;
            }
            f23092c = false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Triple S() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        try {
            List<j5> listB = HSRoomDatabase.v0().k0().b();
            if (listB != null && !listB.isEmpty()) {
                for (j5 j5Var : listB) {
                    if (j5Var != null) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        arrayList2.add(Integer.valueOf(j5Var.g()));
                        arrayList3.add(j5Var.b());
                        linkedHashMap.put("action_type", Integer.valueOf(j5Var.a()));
                        linkedHashMap.put(TtmlNode.TAG_P, j5Var.f());
                        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, j5Var.e());
                        linkedHashMap.put("adId", j5Var.d());
                        linkedHashMap.put(EventConstants.KEY_TIME, Long.valueOf(j5Var.c()));
                        arrayList.add(linkedHashMap);
                    }
                }
            }
        } catch (SQLException e11) {
            e4.b().e("AttrDataManager", "queryClick SQLException fail: " + e11.getMessage());
        } catch (Exception e12) {
            e4.b().e("AttrDataManager", "queryClick Exception fail: " + e12.getMessage());
        }
        return new Triple(arrayList, CollectionsKt.s0(arrayList2, null, null, null, 0, null, h.f23104a, 31, null), CollectionsKt.s0(arrayList3, null, null, null, 0, null, null, 63, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair T() throws Exception {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            List<com.cloud.hisavana.sdk.h> listB = HSRoomDatabase.v0().n0().b();
            if (listB != null) {
                for (com.cloud.hisavana.sdk.h hVar : listB) {
                    if (hVar != null) {
                        arrayList.add(new Pair(hVar.c(), Long.valueOf(hVar.b())));
                    }
                    if (hVar != null) {
                        arrayList2.add(hVar.a());
                    }
                }
            }
            return new Pair(arrayList, arrayList2);
        } catch (SQLException e11) {
            throw new SQLException(String.valueOf(e11));
        } catch (Exception e12) {
            throw new Exception(String.valueOf(e12));
        }
    }

    private final void U() {
        h();
        f23094e = 0;
    }

    private final String d(AdsDTO adsDTO) {
        String psPackageName;
        String str;
        String packageName = adsDTO.getPackageName();
        if (packageName == null || StringsKt.q0(packageName)) {
            psPackageName = adsDTO.getPsPackageName();
            str = "getPsPackageName(...)";
        } else {
            psPackageName = adsDTO.getPackageName();
            str = "getPackageName(...)";
        }
        Intrinsics.g(psPackageName, str);
        return psPackageName;
    }

    private final String e(List list, int i11) {
        if (i11 != 2) {
            return "";
        }
        if (list == null || list.isEmpty()) {
            e4.b().i("AttrDataManager", "ad store deep link is empty");
            return "OTHER";
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && str.length() != 0) {
                if (StringsKt.W(str, "palmplay://", false, 2, null)) {
                    return "PS";
                }
                if (StringsKt.W(str, "aha://", false, 2, null)) {
                    return "AHA";
                }
                return (StringsKt.W(str, "market://", false, 2, null) || StringsKt.c0(str, Constants.GP_DEEPLINK, false, 2, null)) ? "GP" : "OTHER";
            }
        }
        return "";
    }

    private final Pair f(boolean z10, int i11) throws JSONException {
        JSONObject jSONObject;
        String string;
        String str = z10 ? "successive_failures_imp" : "successive_failures_click";
        try {
            jSONObject = new JSONObject(j7.a.e().k(str, ""));
        } catch (Exception unused) {
            jSONObject = new JSONObject();
            jSONObject.put("count", 0);
            jSONObject.put("error_list", "");
        }
        int iOptInt = jSONObject.optInt("count", 0);
        String element = jSONObject.optString("error_list", "");
        if (4 == i11 || 5 == i11) {
            int i12 = f23094e + 1;
            f23094e = i12;
            if (i12 > 3) {
                f23091b = false;
                B();
                v();
            }
        } else {
            iOptInt++;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(element);
            Intrinsics.g(element, "element");
            if (StringsKt.q0(element)) {
                string = String.valueOf(i11);
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(',');
                sb3.append(i11);
                string = sb3.toString();
            }
            sb2.append(string);
            element = sb2.toString();
            jSONObject.put("count", iOptInt);
            jSONObject.put("error_list", element);
            j7.a.e().r(str, jSONObject.toString());
            if (iOptInt > 5) {
                f23091b = false;
                j7.a.e().o("hs_attr_shutdown", true);
                B();
                v();
            }
        }
        if (e4.c()) {
            e4.b().i("AttrDataManager", "本次errorCode: " + i11 + " | 临时降级失败次数 : " + f23094e + " | 永久降级失败次数和原因 :" + str + " : " + jSONObject);
        }
        return new Pair(Integer.valueOf(iOptInt), element);
    }

    private final Pair g(boolean z10, Object obj) {
        int i11;
        String lastPathSegment;
        int i12;
        String strJ = J();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, z10 ? PushConstants.PUSH_SERVICE_TYPE_SHOW : "click");
        linkedHashMap.put("linkId", strJ);
        linkedHashMap.put("content", obj);
        String strD = GsonUtil.d(linkedHashMap);
        k.a aVar = k.f22565d;
        String strF = k.a.a(aVar, null, 1, null).f(strD);
        String strE = k.a.a(aVar, null, 1, null).e(strF + "ew2913");
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            ContentResolver contentResolver = com.cloud.sdk.commonutil.util.e.a().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put(TmcConstants.EXTRA_APP_DEV_TOKEN, strE);
            contentValues.put("data", strF);
            contentValues.put("from", "ew");
            Uri uriInsert = contentResolver.insert(Uri.parse("content://com.common.bgainfo.provider/attribute_ew"), contentValues);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            if (uriInsert == null || (lastPathSegment = uriInsert.getLastPathSegment()) == null) {
                lastPathSegment = "";
            }
            boolean zC = Intrinsics.c(lastPathSegment, "3");
            if (uriInsert == null) {
                i12 = 1;
            } else if (zC) {
                i12 = 5;
            } else {
                i12 = jCurrentTimeMillis2 >= 5000 ? 2 : 0;
            }
            if (e4.c()) {
                e4.b().i("AttrDataManager", "content: " + strD + "\ninsertedUri: " + uriInsert + " \nerrorCode: " + i12);
            }
            i11 = i12;
        } catch (IllegalArgumentException e11) {
            e4.b().e("AttrDataManager", "postData error: " + e11);
            String message = e11.getMessage();
            i11 = (message == null || !StringsKt.c0(message, "content://com.common.bgainfo.provider/attribute_ew", false, 2, null)) ? 3 : 4;
        } catch (Exception e12) {
            e4.b().e("AttrDataManager", "postData error: " + e12);
        }
        return new Pair(strJ, Integer.valueOf(i11));
    }

    private final void i(int i11) {
        if (i11 <= 0) {
            e4.b().i("AttrDataManager", "Invalid limit value: " + i11);
            return;
        }
        if (e4.c()) {
            e4.b().i("AttrDataManager", "delete impressions " + i11);
        }
        try {
            HSRoomDatabase.v0().n0().a(i11);
        } catch (SQLException e11) {
            e4.b().e("AttrDataManager", "SQL error executing delete query: " + e11.getMessage());
        } catch (Exception e12) {
            e4.b().e("AttrDataManager", "Error executing delete query: " + e12.getMessage());
        }
    }

    static /* synthetic */ void n(y yVar, com.cloud.sdk.commonutil.util.f.b bVar, int i11, Function0 function0, int i12, Object obj) throws JSONException {
        if ((i12 & 4) != 0) {
            function0 = null;
        }
        yVar.q(bVar, i11, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(com.cloud.sdk.commonutil.util.f.b bVar, int i11, Function0 function0) throws JSONException {
        Collection collection = (Collection) ((Pair) bVar.a()).getFirst();
        if (collection == null || collection.isEmpty()) {
            return;
        }
        Object arrayList = (List) ((Pair) bVar.a()).getFirst();
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        Pair pairG = g(false, arrayList);
        AttrData attrData = new AttrData(0, null, 0, 0L, null, 0, null, 0, 255, null);
        attrData.setType(i11);
        attrData.setLinkId((String) pairG.getFirst());
        List list = (List) ((Pair) bVar.a()).getFirst();
        attrData.setCount(list != null ? list.size() : 0);
        String str = (String) ((Pair) bVar.a()).getSecond();
        if (str == null) {
            str = "";
        }
        attrData.setCreatives(str);
        attrData.setEventTs(System.currentTimeMillis());
        attrData.setErrorCode(((Number) pairG.getSecond()).intValue());
        if (((Number) pairG.getSecond()).intValue() == 0) {
            if (function0 != null) {
                function0.invoke();
            }
            t(false);
            attrData.setFailCount(0);
            attrData.setErrorList("");
        } else {
            Pair pairF = f(false, ((Number) pairG.getSecond()).intValue());
            attrData.setFailCount(((Number) pairF.getFirst()).intValue());
            attrData.setErrorList((String) pairF.getSecond());
        }
        AthenaTracker.H(attrData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(String str) {
        if (str == null || StringsKt.q0(str)) {
            return;
        }
        try {
            if (e4.c()) {
                e4.b().d("AttrDataManager", "deleteClicks sql---->,ids: " + str);
            }
            f5 f5VarK0 = HSRoomDatabase.v0().k0();
            List listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null);
            ArrayList arrayList = new ArrayList(CollectionsKt.v(listS0, 10));
            Iterator it = listS0.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(Integer.parseInt((String) it.next())));
            }
            f5VarK0.a(arrayList);
        } catch (Exception e11) {
            e4.b().e("AttrDataManager", "deleteClicks fail " + Log.getStackTraceString(e11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(Pair pair) throws JSONException {
        Iterable<Pair> iterable = (Iterable) pair.getFirst();
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iterable, 10));
        for (Pair pair2 : iterable) {
            arrayList.add(MapsKt.l(TuplesKt.a(TtmlNode.TAG_P, (String) pair2.component1()), TuplesKt.a("showTime", Long.valueOf(((Number) pair2.component2()).longValue()))));
        }
        Pair pairG = g(true, arrayList);
        AttrData attrData = new AttrData(0, null, 0, 0L, null, 0, null, 0, 255, null);
        attrData.setLinkId((String) pairG.getFirst());
        attrData.setCount(((List) pair.getSecond()).size());
        attrData.setCreatives(CollectionsKt.s0((Iterable) pair.getSecond(), null, null, null, 0, null, null, 63, null));
        attrData.setEventTs(System.currentTimeMillis());
        attrData.setErrorCode(((Number) pairG.getSecond()).intValue());
        if (((Number) pairG.getSecond()).intValue() == 0) {
            i(((List) pair.getSecond()).size());
            t(true);
            attrData.setFailCount(0);
            attrData.setErrorList("");
        } else {
            Pair pairF = f(true, ((Number) pairG.getSecond()).intValue());
            attrData.setFailCount(((Number) pairF.getFirst()).intValue());
            attrData.setErrorList((String) pairF.getSecond());
        }
        AthenaTracker.Q(attrData);
    }

    private final void t(boolean z10) {
        f23094e = 0;
        j7.a.e().r(z10 ? "successive_failures_imp" : "successive_failures_click", "");
    }

    private final boolean u(AdsDTO adsDTO, boolean z10) {
        Integer pullNewestLive;
        if (!f23091b) {
            e4.b().i("AttrDataManager", "Attr func disable.");
            return true;
        }
        if (!z10 && k5.f22606a.d() == -1) {
            e4.b().i("AttrDataManager", "Show func disable.");
            return true;
        }
        String packageName = adsDTO != null ? adsDTO.getPackageName() : null;
        if (packageName == null || StringsKt.q0(packageName)) {
            String psPackageName = adsDTO != null ? adsDTO.getPsPackageName() : null;
            if (psPackageName == null || StringsKt.q0(psPackageName)) {
                e4.b().i("AttrDataManager", "Ad pkg is empty.");
                return true;
            }
        }
        if (adsDTO != null && adsDTO.getSource() == 4) {
            e4.b().i("AttrDataManager", "Filter default ad.");
            return true;
        }
        if (!z10 || adsDTO == null || (pullNewestLive = adsDTO.getPullNewestLive()) == null || pullNewestLive.intValue() != 0) {
            return false;
        }
        e4.b().i("AttrDataManager", "Exclude regular ads.");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v() {
        try {
            HSRoomDatabase.v0().k0().a();
        } catch (Exception e11) {
            e4.b().e("AttrDataManager", "clearClicks fail " + Log.getStackTraceString(e11));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(AdsDTO adsDTO) {
        if (adsDTO == null) {
            e4.b().i("AttrDataManager", "Ad is null.");
            return;
        }
        if (u(adsDTO, true)) {
            return;
        }
        if (e4.c()) {
            e4.b().i("AttrDataManager", "insertClick ad info : " + adsDTO);
        }
        try {
            Integer pullNewestLive = adsDTO.getPullNewestLive();
            Intrinsics.g(pullNewestLive, "getPullNewestLive(...)");
            int iIntValue = pullNewestLive.intValue();
            String strD = d(adsDTO);
            ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
            Integer pullNewestLive2 = adsDTO.getPullNewestLive();
            Intrinsics.g(pullNewestLive2, "getPullNewestLive(...)");
            String strE = e(storeDeeplink, pullNewestLive2.intValue());
            String codeSeatId = adsDTO.getCodeSeatId();
            Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
            long jCurrentTimeMillis = System.currentTimeMillis();
            String adCreativeId = adsDTO.getAdCreativeId();
            Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
            j5 j5Var = new j5(0, iIntValue, strD, strE, codeSeatId, jCurrentTimeMillis, adCreativeId, 1, null);
            HSRoomDatabase.v0().k0().a(j5Var);
            if (e4.c()) {
                e4.b().i("AttrDataManager", "insertClick success contentValues ---> " + j5Var);
            }
        } catch (Exception e11) {
            e4.b().e("AttrDataManager", "insertClick fail " + Log.getStackTraceString(e11));
        }
    }

    public final void C(final AdsDTO adsDTO) {
        if (adsDTO == null) {
            e4.b().i("AttrDataManager", "Ad is null.");
            return;
        }
        if (u(adsDTO, false)) {
            return;
        }
        if (e4.c()) {
            e4.b().i("AttrDataManager", "ad info : " + adsDTO);
        }
        try {
            HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.n5
                @Override // java.lang.Runnable
                public final void run() {
                    y.F(adsDTO);
                }
            });
        } catch (Exception e11) {
            e4.b().e("AttrDataManager", "insert imp fail " + Log.getStackTraceString(e11));
        }
    }

    public final void O() {
        h();
        Q();
    }

    public final void Q() {
        if (R()) {
            return;
        }
        HSScopeHelper.f23167a.k(f.f23102a, g.f23103a);
    }

    public final void h() {
        boolean zG = com.cloud.hisavana.sdk.common.util.i0.g(com.cloud.sdk.commonutil.util.e.a());
        boolean z10 = false;
        boolean zD = j7.a.e().d("hs_attr_shutdown", false);
        k5 k5Var = k5.f22606a;
        int iD = k5Var.d();
        int iA = k5Var.a();
        if (zG && !zD && (iD >= 0 || iA >= 0)) {
            z10 = true;
        }
        f23091b = z10;
        if (e4.c()) {
            e4.b().i("AttrDataManager", "enableAttr: " + f23091b + "\nShowDataSyncTimeInterval : " + iD + "\nShowDataSyncTimeInterval : " + iA);
        }
    }
}
