package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.postdetail.R$mipmap;
import com.transsion.postdetail.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001%B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001aR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR$\u0010$\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcom/transsion/postdetail/ui/view/ImmScaleView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/transsion/player/enum/ScaleMode;", "scaleMode", "", "c", "(Lcom/transsion/player/enum/ScaleMode;)V", "", "pageName", "subjectId", "setPageParams", "(Ljava/lang/String;Ljava/lang/String;)V", "ops", "setOps", "(Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "e", "f", "Lcom/transsion/postdetail/ui/view/ImmScaleView$a;", "g", "Lcom/transsion/postdetail/ui/view/ImmScaleView$a;", "getOnModelChangeListener", "()Lcom/transsion/postdetail/ui/view/ImmScaleView$a;", "setOnModelChangeListener", "(Lcom/transsion/postdetail/ui/view/ImmScaleView$a;)V", "onModelChangeListener", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ImmScaleView extends AppCompatImageView {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private a onModelChangeListener;

    public interface a {
        void a(ScaleMode scaleMode, String str);
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f49887a;

        static {
            int[] iArr = new int[ScaleMode.values().length];
            try {
                iArr[ScaleMode.SCALE_TO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScaleMode.SCALE_ASPECT_FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ScaleMode.SCALE_ASPECT_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f49887a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmScaleView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        c(com.transsion.baselib.helper.d.f43265a.c());
        jg.c.c(this, 0L, new Function1() { // from class: com.transsion.postdetail.ui.view.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImmScaleView.b(this.f50062a, (View) obj);
            }
        }, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmScaleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        c(com.transsion.baselib.helper.d.f43265a.c());
        jg.c.c(this, 0L, new Function1() { // from class: com.transsion.postdetail.ui.view.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImmScaleView.b(this.f50062a, (View) obj);
            }
        }, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmScaleView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        c(com.transsion.baselib.helper.d.f43265a.c());
        jg.c.c(this, 0L, new Function1() { // from class: com.transsion.postdetail.ui.view.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImmScaleView.b(this.f50062a, (View) obj);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(ImmScaleView immScaleView, View it) {
        ScaleMode scaleMode;
        String string;
        Intrinsics.h(it, "it");
        int i11 = b.f49887a[com.transsion.baselib.helper.d.f43265a.c().ordinal()];
        if (i11 == 1) {
            scaleMode = ScaleMode.SCALE_ASPECT_FILL;
            string = immScaleView.getContext().getString(R$string.video_crop);
            Intrinsics.g(string, "getString(...)");
        } else if (i11 != 2) {
            scaleMode = ScaleMode.SCALE_ASPECT_FIT;
            string = immScaleView.getContext().getString(R$string.video_fit_screen);
            Intrinsics.g(string, "getString(...)");
        } else {
            scaleMode = ScaleMode.SCALE_TO_FILL;
            string = immScaleView.getContext().getString(R$string.video_stretch);
            Intrinsics.g(string, "getString(...)");
        }
        immScaleView.c(scaleMode);
        a aVar = immScaleView.onModelChangeListener;
        if (aVar != null) {
            aVar.a(scaleMode, string);
        }
        String str = immScaleView.pageName;
        if (str != null) {
            hj.i.f64505a.p(str, MapsKt.m(new Pair("module_name", "scale_mode"), new Pair("subject_id", immScaleView.subjectId), new Pair("ops", immScaleView.ops), new Pair(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(scaleMode.getValue()))));
        }
        return Unit.f67061a;
    }

    private final void c(ScaleMode scaleMode) {
        com.transsion.baselib.helper.d.f43265a.f(scaleMode);
        int i11 = b.f49887a[scaleMode.ordinal()];
        if (i11 == 2) {
            setImageResource(R$mipmap.ic_video_fit_screen);
        } else if (i11 != 3) {
            setImageResource(R$mipmap.ic_video_stretch);
        } else {
            setImageResource(R$mipmap.ic_video_crop);
        }
    }

    public final a getOnModelChangeListener() {
        return this.onModelChangeListener;
    }

    public final void setOnModelChangeListener(a aVar) {
        this.onModelChangeListener = aVar;
    }

    public final void setOps(String ops) {
        this.ops = ops;
    }

    public final void setPageParams(String pageName, String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        this.pageName = pageName;
        this.subjectId = subjectId;
    }
}
