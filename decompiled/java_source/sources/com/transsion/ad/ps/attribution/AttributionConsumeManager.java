package com.transsion.ad.ps.attribution;

import android.text.TextUtils;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import com.transsion.ad.db.pslink.AttributionPoint;
import com.transsion.ad.ps.PSReportUtil;
import hi.f;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import nh.m;
import ni.b;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes5.dex */
public final class AttributionConsumeManager extends BaseAttributionProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AttributionConsumeManager f42177c = new AttributionConsumeManager();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicBoolean f42178d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AttributionPoint f42179e;

    private AttributionConsumeManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:74:0x0185  */
    /* JADX WARN: Code duplicated, block: B:75:0x018a  */
    /* JADX WARN: Code duplicated, block: B:78:0x018f  */
    /* JADX WARN: Code duplicated, block: B:79:0x0194  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object o(Continuation continuation) throws Throwable {
        AttributionConsumeManager$doNetWork$1 attributionConsumeManager$doNetWork$1;
        String reportUrl;
        AttributionPoint attributionPoint;
        AttributionPoint.AttributionType type;
        AttributionPoint attributionPoint2;
        String psId;
        if (continuation instanceof AttributionConsumeManager$doNetWork$1) {
            attributionConsumeManager$doNetWork$1 = (AttributionConsumeManager$doNetWork$1) continuation;
            int i11 = attributionConsumeManager$doNetWork$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                attributionConsumeManager$doNetWork$1.label = i11 - Integer.MIN_VALUE;
            } else {
                attributionConsumeManager$doNetWork$1 = new AttributionConsumeManager$doNetWork$1(this, continuation);
            }
        } else {
            attributionConsumeManager$doNetWork$1 = new AttributionConsumeManager$doNetWork$1(this, continuation);
        }
        Object obj = attributionConsumeManager$doNetWork$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = attributionConsumeManager$doNetWork$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            f fVar = f.f64472a;
            if (fVar.b()) {
                oi.a aVar = oi.a.f71022a;
                String strE = e();
                AttributionPoint attributionPoint3 = f42179e;
                AttributionPoint.AttributionType type2 = attributionPoint3 != null ? attributionPoint3.getType() : null;
                AttributionPoint attributionPoint4 = f42179e;
                Integer numD = attributionPoint4 != null ? Boxing.d(attributionPoint4.getId()) : null;
                AttributionPoint attributionPoint5 = f42179e;
                Integer numD2 = attributionPoint5 != null ? Boxing.d(attributionPoint5.getFailCount()) : null;
                AttributionPoint attributionPoint6 = f42179e;
                String psId2 = attributionPoint6 != null ? attributionPoint6.getPsId() : null;
                AttributionPoint attributionPoint7 = f42179e;
                oi.a.k(aVar, strE + " --> consume() --> 开始归因 --> type = " + type2 + " --> id = " + numD + " --> failCount = " + numD2 + " --> psId = " + psId2 + " --> url = " + (attributionPoint7 != null ? attributionPoint7.getReportUrl() : null), 0, false, 6, null);
            }
            Request.Builder builder = new Request.Builder();
            AttributionPoint attributionPoint8 = f42179e;
            if (attributionPoint8 == null || (reportUrl = attributionPoint8.getReportUrl()) == null) {
                reportUrl = "";
            }
            Response responseExecute = FirebasePerfOkHttpClient.execute(b.f70475a.d().newCall(builder.url(reportUrl).build()));
            if (responseExecute.isSuccessful()) {
                if (fVar.b()) {
                    oi.a aVar2 = oi.a.f71022a;
                    String strE2 = e();
                    AttributionPoint attributionPoint9 = f42179e;
                    AttributionPoint.AttributionType type3 = attributionPoint9 != null ? attributionPoint9.getType() : null;
                    AttributionPoint attributionPoint10 = f42179e;
                    Integer numD3 = attributionPoint10 != null ? Boxing.d(attributionPoint10.getId()) : null;
                    AttributionPoint attributionPoint11 = f42179e;
                    String psId3 = attributionPoint11 != null ? attributionPoint11.getPsId() : null;
                    AttributionPoint attributionPoint12 = f42179e;
                    String reportUrl2 = attributionPoint12 != null ? attributionPoint12.getReportUrl() : null;
                    oi.a.k(aVar2, strE2 + " --> consume() --> 归因成功 --> type = " + type3 + " --> id = " + numD3 + " --> psId = " + psId3 + " --> url = " + reportUrl2 + " --> response = " + responseExecute.message(), 0, false, 6, null);
                }
                AttributionPoint attributionPoint13 = f42179e;
                if (attributionPoint13 != null) {
                    AttributionConsumeManager attributionConsumeManager = f42177c;
                    attributionConsumeManager$doNetWork$1.label = 1;
                    if (attributionConsumeManager.c(attributionPoint13, attributionConsumeManager$doNetWork$1) == objF) {
                        return objF;
                    }
                }
                PSReportUtil pSReportUtil = PSReportUtil.f42170a;
                attributionPoint = f42179e;
                if (attributionPoint != null) {
                    type = attributionPoint.getType();
                } else {
                    type = null;
                }
                attributionPoint2 = f42179e;
                if (attributionPoint2 != null) {
                    psId = attributionPoint2.getPsId();
                } else {
                    psId = null;
                }
                pSReportUtil.a(type, psId);
            } else {
                oi.a aVar3 = oi.a.f71022a;
                String strE3 = e();
                AttributionPoint attributionPoint14 = f42179e;
                AttributionPoint.AttributionType type4 = attributionPoint14 != null ? attributionPoint14.getType() : null;
                AttributionPoint attributionPoint15 = f42179e;
                Integer numD4 = attributionPoint15 != null ? Boxing.d(attributionPoint15.getId()) : null;
                AttributionPoint attributionPoint16 = f42179e;
                String psId4 = attributionPoint16 != null ? attributionPoint16.getPsId() : null;
                AttributionPoint attributionPoint17 = f42179e;
                String reportUrl3 = attributionPoint17 != null ? attributionPoint17.getReportUrl() : null;
                oi.a.k(aVar3, strE3 + " --> consume() --> 归因失败 --> type = " + type4 + " --> id = " + numD4 + " --> psId = " + psId4 + "--> url = " + reportUrl3 + " --> response = " + responseExecute.message(), 0, false, 6, null);
                AttributionPoint attributionPoint18 = f42179e;
                if (attributionPoint18 != null) {
                    attributionPoint18.setFailCount(attributionPoint18.getFailCount() + 1);
                    if (attributionPoint18.getFailCount() >= 5) {
                        AttributionConsumeManager attributionConsumeManager2 = f42177c;
                        attributionConsumeManager$doNetWork$1.label = 2;
                        if (attributionConsumeManager2.c(attributionPoint18, attributionConsumeManager$doNetWork$1) == objF) {
                            return objF;
                        }
                    } else {
                        AttributionConsumeManager attributionConsumeManager3 = f42177c;
                        attributionConsumeManager$doNetWork$1.label = 3;
                        if (attributionConsumeManager3.j(attributionPoint18, attributionConsumeManager$doNetWork$1) == objF) {
                            return objF;
                        }
                    }
                }
            }
        } else if (i12 == 1) {
            ResultKt.b(obj);
            PSReportUtil pSReportUtil2 = PSReportUtil.f42170a;
            attributionPoint = f42179e;
            if (attributionPoint != null) {
                type = attributionPoint.getType();
            } else {
                type = null;
            }
            attributionPoint2 = f42179e;
            if (attributionPoint2 != null) {
                psId = attributionPoint2.getPsId();
            } else {
                psId = null;
            }
            pSReportUtil2.a(type, psId);
        } else {
            if (i12 != 2 && i12 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        p();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        f42178d.set(false);
        n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object q(Continuation continuation) throws Throwable {
        AttributionConsumeManager$safeCall$1 attributionConsumeManager$safeCall$1;
        if (continuation instanceof AttributionConsumeManager$safeCall$1) {
            attributionConsumeManager$safeCall$1 = (AttributionConsumeManager$safeCall$1) continuation;
            int i11 = attributionConsumeManager$safeCall$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                attributionConsumeManager$safeCall$1.label = i11 - Integer.MIN_VALUE;
            } else {
                attributionConsumeManager$safeCall$1 = new AttributionConsumeManager$safeCall$1(this, continuation);
            }
        } else {
            attributionConsumeManager$safeCall$1 = new AttributionConsumeManager$safeCall$1(this, continuation);
        }
        Object objD = attributionConsumeManager$safeCall$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = attributionConsumeManager$safeCall$1.label;
        if (i12 == 0) {
            ResultKt.b(objD);
            if (m.f70474a.e() && f42178d.compareAndSet(false, true)) {
                attributionConsumeManager$safeCall$1.label = 1;
                objD = d(attributionConsumeManager$safeCall$1);
                if (objD == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
        }
        if (i12 != 1) {
            if (i12 == 2) {
                ResultKt.b(objD);
                p();
                return Unit.f67061a;
            }
            if (i12 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objD);
            return Unit.f67061a;
        }
        ResultKt.b(objD);
        AttributionPoint attributionPoint = (AttributionPoint) objD;
        f42179e = attributionPoint;
        if (attributionPoint == null) {
            f42178d.set(false);
            return Unit.f67061a;
        }
        if (!TextUtils.isEmpty(attributionPoint != null ? attributionPoint.getReportUrl() : null)) {
            attributionConsumeManager$safeCall$1.label = 3;
            if (o(attributionConsumeManager$safeCall$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
        AttributionPoint attributionPoint2 = f42179e;
        if (attributionPoint2 != null) {
            AttributionConsumeManager attributionConsumeManager = f42177c;
            attributionConsumeManager$safeCall$1.label = 2;
            if (attributionConsumeManager.c(attributionPoint2, attributionConsumeManager$safeCall$1) == objF) {
                return objF;
            }
        }
        p();
        return Unit.f67061a;
    }

    public final void n() {
        k.d(o0.a(y0.b()), null, null, new AttributionConsumeManager$consume$1(null), 3, null);
    }
}
