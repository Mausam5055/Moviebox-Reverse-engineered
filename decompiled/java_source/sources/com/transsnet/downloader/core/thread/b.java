package com.transsnet.downloader.core.thread;

import android.util.Log;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsnet.downloader.exception.DownloadPauseException;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.util.h;
import java.util.Locale;
import java.util.Random;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import nh.m;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b implements f {
    public static final a Companion = new a(null);
    private static final long MAX_SPEED_LIMIT_SLEEP_MS = 200;
    private static final double MIN_TARGET_SPEED_RATIO = 0.01d;
    private static final long NANOS_PER_MILLISECOND = 1000000;
    public static final int SPEED_THRESHOLD = 51200;
    public static final String TAG = "download";
    private Function0<Unit> breakCallback;
    private int bufferSize;
    private final oy.c config;
    private final DownloadBean downloadInfo;
    private final d downloadProgressListener;
    private final DownloadRange downloadRange;
    private final com.transsnet.downloader.core.c downloadResponse;
    private boolean isBreak;
    private final com.transsnet.downloader.proxy.b proxyHelper;
    private int retryDownloadCount;
    private final int threadIndex;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(DownloadRange downloadRange, com.transsnet.downloader.proxy.b proxyHelper, int i11, com.transsnet.downloader.core.c downloadResponse, oy.c config, DownloadBean downloadInfo, d downloadProgressListener) {
        Intrinsics.h(downloadRange, "downloadRange");
        Intrinsics.h(proxyHelper, "proxyHelper");
        Intrinsics.h(downloadResponse, "downloadResponse");
        Intrinsics.h(config, "config");
        Intrinsics.h(downloadInfo, "downloadInfo");
        Intrinsics.h(downloadProgressListener, "downloadProgressListener");
        this.downloadRange = downloadRange;
        this.proxyHelper = proxyHelper;
        this.threadIndex = i11;
        this.downloadResponse = downloadResponse;
        this.config = config;
        this.downloadInfo = downloadInfo;
        this.downloadProgressListener = downloadProgressListener;
        this.bufferSize = lj.b.f68866a.d();
    }

    private final void b() {
        if (DownloadUtil.f59900a.i(this.downloadInfo)) {
            int iH = this.config.h();
            if (iH <= 0) {
                ry.e.f74755c.a().k(this.downloadInfo, null);
                j();
            } else if (new Random().nextInt(iH) + 1 == 1) {
                ry.e.f74755c.a().k(this.downloadInfo, new Function0() { // from class: com.transsnet.downloader.core.thread.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.c(this.f58642a);
                    }
                });
            } else {
                ry.e.f74755c.a().k(this.downloadInfo, null);
                j();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c(b bVar) {
        bVar.j();
        return Unit.f67061a;
    }

    private final void d() {
        if (this.downloadInfo.isPause()) {
            throw new DownloadPauseException(7);
        }
    }

    private final void e() {
        Long size = this.downloadInfo.getSize();
        long jLongValue = size != null ? size.longValue() : 0L;
        if (this.downloadRange.getEnd() >= jLongValue) {
            this.downloadRange.setEnd(jLongValue - 1);
        }
    }

    /* JADX WARN: Not initialized variable reg: 15, insn: 0x145a: MOVE (r17 I:??[OBJECT, ARRAY]) = (r15 I:??[OBJECT, ARRAY]), block:B:729:0x1458 */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x145c: MOVE (r45 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY]), block:B:729:0x1458 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 5 */
    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 59341. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    private final void f() {
        /*
            Method dump skipped, instruction units count: 5934
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.core.thread.b.f():void");
    }

    private final long g() {
        Double dH = h();
        if (dH == null) {
            return 51200L;
        }
        return RangesKt.g((long) (((double) SPEED_THRESHOLD) * dH.doubleValue()), 1L);
    }

    private final Double h() {
        if (h.f59938a.a()) {
            return null;
        }
        double dK = RangesKt.k(this.config.d(), 0.0d, 1.0d);
        if (dK <= 0.0d) {
            return null;
        }
        return Double.valueOf(RangesKt.d(1.0d - dK, MIN_TARGET_SPEED_RATIO));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    private final DownloadException i(Exception exc, int i11, int i12, Integer num, String str, String str2) {
        String str3;
        int iB = DownloadException.INSTANCE.b(exc, i11);
        String message = exc.getMessage();
        if (message != null) {
            str = message;
        }
        if (i11 == 5 && !m.f70474a.e()) {
            iB = 9;
            str = DownloadException.EXCEPTION_MESSAGE_NO_NET;
        }
        if (i11 == 5) {
            Locale locale = Locale.ROOT;
            String lowerCase = str.toLowerCase(locale);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            if (StringsKt.c0(lowerCase, "ssl", false, 2, null)) {
                str3 = DownloadException.EXCEPTION_MESSAGE_SSL;
            } else {
                String lowerCase2 = str.toLowerCase(locale);
                Intrinsics.g(lowerCase2, "toLowerCase(...)");
                if (StringsKt.c0(lowerCase2, "failed to connect to", false, 2, null)) {
                    str3 = DownloadException.EXCEPTION_MESSAGE_FAILED_CONNECT;
                } else {
                    str3 = str;
                }
            }
        } else {
            str3 = str;
        }
        DownloadException downloadException = new DownloadException(iB, str, exc);
        if (num != null) {
            try {
                i12 = num.intValue();
            } catch (Throwable unused) {
            }
        } else {
            i12 = 0;
        }
        downloadException.setResponseCode(i12);
        downloadException.setFormatMessage(str3);
        downloadException.setRange(str2);
        return downloadException;
    }

    private final void j() {
        this.downloadInfo.setProgress(0L);
        for (DownloadRange downloadRange : this.downloadInfo.getDownloadRanges()) {
            downloadRange.setProgress(0L);
            if (downloadRange.getRangeId() != this.downloadRange.getRangeId() && downloadRange.getIsDownloading()) {
                downloadRange.setReDownload(true);
            }
        }
        throw new ReDownloadException();
    }

    private final void k(long j11) {
        Double dH = h();
        if (dH == null) {
            return;
        }
        double dDoubleValue = dH.doubleValue();
        long jNanoTime = System.nanoTime() - j11;
        if (jNanoTime <= 0) {
            return;
        }
        long j12 = (long) (jNanoTime / dDoubleValue);
        while (true) {
            j12 -= jNanoTime;
            if (j12 <= 0 || this.isBreak) {
                return;
            }
            d();
            jNanoTime = RangesKt.j(j12, 200000000L);
            long j13 = jNanoTime / 1000000;
            int i11 = (int) (jNanoTime % 1000000);
            if (j13 <= 0 && i11 <= 0) {
                return;
            }
            try {
                Thread.sleep(j13, i11);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                this.isBreak = true;
                return;
            }
        }
    }

    @Override // com.transsnet.downloader.core.thread.f
    public void pause(Function0<Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.isBreak = true;
        this.breakCallback = callback;
    }

    @Override // com.transsnet.downloader.core.thread.f
    public void removeBreakCallback() {
        this.breakCallback = null;
    }

    public void startDownload() {
        lg.a.f68839a.c("download", "start thread: threadId = " + this.downloadRange.getThreadId() + ", rangeId = " + this.downloadRange.getRangeId() + ", isPause =  " + this.downloadInfo.isPause() + "   name =  " + this.downloadInfo.getName() + " , progress = " + this.downloadInfo.getProgress() + ", range.start = " + this.downloadRange.getStart() + ", range.progress = " + this.downloadRange.getProgress() + ",range.end = " + this.downloadRange.getEnd() + ", isBreak = " + this.isBreak + ", status = " + this.downloadInfo.getStatus(), true);
        this.downloadRange.setThreadIndex(this.threadIndex);
        this.isBreak = false;
        while (!this.downloadInfo.isPause() && !this.downloadRange.isRangeDownloadSuccess() && !this.isBreak) {
            try {
                d();
                f();
            } catch (DownloadPathException e11) {
                this.downloadRange.setDownloading(false);
                this.downloadResponse.b(this.downloadInfo, e11);
            } catch (DownloadException e12) {
                if (this.retryDownloadCount >= this.config.j()) {
                    this.downloadRange.setDownloading(false);
                    this.downloadResponse.b(this.downloadInfo, e12);
                    lg.a.f68839a.i("download", "失败重试已满 retry thread: name = " + this.downloadInfo.getName() + ", isPause =  " + this.downloadInfo.isPause() + ", isRangeDownloadSuccess=  " + this.downloadRange.isRangeDownloadSuccess() + ", isBreak = " + this.isBreak + ", progress:  " + this.downloadInfo.getProgress() + " ,rangeId = " + this.downloadRange.getRangeId() + "  ", true);
                    return;
                }
                this.retryDownloadCount++;
            } catch (QuitDPRestartException unused) {
                this.downloadRange.setDownloading(false);
                this.downloadProgressListener.c(this, this.threadIndex, this.downloadRange);
                return;
            } catch (ReDownloadException unused2) {
                this.downloadProgressListener.a(this, this.threadIndex, this.downloadRange);
                return;
            } catch (RestartException unused3) {
                Log.e("download", "restart download thread, rangeId = " + this.downloadRange.getRangeId());
            } catch (DownloadPauseException unused4) {
                this.downloadRange.setDownloading(false);
            }
        }
    }
}
