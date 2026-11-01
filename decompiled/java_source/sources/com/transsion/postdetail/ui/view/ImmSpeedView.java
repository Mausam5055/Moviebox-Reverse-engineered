package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.ui.dialog.SpeedConfigDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\"\u0010%\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010'\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010 \u001a\u0004\b'\u0010\"\"\u0004\b(\u0010$¨\u0006)"}, d2 = {"Lcom/transsion/postdetail/ui/view/ImmSpeedView;", "Landroidx/appcompat/widget/AppCompatTextView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "pageName", "subjectId", "", "setPageParams", "(Ljava/lang/String;Ljava/lang/String;)V", "ops", "setOps", "(Ljava/lang/String;)V", "", "speed", "", "fromInit", "updateSpeed", "(FZ)V", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "getPkStyle", "()Z", "setPkStyle", "(Z)V", "pkStyle", "e", "isPortrait", "setPortrait", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ImmSpeedView extends AppCompatTextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean pkStyle;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isPortrait;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmSpeedView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        updateSpeed(com.transsion.baselib.helper.d.f43265a.d(), true);
        setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmSpeedView.c(this.f50065a, view);
            }
        });
        this.pkStyle = true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmSpeedView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        updateSpeed(com.transsion.baselib.helper.d.f43265a.d(), true);
        setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmSpeedView.c(this.f50065a, view);
            }
        });
        this.pkStyle = true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmSpeedView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        updateSpeed(com.transsion.baselib.helper.d.f43265a.d(), true);
        setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmSpeedView.c(this.f50065a, view);
            }
        });
        this.pkStyle = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(ImmSpeedView immSpeedView, View view) {
        String str = immSpeedView.pageName;
        if (str != null) {
            hj.i.f64505a.p(str, MapsKt.m(new Pair("module_name", "speed"), new Pair("subject_id", immSpeedView.subjectId), new Pair(NativeComponentConstants.KEY_COMPONENT_TYPE, "0")));
        }
        SpeedConfigDialog speedConfigDialog = new SpeedConfigDialog();
        speedConfigDialog.q0(immSpeedView.isPortrait);
        Context context = immSpeedView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentManager supportFragmentManager = ((FragmentActivity) context).getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        speedConfigDialog.show(supportFragmentManager, "SpeedConfigDialog");
    }

    public static /* synthetic */ void updateSpeed$default(ImmSpeedView immSpeedView, float f11, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        immSpeedView.updateSpeed(f11, z10);
    }

    public final boolean getPkStyle() {
        return this.pkStyle;
    }

    /* JADX INFO: renamed from: isPortrait, reason: from getter */
    public final boolean getIsPortrait() {
        return this.isPortrait;
    }

    public final void setOps(String ops) {
        this.ops = ops;
    }

    public final void setPageParams(String pageName, String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        this.pageName = pageName;
        this.subjectId = subjectId;
    }

    public final void setPkStyle(boolean z10) {
        this.pkStyle = z10;
    }

    public final void setPortrait(boolean z10) {
        this.isPortrait = z10;
    }

    public final void updateSpeed(float speed, boolean fromInit) {
        String str;
        if (speed != 1.0f || this.pkStyle) {
            setBackground(null);
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            int i11 = (int) speed;
            String str2 = String.format("%sx", Arrays.copyOf(new Object[]{((float) i11) == speed ? String.valueOf(i11) : String.valueOf(speed)}, 1));
            Intrinsics.g(str2, "format(...)");
            setText(str2);
        } else {
            setBackgroundResource(R$drawable.ic_player_speed);
            setText((CharSequence) null);
        }
        if (fromInit || (str = this.pageName) == null) {
            return;
        }
        hj.i.f64505a.p(str, MapsKt.m(new Pair("module_name", "speed"), new Pair("subject_id", this.subjectId), new Pair("ops", this.ops), new Pair(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(speed))));
    }
}
