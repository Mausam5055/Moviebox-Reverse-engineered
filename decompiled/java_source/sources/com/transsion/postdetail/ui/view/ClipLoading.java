package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.postdetail.R$drawable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u000eJ\r\u0010\u0010\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0011\u0010\u000eJ\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\u0017¨\u0006)"}, d2 = {"Lcom/transsion/postdetail/ui/view/ClipLoading;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "a", "()V", "start", "stop", "onDetachedFromWindow", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", NotificationCompat.CATEGORY_PROGRESS, "e", "MAX_PROGRESS", "Landroid/graphics/drawable/ClipDrawable;", "f", "Landroid/graphics/drawable/ClipDrawable;", "clip", "", "g", "J", "FRAME_DURATION", "", "h", "Z", "isStop", "i", "finishCount", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ClipLoading extends AppCompatImageView {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int progress;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int MAX_PROGRESS;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ClipDrawable clip;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final long FRAME_DURATION;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isStop;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int finishCount;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClipLoading(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClipLoading(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClipLoading(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.MAX_PROGRESS = 10000;
        this.FRAME_DURATION = 13L;
        a();
    }

    private final void a() {
        Drawable drawable = androidx.core.content.b.getDrawable(getContext(), R$drawable.post_detail_imm_video_clip_progress);
        Intrinsics.f(drawable, "null cannot be cast to non-null type android.graphics.drawable.ClipDrawable");
        ClipDrawable clipDrawable = (ClipDrawable) drawable;
        this.clip = clipDrawable;
        setImageDrawable(clipDrawable);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stop();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        super.onDraw(canvas);
        if (this.isStop) {
            return;
        }
        if (this.progress >= this.MAX_PROGRESS) {
            this.finishCount = 20;
            this.progress = 0;
        }
        int i11 = this.finishCount;
        if (i11 > 0) {
            this.finishCount = i11 - 1;
        } else {
            this.progress += 300;
        }
        ClipDrawable clipDrawable = this.clip;
        if (clipDrawable != null) {
            clipDrawable.setLevel(this.progress);
        }
        postInvalidateDelayed(this.FRAME_DURATION);
    }

    public final void start() {
        this.progress = 0;
        this.isStop = false;
        postInvalidate();
    }

    public final void stop() {
        this.progress = 0;
        this.isStop = true;
    }
}
