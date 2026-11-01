package com.transsnet.loginapi;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.inject.Singleton;
import com.transsnet.loginapi.bean.Country;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import dz.a;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.Response;

/* JADX INFO: loaded from: classes.dex */
@Singleton
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\bg\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\nH&¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\nH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0002H&¢\u0006\u0004\b\u0011\u0010\u0006J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u0002H&¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\nH¦@¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H&¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H&¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH&¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH&¢\u0006\u0004\b!\u0010 J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"H&¢\u0006\u0004\b$\u0010%J\u0011\u0010'\u001a\u0004\u0018\u00010&H&¢\u0006\u0004\b'\u0010(J\u000f\u0010*\u001a\u00020)H&¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u00020\u00042\u0006\u0010,\u001a\u00020)H&¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0017H&¢\u0006\u0004\b/\u00100¨\u00061"}, d2 = {"Lcom/transsnet/loginapi/ILoginApi;", "", "Landroid/content/Context;", "app", "", CampaignEx.JSON_KEY_AD_K, "(Landroid/content/Context;)V", "", "a", "()Z", "Lcom/transsnet/loginapi/bean/UserInfo;", "i", "()Lcom/transsnet/loginapi/bean/UserInfo;", "userInfo", "c", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "context", "j", "Landroid/content/Intent;", "o", "(Landroid/content/Context;)Landroid/content/Intent;", "l", "(Lcom/transsnet/loginapi/bean/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "userId", "f", "(Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "Ldz/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "g", "(Ldz/a;)V", TtmlNode.TAG_P, "Lokhttp3/Response;", "response", "h", "(Lokhttp3/Response;)V", "Lcom/transsnet/loginapi/bean/Country;", "e", "()Lcom/transsnet/loginapi/bean/Country;", "", "n", "()J", "launchCount", "m", "(J)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Ljava/lang/String;", "LoginApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface ILoginApi {
    boolean a();

    String b();

    void c(UserInfo userInfo);

    void d();

    Country e();

    void f(String userId);

    void g(a listener);

    void h(Response response);

    UserInfo i();

    void j(Context context);

    void k(Context app);

    Object l(UserInfo userInfo, Continuation continuation);

    void m(long launchCount);

    long n();

    Intent o(Context context);

    void p(a listener);
}
