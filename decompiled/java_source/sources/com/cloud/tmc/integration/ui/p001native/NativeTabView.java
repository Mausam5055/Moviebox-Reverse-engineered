package com.cloud.tmc.integration.ui.p001native;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.R;
import com.cloud.tmc.integration.ui.data.NativeTabBean;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.tabs.TabLayout;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000 %2\u00020\u0001:\u0001%B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0015J\u0018\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0017H\u0014J\u0010\u0010\u001f\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0015J\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u0017R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/cloud/tmc/integration/ui/native/NativeTabView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "backDrawable", "Landroid/graphics/drawable/GradientDrawable;", "isApiControl", "", "tabLayout", "Lcom/google/android/material/tabs/TabLayout;", "getTabLayout", "()Lcom/google/android/material/tabs/TabLayout;", "tabLayout$delegate", "Lkotlin/Lazy;", "tabList", "", "", "tabListener", "Lcom/cloud/tmc/integration/ui/native/INativeTabListener;", "textColor", "", "textSelectedColor", "addNativeTabListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "removeNativeTabListener", "setTabStyle", "data", "Lcom/cloud/tmc/integration/ui/data/NativeTabBean;", "switchTab", "index", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class NativeTabView extends FrameLayout {
    public static final String ERROR = "error";
    public static final String ERROR_MSG_T10001 = "Parameter error: T10001";
    public static final String ERROR_MSG_T10002 = "parse Json error, please check the config: T10002";
    public static final String EVENT_SELECTED = "nativeTabSelected";
    public static final String TAG = "NativeTabView";
    private GradientDrawable backDrawable;
    private boolean isApiControl;

    /* JADX INFO: renamed from: tabLayout$delegate, reason: from kotlin metadata */
    private final Lazy tabLayout;
    private List<String> tabList;
    private INativeTabListener tabListener;
    private int textColor;
    private int textSelectedColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeTabView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.tabLayout = LazyKt.b(new Function0<TabLayout>() { // from class: com.cloud.tmc.integration.ui.native.NativeTabView$tabLayout$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final TabLayout invoke() {
                return (TabLayout) this.this$0.findViewById(R.id.mini_native_tab);
            }
        });
        this.textColor = -1;
        this.textSelectedColor = ViewCompat.MEASURED_STATE_MASK;
        LayoutInflater.from(context).inflate(R.layout.mini_native_tab_layout, this);
        Drawable background = getTabLayout().getBackground();
        this.backDrawable = background instanceof GradientDrawable ? (GradientDrawable) background : null;
        getTabLayout().addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.cloud.tmc.integration.ui.native.NativeTabView.1
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
                TmcLogger.d(NativeTabView.TAG, "[NativeTabView]: onTabReselected:" + (tab != null ? Integer.valueOf(tab.getPosition()) : null) + ", from:" + tab);
                View customView = tab != null ? tab.getCustomView() : null;
                TextView textView = customView instanceof TextView ? (TextView) customView : null;
                if (textView != null) {
                    textView.setTextColor(NativeTabView.this.textSelectedColor);
                }
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                TmcLogger.d(NativeTabView.TAG, "[NativeTabView]: onTabSelected:" + (tab != null ? Integer.valueOf(tab.getPosition()) : null) + ", from::" + tab);
                View customView = tab != null ? tab.getCustomView() : null;
                TextView textView = customView instanceof TextView ? (TextView) customView : null;
                if (textView != null) {
                    textView.setTextColor(NativeTabView.this.textSelectedColor);
                }
                JsonObject jsonObject = new JsonObject();
                boolean z10 = false;
                jsonObject.addProperty("index", Integer.valueOf(tab != null ? tab.getPosition() : 0));
                if (NativeTabView.this.isApiControl) {
                    NativeTabView.this.isApiControl = false;
                    z10 = true;
                }
                jsonObject.addProperty("isApiControl", Boolean.valueOf(z10));
                INativeTabListener iNativeTabListener = NativeTabView.this.tabListener;
                if (iNativeTabListener != null) {
                    iNativeTabListener.onTabEvent(NativeTabView.EVENT_SELECTED, jsonObject);
                }
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
                TmcLogger.d(NativeTabView.TAG, "[NativeTabView]: onTabUnselected:" + (tab != null ? Integer.valueOf(tab.getPosition()) : null) + ", from::" + tab);
                View customView = tab != null ? tab.getCustomView() : null;
                TextView textView = customView instanceof TextView ? (TextView) customView : null;
                if (textView != null) {
                    textView.setTextColor(NativeTabView.this.textColor);
                }
            }
        });
    }

    public /* synthetic */ NativeTabView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    private final TabLayout getTabLayout() {
        Object value = this.tabLayout.getValue();
        Intrinsics.g(value, "<get-tabLayout>(...)");
        return (TabLayout) value;
    }

    public final void addNativeTabListener(INativeTabListener listener) {
        this.tabListener = listener;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public final void removeNativeTabListener(INativeTabListener listener) {
        this.tabListener = null;
    }

    public final void setTabStyle(NativeTabBean data) {
        GradientDrawable gradientDrawable;
        Intrinsics.h(data, "data");
        TmcLogger.e(TAG, "setTabStyle =" + data);
        String color = data.getColor();
        if (color != null && color.length() != 0) {
            this.textColor = Color.parseColor(data.getColor());
        }
        String selectedColor = data.getSelectedColor();
        if (selectedColor != null && selectedColor.length() != 0) {
            this.textSelectedColor = Color.parseColor(data.getSelectedColor());
        }
        String backgroundColor = data.getBackgroundColor();
        if (backgroundColor != null && backgroundColor.length() != 0 && (gradientDrawable = this.backDrawable) != null) {
            gradientDrawable.setColor(Color.parseColor(data.getBackgroundColor()));
        }
        String selectBackgroundColor = data.getSelectBackgroundColor();
        if (selectBackgroundColor != null && selectBackgroundColor.length() != 0) {
            getTabLayout().setSelectedTabIndicatorColor(Color.parseColor(data.getSelectBackgroundColor()));
        }
        String selectBackgroundColor2 = data.getSelectBackgroundColor();
        if (selectBackgroundColor2 != null && selectBackgroundColor2.length() != 0) {
            getTabLayout().setSelectedTabIndicatorColor(Color.parseColor(data.getSelectBackgroundColor()));
        }
        List<String> tabList = data.getTabList();
        if (tabList == null || tabList.size() < 2 || tabList.size() > 5) {
            TmcLogger.e(TAG, "tab list is invalid. count = " + (tabList != null ? tabList.size() : 0));
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", ERROR_MSG_T10001);
            INativeTabListener iNativeTabListener = this.tabListener;
            if (iNativeTabListener != null) {
                iNativeTabListener.onTabEvent("error", jsonObject);
                return;
            }
            return;
        }
        String string = tabList.toString();
        List<String> list = this.tabList;
        if (Intrinsics.c(string, list != null ? list.toString() : null)) {
            TmcLogger.e(TAG, "tab list not changed list = " + tabList);
            return;
        }
        int selectedIndex = (data.getSelectedIndex() == -1 || data.getSelectedIndex() >= tabList.size()) ? 0 : data.getSelectedIndex();
        this.tabList = tabList;
        getTabLayout().removeAllTabs();
        int size = tabList.size();
        int i11 = 0;
        while (i11 < size) {
            TextView textView = new TextView(getContext());
            textView.setText(tabList.get(i11));
            textView.setGravity(17);
            textView.setTextSize(14.0f);
            if (i11 == selectedIndex) {
                textView.setTextColor(this.textSelectedColor);
            } else {
                textView.setTextColor(this.textColor);
            }
            getTabLayout().addTab(getTabLayout().newTab().setCustomView(textView), i11 == selectedIndex);
            i11++;
        }
    }

    public final void switchTab(int index) {
        TabLayout.Tab tabAt;
        List<String> list = this.tabList;
        int size = list != null ? list.size() : 0;
        if (index < 0 || index >= size || (tabAt = getTabLayout().getTabAt(index)) == null) {
            return;
        }
        this.isApiControl = true;
        tabAt.select();
    }
}
