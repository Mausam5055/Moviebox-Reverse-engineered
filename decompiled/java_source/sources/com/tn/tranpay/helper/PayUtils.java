package com.tn.tranpay.helper;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.tn.lib.tranpay.R$string;
import com.tn.tranpay.TranPay;
import com.tn.tranpay.TranPayConfiguration;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeoutException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
public final class PayUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PayUtils f41636a = new PayUtils();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f41637b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f41638a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f41639b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f41640c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f41641d;

        public a(String packageName, List schemes, List list, String str) {
            Intrinsics.h(packageName, "packageName");
            Intrinsics.h(schemes, "schemes");
            this.f41638a = packageName;
            this.f41639b = schemes;
            this.f41640c = list;
            this.f41641d = str;
        }

        public /* synthetic */ a(String str, List list, List list2, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, list, (i11 & 4) != 0 ? null : list2, (i11 & 8) != 0 ? null : str2);
        }

        public final String a() {
            return this.f41641d;
        }

        public final String b() {
            return this.f41638a;
        }

        public final List c() {
            return this.f41639b;
        }

        public final List d() {
            return this.f41640c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f41638a, aVar.f41638a) && Intrinsics.c(this.f41639b, aVar.f41639b) && Intrinsics.c(this.f41640c, aVar.f41640c) && Intrinsics.c(this.f41641d, aVar.f41641d);
        }

        public int hashCode() {
            int iHashCode = ((this.f41638a.hashCode() * 31) + this.f41639b.hashCode()) * 31;
            List list = this.f41640c;
            int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
            String str = this.f41641d;
            return iHashCode2 + (str != null ? str.hashCode() : 0);
        }

        public String toString() {
            return "PaymentAppConfig(packageName=" + this.f41638a + ", schemes=" + this.f41639b + ", webFallbacks=" + this.f41640c + ", intentScheme=" + this.f41641d + ")";
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f41642a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static Map f41643b;

        static {
            b bVar = new b();
            f41642a = bVar;
            f41643b = new LinkedHashMap();
            bVar.d();
        }

        private b() {
        }

        private final void d() {
            f41643b.clear();
            f41643b.putAll(PayUtils.f41637b);
        }

        public final a a(String scheme, String host) {
            Intrinsics.h(scheme, "scheme");
            Intrinsics.h(host, "host");
            for (Map.Entry entry : f41643b.entrySet()) {
                String str = (String) entry.getKey();
                a aVar = (a) entry.getValue();
                List listC = aVar.c();
                String lowerCase = scheme.toLowerCase(Locale.ROOT);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
                if (listC.contains(lowerCase)) {
                    ai.a.g(ai.a.f619a, "PaymentAppConfigManager --> findMatchingConfig() --> 匹配到应用: " + str + " (scheme: " + scheme + ")", null, 2, null);
                    return aVar;
                }
                List listD = aVar.d();
                if (listD != null) {
                    Iterator it = listD.iterator();
                    while (it.hasNext()) {
                        String str2 = (String) CollectionsKt.k0(StringsKt.S0(StringsKt.Q(StringsKt.Q((String) it.next(), "https://", "", false, 4, null), "http://", "", false, 4, null), new String[]{"/"}, false, 0, 6, null));
                        if (str2 == null) {
                            str2 = "";
                        }
                        if (str2.length() > 0 && StringsKt.a0(host, str2, true)) {
                            ai.a.g(ai.a.f619a, "PaymentAppConfigManager --> findMatchingConfig() --> 匹配到应用: " + str + " (webFallback: " + str2 + ")", null, 2, null);
                            return aVar;
                        }
                    }
                }
            }
            return null;
        }

        public final a b(String packageName) {
            Intrinsics.h(packageName, "packageName");
            return (a) f41643b.get(packageName);
        }

        public final String c(String scheme) {
            Intrinsics.h(scheme, "scheme");
            for (Map.Entry entry : f41643b.entrySet()) {
                String str = (String) entry.getKey();
                List listC = ((a) entry.getValue()).c();
                String lowerCase = scheme.toLowerCase(Locale.ROOT);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
                if (listC.contains(lowerCase)) {
                    return str;
                }
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        DefaultConstructorMarker defaultConstructorMarker2 = null;
        String str = null;
        int i11 = 12;
        List list = null;
        f41637b = MapsKt.l(TuplesKt.a("com.gojek.app", new a("com.gojek.app", CollectionsKt.e("gojek"), CollectionsKt.o("https://gojek.link", "https://gopay.co.id/app"), null, 8, defaultConstructorMarker)), TuplesKt.a("com.telkom.mwallet", new a("com.telkom.mwallet", CollectionsKt.e("linkaja"), null, 0 == true ? 1 : 0, 12, defaultConstructorMarker)), TuplesKt.a("id.dana.app", new a("id.dana.app", CollectionsKt.e("dana"), 0 == true ? 1 : 0, null, 12, null)), TuplesKt.a("com.ovo.app", new a("com.ovo.app", CollectionsKt.e("ovo"), 0 == true ? 1 : 0, null, 12, null)), TuplesKt.a("com.shopee.payment", new a("com.shopee.payment", CollectionsKt.o("shopeepay", "shopeeid"), 0 == true ? 1 : 0, null, 12, null)), TuplesKt.a("com.tngdigital.tngo", new a("com.tngdigital.tngo", CollectionsKt.e("tng"), 0 == true ? 1 : 0, null, 12, null)), TuplesKt.a("my.com.asiainsurance.boost", new a("my.com.asiainsurance.boost", CollectionsKt.e("boost"), 0 == true ? 1 : 0, null, 12, null)), TuplesKt.a("com.grabtaxi.passenger", new a("com.grabtaxi.passenger", CollectionsKt.e("grabpay"), 0 == true ? 1 : 0, null, 12, null)), TuplesKt.a("sg.gov.tech.paynow", new a("sg.gov.tech.paynow", CollectionsKt.e("paynow"), 0 == true ? 1 : 0, null, 12, null)), TuplesKt.a("th.co.truemoney.wallet", new a("th.co.truemoney.wallet", CollectionsKt.e("truemoney"), CollectionsKt.e("https://tmn.app.link"), str, 8, defaultConstructorMarker2)), TuplesKt.a("th.co.promptpay", new a("th.co.promptpay", CollectionsKt.e("promptpay"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.linecorp.rabbitlinepay", new a("com.linecorp.rabbitlinepay", CollectionsKt.e("rabbitlinepay"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.globe.gcash.android", new a("com.globe.gcash.android", CollectionsKt.e("gcash"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.paymaya", new a("com.paymaya", CollectionsKt.e("paymaya"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("ph.coins.btc", new a("ph.coins.btc", CollectionsKt.e("coins"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.mservice.momotransfer", new a("com.mservice.momotransfer", CollectionsKt.e("momo"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.vng.zalopay", new a("com.vng.zalopay", CollectionsKt.e("zalopay"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.viettel.viettelpay", new a("com.viettel.viettelpay", CollectionsKt.e("viettelpay"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.ascendmoney.mobile", new a("com.ascendmoney.mobile", CollectionsKt.e("ascendmoney"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.eg.android.AlipayGphone", new a("com.eg.android.AlipayGphone", CollectionsKt.o("alipay", "alipays"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.tencent.mm", new a("com.tencent.mm", CollectionsKt.o("weixin", "wechat"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.paypal.android.p2pmobile", new a("com.paypal.android.p2pmobile", CollectionsKt.e("paypal"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("net.one97.paytm", new a("net.one97.paytm", CollectionsKt.o("paytmmp", "paytmgn"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.phonepe.app", new a("com.phonepe.app", CollectionsKt.e("phonepe"), list, str, i11, defaultConstructorMarker2)), TuplesKt.a("com.techlogix.mobilinkcustomer", new a("com.techlogix.mobilinkcustomer", CollectionsKt.e("jazzcash"), list, "intent://deeplink#Intent;scheme=jazzcash;package=com.techlogix.mobilinkcustomer;end", 4, defaultConstructorMarker2)));
    }

    private PayUtils() {
    }

    public static /* synthetic */ boolean e(PayUtils payUtils, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "tran_pay";
        }
        return payUtils.d(str, str2);
    }

    private final String f(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (Intrinsics.c(lowerCase, "gopay")) {
            return "com.gojek.app";
        }
        return null;
    }

    private final boolean h(Uri uri) {
        String host;
        String scheme = uri.getScheme();
        if (scheme == null || (host = uri.getHost()) == null) {
            return false;
        }
        ai.a aVar = ai.a.f619a;
        ai.a.g(aVar, "PayUtils --> handleDeepLinkGeneric() --> scheme = " + scheme + ", host = " + host + ", uri = " + uri, null, 2, null);
        a aVarA = b.f41642a.a(scheme, host);
        if (aVarA != null) {
            return k(uri, aVarA);
        }
        if (Intrinsics.c(scheme, "intent")) {
            return i(uri);
        }
        if (!Intrinsics.c(scheme, "https") && !Intrinsics.c(scheme, "http")) {
            if (CollectionsKt.o("http", "https").contains(scheme)) {
                return false;
            }
            String string = uri.toString();
            Intrinsics.g(string, "uri.toString()");
            return s(string, true);
        }
        if (l(uri)) {
            return true;
        }
        ai.a.g(aVar, "PayUtils --> handleDeepLinkGeneric() --> 未知 " + scheme + " 链接，尝试通用处理: " + uri, null, 2, null);
        String string2 = uri.toString();
        Intrinsics.g(string2, "uri.toString()");
        return s(string2, true);
    }

    private final boolean i(Uri uri) {
        ai.a aVar = ai.a.f619a;
        ai.a.g(aVar, "PayUtils --> handleIntentScheme() --> 处理 intent:// 协议: " + uri, null, 2, null);
        try {
            Intent uri2 = Intent.parseUri(uri.toString(), 1);
            uri2.addFlags(ASTNode.DEOP);
            TranPay tranPay = TranPay.f41486a;
            if (tranPay.d().getPackageManager().resolveActivity(uri2, 0) != null) {
                tranPay.d().startActivity(uri2);
                ai.a.g(aVar, "PayUtils --> handleIntentScheme() --> 成功启动 intent:// 协议", null, 2, null);
                return true;
            }
            ai.a.k(aVar, "PayUtils --> handleIntentScheme() --> 没有应用可以处理此 intent", null, 2, null);
            String str = uri2.getPackage();
            if (str != null && str.length() != 0) {
                ai.a.g(aVar, "PayUtils --> handleIntentScheme() --> 尝试跳转应用市场: " + str, null, 2, null);
                return r(this, str, false, 2, null);
            }
            return false;
        } catch (Exception e11) {
            ai.a.e(ai.a.f619a, "PayUtils --> handleIntentScheme() --> 启动失败: " + e11.getMessage(), null, 2, null);
            return false;
        }
    }

    private final boolean j(String str) {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        boolean z10 = false;
        if (scheme == null) {
            return false;
        }
        ai.a aVar = ai.a.f619a;
        ai.a.g(aVar, "PayUtils --> handleNoAppFound() --> 尝试处理未匹配的 DeepLink: scheme = " + scheme, null, 2, null);
        String strC = b.f41642a.c(scheme);
        if (strC == null) {
            strC = f(scheme);
        }
        if (strC == null) {
            ai.a.k(aVar, "PayUtils --> handleNoAppFound() --> 未知协议: " + scheme + "，尝试通用方式打开", null, 2, null);
            try {
                Intent intent = new Intent("android.intent.action.VIEW", uri);
                intent.addFlags(ASTNode.DEOP);
                TranPay.f41486a.d().startActivity(intent);
                ai.a.g(aVar, "PayUtils --> handleNoAppFound() --> 通用方式打开成功", null, 2, null);
                return true;
            } catch (Exception e11) {
                ai.a.k(ai.a.f619a, "PayUtils --> handleNoAppFound() --> 通用方式打开失败: " + e11.getMessage() + "，返回 false（已阻止 WebView 加载）", null, 2, null);
                return false;
            }
        }
        if (!e(this, strC, null, 2, null)) {
            ai.a.g(aVar, "PayUtils --> handleNoAppFound() --> 应用未安装，跳转应用市场: " + strC, null, 2, null);
            return r(this, strC, false, 2, null);
        }
        ai.a.g(aVar, "PayUtils --> handleNoAppFound() --> 应用已安装但无法直接处理此 DeepLink: " + strC, null, 2, null);
        ai.a.g(aVar, "PayUtils --> handleNoAppFound() --> DeepLink: " + uri, null, 2, null);
        try {
            Intent intent2 = new Intent("android.intent.action.VIEW", uri);
            intent2.addFlags(ASTNode.DEOP);
            TranPay.f41486a.d().startActivity(intent2);
            ai.a.g(aVar, "PayUtils --> handleNoAppFound() --> 系统默认方式成功打开", null, 2, null);
            z10 = true;
        } catch (Exception e12) {
            ai.a.k(ai.a.f619a, "PayUtils --> handleNoAppFound() --> 系统默认方式失败: " + e12.getMessage() + "，尝试其他方式", null, 2, null);
        }
        if (!z10) {
            a aVarB = b.f41642a.b(strC);
            if ((aVarB != null ? aVarB.a() : null) != null) {
                ai.a.g(ai.a.f619a, "PayUtils --> handleNoAppFound() --> 尝试使用配置的 intentScheme: " + aVarB.a(), null, 2, null);
                Uri uri2 = Uri.parse(aVarB.a());
                Intrinsics.g(uri2, "parse(config.intentScheme)");
                if (i(uri2)) {
                    return true;
                }
            }
        }
        return z10;
    }

    private final boolean k(Uri uri, a aVar) {
        String scheme = uri.getScheme();
        if (scheme == null) {
            return false;
        }
        ai.a aVar2 = ai.a.f619a;
        ai.a.g(aVar2, "PayUtils --> handlePaymentAppDeepLink() --> 处理 " + aVar.b() + " deeplink", null, 2, null);
        if (Intrinsics.c(scheme, "https") ? true : Intrinsics.c(scheme, "http")) {
            String string = uri.toString();
            Intrinsics.g(string, "uri.toString()");
            return t(string, aVar.b());
        }
        String string2 = uri.toString();
        Intrinsics.g(string2, "uri.toString()");
        boolean zS = s(string2, true);
        if (!zS) {
            if (aVar.a() != null) {
                ai.a.g(aVar2, "PayUtils --> handlePaymentAppDeepLink() --> 尝试使用配置的 intentScheme: " + aVar.a(), null, 2, null);
                Uri uri2 = Uri.parse(aVar.a());
                Intrinsics.g(uri2, "parse(config.intentScheme)");
                if (i(uri2)) {
                    return true;
                }
            }
            if (aVar.d() != null) {
                return u(uri, aVar);
            }
        }
        return zS;
    }

    private final boolean l(Uri uri) {
        String host = uri.getHost();
        if (host == null) {
            return false;
        }
        List listO = CollectionsKt.o("gojek.link", "gopay.co.id", "alipay.com", "paypal.com", "paytm.com", "phonepe.com", "linkaja.id", "app.link", "onelink.me");
        if (!(listO instanceof Collection) || !listO.isEmpty()) {
            Iterator it = listO.iterator();
            while (it.hasNext()) {
                if (StringsKt.a0(host, (String) it.next(), true)) {
                    ai.a.g(ai.a.f619a, "PayUtils --> handleWebPaymentLink() --> 已知支付应用 Web 链接: " + host, null, 2, null);
                    String string = uri.toString();
                    Intrinsics.g(string, "uri.toString()");
                    return s(string, true);
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(Function0 onConfirm, DialogInterface dialogInterface, int i11) {
        Intrinsics.h(onConfirm, "$onConfirm");
        dialogInterface.dismiss();
        onConfirm.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(Function0 onCancel, DialogInterface dialogInterface, int i11) {
        Intrinsics.h(onCancel, "$onCancel");
        dialogInterface.dismiss();
        onCancel.invoke();
    }

    public static /* synthetic */ boolean r(PayUtils payUtils, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return payUtils.q(str, z10);
    }

    private final boolean t(String str, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(ASTNode.DEOP);
        if (!e(this, str2, null, 2, null)) {
            ai.a.g(ai.a.f619a, "PayUtils --> tryStartAppDirectly() --> 应用未安装: " + str2 + "，尝试通用方式打开", null, 2, null);
            return s(str, true);
        }
        ai.a aVar = ai.a.f619a;
        ai.a.g(aVar, "PayUtils --> tryStartAppDirectly() --> 应用已安装: " + str2 + "，直接启动", null, 2, null);
        intent.setPackage(str2);
        TranPay tranPay = TranPay.f41486a;
        if (tranPay.d().getPackageManager().resolveActivity(intent, 65536) == null) {
            ai.a.k(aVar, "PayUtils --> tryStartAppDirectly() --> 应用无法直接处理链接，尝试系统默认方式", null, 2, null);
            intent.setPackage(null);
            try {
                tranPay.d().startActivity(intent);
                ai.a.g(aVar, "PayUtils --> tryStartAppDirectly() --> 成功用系统默认方式打开", null, 2, null);
                return true;
            } catch (Exception e11) {
                ai.a.e(ai.a.f619a, "PayUtils --> tryStartAppDirectly() --> 系统默认方式也失败: " + e11.getMessage(), null, 2, null);
                return false;
            }
        }
        try {
            tranPay.d().startActivity(intent);
            ai.a.g(aVar, "PayUtils --> tryStartAppDirectly() --> 成功启动应用: " + str2, null, 2, null);
            return true;
        } catch (Exception e12) {
            ai.a.e(ai.a.f619a, "PayUtils --> tryStartAppDirectly() --> 启动失败: " + e12.getMessage(), null, 2, null);
            return false;
        }
    }

    private final boolean u(Uri uri, a aVar) {
        String path = uri.getPath();
        if (path == null) {
            return false;
        }
        String query = uri.getQuery();
        if (query == null) {
            query = "";
        }
        List listD = aVar.d();
        if (listD == null) {
            return false;
        }
        Iterator it = listD.iterator();
        while (it.hasNext()) {
            String str = ((String) it.next()) + path + UrlUtils.QUESTION_MARK + query;
            ai.a.g(ai.a.f619a, "PayUtils --> tryWebFallbacks() --> 尝试 Web 回退: " + str, null, 2, null);
            if (s(str, true)) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(String str, String tag) {
        Object objM454constructorimpl;
        Intrinsics.h(tag, "tag");
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(TranPay.f41486a.d().getPackageManager().getPackageInfo(str == null ? "" : str, 0) != null));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            if (TranPayConfiguration.f41490a.p()) {
                ai.a.f619a.b("PayUtils --> checkAppInstalled() --> 应用未安装 [包名: " + str + "] [异常类型: " + thM457exceptionOrNullimpl.getClass().getSimpleName() + "]", tag);
            }
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final boolean g(String link) {
        Intrinsics.h(link, "link");
        Uri uri = Uri.parse(link);
        Intrinsics.g(uri, "uri");
        return h(uri);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:12|13|35|40|22|(1:24)(1:25)) */
    /* JADX WARN: Code duplicated, block: B:24:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x0089  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009b, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009c, code lost:
    
        r16 = r4;
        r4 = r1;
        r1 = r16;
        r17 = r8;
        r8 = r12;
        r12 = r17;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00b0, please report this as an issue */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00e5 -> B:13:0x003c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m(long j11, long j12, Function1 function1, Continuation continuation) throws Throwable {
        PayUtils$retryWithFixedIntervalAndTimeLimit$1 payUtils$retryWithFixedIntervalAndTimeLimit$1;
        long j13;
        PayUtils$retryWithFixedIntervalAndTimeLimit$1 payUtils$retryWithFixedIntervalAndTimeLimit$2;
        long jCurrentTimeMillis;
        long j14;
        Function1 function2;
        long j15;
        long j16;
        Function1 function3;
        if (continuation instanceof PayUtils$retryWithFixedIntervalAndTimeLimit$1) {
            payUtils$retryWithFixedIntervalAndTimeLimit$1 = (PayUtils$retryWithFixedIntervalAndTimeLimit$1) continuation;
            int i11 = payUtils$retryWithFixedIntervalAndTimeLimit$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                payUtils$retryWithFixedIntervalAndTimeLimit$1.label = i11 - Integer.MIN_VALUE;
            } else {
                payUtils$retryWithFixedIntervalAndTimeLimit$1 = new PayUtils$retryWithFixedIntervalAndTimeLimit$1(this, continuation);
            }
        } else {
            payUtils$retryWithFixedIntervalAndTimeLimit$1 = new PayUtils$retryWithFixedIntervalAndTimeLimit$1(this, continuation);
        }
        Object objG = payUtils$retryWithFixedIntervalAndTimeLimit$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = payUtils$retryWithFixedIntervalAndTimeLimit$1.label;
        int i13 = 1;
        if (i12 == 0) {
            ResultKt.b(objG);
            j13 = j12;
            payUtils$retryWithFixedIntervalAndTimeLimit$2 = payUtils$retryWithFixedIntervalAndTimeLimit$1;
            jCurrentTimeMillis = System.currentTimeMillis();
            j14 = j11;
            function2 = function1;
            i0 i0VarA = y0.a();
            PayUtils$retryWithFixedIntervalAndTimeLimit$2 payUtils$retryWithFixedIntervalAndTimeLimit$3 = new PayUtils$retryWithFixedIntervalAndTimeLimit$2(function2, null);
            payUtils$retryWithFixedIntervalAndTimeLimit$2.L$0 = function2;
            payUtils$retryWithFixedIntervalAndTimeLimit$2.J$0 = j14;
            payUtils$retryWithFixedIntervalAndTimeLimit$2.J$1 = j13;
            payUtils$retryWithFixedIntervalAndTimeLimit$2.J$2 = jCurrentTimeMillis;
            payUtils$retryWithFixedIntervalAndTimeLimit$2.label = i13;
            objG = i.g(i0VarA, payUtils$retryWithFixedIntervalAndTimeLimit$3, payUtils$retryWithFixedIntervalAndTimeLimit$2);
            if (objG == objF) {
                return objF;
            }
            PayUtils$retryWithFixedIntervalAndTimeLimit$1 payUtils$retryWithFixedIntervalAndTimeLimit$4 = payUtils$retryWithFixedIntervalAndTimeLimit$2;
            function3 = function2;
            payUtils$retryWithFixedIntervalAndTimeLimit$1 = payUtils$retryWithFixedIntervalAndTimeLimit$4;
            long j17 = j14;
            j16 = jCurrentTimeMillis;
            j15 = j17;
        } else if (i12 == 1) {
            j16 = payUtils$retryWithFixedIntervalAndTimeLimit$1.J$2;
            j13 = payUtils$retryWithFixedIntervalAndTimeLimit$1.J$1;
            j15 = payUtils$retryWithFixedIntervalAndTimeLimit$1.J$0;
            function3 = (Function1) payUtils$retryWithFixedIntervalAndTimeLimit$1.L$0;
            try {
                ResultKt.b(objG);
            } catch (Exception e11) {
                Exception e12 = e11;
                if ((System.currentTimeMillis() - j16) + j15 > j13) {
                    ai.a.g(ai.a.f619a, "Exceeded maximum retry time", null, 2, null);
                    throw new TimeoutException("Exceeded maximum retry time");
                }
                ai.a.e(ai.a.f619a, "Action failed: " + e12.getMessage() + ". Retrying in " + j15 + "ms", null, 2, null);
                payUtils$retryWithFixedIntervalAndTimeLimit$1.L$0 = function3;
                payUtils$retryWithFixedIntervalAndTimeLimit$1.J$0 = j15;
                payUtils$retryWithFixedIntervalAndTimeLimit$1.J$1 = j13;
                payUtils$retryWithFixedIntervalAndTimeLimit$1.J$2 = j16;
                payUtils$retryWithFixedIntervalAndTimeLimit$1.label = 2;
                if (u0.a(j15, payUtils$retryWithFixedIntervalAndTimeLimit$1) == objF) {
                    return objF;
                }
                Function1 function4 = function3;
                payUtils$retryWithFixedIntervalAndTimeLimit$2 = payUtils$retryWithFixedIntervalAndTimeLimit$1;
                function2 = function4;
                long j18 = j16;
                j14 = j15;
                jCurrentTimeMillis = j18;
                i13 = 1;
                i0 i0VarA2 = y0.a();
                PayUtils$retryWithFixedIntervalAndTimeLimit$2 payUtils$retryWithFixedIntervalAndTimeLimit$5 = new PayUtils$retryWithFixedIntervalAndTimeLimit$2(function2, null);
                payUtils$retryWithFixedIntervalAndTimeLimit$2.L$0 = function2;
                payUtils$retryWithFixedIntervalAndTimeLimit$2.J$0 = j14;
                payUtils$retryWithFixedIntervalAndTimeLimit$2.J$1 = j13;
                payUtils$retryWithFixedIntervalAndTimeLimit$2.J$2 = jCurrentTimeMillis;
                payUtils$retryWithFixedIntervalAndTimeLimit$2.label = i13;
                objG = i.g(i0VarA2, payUtils$retryWithFixedIntervalAndTimeLimit$5, payUtils$retryWithFixedIntervalAndTimeLimit$2);
                if (objG == objF) {
                    return objF;
                }
                PayUtils$retryWithFixedIntervalAndTimeLimit$1 payUtils$retryWithFixedIntervalAndTimeLimit$6 = payUtils$retryWithFixedIntervalAndTimeLimit$2;
                function3 = function2;
                payUtils$retryWithFixedIntervalAndTimeLimit$1 = payUtils$retryWithFixedIntervalAndTimeLimit$6;
                long j19 = j14;
                j16 = jCurrentTimeMillis;
                j15 = j19;
            }
        } else {
            if (i12 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j16 = payUtils$retryWithFixedIntervalAndTimeLimit$1.J$2;
            j13 = payUtils$retryWithFixedIntervalAndTimeLimit$1.J$1;
            j15 = payUtils$retryWithFixedIntervalAndTimeLimit$1.J$0;
            function3 = (Function1) payUtils$retryWithFixedIntervalAndTimeLimit$1.L$0;
            ResultKt.b(objG);
            Function1 function5 = function3;
            payUtils$retryWithFixedIntervalAndTimeLimit$2 = payUtils$retryWithFixedIntervalAndTimeLimit$1;
            function2 = function5;
            long j110 = j16;
            j14 = j15;
            jCurrentTimeMillis = j110;
            i13 = 1;
            i0 i0VarA3 = y0.a();
            PayUtils$retryWithFixedIntervalAndTimeLimit$2 payUtils$retryWithFixedIntervalAndTimeLimit$7 = new PayUtils$retryWithFixedIntervalAndTimeLimit$2(function2, null);
            payUtils$retryWithFixedIntervalAndTimeLimit$2.L$0 = function2;
            payUtils$retryWithFixedIntervalAndTimeLimit$2.J$0 = j14;
            payUtils$retryWithFixedIntervalAndTimeLimit$2.J$1 = j13;
            payUtils$retryWithFixedIntervalAndTimeLimit$2.J$2 = jCurrentTimeMillis;
            payUtils$retryWithFixedIntervalAndTimeLimit$2.label = i13;
            objG = i.g(i0VarA3, payUtils$retryWithFixedIntervalAndTimeLimit$7, payUtils$retryWithFixedIntervalAndTimeLimit$2);
            if (objG == objF) {
                return objF;
            }
            PayUtils$retryWithFixedIntervalAndTimeLimit$1 payUtils$retryWithFixedIntervalAndTimeLimit$8 = payUtils$retryWithFixedIntervalAndTimeLimit$2;
            function3 = function2;
            payUtils$retryWithFixedIntervalAndTimeLimit$1 = payUtils$retryWithFixedIntervalAndTimeLimit$8;
            long j111 = j14;
            j16 = jCurrentTimeMillis;
            j15 = j111;
        }
        ai.a.c(ai.a.f619a, "Action succeeded", null, 2, null);
        return objG;
    }

    public final void n(Context context, final Function0 onConfirm, final Function0 onCancel) {
        Intrinsics.h(context, "context");
        Intrinsics.h(onConfirm, "onConfirm");
        Intrinsics.h(onCancel, "onCancel");
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(context.getString(R$string.tranpay_abandon_transaction));
        builder.setPositiveButton(context.getString(R$string.tranpay_confirm), new DialogInterface.OnClickListener() { // from class: com.tn.tranpay.helper.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                PayUtils.o(onConfirm, dialogInterface, i11);
            }
        });
        builder.setNegativeButton(context.getString(R$string.tranpay_cancel), new DialogInterface.OnClickListener() { // from class: com.tn.tranpay.helper.f
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                PayUtils.p(onCancel, dialogInterface, i11);
            }
        });
        builder.create().show();
    }

    public final boolean q(String packageName, boolean z10) {
        String str;
        Intrinsics.h(packageName, "packageName");
        try {
            if (z10) {
                str = MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK + packageName;
            } else {
                str = MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK + packageName;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(ASTNode.DEOP);
            TranPay.f41486a.d().startActivity(intent);
            ai.a.g(ai.a.f619a, "PayUtils --> startAppMarket() --> 成功启动应用市场: " + packageName, null, 2, null);
            return true;
        } catch (Exception e11) {
            ai.a aVar = ai.a.f619a;
            ai.a.e(aVar, "PayUtils --> startAppMarket() --> 启动应用市场失败: " + e11, null, 2, null);
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + packageName));
                intent2.addFlags(ASTNode.DEOP);
                TranPay.f41486a.d().startActivity(intent2);
                ai.a.g(aVar, "PayUtils --> startAppMarket() --> 使用 Google Play 启动: " + packageName, null, 2, null);
                return true;
            } catch (Exception e12) {
                ai.a.e(ai.a.f619a, "PayUtils --> startAppMarket() --> Google Play 也失败: " + e12, null, 2, null);
                return false;
            }
        }
    }

    public final boolean s(String url, boolean z10) {
        Intrinsics.h(url, "url");
        if (url.length() == 0) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
            if (z10) {
                intent.addFlags(ASTNode.DEOP);
            }
            TranPay tranPay = TranPay.f41486a;
            if (tranPay.d().getPackageManager().resolveActivity(intent, 0) == null) {
                ai.a.k(ai.a.f619a, "PayUtils --> startUrl() --> 没有应用能处理: " + url, null, 2, null);
                return j(url);
            }
            tranPay.d().startActivity(intent);
            ai.a.g(ai.a.f619a, "PayUtils --> startUrl() --> 成功启动: " + url, null, 2, null);
            return true;
        } catch (ActivityNotFoundException e11) {
            ai.a.e(ai.a.f619a, "PayUtils --> startUrl() --> ActivityNotFoundException: " + e11, null, 2, null);
            return j(url);
        } catch (Exception e12) {
            ai.a.e(ai.a.f619a, "PayUtils --> startUrl() --> 启动失败: " + e12, null, 2, null);
            return false;
        }
    }
}
