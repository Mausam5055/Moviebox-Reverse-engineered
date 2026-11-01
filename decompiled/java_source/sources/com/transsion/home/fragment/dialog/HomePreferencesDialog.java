package com.transsion.home.fragment.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.blankj.utilcode.util.a0;
import com.cloud.config.utils.XLogUtil;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$string;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesContentItem;
import com.transsion.home.bean.HomePreferencesSelectType;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 `2\u00020\u0001:\u0001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ1\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ#\u0010#\u001a\u00020\u0014*\u00020\u001f2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u001aH\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0014H\u0002¢\u0006\u0004\b%\u0010\u0003J\u0017\u0010'\u001a\u00020\u00142\u0006\u0010&\u001a\u00020\u0017H\u0002¢\u0006\u0004\b'\u0010(J\u0015\u0010*\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u0012¢\u0006\u0004\b*\u0010+J\u0019\u0010.\u001a\u00020\u00142\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b.\u0010/J!\u00100\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b0\u00101R\u0018\u0010)\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u001a\u00107\u001a\b\u0012\u0004\u0012\u00020\u0004048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R*\u0010?\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u0001088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R6\u0010G\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\t\u0012\u0004\u0012\u00020\u0014\u0018\u00010@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0014\u0010N\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010MR\u0014\u0010P\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010MR\u0014\u0010R\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010MR\u0014\u0010T\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010MR\u0014\u0010V\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010MR\u0014\u0010X\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010MR\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R\u0018\u0010_\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^¨\u0006b"}, d2 = {"Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", MimeTypes.BASE_TYPE_TEXT, "", "v0", "(Ljava/lang/String;)F", "", "Lcom/transsion/home/bean/HomePreferencesContentItem;", "items", "", "rowCount", "u0", "(Ljava/util/List;I)Ljava/util/List;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsion/home/bean/HomePreferencesConfig;", "cfg", "", "r0", "(Landroid/view/View;Lcom/transsion/home/bean/HomePreferencesConfig;)V", "Landroid/view/ViewGroup;", "parent", WebConstants.FIELD_ITEM, "", "isSingle", "Landroid/widget/LinearLayout;", "s0", "(Landroid/view/ViewGroup;Lcom/transsion/home/bean/HomePreferencesContentItem;Z)Landroid/widget/LinearLayout;", "Lcom/transsion/baseui/widget/GradientTextView;", "Landroid/content/Context;", "context", "selected", "q0", "(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V", "C0", "container", "y0", "(Landroid/view/ViewGroup;)V", XLogUtil.TAG, "z0", "(Lcom/transsion/home/bean/HomePreferencesConfig;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "c", "Lcom/transsion/home/bean/HomePreferencesConfig;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/Set;", "selectedIds", "Lkotlin/Function0;", "e", "Lkotlin/jvm/functions/Function0;", "getOnClose", "()Lkotlin/jvm/functions/Function0;", "A0", "(Lkotlin/jvm/functions/Function0;)V", "onClose", "Lkotlin/Function1;", "f", "Lkotlin/jvm/functions/Function1;", "getOnConfirm", "()Lkotlin/jvm/functions/Function1;", "B0", "(Lkotlin/jvm/functions/Function1;)V", "onConfirm", "Landroid/widget/TextView;", "g", "Landroid/widget/TextView;", "confirmButton", "h", "I", "tagHorizontalPadding", "i", "tagHeight", "j", "tagMinWidth", CampaignEx.JSON_KEY_AD_K, "tagGap", "l", "iconSize", "m", "iconGap", "Landroid/text/TextPaint;", "n", "Landroid/text/TextPaint;", "measurePaint", "o", "Landroid/widget/LinearLayout;", "rowsContainer", TtmlNode.TAG_P, "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class HomePreferencesDialog extends BaseDialog {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f44900q = 8;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private HomePreferencesConfig config;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Set selectedIds;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 onClose;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function1 onConfirm;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private TextView confirmButton;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final int tagHorizontalPadding;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final int tagHeight;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final int tagMinWidth;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final int tagGap;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final int iconSize;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final int iconGap;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final TextPaint measurePaint;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private LinearLayout rowsContainer;

    /* JADX INFO: renamed from: com.transsion.home.fragment.dialog.HomePreferencesDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final HomePreferencesDialog a() {
            return new HomePreferencesDialog();
        }
    }

    public HomePreferencesDialog() {
        super(R$layout.dialog_home_preferences);
        this.selectedIds = new LinkedHashSet();
        this.tagHorizontalPadding = a0.a(12.0f);
        this.tagHeight = a0.a(32.0f);
        this.tagMinWidth = a0.a(68.0f);
        this.tagGap = a0.a(8.0f);
        this.iconSize = a0.a(16.0f);
        this.iconGap = a0.a(4.0f);
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTextSize(a0.a(12.0f));
        this.measurePaint = textPaint;
    }

    private final void C0() {
        TextView textView = this.confirmButton;
        if (textView != null) {
            textView.setAlpha(this.selectedIds.isEmpty() ? 0.5f : 1.0f);
        }
    }

    private final void q0(GradientTextView gradientTextView, Context context, boolean z10) {
        int color = androidx.core.content.b.getColor(context, R$color.white_80);
        int color2 = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_start);
        int color3 = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_center);
        int color4 = androidx.core.content.b.getColor(context, R$color.brand_new_gradient_end);
        if (!z10) {
            color2 = color;
        }
        if (!z10) {
            color3 = color;
        }
        if (z10) {
            color = color4;
        }
        gradientTextView.setGradientColors(color2, color3, color);
    }

    private final void r0(View view, HomePreferencesConfig cfg) {
        List options = cfg.getOptions();
        if (options.isEmpty()) {
            return;
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.llRowsContainer);
        this.rowsContainer = linearLayout;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        List listU0 = u0(options, options.size() <= 8 ? 1 : (int) Math.ceil(options.size() / 8));
        boolean zC = Intrinsics.c(cfg.getSelectType(), HomePreferencesSelectType.SINGLE.getValue());
        int i11 = 0;
        for (Object obj : listU0) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            List list = (List) obj;
            LinearLayout linearLayout2 = new LinearLayout(view.getContext());
            linearLayout2.setOrientation(0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            if (i11 > 0) {
                layoutParams.topMargin = this.tagGap;
            }
            linearLayout2.setLayoutParams(layoutParams);
            int iA = a0.a(8.0f);
            int i13 = 0;
            for (Object obj2 : list) {
                int i14 = i13 + 1;
                if (i13 < 0) {
                    CollectionsKt.u();
                }
                LinearLayout linearLayoutS0 = s0(linearLayout2, (HomePreferencesContentItem) obj2, zC);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, this.tagHeight);
                layoutParams2.setMarginStart(i13 == 0 ? iA : this.tagGap);
                linearLayout2.addView(linearLayoutS0, layoutParams2);
                i13 = i14;
            }
            LinearLayout linearLayout3 = this.rowsContainer;
            if (linearLayout3 != null) {
                linearLayout3.addView(linearLayout2);
            }
            i11 = i12;
        }
        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) view.findViewById(R$id.hsvTags);
        if (horizontalScrollView != null) {
            horizontalScrollView.scrollTo(0, 0);
        }
    }

    private final LinearLayout s0(ViewGroup parent, final HomePreferencesContentItem item, final boolean isSingle) {
        final Context context = parent.getContext();
        boolean zContains = this.selectedIds.contains(item.getValue());
        final LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setMinimumWidth(this.tagMinWidth);
        int i11 = this.tagHorizontalPadding;
        linearLayout.setPadding(i11, 0, i11, 0);
        linearLayout.setBackground(androidx.core.content.b.getDrawable(context, R$drawable.bg_preferences_tag));
        linearLayout.setSelected(zContains);
        Intrinsics.e(context);
        final GradientTextView gradientTextView = new GradientTextView(context, null, 0, 6, null);
        gradientTextView.setText(item.getName());
        gradientTextView.setTextSize(12.0f);
        gradientTextView.setMaxLines(1);
        gradientTextView.setGravity(17);
        gradientTextView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        q0(gradientTextView, context, zContains);
        final ImageView imageView = new ImageView(context);
        imageView.setImageResource(zContains ? R$drawable.ic_preferences_heart_selected : R$drawable.ic_preferences_heart_unselected);
        int i12 = this.iconSize;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i12, i12);
        layoutParams.setMarginStart(this.iconGap);
        imageView.setLayoutParams(layoutParams);
        linearLayout.addView(gradientTextView);
        linearLayout.addView(imageView);
        linearLayout.setTag(item.getValue());
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.dialog.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomePreferencesDialog.t0(isSingle, this, item, context, linearLayout, imageView, gradientTextView, view);
            }
        });
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(boolean z10, HomePreferencesDialog homePreferencesDialog, HomePreferencesContentItem homePreferencesContentItem, Context context, LinearLayout linearLayout, ImageView imageView, GradientTextView gradientTextView, View view) {
        if (z10) {
            if (homePreferencesDialog.selectedIds.contains(homePreferencesContentItem.getValue())) {
                homePreferencesDialog.selectedIds.remove(homePreferencesContentItem.getValue());
            } else {
                homePreferencesDialog.selectedIds.clear();
                homePreferencesDialog.selectedIds.add(homePreferencesContentItem.getValue());
            }
            LinearLayout linearLayout2 = homePreferencesDialog.rowsContainer;
            if (linearLayout2 != null) {
                homePreferencesDialog.y0(linearLayout2);
            }
        } else {
            boolean zContains = homePreferencesDialog.selectedIds.contains(homePreferencesContentItem.getValue());
            boolean z11 = !zContains;
            if (zContains) {
                homePreferencesDialog.selectedIds.remove(homePreferencesContentItem.getValue());
            } else {
                HomePreferencesConfig homePreferencesConfig = homePreferencesDialog.config;
                int maxSelectNum = homePreferencesConfig != null ? homePreferencesConfig.getMaxSelectNum() : 0;
                if (maxSelectNum > 0 && homePreferencesDialog.selectedIds.size() >= maxSelectNum) {
                    String string = context.getString(R$string.home_preferences_max_select_tips, Integer.valueOf(maxSelectNum));
                    Intrinsics.g(string, "getString(...)");
                    com.transsion.baseui.util.m.f(string);
                    return;
                }
                homePreferencesDialog.selectedIds.add(homePreferencesContentItem.getValue());
            }
            linearLayout.setSelected(z11);
            imageView.setImageResource(!zContains ? R$drawable.ic_preferences_heart_selected : R$drawable.ic_preferences_heart_unselected);
            Intrinsics.e(context);
            homePreferencesDialog.q0(gradientTextView, context, z11);
        }
        homePreferencesDialog.C0();
    }

    private final List u0(List items, int rowCount) {
        List[] listArr = new List[rowCount];
        for (int i11 = 0; i11 < rowCount; i11++) {
            listArr[i11] = new ArrayList();
        }
        float[] fArr = new float[rowCount];
        Iterator it = items.iterator();
        while (it.hasNext()) {
            HomePreferencesContentItem homePreferencesContentItem = (HomePreferencesContentItem) it.next();
            float fV0 = v0(homePreferencesContentItem.getName());
            float f11 = Float.MAX_VALUE;
            int i12 = -1;
            for (int i13 = 0; i13 < rowCount; i13++) {
                if (listArr[i13].size() < 8) {
                    float f12 = fArr[i13];
                    if (f12 < f11) {
                        i12 = i13;
                        f11 = f12;
                    }
                }
            }
            if (i12 == -1) {
                break;
            }
            listArr[i12].add(homePreferencesContentItem);
            fArr[i12] = fArr[i12] + fV0 + this.tagGap;
        }
        ArrayList arrayList = new ArrayList(rowCount);
        for (int i14 = 0; i14 < rowCount; i14++) {
            arrayList.add(CollectionsKt.R0(listArr[i14]));
        }
        return arrayList;
    }

    private final float v0(String text) {
        return Math.max((this.tagHorizontalPadding * 2) + this.measurePaint.measureText(text) + this.iconGap + this.iconSize, this.tagMinWidth);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(HomePreferencesDialog homePreferencesDialog, View view) {
        Function0 function0 = homePreferencesDialog.onClose;
        if (function0 != null) {
            function0.invoke();
        }
        homePreferencesDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(HomePreferencesDialog homePreferencesDialog, View view) {
        if (homePreferencesDialog.selectedIds.isEmpty()) {
            return;
        }
        Function1 function1 = homePreferencesDialog.onConfirm;
        if (function1 != null) {
            function1.invoke(CollectionsKt.R0(homePreferencesDialog.selectedIds));
        }
        homePreferencesDialog.dismissAllowingStateLoss();
    }

    private final void y0(ViewGroup container) {
        int childCount = container.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = container.getChildAt(i11);
            if (childAt instanceof LinearLayout) {
                LinearLayout linearLayout = (LinearLayout) childAt;
                if (linearLayout.getTag() instanceof String) {
                    Object tag = linearLayout.getTag();
                    Intrinsics.f(tag, "null cannot be cast to non-null type kotlin.String");
                    boolean zContains = this.selectedIds.contains((String) tag);
                    linearLayout.setSelected(zContains);
                    if (linearLayout.getChildCount() >= 2) {
                        View childAt2 = linearLayout.getChildAt(0);
                        GradientTextView gradientTextView = childAt2 instanceof GradientTextView ? (GradientTextView) childAt2 : null;
                        if (gradientTextView != null) {
                            Context context = linearLayout.getContext();
                            Intrinsics.g(context, "getContext(...)");
                            q0(gradientTextView, context, zContains);
                        }
                        View childAt3 = linearLayout.getChildAt(1);
                        ImageView imageView = childAt3 instanceof ImageView ? (ImageView) childAt3 : null;
                        if (imageView != null) {
                            imageView.setImageResource(zContains ? R$drawable.ic_preferences_heart_selected : R$drawable.ic_preferences_heart_unselected);
                        }
                    }
                }
            }
            if (childAt instanceof ViewGroup) {
                y0((ViewGroup) childAt);
            }
        }
    }

    public final void A0(Function0 function0) {
        this.onClose = function0;
    }

    public final void B0(Function1 function1) {
        this.onConfirm = function1;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCancelable(false);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setLayout(-1, -2);
            window.setGravity(80);
        }
        HomePreferencesConfig homePreferencesConfig = this.config;
        if (homePreferencesConfig == null) {
            return;
        }
        ((TextView) view.findViewById(R$id.tvTitle)).setText(homePreferencesConfig.getTitle());
        TextView textView = (TextView) view.findViewById(R$id.tvSubtitle);
        String subTitle = homePreferencesConfig.getSubTitle();
        if (subTitle == null || StringsKt.q0(subTitle)) {
            textView.setVisibility(8);
        } else {
            textView.setText(homePreferencesConfig.getSubTitle());
            textView.setVisibility(0);
        }
        view.findViewById(R$id.btnClose).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.dialog.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HomePreferencesDialog.w0(this.f44931a, view2);
            }
        });
        TextView textView2 = (TextView) view.findViewById(R$id.btnConfirm);
        this.confirmButton = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.dialog.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    HomePreferencesDialog.x0(this.f44932a, view2);
                }
            });
        }
        r0(view, homePreferencesConfig);
        C0();
    }

    public final void z0(HomePreferencesConfig config) {
        Intrinsics.h(config, "config");
        this.config = config;
        this.selectedIds.clear();
    }
}
