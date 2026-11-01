package com.transsnet.downloader.widget;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.noober.background.view.BLView;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.TnTextView;
import com.transsion.push.PushConstants;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import py.h1;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB#\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J/\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J/\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001a\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001e\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001f\u0010\u001cJ\u0015\u0010!\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u0015¢\u0006\u0004\b!\u0010\"J\u0015\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J%\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#2\u0006\u0010'\u001a\u00020\n2\u0006\u0010(\u001a\u00020\n¢\u0006\u0004\b%\u0010)R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u00100\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00102\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010/¨\u00063"}, d2 = {"Lcom/transsnet/downloader/widget/FileManagerTabTitleView;", "Landroid/widget/FrameLayout;", "Lj00/b;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "index", "totalCount", "", "onSelected", "(II)V", "onDeselected", "", "leavePercent", "", "leftToRight", "onLeave", "(IIFZ)V", "enterPercent", "onEnter", "getContentLeft", "()I", "getContentTop", "getContentRight", "getContentBottom", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setDotVisibility", "(Z)V", "", CampaignEx.JSON_KEY_TITLE, "setTitle", "(Ljava/lang/String;)V", "count", RequestParameters.POSITION, "(Ljava/lang/String;II)V", "Lpy/h1;", "a", "Lpy/h1;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "normalColor", "c", "selectedColor", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FileManagerTabTitleView extends FrameLayout implements j00.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final h1 viewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final int normalColor;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int selectedColor;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FileManagerTabTitleView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FileManagerTabTitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileManagerTabTitleView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        View.inflate(getContext(), R$layout.view_download_top_tab, this);
        h1 h1VarA = h1.a(this);
        Intrinsics.g(h1VarA, "bind(...)");
        this.viewBinding = h1VarA;
        this.normalColor = androidx.core.content.b.getColor(getContext(), R$color.white_80);
        this.selectedColor = androidx.core.content.b.getColor(getContext(), R$color.new_text_05);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence e(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence f(FileManagerTabTitleView fileManagerTabTitleView, String str) {
        return fileManagerTabTitleView.getContext().getString(R$string.downloading_Local_files) + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence g(FileManagerTabTitleView fileManagerTabTitleView, String str) {
        return fileManagerTabTitleView.getContext().getString(R$string.download_transfer_tab_received) + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence h(String str) {
        return str;
    }

    @Override // j00.b
    public int getContentBottom() {
        Paint.FontMetrics fontMetrics = this.viewBinding.f72750b.getPaint().getFontMetrics();
        Intrinsics.g(fontMetrics, "getFontMetrics(...)");
        return (int) ((getHeight() / 2) + ((fontMetrics.bottom - fontMetrics.top) / 2));
    }

    @Override // j00.b
    public int getContentLeft() {
        String string;
        List listL;
        Rect rect = new Rect();
        if (StringsKt.c0(this.viewBinding.f72750b.getText().toString(), "\n", false, 2, null)) {
            List<String> listSplit = new Regex("\\n").split(this.viewBinding.f72750b.getText().toString(), 0);
            if (listSplit.isEmpty()) {
                listL = CollectionsKt.l();
                break;
            }
            ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    listL = CollectionsKt.l();
                    break;
                }
                if (listIterator.previous().length() != 0) {
                    listL = CollectionsKt.K0(listSplit, listIterator.nextIndex() + 1);
                    break;
                }
            }
            string = "";
            for (String str : (String[]) listL.toArray(new String[0])) {
                if (str.length() > string.length()) {
                    string = str;
                }
            }
        } else {
            string = this.viewBinding.f72750b.getText().toString();
        }
        this.viewBinding.f72750b.getPaint().getTextBounds(string, 0, string.length(), rect);
        return (getLeft() + (getWidth() / 2)) - (rect.width() / 2);
    }

    @Override // j00.b
    public int getContentRight() {
        String string;
        List listL;
        Rect rect = new Rect();
        if (StringsKt.c0(this.viewBinding.f72750b.getText().toString(), "\n", false, 2, null)) {
            List<String> listSplit = new Regex("\\n").split(this.viewBinding.f72750b.getText().toString(), 0);
            if (listSplit.isEmpty()) {
                listL = CollectionsKt.l();
                break;
            }
            ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    listL = CollectionsKt.l();
                    break;
                }
                if (listIterator.previous().length() != 0) {
                    listL = CollectionsKt.K0(listSplit, listIterator.nextIndex() + 1);
                    break;
                }
            }
            string = "";
            for (String str : (String[]) listL.toArray(new String[0])) {
                if (str.length() > string.length()) {
                    string = str;
                }
            }
        } else {
            string = this.viewBinding.f72750b.getText().toString();
        }
        this.viewBinding.f72750b.getPaint().getTextBounds(string, 0, string.length(), rect);
        return getLeft() + (getWidth() / 2) + (rect.width() / 2);
    }

    @Override // j00.b
    public int getContentTop() {
        Paint.FontMetrics fontMetrics = this.viewBinding.f72750b.getPaint().getFontMetrics();
        Intrinsics.g(fontMetrics, "getFontMetrics(...)");
        return (int) ((getHeight() / 2) - ((fontMetrics.bottom - fontMetrics.top) / 2));
    }

    @Override // j00.d
    public void onDeselected(int index, int totalCount) {
        this.viewBinding.f72750b.setTextColor(this.normalColor);
        this.viewBinding.f72750b.setBackgroundResource(R$drawable.bg_shape_download_tab_unselected);
        TnTextView tnTextView = this.viewBinding.f72750b;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        tnTextView.setTypeface(jg.a.d(context));
    }

    @Override // j00.d
    public void onEnter(int index, int totalCount, float enterPercent, boolean leftToRight) {
    }

    @Override // j00.d
    public void onLeave(int index, int totalCount, float leavePercent, boolean leftToRight) {
    }

    @Override // j00.d
    public void onSelected(int index, int totalCount) {
        this.viewBinding.f72750b.setTextColor(this.selectedColor);
        this.viewBinding.f72750b.setBackgroundResource(R$drawable.bg_shape_download_tab_selected);
        TnTextView tnTextView = this.viewBinding.f72750b;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        tnTextView.setTypeface(jg.a.a(context));
    }

    public final void setDotVisibility(boolean show) {
        BLView vDot = this.viewBinding.f72751c;
        Intrinsics.g(vDot, "vDot");
        vDot.setVisibility(show ? 0 : 8);
    }

    public final void setTitle(final String title) {
        Intrinsics.h(title, "title");
        this.viewBinding.f72750b.setTextAction(new Function0() { // from class: com.transsnet.downloader.widget.z
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FileManagerTabTitleView.e(title);
            }
        });
    }

    public final void setTitle(final String title, int count, int position) {
        final String str;
        Intrinsics.h(title, "title");
        if (count > 0) {
            str = " " + count;
        } else {
            str = "";
        }
        if (position == 1) {
            this.viewBinding.f72750b.setTextAction(new Function0() { // from class: com.transsnet.downloader.widget.a0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FileManagerTabTitleView.f(this.f60189a, str);
                }
            });
        } else if (position != 2) {
            this.viewBinding.f72750b.setTextAction(new Function0() { // from class: com.transsnet.downloader.widget.c0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FileManagerTabTitleView.h(title);
                }
            });
        } else {
            this.viewBinding.f72750b.setTextAction(new Function0() { // from class: com.transsnet.downloader.widget.b0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return FileManagerTabTitleView.g(this.f60192a, str);
                }
            });
        }
    }
}
