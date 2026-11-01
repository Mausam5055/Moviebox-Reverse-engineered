package com.tn.lib.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0002[\\B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\fB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\rB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000eJA\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u000f2\b\b\u0002\u0010\u0012\u001a\u00020\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00152\b\b\u0001\u0010\u0018\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b\u001c\u0010\u001aJ\u0015\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010!\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b!\u0010\u001aJ\u0017\u0010#\u001a\u00020\u00152\b\b\u0001\u0010\"\u001a\u00020\u0006¢\u0006\u0004\b#\u0010\u001aJ\u0015\u0010$\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b$\u0010 J\u0015\u0010'\u001a\u00020\u00152\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\u00152\b\b\u0001\u0010\"\u001a\u00020\u0006¢\u0006\u0004\b)\u0010\u001aJ\u0015\u0010*\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b*\u0010\u001aJ\u0015\u0010+\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b+\u0010 J\u0017\u0010.\u001a\u00020\u00152\b\u0010-\u001a\u0004\u0018\u00010,¢\u0006\u0004\b.\u0010/J\u0015\u00100\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0006¢\u0006\u0004\b0\u0010\u001aJ\u0015\u00101\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b1\u0010\u001aJ\u0017\u00104\u001a\u00020\u00152\b\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b4\u00105J\u0015\u00106\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b6\u0010\u001aJ\u0015\u00107\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b7\u0010 J\u0017\u00108\u001a\u00020\u00152\b\u0010-\u001a\u0004\u0018\u00010,¢\u0006\u0004\b8\u0010/J\u0015\u00109\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0006¢\u0006\u0004\b9\u0010\u001aJ\u0015\u0010:\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b:\u0010\u001aJ\u0017\u0010;\u001a\u00020\u00152\b\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b;\u00105J\u0015\u0010<\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b<\u0010 J\u0017\u0010=\u001a\u00020\u00152\b\b\u0001\u0010\"\u001a\u00020\u0006¢\u0006\u0004\b=\u0010\u001aJ\u0015\u0010>\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b>\u0010\u001aJ\u0017\u0010?\u001a\u00020\u00152\b\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b?\u00105J\u0015\u0010B\u001a\u00020\u00152\u0006\u0010A\u001a\u00020@¢\u0006\u0004\bB\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010JR\u0018\u0010Q\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010JR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0018\u0010W\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010JR\u0018\u0010Z\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010Y¨\u0006]"}, d2 = {"Lcom/tn/lib/view/DefaultView;", "Landroidx/appcompat/widget/LinearLayoutCompat;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "Lcom/tn/lib/view/DefaultView$ModelStyle;", "modelStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/tn/lib/view/DefaultView$ModelStyle;)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Lcom/tn/lib/view/DefaultView$ModelStyle;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/tn/lib/view/DefaultView$ModelStyle;)V", "", "showImage", "showTitle", "showBtn", "showDesc", "showTip", "", "j", "(ZZZZZ)V", "resId", "setDefaultImage", "(I)V", "visibility", "setDefaultImageViewVisibility", "", MimeTypes.BASE_TYPE_TEXT, "setTitleText", "(Ljava/lang/CharSequence;)V", "setTitleViewVisibility", TtmlNode.ATTR_TTS_COLOR, "setTitleTextColor", "setDescText", "", "size", "setDescTextSize", "(F)V", "setDescTextColor", "setDescViewVisibility", "setBtnText", "Landroid/graphics/drawable/Drawable;", "background", "setBtnBg", "(Landroid/graphics/drawable/Drawable;)V", "setBtnTextColor", "setBtnVisibility", "Landroid/view/View$OnClickListener;", "onClickListener", "setBtnClickListener", "(Landroid/view/View$OnClickListener;)V", "setBtnLayoutVisibility", "setLeftBtnText", "setLeftBtnBg", "setLeftBtnTextColor", "setLeftBtnVisibility", "setLeftBtnClickListener", "setTipOperationText", "setTipTextColor", "setTipOperationVisibility", "setTipOperationClickListener", "Lcom/tn/lib/view/DefaultView$DefaultViewStyle;", TtmlNode.TAG_STYLE, "setStyle", "(Lcom/tn/lib/view/DefaultView$DefaultViewStyle;)V", "Lcom/tn/lib/view/TRImageView;", "a", "Lcom/tn/lib/view/TRImageView;", "defaultImageView", "Landroid/widget/TextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/TextView;", "tvTitle", "c", "tvDesc", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "btnLeft", "e", "btnRight", "Landroid/widget/LinearLayout;", "f", "Landroid/widget/LinearLayout;", "btnLayout", "g", "tvTipOperation", "h", "Landroidx/appcompat/widget/LinearLayoutCompat;", "llTip", "DefaultViewStyle", "ModelStyle", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DefaultView extends LinearLayoutCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TRImageView defaultImageView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TextView tvTitle;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private TextView tvDesc;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private TextView btnLeft;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private TextView btnRight;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private LinearLayout btnLayout;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private TextView tvTipOperation;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private LinearLayoutCompat llTip;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/tn/lib/view/DefaultView$DefaultViewStyle;", "", "<init>", "(Ljava/lang/String;I)V", "STYLE_ALL", "STYLE_NO_BTN", "STYLE_IMAGE_DESC_TIP", "STYLE_IMAGE_DESC_BTN", "STYLE_NO_IMAGE", "STYLE_TITLE_DESC_TIP", "STYLE_DESC_TIP", "STYLE_DESC14SP_TIP", "STYLE_TIP", "STYLE_IMAGE_DES", "STYLE_DES", "STYLE_DES_BTN", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum DefaultViewStyle {
        STYLE_ALL,
        STYLE_NO_BTN,
        STYLE_IMAGE_DESC_TIP,
        STYLE_IMAGE_DESC_BTN,
        STYLE_NO_IMAGE,
        STYLE_TITLE_DESC_TIP,
        STYLE_DESC_TIP,
        STYLE_DESC14SP_TIP,
        STYLE_TIP,
        STYLE_IMAGE_DES,
        STYLE_DES,
        STYLE_DES_BTN;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<DefaultViewStyle> getEntries() {
            return $ENTRIES;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/tn/lib/view/DefaultView$ModelStyle;", "", "<init>", "(Ljava/lang/String;I)V", "MODEL_STYLE_NIGHT", "MODEL_STYLE_WHITE", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum ModelStyle {
        MODEL_STYLE_NIGHT,
        MODEL_STYLE_WHITE;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<ModelStyle> getEntries() {
            return $ENTRIES;
        }
    }

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f40920a;

        static {
            int[] iArr = new int[DefaultViewStyle.values().length];
            try {
                iArr[DefaultViewStyle.STYLE_ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_NO_BTN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_IMAGE_DESC_TIP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_IMAGE_DESC_BTN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_NO_IMAGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_TITLE_DESC_TIP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_DESC_TIP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_DESC14SP_TIP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_TIP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_IMAGE_DES.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_DES.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[DefaultViewStyle.STYLE_DES_BTN.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            f40920a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DefaultView(Context context) {
        this(context, ModelStyle.MODEL_STYLE_WHITE);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultView(Context context, AttributeSet attributeSet, int i11, ModelStyle modelStyle) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        Intrinsics.h(modelStyle, "modelStyle");
        setOrientation(1);
        setGravity(49);
        oh.h hVar = oh.h.f71021a;
        int iA = hVar.a(context, 26.0f);
        setPadding(iA, hVar.a(context, 116.0f), iA, 0);
        LayoutInflater.from(context).inflate(R$layout.libui_layout_default_view, (ViewGroup) this, true);
        this.defaultImageView = (TRImageView) findViewById(R$id.iv_default_image);
        this.tvTitle = (TextView) findViewById(R$id.tv_default_title);
        this.tvDesc = (TextView) findViewById(R$id.tv_desc);
        this.btnLeft = (TextView) findViewById(R$id.btn_left);
        this.btnRight = (TextView) findViewById(R$id.btn_right);
        this.btnLayout = (LinearLayout) findViewById(R$id.ll_btn);
        this.tvTipOperation = (TextView) findViewById(R$id.tv_tip_operation);
        this.llTip = (LinearLayoutCompat) findViewById(R$id.ll_tip);
        TextView textView = this.btnLeft;
        if (textView != null) {
            jg.c.g(textView);
        }
        if (modelStyle == ModelStyle.MODEL_STYLE_NIGHT) {
            setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            TextView textView2 = this.tvTitle;
            Intrinsics.e(textView2);
            textView2.setTextColor(androidx.core.content.b.getColor(getContext(), R$color.base_color_999999));
            TextView textView3 = this.tvDesc;
            Intrinsics.e(textView3);
            textView3.setTextColor(androidx.core.content.b.getColor(getContext(), R$color.base_color_999999));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DefaultView(Context context, AttributeSet attributeSet, ModelStyle modelStyle) {
        this(context, attributeSet, 0, modelStyle);
        Intrinsics.h(context, "context");
        Intrinsics.h(modelStyle, "modelStyle");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DefaultView(Context context, ModelStyle modelStyle) {
        this(context, null, modelStyle);
        Intrinsics.h(context, "context");
        Intrinsics.h(modelStyle, "modelStyle");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(View.OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(View.OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(View.OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    private final void j(boolean showImage, boolean showTitle, boolean showBtn, boolean showDesc, boolean showTip) {
        setDefaultImageViewVisibility(showImage ? 0 : 8);
        setTitleViewVisibility(showTitle ? 0 : 8);
        setBtnLayoutVisibility(showBtn ? 0 : 8);
        setDescViewVisibility(showDesc ? 0 : 8);
        setTipOperationVisibility(showTip ? 0 : 8);
    }

    static /* synthetic */ void k(DefaultView defaultView, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        if ((i11 & 2) != 0) {
            z11 = true;
        }
        if ((i11 & 4) != 0) {
            z12 = true;
        }
        if ((i11 & 8) != 0) {
            z13 = true;
        }
        if ((i11 & 16) != 0) {
            z14 = true;
        }
        defaultView.j(z10, z11, z12, z13, z14);
    }

    public final void setBtnBg(Drawable background) {
        TextView textView = this.btnRight;
        if (textView != null) {
            textView.setBackground(background);
        }
    }

    public final void setBtnClickListener(final View.OnClickListener onClickListener) {
        TextView textView = this.btnRight;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DefaultView.g(onClickListener, view);
                }
            });
        }
    }

    public final void setBtnLayoutVisibility(int visibility) {
        LinearLayout linearLayout = this.btnLayout;
        if (linearLayout != null) {
            linearLayout.setVisibility(visibility);
        }
    }

    public final void setBtnText(CharSequence text) {
        Intrinsics.h(text, "text");
        TextView textView = this.btnRight;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setBtnTextColor(int color) {
        TextView textView = this.btnRight;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    public final void setBtnVisibility(int visibility) {
        TextView textView = this.btnRight;
        if (textView != null) {
            textView.setVisibility(visibility);
        }
    }

    public final void setDefaultImage(int resId) {
        TRImageView tRImageView = this.defaultImageView;
        if (tRImageView != null) {
            tRImageView.setImageResource(resId);
        }
    }

    public final void setDefaultImageViewVisibility(int visibility) {
        TRImageView tRImageView = this.defaultImageView;
        if (tRImageView != null) {
            tRImageView.setVisibility(visibility);
        }
    }

    public final void setDescText(CharSequence text) {
        Intrinsics.h(text, "text");
        TextView textView = this.tvDesc;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setDescTextColor(int color) {
        TextView textView = this.tvDesc;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    public final void setDescTextSize(float size) {
        TextView textView = this.tvDesc;
        if (textView != null) {
            textView.setTextSize(size);
        }
    }

    public final void setDescViewVisibility(int visibility) {
        TextView textView = this.tvDesc;
        if (textView != null) {
            textView.setVisibility(visibility);
        }
    }

    public final void setLeftBtnBg(Drawable background) {
        TextView textView = this.btnLeft;
        if (textView != null) {
            textView.setBackground(background);
        }
    }

    public final void setLeftBtnClickListener(final View.OnClickListener onClickListener) {
        TextView textView = this.btnLeft;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DefaultView.h(onClickListener, view);
                }
            });
        }
    }

    public final void setLeftBtnText(CharSequence text) {
        Intrinsics.h(text, "text");
        TextView textView = this.btnLeft;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setLeftBtnTextColor(int color) {
        TextView textView = this.btnLeft;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    public final void setLeftBtnVisibility(int visibility) {
        TextView textView = this.btnLeft;
        if (textView != null) {
            textView.setVisibility(visibility);
        }
    }

    public final void setStyle(DefaultViewStyle style) {
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.h(style, "style");
        switch (a.f40920a[style.ordinal()]) {
            case 1:
                k(this, false, false, false, false, false, 31, null);
                return;
            case 2:
                k(this, false, false, false, false, false, 27, null);
                TextView textView = this.tvDesc;
                layoutParams = textView != null ? textView.getLayoutParams() : null;
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.appcompat.widget.LinearLayoutCompat.LayoutParams");
                LinearLayoutCompat.a aVar = (LinearLayoutCompat.a) layoutParams;
                oh.h hVar = oh.h.f71021a;
                Context context = getContext();
                Intrinsics.g(context, "getContext(...)");
                ((LinearLayout.LayoutParams) aVar).bottomMargin = hVar.a(context, 16.0f);
                TextView textView2 = this.tvDesc;
                if (textView2 != null) {
                    textView2.setLayoutParams(aVar);
                    return;
                }
                return;
            case 3:
                k(this, false, false, false, false, false, 25, null);
                TextView textView3 = this.tvDesc;
                if (textView3 != null) {
                    textView3.setTextColor(androidx.core.content.b.getColor(getContext(), R$color.cl33));
                }
                TextView textView4 = this.tvDesc;
                layoutParams = textView4 != null ? textView4.getLayoutParams() : null;
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.appcompat.widget.LinearLayoutCompat.LayoutParams");
                LinearLayoutCompat.a aVar2 = (LinearLayoutCompat.a) layoutParams;
                oh.h hVar2 = oh.h.f71021a;
                Context context2 = getContext();
                Intrinsics.g(context2, "getContext(...)");
                ((LinearLayout.LayoutParams) aVar2).bottomMargin = hVar2.a(context2, 16.0f);
                TextView textView5 = this.tvDesc;
                if (textView5 != null) {
                    textView5.setLayoutParams(aVar2);
                    return;
                }
                return;
            case 4:
                k(this, false, false, false, false, false, 13, null);
                TextView textView6 = this.tvDesc;
                if (textView6 != null) {
                    textView6.setTextSize(14.0f);
                    return;
                }
                return;
            case 5:
                k(this, false, false, false, false, false, 30, null);
                return;
            case 6:
                k(this, false, false, false, false, false, 26, null);
                TextView textView7 = this.tvDesc;
                layoutParams = textView7 != null ? textView7.getLayoutParams() : null;
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.appcompat.widget.LinearLayoutCompat.LayoutParams");
                LinearLayoutCompat.a aVar3 = (LinearLayoutCompat.a) layoutParams;
                oh.h hVar3 = oh.h.f71021a;
                Context context3 = getContext();
                Intrinsics.g(context3, "getContext(...)");
                ((LinearLayout.LayoutParams) aVar3).bottomMargin = hVar3.a(context3, 16.0f);
                TextView textView8 = this.tvDesc;
                if (textView8 != null) {
                    textView8.setLayoutParams(aVar3);
                    return;
                }
                return;
            case 7:
                k(this, false, false, false, false, false, 24, null);
                TextView textView9 = this.tvDesc;
                if (textView9 != null) {
                    textView9.setTextColor(androidx.core.content.b.getColor(getContext(), R$color.cl33));
                }
                TextView textView10 = this.tvDesc;
                layoutParams = textView10 != null ? textView10.getLayoutParams() : null;
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.appcompat.widget.LinearLayoutCompat.LayoutParams");
                LinearLayoutCompat.a aVar4 = (LinearLayoutCompat.a) layoutParams;
                oh.h hVar4 = oh.h.f71021a;
                Context context4 = getContext();
                Intrinsics.g(context4, "getContext(...)");
                ((LinearLayout.LayoutParams) aVar4).bottomMargin = hVar4.a(context4, 16.0f);
                TextView textView11 = this.tvDesc;
                if (textView11 != null) {
                    textView11.setLayoutParams(aVar4);
                    return;
                }
                return;
            case 8:
                k(this, false, false, false, false, false, 24, null);
                TextView textView12 = this.tvDesc;
                if (textView12 != null) {
                    textView12.setTextSize(14.0f);
                }
                TextView textView13 = this.tvDesc;
                layoutParams = textView13 != null ? textView13.getLayoutParams() : null;
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.appcompat.widget.LinearLayoutCompat.LayoutParams");
                LinearLayoutCompat.a aVar5 = (LinearLayoutCompat.a) layoutParams;
                oh.h hVar5 = oh.h.f71021a;
                Context context5 = getContext();
                Intrinsics.g(context5, "getContext(...)");
                ((LinearLayout.LayoutParams) aVar5).bottomMargin = hVar5.a(context5, 16.0f);
                TextView textView14 = this.tvDesc;
                if (textView14 != null) {
                    textView14.setLayoutParams(aVar5);
                    return;
                }
                return;
            case 9:
                k(this, false, false, false, false, false, 16, null);
                return;
            case 10:
                k(this, false, false, false, false, false, 9, null);
                TextView textView15 = this.tvDesc;
                if (textView15 != null) {
                    textView15.setTextSize(14.0f);
                    return;
                }
                return;
            case 11:
                k(this, false, false, false, false, false, 8, null);
                TextView textView16 = this.tvDesc;
                if (textView16 != null) {
                    textView16.setTextSize(14.0f);
                    return;
                }
                return;
            case 12:
                k(this, false, false, false, false, false, 12, null);
                TextView textView17 = this.tvDesc;
                if (textView17 != null) {
                    textView17.setTextSize(14.0f);
                }
                TextView textView18 = this.tvDesc;
                layoutParams = textView18 != null ? textView18.getLayoutParams() : null;
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.appcompat.widget.LinearLayoutCompat.LayoutParams");
                LinearLayoutCompat.a aVar6 = (LinearLayoutCompat.a) layoutParams;
                oh.h hVar6 = oh.h.f71021a;
                Context context6 = getContext();
                Intrinsics.g(context6, "getContext(...)");
                ((LinearLayout.LayoutParams) aVar6).bottomMargin = hVar6.a(context6, 16.0f);
                TextView textView19 = this.tvDesc;
                if (textView19 != null) {
                    textView19.setLayoutParams(aVar6);
                    return;
                }
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final void setTipOperationClickListener(final View.OnClickListener onClickListener) {
        LinearLayoutCompat linearLayoutCompat = this.llTip;
        if (linearLayoutCompat != null) {
            linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DefaultView.i(onClickListener, view);
                }
            });
        }
    }

    public final void setTipOperationText(CharSequence text) {
        Intrinsics.h(text, "text");
        TextView textView = this.tvTipOperation;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setTipOperationVisibility(int visibility) {
        LinearLayoutCompat linearLayoutCompat = this.llTip;
        if (linearLayoutCompat != null) {
            linearLayoutCompat.setVisibility(visibility);
        }
    }

    public final void setTipTextColor(int color) {
        TextView textView = this.tvTipOperation;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    public final void setTitleText(CharSequence text) {
        Intrinsics.h(text, "text");
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setTitleTextColor(int color) {
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    public final void setTitleViewVisibility(int visibility) {
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setVisibility(visibility);
        }
    }
}
