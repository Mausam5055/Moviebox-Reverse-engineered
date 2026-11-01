package com.transsion.shorttv._channel.ui.widget;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.slider.RangeSlider;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv._channel.model.ShortTvFilterVal;
import com.transsion.shorttv._channel.model.ShortTvItem;
import com.transsion.shorttv._channel.model.ShortTvRangeValue;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private RecyclerView f52668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f52669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f52670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f52671d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f52672e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f52673f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map f52674g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Function1 f52675h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f52676i;

    /* JADX INFO: renamed from: com.transsion.shorttv._channel.ui.widget.a$a, reason: collision with other inner class name */
    public static final class C0659a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f52677a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final FlexboxLayout f52678b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0659a(View itemView, TextView title, FlexboxLayout flexbox) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            Intrinsics.h(title, "title");
            Intrinsics.h(flexbox, "flexbox");
            this.f52677a = title;
            this.f52678b = flexbox;
        }

        public final FlexboxLayout f() {
            return this.f52678b;
        }

        public final TextView g() {
            return this.f52677a;
        }
    }

    public final class b extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f52679a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map f52680b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f52681c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f52682d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ a f52683e;

        public b(a aVar, List items, Map selectItems) {
            Intrinsics.h(items, "items");
            Intrinsics.h(selectItems, "selectItems");
            this.f52683e = aVar;
            this.f52679a = items;
            this.f52680b = selectItems;
            this.f52682d = 1;
        }

        private final View i(String str, boolean z10, int i11) {
            LinearLayout linearLayout = new LinearLayout(this.f52683e.getContext());
            linearLayout.setGravity(17);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(a0.a(100.0f));
            if (z10) {
                gradientDrawable.setStroke(a0.a(1.0f), -1);
                gradientDrawable.setColor(linearLayout.getContext().getResources().getColor(R$color.short_tv_white_40));
            } else {
                gradientDrawable.setStroke(a0.a(1.0f), linearLayout.getContext().getResources().getColor(R$color.short_tv_gray_light_40));
                gradientDrawable.setColor(0);
            }
            linearLayout.setBackground(gradientDrawable);
            TextView textView = new TextView(this.f52683e.getContext());
            textView.setText(str);
            textView.setTextSize(14.0f);
            textView.setTextColor(-1);
            textView.setTypeface(Typeface.DEFAULT);
            linearLayout.addView(textView);
            return linearLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(b bVar, ShortTvItem shortTvItem, ShortTvFilterVal shortTvFilterVal, int i11, View view) {
            bVar.f52680b.put(shortTvItem.getFilterType(), shortTvFilterVal.getId());
            bVar.notifyItemChanged(i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void k(RecyclerView.b0 b0Var, b bVar, ShortTvItem shortTvItem, RangeSlider slider, float f11, boolean z10) {
            Intrinsics.h(slider, "slider");
            List<Float> values = slider.getValues();
            Intrinsics.g(values, "getValues(...)");
            if (values.size() >= 2) {
                Float f12 = values.get(0);
                Float f13 = values.get(1);
                c cVar = (c) b0Var;
                cVar.h().setText(String.valueOf((int) f12.floatValue()));
                cVar.f().setText(String.valueOf((int) f13.floatValue()));
                Map map = bVar.f52680b;
                String filterType = shortTvItem.getFilterType();
                ShortTvPopupFilterView.Companion companion = ShortTvPopupFilterView.INSTANCE;
                Intrinsics.e(f12);
                float fFloatValue = f12.floatValue();
                Intrinsics.e(f13);
                map.put(filterType, companion.a(fFloatValue, f13.floatValue()));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f52679a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i11) {
            return ((ShortTvItem) this.f52679a.get(i11)).getRangeVals() != null ? this.f52682d : this.f52681c;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(final RecyclerView.b0 holder, final int i11) {
            String str;
            Float fT;
            String str2;
            Float fT2;
            Intrinsics.h(holder, "holder");
            final ShortTvItem shortTvItem = (ShortTvItem) this.f52679a.get(i11);
            if (!(holder instanceof C0659a)) {
                if (holder instanceof c) {
                    c cVar = (c) holder;
                    cVar.i().setText(shortTvItem.getTitle());
                    ShortTvRangeValue rangeVals = shortTvItem.getRangeVals();
                    if (rangeVals == null) {
                        return;
                    }
                    cVar.g().setValueFrom(rangeVals.getMinVal());
                    cVar.g().setValueTo(rangeVals.getMaxVal());
                    cVar.g().setStepSize(1.0f);
                    String str3 = (String) this.f52680b.get(shortTvItem.getFilterType());
                    List listS0 = str3 != null ? StringsKt.S0(str3, new String[]{","}, false, 0, 6, null) : null;
                    float minVal = (listS0 == null || (str2 = (String) CollectionsKt.l0(listS0, 0)) == null || (fT2 = StringsKt.t(str2)) == null) ? rangeVals.getMinVal() : fT2.floatValue();
                    float maxVal = (listS0 == null || (str = (String) CollectionsKt.l0(listS0, 1)) == null || (fT = StringsKt.t(str)) == null) ? rangeVals.getMaxVal() : fT.floatValue();
                    cVar.g().setValues(Float.valueOf(minVal), Float.valueOf(maxVal));
                    cVar.h().setText(String.valueOf((int) minVal));
                    cVar.f().setText(String.valueOf((int) maxVal));
                    cVar.g().addOnChangeListener(new com.google.android.material.slider.a() { // from class: sr.g
                        @Override // com.google.android.material.slider.a
                        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                        public final void a(RangeSlider rangeSlider, float f11, boolean z10) {
                            com.transsion.shorttv._channel.ui.widget.a.b.k(holder, this, shortTvItem, rangeSlider, f11, z10);
                        }
                    });
                    return;
                }
                return;
            }
            C0659a c0659a = (C0659a) holder;
            c0659a.g().setText(shortTvItem.getTitle());
            c0659a.f().removeAllViews();
            int iA = (this.f52683e.getContext().getResources().getDisplayMetrics().widthPixels - a0.a(44.0f)) / 2;
            int i12 = 0;
            for (Object obj : shortTvItem.getFilterValsV2()) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                final ShortTvFilterVal shortTvFilterVal = (ShortTvFilterVal) obj;
                View viewI = i(shortTvFilterVal.getName(), Intrinsics.c(this.f52680b.get(shortTvItem.getFilterType()), shortTvFilterVal.getId()), iA);
                viewI.setOnClickListener(new View.OnClickListener() { // from class: sr.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        com.transsion.shorttv._channel.ui.widget.a.b.j(this.f75819a, shortTvItem, shortTvFilterVal, i11, view);
                    }
                });
                FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(iA, a0.a(32.0f));
                if (i12 % 2 == 0) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = a0.a(12.0f);
                } else {
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = 0;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = a0.a(12.0f);
                viewI.setLayoutParams(layoutParams);
                c0659a.f().addView(viewI);
                i12 = i13;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.b0 onCreateViewHolder(ViewGroup parent, int i11) {
            Intrinsics.h(parent, "parent");
            LinearLayout linearLayout = new LinearLayout(this.f52683e.getContext());
            linearLayout.setOrientation(1);
            linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            linearLayout.setPadding(0, 0, 0, a0.a(16.0f));
            TextView textView = new TextView(this.f52683e.getContext());
            textView.setTextSize(16.0f);
            textView.setTextColor(-1);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setPadding(0, 0, 0, a0.a(12.0f));
            linearLayout.addView(textView);
            if (i11 == this.f52681c) {
                FlexboxLayout flexboxLayout = new FlexboxLayout(this.f52683e.getContext());
                flexboxLayout.setFlexDirection(0);
                flexboxLayout.setFlexWrap(1);
                linearLayout.addView(flexboxLayout);
                return new C0659a(linearLayout, textView, flexboxLayout);
            }
            LinearLayout linearLayout2 = new LinearLayout(this.f52683e.getContext());
            linearLayout2.setOrientation(1);
            linearLayout2.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            RangeSlider rangeSlider = new RangeSlider(this.f52683e.getContext());
            rangeSlider.setValues(Float.valueOf(0.0f), Float.valueOf(100.0f));
            rangeSlider.setTrackActiveTintList(ColorStateList.valueOf(-1));
            rangeSlider.setTrackInactiveTintList(ColorStateList.valueOf(rangeSlider.getContext().getResources().getColor(R$color.short_tv_white_40)));
            rangeSlider.setThumbTintList(ColorStateList.valueOf(-1));
            rangeSlider.setTickVisible(false);
            LinearLayout linearLayout3 = new LinearLayout(this.f52683e.getContext());
            linearLayout3.setOrientation(0);
            TextView textView2 = new TextView(this.f52683e.getContext());
            textView2.setTextSize(12.0f);
            textView2.setTextColor(-1);
            Typeface typeface = Typeface.DEFAULT_BOLD;
            textView2.setTypeface(typeface);
            TextView textView3 = new TextView(this.f52683e.getContext());
            textView3.setTextSize(12.0f);
            textView3.setTextColor(-1);
            textView3.setTypeface(typeface);
            linearLayout3.addView(textView2);
            View view = new View(this.f52683e.getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(0, 0, 1.0f));
            linearLayout3.addView(view);
            linearLayout3.addView(textView3);
            linearLayout2.addView(rangeSlider);
            linearLayout2.addView(linearLayout3);
            linearLayout.addView(linearLayout2);
            return new c(linearLayout, textView, rangeSlider, textView2, textView3);
        }
    }

    public static final class c extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f52684a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final RangeSlider f52685b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final TextView f52686c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final TextView f52687d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View itemView, TextView title, RangeSlider slider, TextView startLabel, TextView endLabel) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            Intrinsics.h(title, "title");
            Intrinsics.h(slider, "slider");
            Intrinsics.h(startLabel, "startLabel");
            Intrinsics.h(endLabel, "endLabel");
            this.f52684a = title;
            this.f52685b = slider;
            this.f52686c = startLabel;
            this.f52687d = endLabel;
        }

        public final TextView f() {
            return this.f52687d;
        }

        public final RangeSlider g() {
            return this.f52685b;
        }

        public final TextView h() {
            return this.f52686c;
        }

        public final TextView i() {
            return this.f52684a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context) {
        super(context, R.style.Theme.Black.NoTitleBar.Fullscreen);
        Intrinsics.h(context, "context");
        this.f52673f = CollectionsKt.l();
        this.f52674g = new LinkedHashMap();
        this.f52676i = new LinkedHashMap();
    }

    private final View e() {
        View view = new View(getContext());
        view.setBackgroundColor(view.getContext().getResources().getColor(R$color.short_tv_white_10));
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, a0.a(1.0f)));
        return view;
    }

    private final boolean f() {
        if (this.f52674g.size() != this.f52676i.size()) {
            return true;
        }
        for (Map.Entry entry : this.f52674g.entrySet()) {
            String str = (String) entry.getKey();
            if (!Intrinsics.c(this.f52676i.get(str), (String) entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat g(View v11, WindowInsetsCompat insets) {
        Intrinsics.h(v11, "v");
        Intrinsics.h(insets, "insets");
        z0.c insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.g(insets2, "getInsets(...)");
        v11.setPadding(v11.getPaddingLeft(), v11.getPaddingTop(), v11.getPaddingRight(), insets2.f79128d);
        return WindowInsetsCompat.CONSUMED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(a aVar, View view) {
        aVar.k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(a aVar, View view) {
        Function1 function1;
        if (aVar.f() && (function1 = aVar.f52675h) != null) {
            function1.invoke(Boolean.TRUE);
        }
        aVar.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(a aVar, View view) {
        aVar.dismiss();
        Function1 function1 = aVar.f52675h;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    private final void k() {
        for (ShortTvItem shortTvItem : this.f52673f) {
            if (shortTvItem.getRangeVals() != null) {
                this.f52674g.put(shortTvItem.getFilterType(), ShortTvPopupFilterView.INSTANCE.a(shortTvItem.getRangeVals().getMinVal(), shortTvItem.getRangeVals().getMaxVal()));
            } else if (!shortTvItem.getFilterValsV2().isEmpty()) {
                this.f52674g.put(shortTvItem.getFilterType(), shortTvItem.getFilterValsV2().get(0).getId());
            }
        }
        b bVar = this.f52672e;
        if (bVar != null) {
            bVar.notifyDataSetChanged();
        }
    }

    public final void l(List items, Map selectItems, Function1 callback) {
        Intrinsics.h(items, "items");
        Intrinsics.h(selectItems, "selectItems");
        Intrinsics.h(callback, "callback");
        this.f52673f = items;
        this.f52674g.clear();
        this.f52674g.putAll(selectItems);
        this.f52676i.clear();
        this.f52676i.putAll(selectItems);
        this.f52675h = callback;
        this.f52672e = new b(this, this.f52673f, this.f52674g);
        RecyclerView recyclerView = this.f52668a;
        if (recyclerView != null) {
            if (recyclerView == null) {
                Intrinsics.z("mRecyclerView");
                recyclerView = null;
            }
            recyclerView.setAdapter(this.f52672e);
        }
        if (isShowing()) {
            return;
        }
        show();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        RecyclerView recyclerView;
        Window window;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 35 && (window = getWindow()) != null) {
            WindowCompat.setDecorFitsSystemWindows(window, false);
            View viewFindViewById = window.getDecorView().findViewById(R.id.content);
            Intrinsics.e(viewFindViewById);
            ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new OnApplyWindowInsetsListener() { // from class: sr.b
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return com.transsion.shorttv._channel.ui.widget.a.g(view, windowInsetsCompat);
                }
            });
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setBackgroundDrawable(new ColorDrawable(0));
        }
        Window window3 = getWindow();
        if (window3 != null) {
            window3.setLayout(-1, -1);
        }
        Window window4 = getWindow();
        if (window4 != null) {
            window4.addFlags(Integer.MIN_VALUE);
        }
        Window window5 = getWindow();
        if (window5 != null) {
            window5.setStatusBarColor(getContext().getResources().getColor(R$color.short_tv_black_90));
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(linearLayout.getContext().getResources().getColor(R$color.short_tv_black_90));
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(a0.a(16.0f), a0.a(12.0f), a0.a(16.0f), a0.a(12.0f));
        TextView textView = new TextView(getContext());
        textView.setText(textView.getContext().getString(R$string.short_tv_filter_more_title));
        textView.setTextSize(18.0f);
        textView.setTextColor(-1);
        Typeface typeface = Typeface.DEFAULT_BOLD;
        textView.setTypeface(typeface);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(R$drawable.short_tv_music_iv_close);
        imageView.setColorFilter(imageView.getContext().getResources().getColor(R$color.short_tv_white));
        imageView.setLayoutParams(new LinearLayout.LayoutParams(a0.a(21.0f), a0.a(21.0f)));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: sr.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                com.transsion.shorttv._channel.ui.widget.a.j(this.f75816a, view);
            }
        });
        this.f52671d = imageView;
        linearLayout2.addView(textView);
        ImageView imageView2 = this.f52671d;
        if (imageView2 == null) {
            Intrinsics.z("mCloseBtn");
            imageView2 = null;
        }
        linearLayout2.addView(imageView2);
        linearLayout.addView(linearLayout2);
        linearLayout.addView(e());
        RecyclerView recyclerView2 = new RecyclerView(getContext());
        recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext()));
        recyclerView2.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
        recyclerView2.setPadding(a0.a(16.0f), a0.a(12.0f), a0.a(16.0f), a0.a(12.0f));
        recyclerView2.setClipToPadding(false);
        this.f52668a = recyclerView2;
        linearLayout.addView(recyclerView2);
        LinearLayout linearLayout3 = new LinearLayout(getContext());
        linearLayout3.setOrientation(1);
        linearLayout3.setBackgroundColor(linearLayout3.getContext().getResources().getColor(R$color.short_tv_black_90));
        linearLayout3.addView(e());
        LinearLayout linearLayout4 = new LinearLayout(getContext());
        linearLayout4.setOrientation(0);
        linearLayout4.setPadding(a0.a(16.0f), a0.a(12.0f), a0.a(16.0f), a0.a(16.0f));
        LinearLayout linearLayout5 = new LinearLayout(getContext());
        linearLayout5.setLayoutParams(new LinearLayout.LayoutParams(-2, a0.a(48.0f)));
        linearLayout5.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(a0.a(100.0f));
        gradientDrawable.setStroke(a0.a(1.0f), linearLayout5.getContext().getResources().getColor(R$color.short_tv_white));
        gradientDrawable.setColor(0);
        linearLayout5.setBackground(gradientDrawable);
        linearLayout5.setOnClickListener(new View.OnClickListener() { // from class: sr.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                com.transsion.shorttv._channel.ui.widget.a.h(this.f75817a, view);
            }
        });
        TextView textView2 = new TextView(linearLayout5.getContext());
        textView2.setText(textView2.getContext().getString(R$string.short_tv_filter_reset));
        textView2.setTextSize(18.0f);
        textView2.setTextColor(-1);
        textView2.setTypeface(typeface);
        textView2.setPadding(a0.a(24.0f), 0, a0.a(24.0f), 0);
        linearLayout5.addView(textView2);
        this.f52669b = linearLayout5;
        LinearLayout linearLayout6 = new LinearLayout(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, a0.a(48.0f), 1.0f);
        layoutParams.setMarginStart(a0.a(12.0f));
        linearLayout6.setLayoutParams(layoutParams);
        linearLayout6.setGravity(17);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setCornerRadius(a0.a(100.0f));
        gradientDrawable2.setColor(linearLayout6.getContext().getResources().getColor(R$color.short_tv_white));
        linearLayout6.setBackground(gradientDrawable2);
        linearLayout6.setOnClickListener(new View.OnClickListener() { // from class: sr.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                com.transsion.shorttv._channel.ui.widget.a.i(this.f75818a, view);
            }
        });
        TextView textView3 = new TextView(linearLayout6.getContext());
        textView3.setText(textView3.getContext().getString(R$string.short_tv_filter_confirm));
        textView3.setTextSize(18.0f);
        textView3.setTextColor(textView3.getContext().getResources().getColor(R$color.short_tv_black));
        textView3.setTypeface(typeface);
        linearLayout6.addView(textView3);
        this.f52670c = linearLayout6;
        View view = this.f52669b;
        if (view == null) {
            Intrinsics.z("mResetBtn");
            view = null;
        }
        linearLayout4.addView(view);
        View view2 = this.f52670c;
        if (view2 == null) {
            Intrinsics.z("mConfirmBtn");
            view2 = null;
        }
        linearLayout4.addView(view2);
        linearLayout3.addView(linearLayout4);
        linearLayout.addView(linearLayout3);
        setContentView(linearLayout);
        if (this.f52672e != null) {
            RecyclerView recyclerView3 = this.f52668a;
            if (recyclerView3 == null) {
                Intrinsics.z("mRecyclerView");
                recyclerView = null;
            } else {
                recyclerView = recyclerView3;
            }
            recyclerView.setAdapter(this.f52672e);
        }
    }
}
