package androidx.compose.material.ripple;

import android.content.Context;
import android.view.ViewGroup;
import androidx.compose.ui.R$id;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J7\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0018\u001a\u00020\u0017*\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u001a\u001a\u00020\r*\u00020\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00170\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010 R\u001a\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00170\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010 R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u001d¨\u0006*"}, d2 = {"Landroidx/compose/material/ripple/RippleContainer;", "Landroid/view/ViewGroup;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "changed", "", "l", "t", CampaignEx.JSON_KEY_AD_R, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "onLayout", "(ZIIII)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "requestLayout", "()V", "Landroidx/compose/material/ripple/e;", "Landroidx/compose/material/ripple/RippleHostView;", "getRippleHostView", "(Landroidx/compose/material/ripple/e;)Landroidx/compose/material/ripple/RippleHostView;", "disposeRippleIfNeeded", "(Landroidx/compose/material/ripple/e;)V", "a", "I", "MaxRippleHosts", "", "Ljava/util/List;", "rippleHosts", "c", "unusedRippleHosts", "Landroidx/compose/material/ripple/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/compose/material/ripple/f;", "rippleHostMap", "e", "nextHostIndex", "material-ripple_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RippleContainer extends ViewGroup {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final int MaxRippleHosts;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final List rippleHosts;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final List unusedRippleHosts;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final f rippleHostMap;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int nextHostIndex;

    public RippleContainer(Context context) {
        super(context);
        this.MaxRippleHosts = 5;
        ArrayList arrayList = new ArrayList();
        this.rippleHosts = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.unusedRippleHosts = arrayList2;
        this.rippleHostMap = new f();
        setClipChildren(false);
        RippleHostView rippleHostView = new RippleHostView(context);
        addView(rippleHostView);
        arrayList.add(rippleHostView);
        arrayList2.add(rippleHostView);
        this.nextHostIndex = 1;
        setTag(R$id.hide_in_inspector_tag, Boolean.TRUE);
    }

    public final void disposeRippleIfNeeded(e eVar) {
        eVar.u0();
        RippleHostView rippleHostViewB = this.rippleHostMap.b(eVar);
        if (rippleHostViewB != null) {
            rippleHostViewB.disposeRipple();
            this.rippleHostMap.c(eVar);
            this.unusedRippleHosts.add(rippleHostViewB);
        }
    }

    public final RippleHostView getRippleHostView(e eVar) {
        RippleHostView rippleHostViewB = this.rippleHostMap.b(eVar);
        if (rippleHostViewB != null) {
            return rippleHostViewB;
        }
        RippleHostView rippleHostView = (RippleHostView) CollectionsKt.K(this.unusedRippleHosts);
        if (rippleHostView == null) {
            if (this.nextHostIndex > CollectionsKt.n(this.rippleHosts)) {
                rippleHostView = new RippleHostView(getContext());
                addView(rippleHostView);
                this.rippleHosts.add(rippleHostView);
            } else {
                rippleHostView = (RippleHostView) this.rippleHosts.get(this.nextHostIndex);
                e eVarA = this.rippleHostMap.a(rippleHostView);
                if (eVarA != null) {
                    eVarA.u0();
                    this.rippleHostMap.c(eVarA);
                    rippleHostView.disposeRipple();
                }
            }
            int i11 = this.nextHostIndex;
            if (i11 < this.MaxRippleHosts - 1) {
                this.nextHostIndex = i11 + 1;
            } else {
                this.nextHostIndex = 0;
            }
        }
        this.rippleHostMap.d(eVar, rippleHostView);
        return rippleHostView;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l11, int t11, int r11, int b11) {
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
    }
}
