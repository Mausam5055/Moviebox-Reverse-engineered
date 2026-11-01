package com.cloud.hisavana.sdk.database;

import a4.a;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.config.utils.XLogUtil;
import com.cloud.hisavana.abtestkit.db.ABContentProvider;
import com.cloud.hisavana.sdk.common.util.l0;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.e1;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.v0;
import com.cloud.hisavana.sdk.v3;
import com.cloud.hisavana.sdk.y3;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 52\u00020\u0001:\u00012B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\r\u001a\u00020\f2\u0010\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tH\u0002¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u000f2\u0010\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\f2\u0010\u0010\u0012\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0013\u0010\u000eJ!\u0010\u0015\u001a\u00020\f2\u0010\u0010\u0014\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0015\u0010\u000eJ!\u0010\u0017\u001a\u00020\f2\u0010\u0010\u0012\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0017\u0010\u000eJ!\u0010\u0018\u001a\u00020\f2\u0010\u0010\u0014\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0018\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJM\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010\u001d\u001a\u00020\u00062\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001e2\b\u0010 \u001a\u0004\u0018\u00010\u00042\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001e2\b\u0010\"\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b$\u0010%J\u0019\u0010&\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010'J!\u0010*\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J1\u0010-\u001a\u00020,2\u0006\u0010\u001d\u001a\u00020\u00062\b\u0010 \u001a\u0004\u0018\u00010\u00042\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b-\u0010.J;\u0010/\u001a\u00020,2\u0006\u0010\u001d\u001a\u00020\u00062\b\u0010)\u001a\u0004\u0018\u00010(2\b\u0010 \u001a\u0004\u0018\u00010\u00042\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b/\u00100R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103¨\u00066"}, d2 = {"Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;", "Landroid/content/ContentProvider;", "<init>", "()V", "", "content", "Landroid/net/Uri;", "f", "(Ljava/lang/String;)Landroid/net/Uri;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adsDTOList", "", CampaignEx.JSON_KEY_AD_K, "(Ljava/util/List;)Z", "", "g", "(Ljava/util/List;)Ljava/util/List;", "insertList", "i", "updateList", "l", "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "m", "", "j", "onCreate", "()Z", "uri", "", "projection", "selection", "selectionArgs", "sortOrder", "Landroid/database/Cursor;", "query", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "getType", "(Landroid/net/Uri;)Ljava/lang/String;", "Landroid/content/ContentValues;", "values", "insert", "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;", "", RequestParameters.SUBRESOURCE_DELETE, "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;", "a", "Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;", "database", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class HisavanaContentProvider extends ContentProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f22394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static UriMatcher f22395d;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private HSRoomDatabase database;

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.database.HisavanaContentProvider$a, reason: from kotlin metadata */
    /* JADX INFO: loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            if (HisavanaContentProvider.f22395d == null) {
                HisavanaContentProvider.f22394c = com.cloud.sdk.commonutil.util.e.a().getPackageName() + ".HisavanaContentProvider";
                HisavanaContentProvider.f22395d = new UriMatcher(-1);
                UriMatcher uriMatcher = HisavanaContentProvider.f22395d;
                if (uriMatcher != null) {
                    uriMatcher.addURI(HisavanaContentProvider.f22394c, XLogUtil.TAG, 100);
                }
                UriMatcher uriMatcher2 = HisavanaContentProvider.f22395d;
                if (uriMatcher2 != null) {
                    uriMatcher2.addURI(HisavanaContentProvider.f22394c, "ad_data", 200);
                }
                ABContentProvider.initUriMatcher(HisavanaContentProvider.f22395d, HisavanaContentProvider.f22394c);
            }
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/database/HisavanaContentProvider$b", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class b extends TypeToken<List<? extends AdsDTO>> {
        b() {
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/database/HisavanaContentProvider$c", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class c extends TypeToken<List<? extends ConfigCodeSeatDTO>> {
        c() {
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/database/HisavanaContentProvider$d", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class d extends TypeToken<List<? extends ConfigCodeSeatDTO>> {
        d() {
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/database/HisavanaContentProvider$e", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class e extends TypeToken<List<? extends AdsDTO>> {
        e() {
        }
    }

    private final boolean d(List insertList) {
        List listL;
        v0 v0VarP0;
        if (e4.c()) {
            e4 e4VarB = e4.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("insertOrUpdateConfig ");
            sb2.append(insertList != null ? Integer.valueOf(insertList.size()) : null);
            e4VarB.d("HisavanaContentProvider", sb2.toString());
        }
        if (insertList == null || (listL = CollectionsKt.f0(insertList)) == null) {
            listL = CollectionsKt.l();
        }
        if (listL.isEmpty()) {
            return false;
        }
        try {
            j();
            if (this.database == null) {
                return false;
            }
            List listA = e1.f22423c.a(listL);
            HSRoomDatabase hSRoomDatabase = this.database;
            if (hSRoomDatabase != null && (v0VarP0 = hSRoomDatabase.p0()) != null) {
                v0VarP0.c(listA);
            }
            return true;
        } catch (Exception e11) {
            e4.b().e("HisavanaContentProvider", "clearAndInsertConfig fail " + Log.getStackTraceString(e11));
            return false;
        }
    }

    private final Uri f(String content) {
        Uri uri = Uri.parse("content://" + f22394c + '/' + content);
        Intrinsics.g(uri, "parse(...)");
        return uri;
    }

    private final List g(List adsDTOList) {
        ArrayList arrayList;
        v3 v3VarH0;
        List<y3> listD;
        if (adsDTOList == null || adsDTOList.isEmpty()) {
            e4.b().d("HisavanaContentProvider", "ad list is null or empty");
            return new ArrayList();
        }
        ArrayList<String> arrayList2 = new ArrayList();
        Iterator it = adsDTOList.iterator();
        String codeSeatId = "";
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null) {
                codeSeatId = adsDTO.getCodeSeatId();
                Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
                String adCreativeId = adsDTO.getAdCreativeId();
                Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
                arrayList2.add(adCreativeId);
            }
        }
        if (StringsKt.q0(codeSeatId) || arrayList2.isEmpty()) {
            return new ArrayList();
        }
        StringBuilder sb2 = new StringBuilder("SELECT * FROM adList_room WHERE codeSeatId = ?  AND ad_creative_id IN (");
        for (String str : arrayList2) {
            sb2.append("?,");
        }
        sb2.deleteCharAt(sb2.length() - 1);
        sb2.append(")");
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(codeSeatId);
        arrayList3.addAll(arrayList2);
        if (e4.c()) {
            e4.b().d("HisavanaContentProvider", "getQueryAdsByAdIds " + ((Object) sb2) + ", " + arrayList3);
        }
        try {
            HSRoomDatabase hSRoomDatabase = this.database;
            if (hSRoomDatabase == null || (v3VarH0 = hSRoomDatabase.h0()) == null || (listD = v3VarH0.d(arrayList2)) == null) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList(CollectionsKt.v(listD, 10));
                for (y3 y3Var : listD) {
                    AdsDTO adsDTO2 = (AdsDTO) GsonUtil.a(y3Var != null ? y3Var.a() : null, AdsDTO.class);
                    adsDTO2.setTableId(y3Var != null ? y3Var.o() : 0);
                    arrayList.add(adsDTO2);
                }
            }
        } catch (Exception unused) {
            arrayList = new ArrayList();
        }
        return CollectionsKt.U0(arrayList);
    }

    public static final void h() {
        INSTANCE.a();
    }

    private final boolean i(List insertList) {
        List listL;
        v3 v3VarH0;
        if (insertList == null || (listL = CollectionsKt.f0(insertList)) == null) {
            listL = CollectionsKt.l();
        }
        if (listL.isEmpty()) {
            e4.b().d("HisavanaContentProvider", "insertAdsList adList is null or empty");
            return false;
        }
        if (e4.c()) {
            e4.b().d("HisavanaContentProvider", "insertAdsList list: " + listL.size());
        }
        try {
            j();
            if (this.database == null) {
                return false;
            }
            long jC = l0.c(System.currentTimeMillis());
            Iterator it = listL.iterator();
            while (it.hasNext()) {
                ((AdsDTO) it.next()).setShowDate(jC);
            }
            HSRoomDatabase hSRoomDatabase = this.database;
            if (hSRoomDatabase == null || (v3VarH0 = hSRoomDatabase.h0()) == null) {
                return true;
            }
            v3VarH0.c(y3.f23113i.a(listL));
            return true;
        } catch (Exception e11) {
            e4.b().e("HisavanaContentProvider", "insert ads fail " + e11.getMessage());
            return false;
        }
    }

    private final void j() {
        if (this.database == null) {
            this.database = HSRoomDatabase.v0();
        }
    }

    private final boolean k(List adsDTOList) {
        List<AdsDTO> listL;
        if (adsDTOList == null || (listL = CollectionsKt.f0(adsDTOList)) == null) {
            listL = CollectionsKt.l();
        }
        if (listL.isEmpty()) {
            e4.b().d("HisavanaContentProvider", "insertOrUpdateAds list is null or empty");
            return false;
        }
        if (e4.c()) {
            e4.b().d("HisavanaContentProvider", "insertOrUpdateAds list: " + listL.size());
        }
        List listG = g(listL);
        ArrayList arrayList = new ArrayList();
        if (listG.isEmpty()) {
            return i(adsDTOList);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(listG, 10)), 16));
        for (Object obj : listG) {
            AdsDTO adsDTO = (AdsDTO) obj;
            linkedHashMap.put(new Triple(adsDTO.getAdCreativeId(), adsDTO.getCodeSeatId(), Boolean.valueOf(adsDTO.isOfflineAd())), obj);
        }
        for (AdsDTO adsDTO2 : listL) {
            AdsDTO adsDTO3 = (AdsDTO) linkedHashMap.get(new Triple(adsDTO2.getAdCreativeId(), adsDTO2.getCodeSeatId(), Boolean.valueOf(adsDTO2.isOfflineAd())));
            if (adsDTO3 != null) {
                adsDTO2.setShowDate(adsDTO3.getShowDate());
                adsDTO2.setShowNum(adsDTO3.getShowNum());
                adsDTO2.setTableId(adsDTO3.getTableId());
                arrayList.add(adsDTO2);
            }
        }
        boolean zL = l(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : listL) {
            if (!arrayList.contains((AdsDTO) obj2)) {
                arrayList2.add(obj2);
            }
        }
        return zL && i(arrayList2);
    }

    private final boolean l(List updateList) {
        List listL;
        if (updateList == null || (listL = CollectionsKt.f0(updateList)) == null) {
            listL = CollectionsKt.l();
        }
        if (listL.isEmpty()) {
            e4.b().d("HisavanaContentProvider", "updateAdsList list is empty ");
            return false;
        }
        if (e4.c()) {
            e4 e4VarB = e4.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("updateAdsList ");
            sb2.append(updateList != null ? Integer.valueOf(updateList.size()) : null);
            e4VarB.d("HisavanaContentProvider", sb2.toString());
        }
        try {
            j();
            HSRoomDatabase hSRoomDatabase = this.database;
            if (hSRoomDatabase == null) {
                return false;
            }
            v3 v3VarH0 = hSRoomDatabase.h0();
            Integer numValueOf = v3VarH0 != null ? Integer.valueOf(v3VarH0.a(y3.f23113i.a(listL))) : null;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("updateAdsList: ");
            sb3.append(numValueOf);
            return true;
        } catch (Exception e11) {
            e4.b().e("HisavanaContentProvider", "insert Config fail " + Log.getStackTraceString(e11));
            return false;
        }
    }

    private final boolean m(List updateList) {
        List listF0;
        v0 v0VarP0;
        if (updateList == null || (listF0 = CollectionsKt.f0(updateList)) == null || listF0.isEmpty()) {
            return false;
        }
        try {
            j();
            if (this.database == null) {
                return false;
            }
            List listA = e1.f22423c.a(listF0);
            HSRoomDatabase hSRoomDatabase = this.database;
            if (hSRoomDatabase == null || (v0VarP0 = hSRoomDatabase.p0()) == null) {
                return true;
            }
            v0VarP0.a(listA);
            return true;
        } catch (Exception e11) {
            e4.b().e("HisavanaContentProvider", "update config fail" + Log.getStackTraceString(e11));
            return false;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        Intrinsics.h(uri, "uri");
        e4 e4VarB = e4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("delete invalid uri ");
        sb2.append(uri);
        sb2.append(", ");
        sb2.append(selection);
        sb2.append(", ");
        String string = Arrays.toString(selectionArgs);
        Intrinsics.g(string, "toString(...)");
        sb2.append(string);
        e4VarB.d("HisavanaContentProvider", sb2.toString());
        UriMatcher uriMatcher = f22395d;
        if (uriMatcher != null) {
            Intrinsics.e(uriMatcher);
            if (uriMatcher.match(uri) == 200) {
                try {
                    j();
                    UriMatcher uriMatcher2 = f22395d;
                    Integer numValueOf = uriMatcher2 != null ? Integer.valueOf(uriMatcher2.match(uri)) : null;
                    if (numValueOf != null && numValueOf.intValue() == 100) {
                        v0 v0VarP0 = HSRoomDatabase.v0().p0();
                        if (selection == null) {
                            selection = "";
                        }
                        v0VarP0.b(new a(selection, selectionArgs));
                        return 0;
                    }
                    if (numValueOf != null && numValueOf.intValue() == 200) {
                        v3 v3VarH0 = HSRoomDatabase.v0().h0();
                        if (selection == null) {
                            selection = "";
                        }
                        v3VarH0.b(new a(selection, selectionArgs));
                        return 0;
                    }
                    if (numValueOf == null || numValueOf.intValue() != 300) {
                        if (numValueOf == null || numValueOf.intValue() != 400) {
                            return 0;
                        }
                    }
                    return ABContentProvider.delete(uri, selection, selectionArgs);
                } catch (SQLException e11) {
                    e4.b().e("HisavanaContentProvider", "delete sqlException: " + e11.getMessage());
                } catch (Exception e12) {
                    e4.b().e("HisavanaContentProvider", "delete exception: " + e12.getMessage());
                    return -1;
                }
            }
        }
        return -1;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        Intrinsics.h(uri, "uri");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00da  */
    /* JADX WARN: Code duplicated, block: B:44:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:45:0x00dd A[Catch: Exception -> 0x0054, TryCatch #0 {Exception -> 0x0054, blocks: (B:13:0x0044, B:15:0x004b, B:40:0x00d1, B:47:0x00e5, B:49:0x00eb, B:51:0x00f2, B:45:0x00dd, B:29:0x0089, B:31:0x0091, B:33:0x009f, B:21:0x005b, B:23:0x0063, B:25:0x0071), top: B:57:0x0044 }] */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e3, code lost:
    
        if (r2.intValue() == 400) goto L47;
     */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Uri insert(Uri uri, ContentValues values) {
        String str;
        boolean zD;
        Intrinsics.h(uri, "uri");
        if (f22395d == null || values == null) {
            e4.b().d("HisavanaContentProvider", "uriMatcher or values is null");
            return f("error/null_input");
        }
        if (e4.c()) {
            e4 e4VarB = e4.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("insert ");
            sb2.append(uri);
            sb2.append(' ');
            UriMatcher uriMatcher = f22395d;
            sb2.append(uriMatcher != null ? Integer.valueOf(uriMatcher.match(uri)) : null);
            e4VarB.d("HisavanaContentProvider", sb2.toString());
        }
        try {
            j();
            UriMatcher uriMatcher2 = f22395d;
            Integer numValueOf = uriMatcher2 != null ? Integer.valueOf(uriMatcher2.match(uri)) : null;
            boolean z10 = false;
            if (numValueOf == null || numValueOf.intValue() != 100) {
                if (numValueOf != null && numValueOf.intValue() == 200) {
                    str = "ad_data";
                    String asString = values.getAsString("AdsData");
                    if (!TextUtils.isEmpty(asString)) {
                        zD = k((List) GsonUtil.b(asString, new b().getType()));
                        z10 = zD;
                    }
                }
                if (numValueOf == null) {
                    if (numValueOf != null) {
                    }
                    e4.b().d("HisavanaContentProvider", "insert uri is wrong");
                    return f("error/invalid_uri");
                }
                if (numValueOf.intValue() != 300) {
                    if (numValueOf != null) {
                    }
                    e4.b().d("HisavanaContentProvider", "insert uri is wrong");
                    return f("error/invalid_uri");
                }
                Uri uriInsert = ABContentProvider.insert(uri, values);
                return uriInsert == null ? ABContentProvider.INSTANCE.getUri("error/invalid_uri") : uriInsert;
            }
            str = XLogUtil.TAG;
            String asString2 = values.getAsString("CloudConfig");
            if (!TextUtils.isEmpty(asString2)) {
                zD = d((List) GsonUtil.b(asString2, new c().getType()));
                z10 = zD;
            }
            return f(str + '/' + z10);
        } catch (Exception e11) {
            e4.b().e("HisavanaContentProvider", Log.getStackTraceString(e11));
            return f("error/exception");
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        try {
            Context context = getContext();
            Objects.requireNonNull(context);
            com.cloud.sdk.commonutil.util.e.i(context);
            return false;
        } catch (Exception e11) {
            e4.b().e("HisavanaContentProvider", "HSCoreUtil set context failed " + Log.getStackTraceString(e11));
            return false;
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Cursor cursorA;
        Intrinsics.h(uri, "uri");
        try {
            j();
            if (this.database == null) {
                return null;
            }
            UriMatcher uriMatcher = f22395d;
            Integer numValueOf = uriMatcher != null ? Integer.valueOf(uriMatcher.match(uri)) : null;
            if (numValueOf == null || numValueOf.intValue() != 100) {
                if (numValueOf != null && numValueOf.intValue() == 200) {
                    v3 v3VarH0 = HSRoomDatabase.v0().h0();
                    if (selection == null) {
                        selection = "";
                    }
                    cursorA = v3VarH0.a(new a(selection, selectionArgs));
                }
                if (numValueOf == null || numValueOf.intValue() != 300) {
                    if (numValueOf == null || numValueOf.intValue() != 400) {
                        if (numValueOf == null || numValueOf.intValue() != 500) {
                            return null;
                        }
                    }
                }
                return ABContentProvider.query(uri, projection, selection, selectionArgs, sortOrder);
            }
            v0 v0VarP0 = HSRoomDatabase.v0().p0();
            if (selection == null) {
                selection = "";
            }
            cursorA = v0VarP0.a(new a(selection, selectionArgs));
            return cursorA;
        } catch (Exception e11) {
            e4.b().e("HisavanaContentProvider", Log.getStackTraceString(e11));
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c0, code lost:
    
        if (r0.intValue() != 400) goto L45;
     */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        boolean zL;
        Intrinsics.h(uri, "uri");
        if (f22395d == null || values == null) {
            e4.b().d("HisavanaContentProvider", "uriMatcher or values is null");
            return -1;
        }
        e4.b().d("HisavanaContentProvider", "update " + values);
        try {
            j();
            UriMatcher uriMatcher = f22395d;
            Integer numValueOf = uriMatcher != null ? Integer.valueOf(uriMatcher.match(uri)) : null;
            if (numValueOf == null || numValueOf.intValue() != 100) {
                if (numValueOf != null && numValueOf.intValue() == 200) {
                    String asString = values.getAsString("AdsData");
                    Intrinsics.g(asString, "getAsString(...)");
                    if (asString.length() == 0) {
                        return -1;
                    }
                    Type type = new e().getType();
                    Intrinsics.g(type, "getType(...)");
                    zL = l((List) GsonUtil.b(asString, type));
                }
                if (numValueOf == null || numValueOf.intValue() != 300) {
                    if (numValueOf != null) {
                    }
                    e4.b().d("HisavanaContentProvider", "update uri is wrong");
                    return -1;
                }
                return ABContentProvider.update(uri, values, selection, selectionArgs);
            }
            String asString2 = values.getAsString("CloudConfig");
            Intrinsics.g(asString2, "getAsString(...)");
            if (asString2.length() == 0) {
                return -1;
            }
            Type type2 = new d().getType();
            Intrinsics.g(type2, "getType(...)");
            zL = m((List) GsonUtil.b(asString2, type2));
            return zL ? 1 : 0;
        } catch (SQLException e11) {
            e4.b().e("HisavanaContentProvider", "update sqlException: " + e11.getMessage());
            return -1;
        } catch (Exception e12) {
            e4.b().e("HisavanaContentProvider", "update exception: " + e12.getMessage());
            return -1;
        }
    }
}
