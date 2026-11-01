package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0016\u0018\u0000 02\u00020\u0001:\u0001$B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\u0010\u0010\bJ7\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0016\u001a\u00020\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u001e\u001a\u00020\r2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\r0\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0014¢\u0006\u0004\b \u0010\u001bJ\u0017\u0010\"\u001a\u00020\r2\b\b\u0001\u0010!\u001a\u00020\t¢\u0006\u0004\b\"\u0010\u000fR$\u0010*\u001a\u0004\u0018\u00010#8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u0010/\u001a\u00020\t8\u0014@\u0014X\u0095\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010\u000f¨\u00061"}, d2 = {"Lcom/tn/lib/view/StateView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "screenType", "", "setDefaultImageMargin", "(I)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "dataType", "", "isShowTitleLayout", "", CampaignEx.JSON_KEY_TITLE, CampaignEx.JSON_KEY_DESC, "showData", "(IIZLjava/lang/String;Ljava/lang/String;)V", "txt", "upDateEmptyDescText", "(Ljava/lang/String;)V", "Lkotlin/Function0;", "onClick", "retry", "(Lkotlin/jvm/functions/Function0;)V", "setReTryTxt", "newResId", "updateNoContentResId", "Lth/b;", "a", "Lth/b;", "getMViewBinding", "()Lth/b;", "setMViewBinding", "(Lth/b;)V", "mViewBinding", "I", "getNoContentResId", "()I", "setNoContentResId", "noContentResId", "Companion", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class StateView extends FrameLayout {
    public static final int LOCATION_LABEL_FLOATING_LAYER = 3;
    public static final int LOCATION_LABEL_FULL_SCREEN = 1;
    public static final int LOCATION_LABEL_HALF_SCREEN = 2;
    public static final int LOCATION_LABEL_HALF_SCREEN_NONE = 5;
    public static final int LOCATION_LABEL_HALF_SCREEN_NONE_SMALL = 6;
    public static final int LOCATION_LABEL__FULL_SCREEN_WITH_STATUS_BAR = 4;
    public static final int STATE_TYPE_ERROR_DATA = 3;
    public static final int STATE_TYPE_NO_DATA = 2;
    public static final int STATE_TYPE_NO_DATA_WITH_RETRY = 4;
    public static final int STATE_TYPE_NO_NETWORK = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private th.b mViewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int noContentResId;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StateView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StateView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.mViewBinding = th.b.a((LinearLayoutCompat) LayoutInflater.from(getContext()).inflate(R$layout.default_state_view_layout, this).findViewById(R$id.stateRoot));
        this.noContentResId = R$mipmap.ic_no_content;
        b(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Function0 function0, View view) {
        function0.invoke();
    }

    private final void setDefaultImageMargin(int screenType) {
        th.b bVar = this.mViewBinding;
        if (bVar != null) {
            ViewGroup.LayoutParams layoutParams = bVar.f76216b.getLayoutParams();
            LinearLayoutCompat.a aVar = layoutParams instanceof LinearLayoutCompat.a ? (LinearLayoutCompat.a) layoutParams : null;
            switch (screenType) {
                case 1:
                    if (aVar != null) {
                        ((LinearLayout.LayoutParams) aVar).topMargin = com.blankj.utilcode.util.a0.a(128.0f);
                    }
                    break;
                case 2:
                    if (aVar != null) {
                        ((LinearLayout.LayoutParams) aVar).topMargin = com.blankj.utilcode.util.a0.a(72.0f);
                    }
                    break;
                case 3:
                    if (aVar != null) {
                        ((LinearLayout.LayoutParams) aVar).topMargin = com.blankj.utilcode.util.a0.a(48.0f);
                    }
                    break;
                case 4:
                    if (aVar != null) {
                        ((LinearLayout.LayoutParams) aVar).topMargin = com.blankj.utilcode.util.a0.a(172.0f) + com.blankj.utilcode.util.d.c();
                    }
                    break;
                case 5:
                    if (aVar != null) {
                        ((LinearLayout.LayoutParams) aVar).topMargin = 0;
                    }
                    break;
                case 6:
                    if (aVar != null) {
                        ((LinearLayout.LayoutParams) aVar).topMargin = 0;
                    }
                    if (aVar != null) {
                        ((LinearLayout.LayoutParams) aVar).width = com.blankj.utilcode.util.a0.a(200.0f);
                    }
                    break;
            }
        }
    }

    public static /* synthetic */ void showData$default(StateView stateView, int i11, int i12, boolean z10, String str, String str2, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showData");
        }
        if ((i13 & 16) != 0) {
            str2 = "";
        }
        stateView.showData(i11, i12, z10, str, str2);
    }

    protected void b(Context context, AttributeSet attrs) {
        Intrinsics.h(context, "context");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R$styleable.StateView);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        setDefaultImageMargin(typedArrayObtainStyledAttributes.getInt(R$styleable.StateView_screen_type, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    protected final th.b getMViewBinding() {
        return this.mViewBinding;
    }

    protected int getNoContentResId() {
        return this.noContentResId;
    }

    public final void retry(final Function0<Unit> onClick) {
        TextView textView;
        Intrinsics.h(onClick, "onClick");
        th.b bVar = this.mViewBinding;
        if (bVar == null || (textView = bVar.f76220f) == null) {
            return;
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StateView.c(onClick, view);
            }
        });
    }

    protected final void setMViewBinding(th.b bVar) {
        this.mViewBinding = bVar;
    }

    protected void setNoContentResId(int i11) {
        this.noContentResId = i11;
    }

    public final void setReTryTxt(String txt) {
        TextView textView;
        Intrinsics.h(txt, "txt");
        th.b bVar = this.mViewBinding;
        if (bVar == null || (textView = bVar.f76220f) == null) {
            return;
        }
        textView.setText(txt);
    }

    public final void showData(int dataType, int screenType, boolean isShowTitleLayout, String title, String desc) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        Intrinsics.h(title, "title");
        Intrinsics.h(desc, "desc");
        th.b bVar = this.mViewBinding;
        if (bVar != null) {
            setDefaultImageMargin(screenType);
            if (isShowTitleLayout) {
                TitleLayout titleLayout = bVar.f76217c;
                titleLayout.setTitleText(title);
                titleLayout.setVisibility(0);
            }
            AppCompatImageView appCompatImageView = bVar.f76216b;
            if (dataType == 1) {
                appCompatImageView.setImageResource(R$mipmap.ic_no_network);
                TextView textView5 = bVar.f76219e;
                if (TextUtils.isEmpty(desc)) {
                    desc = appCompatImageView.getResources().getString(R$string.no_network_toast);
                }
                textView5.setText(desc);
                th.b bVar2 = this.mViewBinding;
                if (bVar2 == null || (textView = bVar2.f76220f) == null) {
                    return;
                }
                jg.c.k(textView);
                return;
            }
            if (dataType == 2) {
                appCompatImageView.setImageResource(getNoContentResId());
                TextView textView6 = bVar.f76219e;
                if (TextUtils.isEmpty(desc)) {
                    desc = appCompatImageView.getResources().getString(R$string.no_content);
                }
                textView6.setText(desc);
                th.b bVar3 = this.mViewBinding;
                if (bVar3 == null || (textView2 = bVar3.f76220f) == null) {
                    return;
                }
                jg.c.g(textView2);
                return;
            }
            if (dataType == 3) {
                appCompatImageView.setImageResource(R$mipmap.ic_no_error);
                TextView textView7 = bVar.f76219e;
                if (TextUtils.isEmpty(desc)) {
                    desc = appCompatImageView.getResources().getString(R$string.no_error_content);
                }
                textView7.setText(desc);
                th.b bVar4 = this.mViewBinding;
                if (bVar4 == null || (textView3 = bVar4.f76220f) == null) {
                    return;
                }
                jg.c.k(textView3);
                return;
            }
            if (dataType != 4) {
                return;
            }
            appCompatImageView.setImageResource(getNoContentResId());
            TextView textView8 = bVar.f76219e;
            if (TextUtils.isEmpty(desc)) {
                desc = appCompatImageView.getResources().getString(R$string.no_content);
            }
            textView8.setText(desc);
            th.b bVar5 = this.mViewBinding;
            if (bVar5 == null || (textView4 = bVar5.f76220f) == null) {
                return;
            }
            jg.c.k(textView4);
        }
    }

    public final void upDateEmptyDescText(String txt) {
        TextView textView;
        Intrinsics.h(txt, "txt");
        th.b bVar = this.mViewBinding;
        if (bVar == null || (textView = bVar.f76219e) == null) {
            return;
        }
        textView.setText(txt);
    }

    public final void updateNoContentResId(int newResId) {
        setNoContentResId(newResId);
    }
}
