package com.transsion.subtitle.helper;

import android.app.Application;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.google.gson.reflect.TypeToken;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import com.transsion.mb.config.manager.ConfigBean;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import lj.d1;
import nh.m;
import okio.Okio;

/* JADX INFO: loaded from: classes.dex */
public final class SubtitleSearchHelper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f54890c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f54891d = com.transsion.baselib.report.a.f43340a.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Lazy f54892e = LazyKt.b(new Function0() { // from class: com.transsion.subtitle.helper.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubtitleSearchHelper.h();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f54893a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f54894b;

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubtitleSearchHelper a() {
            return (SubtitleSearchHelper) SubtitleSearchHelper.f54892e.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x00be  */
    /* JADX WARN: Code duplicated, block: B:32:0x00d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:? A[LOOP:0: B:24:0x00b8->B:34:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(Continuation continuation) throws Throwable {
        SubtitleSearchHelper$initLocalLanguage$1 subtitleSearchHelper$initLocalLanguage$1;
        d1 d1VarA1;
        d1 d1Var;
        Iterator it;
        SubtitleLanguageMapBean subtitleLanguageMapBean;
        if (continuation instanceof SubtitleSearchHelper$initLocalLanguage$1) {
            subtitleSearchHelper$initLocalLanguage$1 = (SubtitleSearchHelper$initLocalLanguage$1) continuation;
            int i11 = subtitleSearchHelper$initLocalLanguage$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                subtitleSearchHelper$initLocalLanguage$1.label = i11 - Integer.MIN_VALUE;
            } else {
                subtitleSearchHelper$initLocalLanguage$1 = new SubtitleSearchHelper$initLocalLanguage$1(this, continuation);
            }
        } else {
            subtitleSearchHelper$initLocalLanguage$1 = new SubtitleSearchHelper$initLocalLanguage$1(this, continuation);
        }
        Object objA = subtitleSearchHelper$initLocalLanguage$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = subtitleSearchHelper$initLocalLanguage$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                d1VarA1 = (d1) subtitleSearchHelper$initLocalLanguage$1.L$0;
                ResultKt.b(objA);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) subtitleSearchHelper$initLocalLanguage$1.L$1;
                d1Var = (d1) subtitleSearchHelper$initLocalLanguage$1.L$0;
                ResultKt.b(objA);
            }
            while (it.hasNext()) {
                subtitleLanguageMapBean = (SubtitleLanguageMapBean) it.next();
                subtitleSearchHelper$initLocalLanguage$1.L$0 = d1Var;
                subtitleSearchHelper$initLocalLanguage$1.L$1 = it;
                subtitleSearchHelper$initLocalLanguage$1.label = 2;
                if (d1Var.c(subtitleLanguageMapBean, subtitleSearchHelper$initLocalLanguage$1) == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
        ResultKt.b(objA);
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        d1VarA1 = companion.b(applicationA).A1();
        subtitleSearchHelper$initLocalLanguage$1.L$0 = d1VarA1;
        subtitleSearchHelper$initLocalLanguage$1.label = 1;
        objA = d1VarA1.a(subtitleSearchHelper$initLocalLanguage$1);
        if (objA == objF) {
            return objF;
        }
        List list = (List) objA;
        if (list == null || list.isEmpty()) {
            List list2 = (List) o.e(i(), new TypeToken<List<SubtitleLanguageMapBean>>() { // from class: com.transsion.subtitle.helper.SubtitleSearchHelper$initLocalLanguage$type$1
            }.getType());
            lg.a.C0828a.r(lg.a.f68839a, f54891d, new String[]{"initLocalLanguage, localListSize:" + list2.size() + ", insert "}, false, 4, null);
            Intrinsics.e(list2);
            d1Var = d1VarA1;
            it = list2.iterator();
            while (it.hasNext()) {
                subtitleLanguageMapBean = (SubtitleLanguageMapBean) it.next();
                subtitleSearchHelper$initLocalLanguage$1.L$0 = d1Var;
                subtitleSearchHelper$initLocalLanguage$1.L$1 = it;
                subtitleSearchHelper$initLocalLanguage$1.label = 2;
                if (d1Var.c(subtitleLanguageMapBean, subtitleSearchHelper$initLocalLanguage$1) == objF) {
                    return objF;
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:102:0x0249 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x024f A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0283 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x029d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:131:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:133:0x0301 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:137:0x0278 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:140:? A[LOOP:0: B:94:0x0221->B:140:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:143:0x0196 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x01d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:147:0x01aa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0138 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x014d A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x015d A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x016b A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0177 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0187 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0195  */
    /* JADX WARN: Code duplicated, block: B:73:0x0198  */
    /* JADX WARN: Code duplicated, block: B:78:0x01a3 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:81:0x01b0 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01c4 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01ed A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:96:0x0227 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:13:0x0038, B:125:0x02b7, B:18:0x0054, B:94:0x0221, B:96:0x0227, B:100:0x0245, B:102:0x0249, B:110:0x0260, B:104:0x024f, B:106:0x0253, B:21:0x006d, B:93:0x01ee, B:22:0x0072, B:120:0x029e, B:25:0x007f, B:50:0x00fb, B:52:0x0102, B:55:0x010a, B:57:0x0138, B:60:0x015d, B:61:0x0165, B:63:0x016b, B:65:0x0177, B:66:0x0179, B:68:0x0187, B:69:0x018b, B:74:0x0199, B:76:0x019d, B:87:0x01d4, B:90:0x01da, B:78:0x01a3, B:79:0x01aa, B:81:0x01b0, B:83:0x01c4, B:84:0x01c8, B:58:0x014d, B:113:0x0279, B:115:0x027d, B:117:0x0283, B:39:0x00a8, B:41:0x00b8, B:44:0x00c0, B:46:0x00c6, B:122:0x02a1), top: B:136:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0241  */
    /* JADX WARN: Code duplicated, block: B:99:0x0244  */
    /* JADX WARN: Instruction removed from duplicated block: B:131:0x02cf, please report this as an issue */
    public final Object g(Continuation continuation) throws Throwable {
        SubtitleSearchHelper$innerUpdateLanguageList$1 subtitleSearchHelper$innerUpdateLanguageList$1;
        Object objM454constructorimpl;
        Throwable thM457exceptionOrNullimpl;
        List<SubtitleLanguageMapBean> list;
        d1 d1Var;
        List<SubtitleLanguageMapBean> list2;
        List list3;
        List list4;
        Ref.BooleanRef booleanRef;
        Ref.BooleanRef booleanRef2;
        Locale locale;
        boolean z10;
        List list5;
        d1 d1Var2;
        Ref.BooleanRef booleanRef3;
        Ref.BooleanRef booleanRef4;
        Locale locale2;
        Iterator it;
        String lan;
        String str;
        SubtitleLanguageMapBean subtitleLanguageMapBean;
        if (continuation instanceof SubtitleSearchHelper$innerUpdateLanguageList$1) {
            subtitleSearchHelper$innerUpdateLanguageList$1 = (SubtitleSearchHelper$innerUpdateLanguageList$1) continuation;
            int i11 = subtitleSearchHelper$innerUpdateLanguageList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                subtitleSearchHelper$innerUpdateLanguageList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                subtitleSearchHelper$innerUpdateLanguageList$1 = new SubtitleSearchHelper$innerUpdateLanguageList$1(this, continuation);
            }
        } else {
            subtitleSearchHelper$innerUpdateLanguageList$1 = new SubtitleSearchHelper$innerUpdateLanguageList$1(this, continuation);
        }
        Object obj = subtitleSearchHelper$innerUpdateLanguageList$1.result;
        Object objF = IntrinsicsKt.f();
        try {
            switch (subtitleSearchHelper$innerUpdateLanguageList$1.label) {
                case 0:
                    ResultKt.b(obj);
                    if (this.f54894b) {
                        return Unit.f67061a;
                    }
                    if (!m.f70474a.e()) {
                        subtitleSearchHelper$innerUpdateLanguageList$1.label = 1;
                        if (f(subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                            return objF;
                        }
                        return Unit.f67061a;
                    }
                    Result.Companion companion = Result.INSTANCE;
                    ConfigBean configBeanC = sm.f.f75407c.a().c("subtitle_language", true);
                    String value = configBeanC != null ? configBeanC.getValue() : null;
                    if (value != null && value.length() > 0) {
                        List list6 = (List) o.e(value, new TypeToken<List<SubtitleLanguageMapBean>>() { // from class: com.transsion.subtitle.helper.SubtitleSearchHelper$innerUpdateLanguageList$2$type$1
                        }.getType());
                        this.f54894b = true;
                        AppDatabase.Companion companion2 = AppDatabase.INSTANCE;
                        Application applicationA = Utils.a();
                        Intrinsics.g(applicationA, "getApp(...)");
                        d1 d1VarA1 = companion2.b(applicationA).A1();
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = list6;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = d1VarA1;
                        subtitleSearchHelper$innerUpdateLanguageList$1.label = 2;
                        Object objA = d1VarA1.a(subtitleSearchHelper$innerUpdateLanguageList$1);
                        if (objA == objF) {
                            return objF;
                        }
                        list = list6;
                        d1Var = d1VarA1;
                        obj = objA;
                        list2 = (List) obj;
                        list3 = list;
                        if (list3 != null && !list3.isEmpty()) {
                            lg.a.C0828a.f(lg.a.f68839a, f54891d, "get language , list = " + list, false, 4, null);
                            booleanRef = new Ref.BooleanRef();
                            booleanRef2 = new Ref.BooleanRef();
                            if (Build.VERSION.SDK_INT >= 24) {
                                locale = Utils.a().getResources().getConfiguration().getLocales().get(0);
                            } else {
                                locale = Utils.a().getResources().getConfiguration().locale;
                            }
                            if (list2 != null) {
                                z10 = false;
                                for (SubtitleLanguageMapBean subtitleLanguageMapBean2 : list2) {
                                    if (subtitleLanguageMapBean2.getInSearch()) {
                                        booleanRef.element = true;
                                    }
                                    if (Intrinsics.c(subtitleLanguageMapBean2.getLanAbbr(), locale.getLanguage())) {
                                        booleanRef.element = true;
                                        booleanRef2.element = true;
                                    }
                                    if (Intrinsics.c(subtitleLanguageMapBean2.getLanAbbr(), "en")) {
                                        z10 = true;
                                    }
                                }
                            } else {
                                z10 = false;
                            }
                            list5 = list2;
                            if (list5 != null || list5.isEmpty()) {
                                for (SubtitleLanguageMapBean subtitleLanguageMapBean3 : list) {
                                    if (Intrinsics.c(subtitleLanguageMapBean3.getLanAbbr(), locale.getLanguage())) {
                                        booleanRef.element = true;
                                        booleanRef2.element = true;
                                    }
                                    if (Intrinsics.c(subtitleLanguageMapBean3.getLanAbbr(), "en")) {
                                        z10 = true;
                                    }
                                }
                            }
                            if (!booleanRef.element && z10) {
                                subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = list;
                                subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = d1Var;
                                subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = booleanRef;
                                subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = booleanRef2;
                                subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = locale;
                                subtitleSearchHelper$innerUpdateLanguageList$1.label = 4;
                                if (d1Var.b("en", true, subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                                    return objF;
                                }
                            }
                            lg.a.C0828a.f(lg.a.f68839a, f54891d, "get language new,locale =" + locale.getLanguage() + " list = " + list, false, 4, null);
                            Iterator it2 = list.iterator();
                            d1Var2 = d1Var;
                            booleanRef3 = booleanRef;
                            booleanRef4 = booleanRef2;
                            locale2 = locale;
                            it = it2;
                            while (it.hasNext()) {
                                SubtitleLanguageMapBean subtitleLanguageMapBean4 = (SubtitleLanguageMapBean) it.next();
                                lan = subtitleLanguageMapBean4.getLan();
                                String lanIOS3 = subtitleLanguageMapBean4.getLanIOS3();
                                String lanName = subtitleLanguageMapBean4.getLanName();
                                if (Intrinsics.c(lan, "in_id")) {
                                    str = "in";
                                } else {
                                    str = lan;
                                }
                                subtitleLanguageMapBean = new SubtitleLanguageMapBean(lan, lanIOS3, lanName, (booleanRef3.element && Intrinsics.c(str, "en")) || (booleanRef4.element && Intrinsics.c(str, locale2.getLanguage())));
                                subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = d1Var2;
                                subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = booleanRef3;
                                subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = booleanRef4;
                                subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = locale2;
                                subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = it;
                                subtitleSearchHelper$innerUpdateLanguageList$1.label = 5;
                                if (d1Var2.c(subtitleLanguageMapBean, subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                                    return objF;
                                }
                            }
                        }
                        list4 = list2;
                        if (list4 != null || list4.isEmpty()) {
                            lg.a.C0828a.z(lg.a.f68839a, f54891d, "language list all null~", false, 4, null);
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = null;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = null;
                            subtitleSearchHelper$innerUpdateLanguageList$1.label = 3;
                            if (f(subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                                return objF;
                            }
                        }
                        return Unit.f67061a;
                    }
                    lg.a.C0828a.z(lg.a.f68839a, f54891d, "get language list null~", false, 4, null);
                    subtitleSearchHelper$innerUpdateLanguageList$1.label = 6;
                    if (f(subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                        return objF;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        this.f54894b = false;
                        lg.a.C0828a.l(lg.a.f68839a, f54891d, "get language list error:" + thM457exceptionOrNullimpl, false, 4, null);
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.label = 7;
                        if (f(subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 1:
                    ResultKt.b(obj);
                    return Unit.f67061a;
                case 2:
                    d1 d1Var3 = (d1) subtitleSearchHelper$innerUpdateLanguageList$1.L$1;
                    List list7 = (List) subtitleSearchHelper$innerUpdateLanguageList$1.L$0;
                    ResultKt.b(obj);
                    d1Var = d1Var3;
                    list = list7;
                    list2 = (List) obj;
                    list3 = list;
                    if (list3 != null) {
                        lg.a.C0828a.f(lg.a.f68839a, f54891d, "get language , list = " + list, false, 4, null);
                        booleanRef = new Ref.BooleanRef();
                        booleanRef2 = new Ref.BooleanRef();
                        if (Build.VERSION.SDK_INT >= 24) {
                            locale = Utils.a().getResources().getConfiguration().getLocales().get(0);
                        } else {
                            locale = Utils.a().getResources().getConfiguration().locale;
                        }
                        if (list2 != null) {
                            z10 = false;
                            while (r13.hasNext()) {
                                if (subtitleLanguageMapBean2.getInSearch()) {
                                    booleanRef.element = true;
                                }
                                if (Intrinsics.c(subtitleLanguageMapBean2.getLanAbbr(), locale.getLanguage())) {
                                    booleanRef.element = true;
                                    booleanRef2.element = true;
                                }
                                if (Intrinsics.c(subtitleLanguageMapBean2.getLanAbbr(), "en")) {
                                    z10 = true;
                                }
                            }
                        } else {
                            z10 = false;
                        }
                        list5 = list2;
                        if (list5 != null) {
                            while (r0.hasNext()) {
                                if (Intrinsics.c(subtitleLanguageMapBean3.getLanAbbr(), locale.getLanguage())) {
                                    booleanRef.element = true;
                                    booleanRef2.element = true;
                                }
                                if (Intrinsics.c(subtitleLanguageMapBean3.getLanAbbr(), "en")) {
                                    z10 = true;
                                }
                            }
                        } else {
                            while (r0.hasNext()) {
                                if (Intrinsics.c(subtitleLanguageMapBean3.getLanAbbr(), locale.getLanguage())) {
                                    booleanRef.element = true;
                                    booleanRef2.element = true;
                                }
                                if (Intrinsics.c(subtitleLanguageMapBean3.getLanAbbr(), "en")) {
                                    z10 = true;
                                }
                            }
                        }
                        if (!booleanRef.element) {
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = list;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = d1Var;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = booleanRef;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = booleanRef2;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = locale;
                            subtitleSearchHelper$innerUpdateLanguageList$1.label = 4;
                            if (d1Var.b("en", true, subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                                return objF;
                            }
                        }
                        lg.a.C0828a.f(lg.a.f68839a, f54891d, "get language new,locale =" + locale.getLanguage() + " list = " + list, false, 4, null);
                        Iterator it3 = list.iterator();
                        d1Var2 = d1Var;
                        booleanRef3 = booleanRef;
                        booleanRef4 = booleanRef2;
                        locale2 = locale;
                        it = it3;
                        while (it.hasNext()) {
                            SubtitleLanguageMapBean subtitleLanguageMapBean5 = (SubtitleLanguageMapBean) it.next();
                            lan = subtitleLanguageMapBean5.getLan();
                            String lanIOS4 = subtitleLanguageMapBean5.getLanIOS3();
                            String lanName2 = subtitleLanguageMapBean5.getLanName();
                            if (Intrinsics.c(lan, "in_id")) {
                                str = "in";
                            } else {
                                str = lan;
                            }
                            subtitleLanguageMapBean = new SubtitleLanguageMapBean(lan, lanIOS4, lanName2, (booleanRef3.element && Intrinsics.c(str, "en")) || (booleanRef4.element && Intrinsics.c(str, locale2.getLanguage())));
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = d1Var2;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = booleanRef3;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = booleanRef4;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = locale2;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = it;
                            subtitleSearchHelper$innerUpdateLanguageList$1.label = 5;
                            if (d1Var2.c(subtitleLanguageMapBean, subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                                return objF;
                            }
                        }
                        objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                        if (thM457exceptionOrNullimpl != null) {
                            this.f54894b = false;
                            lg.a.C0828a.l(lg.a.f68839a, f54891d, "get language list error:" + thM457exceptionOrNullimpl, false, 4, null);
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = null;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = null;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = null;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = null;
                            subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = null;
                            subtitleSearchHelper$innerUpdateLanguageList$1.label = 7;
                            if (f(subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                                return objF;
                            }
                        }
                        return Unit.f67061a;
                    }
                    list4 = list2;
                    if (list4 != null) {
                        lg.a.C0828a.z(lg.a.f68839a, f54891d, "language list all null~", false, 4, null);
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.label = 3;
                        if (f(subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                            return objF;
                        }
                    } else {
                        lg.a.C0828a.z(lg.a.f68839a, f54891d, "language list all null~", false, 4, null);
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.label = 3;
                        if (f(subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 3:
                    ResultKt.b(obj);
                    return Unit.f67061a;
                case 4:
                    locale = (Locale) subtitleSearchHelper$innerUpdateLanguageList$1.L$4;
                    booleanRef2 = (Ref.BooleanRef) subtitleSearchHelper$innerUpdateLanguageList$1.L$3;
                    booleanRef = (Ref.BooleanRef) subtitleSearchHelper$innerUpdateLanguageList$1.L$2;
                    d1Var = (d1) subtitleSearchHelper$innerUpdateLanguageList$1.L$1;
                    list = (List) subtitleSearchHelper$innerUpdateLanguageList$1.L$0;
                    ResultKt.b(obj);
                    lg.a.C0828a.f(lg.a.f68839a, f54891d, "get language new,locale =" + locale.getLanguage() + " list = " + list, false, 4, null);
                    Iterator it4 = list.iterator();
                    d1Var2 = d1Var;
                    booleanRef3 = booleanRef;
                    booleanRef4 = booleanRef2;
                    locale2 = locale;
                    it = it4;
                    while (it.hasNext()) {
                        SubtitleLanguageMapBean subtitleLanguageMapBean6 = (SubtitleLanguageMapBean) it.next();
                        lan = subtitleLanguageMapBean6.getLan();
                        String lanIOS5 = subtitleLanguageMapBean6.getLanIOS3();
                        String lanName3 = subtitleLanguageMapBean6.getLanName();
                        if (Intrinsics.c(lan, "in_id")) {
                            str = "in";
                        } else {
                            str = lan;
                        }
                        subtitleLanguageMapBean = new SubtitleLanguageMapBean(lan, lanIOS5, lanName3, (booleanRef3.element && Intrinsics.c(str, "en")) || (booleanRef4.element && Intrinsics.c(str, locale2.getLanguage())));
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = d1Var2;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = booleanRef3;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = booleanRef4;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = locale2;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = it;
                        subtitleSearchHelper$innerUpdateLanguageList$1.label = 5;
                        if (d1Var2.c(subtitleLanguageMapBean, subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                            return objF;
                        }
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        this.f54894b = false;
                        lg.a.C0828a.l(lg.a.f68839a, f54891d, "get language list error:" + thM457exceptionOrNullimpl, false, 4, null);
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.label = 7;
                        if (f(subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 5:
                    it = (Iterator) subtitleSearchHelper$innerUpdateLanguageList$1.L$4;
                    locale2 = (Locale) subtitleSearchHelper$innerUpdateLanguageList$1.L$3;
                    booleanRef4 = (Ref.BooleanRef) subtitleSearchHelper$innerUpdateLanguageList$1.L$2;
                    booleanRef3 = (Ref.BooleanRef) subtitleSearchHelper$innerUpdateLanguageList$1.L$1;
                    d1Var2 = (d1) subtitleSearchHelper$innerUpdateLanguageList$1.L$0;
                    ResultKt.b(obj);
                    while (it.hasNext()) {
                        SubtitleLanguageMapBean subtitleLanguageMapBean7 = (SubtitleLanguageMapBean) it.next();
                        lan = subtitleLanguageMapBean7.getLan();
                        String lanIOS6 = subtitleLanguageMapBean7.getLanIOS3();
                        String lanName4 = subtitleLanguageMapBean7.getLanName();
                        if (Intrinsics.c(lan, "in_id")) {
                            str = "in";
                        } else {
                            str = lan;
                        }
                        subtitleLanguageMapBean = new SubtitleLanguageMapBean(lan, lanIOS6, lanName4, (booleanRef3.element && Intrinsics.c(str, "en")) || (booleanRef4.element && Intrinsics.c(str, locale2.getLanguage())));
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = d1Var2;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = booleanRef3;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = booleanRef4;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = locale2;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = it;
                        subtitleSearchHelper$innerUpdateLanguageList$1.label = 5;
                        if (d1Var2.c(subtitleLanguageMapBean, subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                            return objF;
                        }
                    }
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        this.f54894b = false;
                        lg.a.C0828a.l(lg.a.f68839a, f54891d, "get language list error:" + thM457exceptionOrNullimpl, false, 4, null);
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.label = 7;
                        if (f(subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 6:
                    ResultKt.b(obj);
                    objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
                    thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                    if (thM457exceptionOrNullimpl != null) {
                        this.f54894b = false;
                        lg.a.C0828a.l(lg.a.f68839a, f54891d, "get language list error:" + thM457exceptionOrNullimpl, false, 4, null);
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$0 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$1 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$2 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$3 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.L$4 = null;
                        subtitleSearchHelper$innerUpdateLanguageList$1.label = 7;
                        if (f(subtitleSearchHelper$innerUpdateLanguageList$1) == objF) {
                            return objF;
                        }
                    }
                    return Unit.f67061a;
                case 7:
                    ResultKt.b(obj);
                    return Unit.f67061a;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubtitleSearchHelper h() {
        return new SubtitleSearchHelper();
    }

    private final String i() {
        try {
            InputStream inputStreamOpen = Utils.a().getResources().getAssets().open("sub_def_la.json");
            Intrinsics.e(inputStreamOpen);
            return Okio.buffer(Okio.source(inputStreamOpen)).readUtf8();
        } catch (Exception unused) {
            return null;
        }
    }

    public final String e(DownloadBean downloadBean) {
        String name;
        if (downloadBean == null || (name = downloadBean.getTitleName()) == null) {
            name = downloadBean != null ? downloadBean.getName() : null;
            if (name == null) {
                name = "";
            }
        }
        String strQ = name;
        String str = (downloadBean != null ? Integer.valueOf(downloadBean.getResolution()) : null) + "P";
        if (StringsKt.c0(strQ, (downloadBean != null ? Integer.valueOf(downloadBean.getResolution()) : null) + "P", false, 2, null)) {
            strQ = StringsKt.Q(strQ, str, "", false, 4, null);
        }
        return new Regex("[\\\\/:#*?\"<>|&]_-").replace(strQ, " ");
    }

    public final void j() {
        k.d(o0.a(y0.b()), null, null, new SubtitleSearchHelper$updateLanguageList$1(this, null), 3, null);
    }
}
