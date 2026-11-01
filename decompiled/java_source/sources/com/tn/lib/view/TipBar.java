package com.tn.lib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\r2\b\b\u0001\u0010\u0018\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u000fJ\u0015\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u001a\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\r2\b\b\u0001\u0010\u0018\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u000fJ\u0017\u0010\u001c\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u001c\u0010\u0013R\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#¨\u0006'"}, d2 = {"Lcom/tn/lib/view/TipBar;", "Landroidx/appcompat/widget/LinearLayoutCompat;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "visibility", "", "setCloseVisible", "(I)V", "Landroid/view/View$OnClickListener;", "onClickListener", "setCloseListener", "(Landroid/view/View$OnClickListener;)V", "", MimeTypes.BASE_TYPE_TEXT, "setTip", "(Ljava/lang/String;)V", TtmlNode.ATTR_TTS_COLOR, "setTipColor", "setRightActionText", "setRightActionTextColor", "setRightActionListener", "Lcom/tn/lib/view/TRImageView;", "a", "Lcom/tn/lib/view/TRImageView;", "ivClose", "Landroid/widget/TextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/TextView;", "tvTip", "c", "tvRightAction", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TipBar extends LinearLayoutCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TRImageView ivClose;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TextView tvTip;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private TextView tvRightAction;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TipBar(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TipBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TipBar(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        LayoutInflater.from(context).inflate(R$layout.libui_layout_tip_bar, (ViewGroup) this, true);
        setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        setGravity(16);
        setMinimumHeight(oh.h.f71021a.a(context, 42.0f));
        this.ivClose = (TRImageView) findViewById(R$id.iv_close);
        this.tvTip = (TextView) findViewById(R$id.tv_tip);
        this.tvRightAction = (TextView) findViewById(R$id.tv_get_more);
        TRImageView tRImageView = this.ivClose;
        if (tRImageView != null) {
            tRImageView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TipBar.e(this.f41384a, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(TipBar tipBar, View view) {
        tipBar.setVisibility(8);
    }

    public final void setCloseListener(View.OnClickListener onClickListener) {
        TRImageView tRImageView = this.ivClose;
        if (tRImageView != null) {
            tRImageView.setOnClickListener(onClickListener);
        }
    }

    public final void setCloseVisible(int visibility) {
        ViewGroup.LayoutParams layoutParams;
        TRImageView tRImageView = this.ivClose;
        if (tRImageView != null) {
            tRImageView.setVisibility(visibility);
        }
        if (visibility == 0) {
            TextView textView = this.tvTip;
            layoutParams = textView != null ? textView.getLayoutParams() : null;
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.appcompat.widget.LinearLayoutCompat.LayoutParams");
            LinearLayoutCompat.a aVar = (LinearLayoutCompat.a) layoutParams;
            aVar.setMarginStart(0);
            TextView textView2 = this.tvTip;
            if (textView2 != null) {
                textView2.setLayoutParams(aVar);
                return;
            }
            return;
        }
        if (visibility != 8) {
            return;
        }
        TextView textView3 = this.tvTip;
        layoutParams = textView3 != null ? textView3.getLayoutParams() : null;
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.appcompat.widget.LinearLayoutCompat.LayoutParams");
        LinearLayoutCompat.a aVar2 = (LinearLayoutCompat.a) layoutParams;
        oh.h hVar = oh.h.f71021a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        aVar2.setMarginStart(hVar.a(context, 16.0f));
        TextView textView4 = this.tvTip;
        if (textView4 != null) {
            textView4.setLayoutParams(aVar2);
        }
    }

    public final void setRightActionListener(View.OnClickListener onClickListener) {
        TextView textView = this.tvRightAction;
        if (textView != null) {
            textView.setOnClickListener(onClickListener);
        }
    }

    public final void setRightActionText(String text) {
        Intrinsics.h(text, "text");
        TextView textView = this.tvRightAction;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setRightActionTextColor(int color) {
        TextView textView = this.tvRightAction;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    public final void setTip(String text) {
        Intrinsics.h(text, "text");
        TextView textView = this.tvTip;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setTipColor(int color) {
        TextView textView = this.tvTip;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }
}
