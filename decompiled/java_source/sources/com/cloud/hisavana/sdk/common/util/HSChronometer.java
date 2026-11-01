package com.cloud.hisavana.sdk.common.util;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.Chronometer;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.hisavana.sdk.e4;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u001c\u0018\u00002\u00020\u0001:\u0001%B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0015\u0010\u0011J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u00062\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\n¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010!\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b!\u0010\u000eJ\r\u0010#\u001a\u00020\"¢\u0006\u0004\b#\u0010$R\u0014\u0010'\u001a\u00020\u00168\u0002X\u0082D¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010(R\u0016\u0010*\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010(R\u0016\u0010-\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010,R$\u00102\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010&\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R$\u00106\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010&\u001a\u0004\b4\u0010/\"\u0004\b5\u00101R$\u0010=\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<¨\u0006>"}, d2 = {"Lcom/cloud/hisavana/sdk/common/util/HSChronometer;", "Landroid/widget/Chronometer;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "duration", "", "c", "(J)V", "chronometer", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/widget/Chronometer;)V", "e", "()V", "f", "tickComplete", "", "countdownText", "(J)Ljava/lang/String;", "Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "startCountDown", "(ILcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V", "startCountdown", "(JLcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V", "pauseCountdown", "()J", "resumeCountdown", "", "isTimeUp", "()Z", "a", "Ljava/lang/String;", "tag", "J", "countdownDuration", "remainingDuration", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isRunning", "getTickStringFormat", "()Ljava/lang/String;", "setTickStringFormat", "(Ljava/lang/String;)V", "tickStringFormat", "g", "getFinishedString", "setFinishedString", "finishedString", "h", "Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;", "getTickListener", "()Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;", "setTickListener", "(Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V", "tickListener", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class HSChronometer extends Chronometer {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String tag;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private long countdownDuration;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private long remainingDuration;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isRunning;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isTimeUp;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String tickStringFormat;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String finishedString;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private a tickListener;

    public interface a {
        void onFinish();

        void onTick(long j11);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HSChronometer(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HSChronometer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HSChronometer(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.tag = "HiChronometer";
    }

    public /* synthetic */ HSChronometer(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final void b(Chronometer chronometer) {
        this.remainingDuration = this.countdownDuration - (SystemClock.elapsedRealtime() - getBase());
        if (e4.c()) {
            e4.b().i(this.tag, "-----> onChronometerTick " + this.remainingDuration);
        }
        if (this.remainingDuration > 0) {
            f();
            a aVar = this.tickListener;
            if (aVar != null) {
                aVar.onTick(this.remainingDuration);
                return;
            }
            return;
        }
        e();
        String str = this.finishedString;
        if (str == null) {
            str = "";
        }
        chronometer.setText(str);
        a aVar2 = this.tickListener;
        if (aVar2 != null) {
            aVar2.onTick(this.remainingDuration);
        }
        a aVar3 = this.tickListener;
        if (aVar3 != null) {
            aVar3.onFinish();
        }
    }

    private final void c(long duration) {
        if (this.isRunning || duration <= 0) {
            return;
        }
        this.countdownDuration = duration;
        setBase(SystemClock.elapsedRealtime());
        setOnChronometerTickListener(new Chronometer.OnChronometerTickListener() { // from class: com.cloud.hisavana.sdk.common.util.o
            @Override // android.widget.Chronometer.OnChronometerTickListener
            public final void onChronometerTick(Chronometer chronometer) {
                HSChronometer.d(this.f22164a, chronometer);
            }
        });
        this.isRunning = true;
        start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(HSChronometer this$0, Chronometer chronometer) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.e(chronometer);
        this$0.b(chronometer);
    }

    private final void e() {
        stop();
        this.isTimeUp = true;
        this.isRunning = false;
        this.remainingDuration = 0L;
    }

    private final void f() {
        if (this.tickStringFormat != null) {
            setText(countdownText(this.remainingDuration));
        }
    }

    public final String countdownText(long duration) {
        this.remainingDuration = duration;
        int iCeil = (int) Math.ceil(duration / ((double) 1000));
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        Locale locale = Locale.getDefault();
        String string = this.tickStringFormat;
        if (string == null) {
            string = getResources().getString(R$string.reward_before_tip);
            Intrinsics.g(string, "getString(...)");
        }
        String str = String.format(locale, string, Arrays.copyOf(new Object[]{Integer.valueOf(iCeil)}, 1));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public final String getFinishedString() {
        return this.finishedString;
    }

    public final a getTickListener() {
        return this.tickListener;
    }

    public final String getTickStringFormat() {
        return this.tickStringFormat;
    }

    /* JADX INFO: renamed from: isTimeUp, reason: from getter */
    public final boolean getIsTimeUp() {
        return this.isTimeUp;
    }

    public final long pauseCountdown() {
        if (this.isRunning) {
            stop();
            this.isRunning = false;
            this.remainingDuration = this.countdownDuration - (SystemClock.elapsedRealtime() - getBase());
            if (e4.c()) {
                e4.b().i(this.tag, "pauseCountdown -----> remain countdownDuration: " + this.remainingDuration);
            }
            if (this.remainingDuration <= 0) {
                e();
                String str = this.finishedString;
                if (str == null) {
                    str = "";
                }
                setText(str);
                a aVar = this.tickListener;
                if (aVar != null) {
                    aVar.onTick(this.remainingDuration);
                }
                a aVar2 = this.tickListener;
                if (aVar2 != null) {
                    aVar2.onFinish();
                }
            } else {
                f();
                a aVar3 = this.tickListener;
                if (aVar3 != null) {
                    aVar3.onTick(this.remainingDuration);
                }
            }
        }
        return this.remainingDuration;
    }

    public final void resumeCountdown(long duration) {
        if (this.isRunning || duration <= 0) {
            return;
        }
        if (e4.c()) {
            e4.b().i(this.tag, "resumeCountdown -----> resume countdownDuration: " + this.remainingDuration);
        }
        c(duration);
    }

    public final void setFinishedString(String str) {
        this.finishedString = str;
    }

    public final void setTickListener(a aVar) {
        this.tickListener = aVar;
    }

    public final void setTickStringFormat(String str) {
        this.tickStringFormat = str;
    }

    public final void startCountDown(int duration, a listener) {
        startCountdown(((long) duration) * 1000, listener);
    }

    public final void startCountdown(long duration, a listener) {
        this.tickListener = listener;
        if (e4.c()) {
            e4.b().i(this.tag, "startCountDown: " + duration);
        }
        c(duration);
    }

    public final void tickComplete(Chronometer chronometer) {
        try {
            this.remainingDuration = 0L;
            e();
            if (chronometer != null) {
                String str = this.finishedString;
                if (str == null) {
                    str = "";
                }
                chronometer.setText(str);
            }
            a aVar = this.tickListener;
            if (aVar != null) {
                aVar.onTick(this.remainingDuration);
            }
            a aVar2 = this.tickListener;
            if (aVar2 != null) {
                aVar2.onFinish();
            }
        } catch (Throwable unused) {
        }
    }
}
