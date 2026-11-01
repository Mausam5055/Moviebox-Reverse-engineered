package bi;

import android.os.SystemClock;
import androidx.core.view.PointerIconCompat;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.net.URL;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import org.chromium.net.CronetException;
import org.chromium.net.NetworkException;
import org.chromium.net.RequestFinishedInfo;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f16473a = new b();

    private b() {
    }

    private final boolean a() {
        k kVar = k.f16534a;
        return kVar.f() || SystemClock.uptimeMillis() - kVar.b() > 3000;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00c5  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void b(RequestFinishedInfo requestInfo, int i11, String channel, String tag, boolean z10, boolean z11, boolean z12) {
        int i12;
        int iB;
        List<String> list;
        List<String> list2;
        Object next;
        String strSubstring;
        int i13;
        Intrinsics.h(requestInfo, "requestInfo");
        Intrinsics.h(channel, "channel");
        Intrinsics.h(tag, "tag");
        if (z11 && requestInfo.getFinishedReason() == 2) {
            return;
        }
        UrlResponseInfo responseInfo = requestInfo.getResponseInfo();
        String negotiatedProtocol = responseInfo != null ? responseInfo.getNegotiatedProtocol() : null;
        if (negotiatedProtocol == null) {
            negotiatedProtocol = "";
        }
        e eVarA = e.J.a(i11, channel);
        eVarA.V(2);
        eVarA.Z(negotiatedProtocol);
        UrlResponseInfo responseInfo2 = requestInfo.getResponseInfo();
        int httpStatusCode = responseInfo2 != null ? responseInfo2.getHttpStatusCode() : 480;
        RequestFinishedInfo.Metrics metrics = requestInfo.getMetrics();
        int iQ = RangesKt.q(new IntRange(1, 10), Random.INSTANCE);
        String string = requestInfo.getUrl().toString();
        eVarA.P(iQ <= 2 ? string : "");
        try {
            Collection<Object> annotations = requestInfo.getAnnotations();
            Intrinsics.g(annotations, "requestInfo.annotations");
            Iterator<T> it = annotations.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(next instanceof Headers));
            Headers headers = next instanceof Headers ? (Headers) next : null;
            if (headers != null) {
                String str = headers.get("isDownload");
                if (str != null) {
                    int iHashCode = str.hashCode();
                    if (iHashCode != 84) {
                        if (iHashCode == 3569038 && str.equals("true")) {
                            i13 = 1;
                        } else {
                            i13 = 0;
                        }
                    } else if (str.equals("T")) {
                        i13 = 1;
                    } else {
                        i13 = 0;
                    }
                    eVarA.l0(i13);
                }
                eVarA.X(Intrinsics.c(headers.get("offlineAd"), "1") ? 1 : 0);
            } else {
                headers = null;
            }
            String str2 = headers != null ? headers.get("infoeyes-tag") : null;
            if (str2 == null) {
                str2 = tag;
            }
            eVarA.O(str2);
            if (eVarA.G() == 0 && StringsKt.c0(string, UrlUtils.QUESTION_MARK, false, 2, null)) {
                i12 = 0;
                try {
                    strSubstring = string.substring(0, StringsKt.o0(string, UrlUtils.QUESTION_MARK, 0, false, 6, null));
                    Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                } catch (Exception e11) {
                    e = e11;
                    String message = e.getMessage();
                    if (message != null) {
                        c.c(message);
                    }
                }
            } else {
                i12 = 0;
                strSubstring = string;
            }
            eVarA.g0(strSubstring);
            String host = new URL(string).getHost();
            String path = new URL(string).getPath();
            Intrinsics.g(host, "host");
            eVarA.U(host);
            Intrinsics.g(path, "path");
            eVarA.Y(path);
        } catch (Exception e12) {
            e = e12;
            i12 = 0;
        }
        if (requestInfo.getFinishedReason() == 0) {
            eVarA.I(1);
            Date dnsStart = metrics.getDnsStart();
            long time = dnsStart != null ? dnsStart.getTime() : 0L;
            Date dnsEnd = metrics.getDnsEnd();
            eVarA.R((dnsEnd != null ? dnsEnd.getTime() : 0L) - time);
            Date sslStart = metrics.getSslStart();
            long time2 = sslStart != null ? sslStart.getTime() : 0L;
            Date sslEnd = metrics.getSslEnd();
            eVarA.i0((sslEnd != null ? sslEnd.getTime() : 0L) - time2);
            Date connectStart = metrics.getConnectStart();
            long time3 = connectStart != null ? connectStart.getTime() : 0L;
            Date connectEnd = metrics.getConnectEnd();
            eVarA.j0((connectEnd != null ? connectEnd.getTime() : 0L) - time3);
            Date sendingStart = metrics.getSendingStart();
            long time4 = sendingStart != null ? sendingStart.getTime() : 0L;
            Date sendingEnd = metrics.getSendingEnd();
            long time5 = sendingEnd != null ? sendingEnd.getTime() : 0L;
            eVarA.f0(time5 - time4);
            Date responseStart = metrics.getResponseStart();
            long time6 = responseStart != null ? responseStart.getTime() : 0L;
            Date requestEnd = metrics.getRequestEnd();
            eVarA.a0((requestEnd != null ? requestEnd.getTime() : 0L) - time6);
            eVarA.m0(time6 - time5);
            Long receivedByteCount = metrics.getReceivedByteCount();
            eVarA.e0(receivedByteCount == null ? 0L : receivedByteCount.longValue());
            Long sentByteCount = metrics.getSentByteCount();
            eVarA.b0(sentByteCount == null ? 0L : sentByteCount.longValue());
            UrlResponseInfo responseInfo3 = requestInfo.getResponseInfo();
            Map<String, List<String>> allHeaders = responseInfo3 != null ? responseInfo3.getAllHeaders() : null;
            List<String> list3 = allHeaders != null ? allHeaders.get(HttpHeaders.CONTENT_ENCODING) : null;
            if (list3 != null) {
                Iterator<String> it2 = list3.iterator();
                if (it2.hasNext()) {
                    String contentEncoding = it2.next();
                    Intrinsics.g(contentEncoding, "contentEncoding");
                    eVarA.Q(contentEncoding);
                }
            }
            String str3 = (allHeaders == null || (list2 = allHeaders.get("server-time")) == null) ? null : list2.get(i12);
            if (str3 == null) {
                str3 = "0";
            }
            eVarA.h0(Long.parseLong(str3));
            Long totalTimeMs = metrics.getTotalTimeMs();
            eVarA.c0(totalTimeMs == null ? 0L : totalTimeMs.longValue());
            if (eVarA.G() == 1) {
                String str4 = (allHeaders == null || (list = allHeaders.get("x-response-cdn")) == null) ? null : list.get(i12);
                eVarA.K(str4 == null ? "" : str4);
                Date requestStart = metrics.getRequestStart();
                eVarA.L(time6 - (requestStart != null ? requestStart.getTime() : 0L));
                eVarA.J(eVarA.u());
                eVarA.M(String.valueOf((eVarA.y() / 1024.0f) / (eVarA.u() / 1000.0f)));
            }
        } else {
            eVarA.I(2);
            boolean z13 = requestInfo.getFinishedReason() != 2 ? i12 : 1;
            CronetException exception = requestInfo.getException();
            String message2 = exception != null ? exception.getMessage() : null;
            String str5 = message2 == null ? "" : message2;
            if (requestInfo.getException() instanceof NetworkException) {
                CronetException exception2 = requestInfo.getException();
                Intrinsics.f(exception2, "null cannot be cast to non-null type org.chromium.net.NetworkException");
                NetworkException networkException = (NetworkException) exception2;
                if (a()) {
                    k kVar = k.f16534a;
                    if (!kVar.g()) {
                        str5 = "Network disconnect";
                        httpStatusCode = 1020;
                    } else if (kVar.e()) {
                        iB = PointerIconCompat.TYPE_GRABBING;
                        str5 = "Fake Network";
                    } else {
                        iB = a.f16472a.b(httpStatusCode, networkException, z13);
                    }
                } else {
                    iB = a.f16472a.b(httpStatusCode, networkException, z13);
                }
                httpStatusCode = iB;
            } else {
                httpStatusCode = z13 != 0 ? 1050 : 480;
            }
            eVarA.T(str5);
        }
        eVarA.S(httpStatusCode);
        if (z10 || httpStatusCode == 304) {
            return;
        }
        if (z12 && httpStatusCode == 1020) {
            return;
        }
        c.g(eVarA);
    }
}
