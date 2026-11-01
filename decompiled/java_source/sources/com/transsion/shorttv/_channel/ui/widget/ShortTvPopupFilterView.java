package com.transsion.shorttv._channel.ui.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.blankj.utilcode.util.a0;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv._channel.model.ShortTvFilterVal;
import com.transsion.shorttv._channel.model.ShortTvItem;
import com.transsion.shorttv._channel.ui.widget.ShortTvPopupFilterView;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import sr.r;
import yr.b;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 =2\u00020\u0001:\u0001-B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0014\u001a\u00020\u00132\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ'\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010\"\u001a\u00020\u00132\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\"\u0010\u0015JG\u0010&\u001a\u00020\u00132\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2(\b\u0002\u0010%\u001a\"\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010#j\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u0001`$¢\u0006\u0004\b&\u0010'J-\u0010+\u001a\u00020\u00132\u001e\u0010*\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160)\u0012\u0004\u0012\u00020\u00130(¢\u0006\u0004\b+\u0010,R0\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160#j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016`$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R0\u00102\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160)\u0012\u0004\u0012\u00020\u0013\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u001e\u00105\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010;¨\u0006>"}, d2 = {"Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "Lcom/transsion/shorttv/_channel/model/ShortTvItem;", "filterItem", "", "i", "(Ljava/util/List;)Z", "data", "", "e", "(Ljava/util/List;)V", "", MimeTypes.BASE_TYPE_TEXT, "isSelected", "Landroid/view/View;", "h", "(Ljava/lang/String;Z)Landroid/view/View;", "anchor", WebConstants.FIELD_ITEM, "selectedId", "l", "(Landroid/view/View;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Ljava/lang/String;)V", "innerData", "j", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "selectItems", "initSelectData", "(Ljava/util/List;Ljava/util/HashMap;)V", "Lkotlin/Function1;", "", "callback", "setOnFilterListener", "(Lkotlin/jvm/functions/Function1;)V", "a", "Ljava/util/HashMap;", "selectItemsMap", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/jvm/functions/Function1;", "onFilterChangedListener", "c", "Ljava/util/List;", "mData", "Lsr/r;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lsr/r;", "mSingleFilterPopup", "Lcom/transsion/shorttv/_channel/ui/widget/a;", "Lcom/transsion/shorttv/_channel/ui/widget/a;", "mMultiFilterPopup", "Companion", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvPopupFilterView extends FrameLayout {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final HashMap selectItemsMap;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Function1 onFilterChangedListener;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private List mData;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private r mSingleFilterPopup;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private a mMultiFilterPopup;

    /* JADX INFO: renamed from: com.transsion.shorttv._channel.ui.widget.ShortTvPopupFilterView$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(float f11, float f12) {
            return ((int) f11) + "," + ((int) f12);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvPopupFilterView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.selectItemsMap = new HashMap();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvPopupFilterView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.selectItemsMap = new HashMap();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvPopupFilterView(Context context, AttributeSet attrs, int i11) {
        super(context, attrs, i11);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.selectItemsMap = new HashMap();
    }

    private final void e(List data) {
        Object next;
        String title;
        List list = data;
        ArrayList<ShortTvItem> arrayList = new ArrayList();
        for (Object obj : list) {
            ShortTvItem shortTvItem = (ShortTvItem) obj;
            if (Intrinsics.c(shortTvItem.getShowOut(), "true") && shortTvItem.getRangeVals() == null) {
                arrayList.add(obj);
            }
        }
        final ArrayList<ShortTvItem> arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            if (Intrinsics.c(((ShortTvItem) obj2).getShowOut(), "false")) {
                arrayList2.add(obj2);
            }
        }
        for (ShortTvItem shortTvItem2 : arrayList2) {
            if (!shortTvItem2.getFilterValsV2().isEmpty() && this.selectItemsMap.get(shortTvItem2.getFilterType()) == null) {
                this.selectItemsMap.put(shortTvItem2.getFilterType(), shortTvItem2.getFilterValsV2().get(0).getId());
            }
        }
        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(getContext());
        horizontalScrollView.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        horizontalScrollView.setFillViewport(true);
        horizontalScrollView.setHorizontalScrollBarEnabled(false);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        for (final ShortTvItem shortTvItem3 : arrayList) {
            final String id2 = (String) this.selectItemsMap.get(shortTvItem3.getFilterType());
            if (id2 == null) {
                id2 = !shortTvItem3.getFilterValsV2().isEmpty() ? shortTvItem3.getFilterValsV2().get(0).getId() : "";
            }
            boolean z10 = (shortTvItem3.getFilterValsV2().isEmpty() || Intrinsics.c(id2, shortTvItem3.getFilterValsV2().get(0).getId())) ? false : true;
            Iterator<T> it = shortTvItem3.getFilterValsV2().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((ShortTvFilterVal) next).getId(), id2));
            ShortTvFilterVal shortTvFilterVal = (ShortTvFilterVal) next;
            if (!z10) {
                title = shortTvItem3.getTitle();
            } else if (shortTvFilterVal == null || (title = shortTvFilterVal.getName()) == null) {
                title = id2;
            }
            final View viewH = h(title, z10);
            viewH.setOnClickListener(new View.OnClickListener() { // from class: sr.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTvPopupFilterView.f(this.f75826a, viewH, shortTvItem3, id2, view);
                }
            });
            linearLayout.addView(viewH);
            View view = new View(getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(a0.a(8.0f), 1));
            linearLayout.addView(view);
        }
        View view2 = new View(getContext());
        view2.setLayoutParams(new LinearLayout.LayoutParams(0, 1, 1.0f));
        linearLayout.addView(view2);
        if (!arrayList2.isEmpty()) {
            boolean zI = i(data);
            ImageView imageView = new ImageView(getContext());
            imageView.setImageResource(R$mipmap.short_tv_ic_sub_operation_filter);
            imageView.setLayoutParams(new LinearLayout.LayoutParams(a0.a(24.0f), a0.a(24.0f)));
            if (zI) {
                imageView.setColorFilter(imageView.getContext().getResources().getColor(R$color.brand));
            } else {
                imageView.setColorFilter(imageView.getContext().getResources().getColor(R$color.short_tv_white));
            }
            imageView.setOnClickListener(new View.OnClickListener() { // from class: sr.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ShortTvPopupFilterView.g(this.f75830a, arrayList2, view3);
                }
            });
            linearLayout.addView(imageView);
        }
        horizontalScrollView.addView(linearLayout);
        addView(horizontalScrollView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ShortTvPopupFilterView shortTvPopupFilterView, View view, ShortTvItem shortTvItem, String str, View view2) {
        shortTvPopupFilterView.l(view, shortTvItem, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(ShortTvPopupFilterView shortTvPopupFilterView, List list, View view) {
        shortTvPopupFilterView.j(list);
    }

    private final View h(String text, boolean isSelected) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, a0.a(28.0f)));
        linearLayout.setPadding(a0.a(12.0f), 0, a0.a(10.0f), 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(a0.a(100.0f));
        if (isSelected) {
            gradientDrawable.setStroke(a0.a(1.0f), linearLayout.getContext().getResources().getColor(R$color.short_tv_white));
            gradientDrawable.setColor(linearLayout.getContext().getResources().getColor(R$color.short_tv_white_40));
        } else {
            gradientDrawable.setStroke(a0.a(1.0f), linearLayout.getContext().getResources().getColor(R$color.short_tv_gray_light_40));
            gradientDrawable.setColor(0);
        }
        linearLayout.setBackground(gradientDrawable);
        TextView textView = new TextView(getContext());
        textView.setText(text);
        textView.setTextSize(14.0f);
        textView.setTextColor(-1);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setMaxWidth(a0.a(120.0f));
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(R$drawable.short_tv_ic_arrow_down);
        imageView.setColorFilter(-1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(a0.a(16.0f), a0.a(16.0f));
        layoutParams.setMarginStart(a0.a(4.0f));
        imageView.setLayoutParams(layoutParams);
        linearLayout.addView(textView);
        linearLayout.addView(imageView);
        return linearLayout;
    }

    private final boolean i(List filterItem) {
        if (filterItem != null) {
            Iterator it = filterItem.iterator();
            while (it.hasNext()) {
                ShortTvItem shortTvItem = (ShortTvItem) it.next();
                String str = (String) this.selectItemsMap.get(shortTvItem.getFilterType());
                if (shortTvItem.getRangeVals() == null && Intrinsics.c(shortTvItem.getShowOut(), "false")) {
                    if (str != null && !shortTvItem.getFilterValsV2().isEmpty() && !Intrinsics.c(str, shortTvItem.getFilterValsV2().get(0).getId())) {
                        return true;
                    }
                } else if (shortTvItem.getRangeVals() != null) {
                    String strA = INSTANCE.a(shortTvItem.getRangeVals().getMinVal(), shortTvItem.getRangeVals().getMaxVal());
                    if (str != null && !Intrinsics.c(str, strA)) {
                        return true;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void initSelectData$default(ShortTvPopupFilterView shortTvPopupFilterView, List list, HashMap map, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            map = null;
        }
        shortTvPopupFilterView.initSelectData(list, map);
    }

    private final void j(List innerData) {
        if (this.mMultiFilterPopup == null) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            this.mMultiFilterPopup = new a(context);
        }
        a aVar = this.mMultiFilterPopup;
        if (aVar != null) {
            aVar.l(innerData, this.selectItemsMap, new Function1() { // from class: sr.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ShortTvPopupFilterView.k(this.f75834a, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(ShortTvPopupFilterView shortTvPopupFilterView, boolean z10) {
        if (z10) {
            Function1 function1 = shortTvPopupFilterView.onFilterChangedListener;
            if (function1 != null) {
                function1.invoke(shortTvPopupFilterView.selectItemsMap);
            }
            List<ShortTvItem> list = shortTvPopupFilterView.mData;
            if (list != null) {
                shortTvPopupFilterView.initSelectData(list, shortTvPopupFilterView.selectItemsMap);
            }
        }
        return Unit.f67061a;
    }

    private final void l(View anchor, final ShortTvItem item, String selectedId) {
        if (this.mSingleFilterPopup == null) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            this.mSingleFilterPopup = new r(context);
        }
        r rVar = this.mSingleFilterPopup;
        if (rVar != null) {
            rVar.j(item, selectedId, new Function1() { // from class: sr.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ShortTvPopupFilterView.m(this.f75832a, item, (String) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(ShortTvPopupFilterView shortTvPopupFilterView, ShortTvItem shortTvItem, String str) {
        if (str != null) {
            shortTvPopupFilterView.selectItemsMap.put(shortTvItem.getFilterType(), str);
            Function1 function1 = shortTvPopupFilterView.onFilterChangedListener;
            if (function1 != null) {
                function1.invoke(shortTvPopupFilterView.selectItemsMap);
            }
            List<ShortTvItem> list = shortTvPopupFilterView.mData;
            if (list != null) {
                shortTvPopupFilterView.initSelectData(list, shortTvPopupFilterView.selectItemsMap);
            }
        }
        return Unit.f67061a;
    }

    public final void initSelectData(List<ShortTvItem> data, HashMap<String, String> selectItems) {
        this.mData = data;
        List<ShortTvItem> list = data;
        if (list == null || list.isEmpty()) {
            b.b(this);
            return;
        }
        b.e(this);
        this.selectItemsMap.clear();
        if (selectItems != null) {
            this.selectItemsMap.putAll(selectItems);
        }
        removeAllViews();
        e(data);
    }

    public final void setOnFilterListener(Function1<? super Map<String, String>, Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.onFilterChangedListener = callback;
    }
}
